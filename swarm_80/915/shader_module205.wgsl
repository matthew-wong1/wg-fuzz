struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, false, true, false, false, true, true, false, false, false, true, true, false, true, true, true, true, true, true);

var<private> global2: i32;

var<private> global3: array<f32, 10>;

var<private> global4: f32 = 802f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], ~u_input.c.x);
    var var_1 = u_input.a ^ ~(~vec2<i32>(1i, -2147483647i));
    return Struct_1(all(vec4<bool>(false, (global1[_wgslsmith_index_u32(u_input.d, 20u)] | true) & (var_1.x < -2147483647i), !global1[_wgslsmith_index_u32(4294967295u, 20u)] || true, !global1[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_sub_u32(~19345u, reverseBits(1u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(u_input.d, 1u)), 20u)], 0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.c.x, 10u)] - 1192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b ^ 0u, 10u)]))));
    let var_2 = ~abs(_wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(9602i, 0i, 33844i)), select(-vec3<i32>(u_input.a.x, 10378i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), !vec3<bool>(false, true, var_0.a)), ~max(vec3<i32>(0i, 2147483647i, u_input.a.x), vec3<i32>(-1i, 2147483647i, 0i))));
    let var_3 = func_2();
    global3 = array<f32, 10>();
    return Struct_1(select(-32228i >= ~(var_2.x ^ -24017i), !var_3.a, true), 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(abs(~(~u_input.d)), 10u)], 1008f, global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~16327u, _wgslsmith_mult_u32(42284u, arg_0.b))), 10u)]) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_2.b, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], 2102f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2345f, global3[_wgslsmith_index_u32(11335u, 10u)], 959f) + vec3<f32>(global3[_wgslsmith_index_u32(1u, 10u)], -507f, global3[_wgslsmith_index_u32(arg_0.b, 10u)])))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 10u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(41064u, 10u)], -277f) * _wgslsmith_f_op_f32(584f * 501f)), global3[_wgslsmith_index_u32(4294967295u, 10u)])));
    global1 = array<bool, 20>();
    global3 = array<f32, 10>();
    let var_1 = false;
    var var_2 = func_1();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_1((true && global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 20u)]) | false, u_input.d), true, Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), u_input.b, u_input.d << (1u % 32u)) < ~abs(1u), _wgslsmith_clamp_u32(~u_input.d, ~35679u, u_input.d) << (7927u % 32u)), func_1());
    var var_1 = var_0;
    var var_2 = Struct_1(!(false && global1[_wgslsmith_index_u32(8560u, 20u)]), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_1.b, var_1.b) & u_input.c.x, ~u_input.b, ~33632u));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~min(76301u, 0u)), 10u)]), -1000f);
    let var_3 = reverseBits(var_2.b);
    let var_4 = !vec3<bool>(!any(vec2<bool>(true, true)), any(vec2<bool>(true, -1000f >= global3[_wgslsmith_index_u32(u_input.c.x, 10u)])), func_1().a);
    let var_5 = !(!(!var_0.a));
    let var_6 = Struct_1(true, 22745u);
    let var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_7.b, _wgslsmith_f_op_f32(-1787f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f - _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(46135u, 10u)], global3[_wgslsmith_index_u32(41872u, 10u)]))))), func_3(func_1(), 19903u > var_6.b, func_2(), Struct_1(any(select(vec2<bool>(var_5, false), vec2<bool>(false, true), global0[_wgslsmith_index_u32(var_2.b, 11u)])), ~firstTrailingBit(4294967295u))).b, _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(12608u, var_6.b, 51936u, 13831u), vec4<u32>(var_2.b, 36593u, var_1.b, var_2.b), vec4<u32>(var_6.b, 1u, 4294967295u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_6.b, var_6.b, var_3, 34478u), vec4<u32>(39110u, 1u, 1u, var_2.b))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.b, var_7.b, 0u), vec4<u32>(var_3, 4294967295u, var_6.b, 4294967295u)) & vec4<u32>(4294967295u, 4630u, 37994u, var_2.b))));
}

