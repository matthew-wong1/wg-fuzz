struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(-1298f), Struct_4(151f), Struct_4(789f), Struct_4(-911f), Struct_4(936f));

var<private> global1: Struct_2 = Struct_2(-686f, Struct_1(vec4<u32>(97949u, 4294967295u, 74426u, 50836u), -182f), vec3<i32>(-32636i, -16011i, 66184i));

var<private> global2: array<f32, 16>;

var<private> global3: array<i32, 18> = array<i32, 18>(1850i, 1i, 2147483647i, 1i, 32446i, -1i, 17604i, i32(-2147483648), 2147483647i, 37787i, 2147483647i, -1i, -1i, -1i, 0i, 2147483647i, 43421i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global1 = Struct_2(arg_0, Struct_1(global1.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, 404f)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 0u), 16u)])))), global1.c);
    let var_0 = Struct_3(global1.b);
    global3 = array<i32, 18>();
    global2 = array<f32, 16>();
    global3 = array<i32, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.b)), _wgslsmith_f_op_f32(round(334f))))) - global1.b.b);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_5(global1.b, Struct_3(Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global1.a, vec3<u32>(global1.b.a.x, 4294967295u, 0u))))))), select(!(!all(vec2<bool>(arg_1, arg_1))), true, false));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3(290f, _wgslsmith_mult_vec3_u32(u_input.a.wwx ^ firstLeadingBit(global1.b.a.xxy), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.b.a.x, var_0.a.a.x), var_0.a.a.wwy), vec3<u32>(1u, 1u, global1.b.a.x) & u_input.a.wzz)))), Struct_1(var_0.b.a.a, _wgslsmith_f_op_f32(-global1.b.b)), vec3<i32>(1i, global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(u_input.a.wzw, global1.b.a.zzw)) << (1u % 32u), 18u)], 2147483647i));
    let var_2 = Struct_1(countOneBits(abs(reverseBits(~global1.b.a))), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(trunc(892f)), true)));
    var var_3 = var_1.b.b;
    var_0 = Struct_5(Struct_1(vec4<u32>(4294967295u, 0u, select(var_2.a.x, ~52787u, true), select(u_input.b, ~77280u, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(893f, vec3<u32>(global1.b.a.x, var_1.b.a.x, var_2.a.x))), global1.a))), Struct_3(var_2), true);
    return 7519i;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> vec2<i32> {
    return vec2<i32>(~(-1076i) >> ((global1.b.a.x | ~_wgslsmith_div_u32(31243u, u_input.b)) % 32u), i32(-1i) * -31685i);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_5 {
    let var_0 = Struct_3(Struct_1(vec4<u32>(max(~0u, ~47827u), ~8947u, _wgslsmith_mult_u32(global1.b.a.x, 5310u & global1.b.a.x), 9942u), _wgslsmith_f_op_f32(f32(-1f) * -166f)));
    let var_1 = Struct_3(var_0.a);
    global3 = array<i32, 18>();
    var var_2 = u_input.a.yy >> (~var_0.a.a.wx % vec2<u32>(32u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(global1.b.b + 686f), _wgslsmith_f_op_f32(exp2(arg_3.a.b)));
    return Struct_5(arg_3.a, var_1, any(vec4<bool>(arg_3.c, select(true, !arg_3.c, true), !arg_3.c, true)));
}

fn func_1() -> Struct_2 {
    let var_0 = ~firstTrailingBit(u_input.a.xxw);
    global2 = array<f32, 16>();
    let var_1 = -vec4<i32>(max(~25062i, _wgslsmith_div_i32(~1i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 96568u, u_input.b), u_input.a), 18u)])), ~global1.c.x, -2147483647i, u_input.c.x >> (18685u % 32u));
    let var_2 = func_5(firstTrailingBit(func_4(vec4<i32>(-28772i, firstLeadingBit(global1.c.x), -40821i, func_2(vec4<f32>(-832f, global2[_wgslsmith_index_u32(11681u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], -462f), true, Struct_4(-180f))), 87946u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global1.b.a.x, 16u)], -323f, 1071f)))) - vec3<f32>(1000f, 125f, 103f)))), Struct_1(vec4<u32>(84855u, _wgslsmith_clamp_u32(firstLeadingBit(u_input.b), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(4294967295u, var_0.x, 36645u)), 0u << (u_input.a.x % 32u)), _wgslsmith_mult_u32(~52409u, u_input.a.x), abs(~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b.a.x >> (global1.b.a.x % 32u), 16u)]) - 1f)), Struct_5(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.a.x, global1.b.a.x, 76597u, var_0.x), u_input.a), 274f), Struct_3(global1.b), !all(vec2<bool>(true, true))));
    global0 = array<Struct_4, 5>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, 1381f))), Struct_1(global1.b.a << (~u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(706f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(14201u, 16u)] * -1989f))))), vec3<i32>(0i, ~(-26786i), global1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 5>();
    let var_0 = global1.c;
    global1 = func_1();
    var var_1 = min(~countOneBits(-global1.c), select(reverseBits(countOneBits(global1.c)) | ~global1.c, func_1().c, select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))));
    var var_2 = all(!vec3<bool>(all(vec2<bool>(true, true)), true, false));
    let var_3 = vec3<f32>(-1390f, 1934f, global1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(exp2(global1.b.b))), func_5(vec2<i32>(-2147483647i, 42469i), _wgslsmith_div_vec3_f32(vec3<f32>(182f, global1.a, 533f), vec3<f32>(308f, global2[_wgslsmith_index_u32(u_input.b, 16u)], 253f)), global1.b, Struct_5(global1.b, Struct_3(Struct_1(vec4<u32>(28929u, 15109u, 6999u, u_input.a.x), 713f)), false)).b.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1402f), _wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-948f, global2[_wgslsmith_index_u32(global1.b.a.x, 16u)], -1000f, -753f) * vec4<f32>(global2[_wgslsmith_index_u32(global1.b.a.x, 16u)], 1042f, var_3.x, -1102f))) * vec4<f32>(_wgslsmith_f_op_f32(round(-482f)), _wgslsmith_f_op_f32(abs(-473f)), _wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(global1.b.a.x, 16u)]), -1093f)))), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_5(min(vec2<i32>(var_1.x, -1i), var_1.yz), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, global2[_wgslsmith_index_u32(4294967295u, 16u)], -486f))), global1.b, Struct_5(Struct_1(vec4<u32>(60005u, 38748u, 45712u, 0u), -182f), Struct_3(Struct_1(u_input.a, 300f)), false)).a.a.x, 16u)] * _wgslsmith_f_op_f32(f32(-1f) * -589f)), _wgslsmith_f_op_f32(-1473f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.b)) - func_5(vec2<i32>(-2147483647i, -50297i), var_3, Struct_1(global1.b.a, global2[_wgslsmith_index_u32(u_input.b, 16u)]), Struct_5(global1.b, Struct_3(Struct_1(vec4<u32>(4294967295u, global1.b.a.x, u_input.b, 5911u), global2[_wgslsmith_index_u32(1u, 16u)])), false)).a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u ^ global1.b.a.x, _wgslsmith_mult_u32(96085u, global1.b.a.x)), reverseBits(global1.b.a.yy ^ ~vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_clamp_vec4_u32(min(func_1().b.a, vec4<u32>(global1.b.a.x, global1.b.a.x, u_input.a.x, 1u) << (vec4<u32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, global1.b.a.x) % vec4<u32>(32u))), ~vec4<u32>(u_input.b, global1.b.a.x, global1.b.a.x, 0u) & vec4<u32>(u_input.b, global1.b.a.x, u_input.a.x, 5082u), ~_wgslsmith_mod_vec4_u32(global1.b.a, global1.b.a)) ^ u_input.a);
}

