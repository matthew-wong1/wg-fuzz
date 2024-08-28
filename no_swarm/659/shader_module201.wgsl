struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<bool>(true, true), vec4<f32>(-326f, -1217f, -522f, -183f), Struct_1(0u), true, vec2<f32>(-1635f, 1301f)), Struct_2(vec2<bool>(false, true), vec4<f32>(-881f, -909f, -1000f, -486f), Struct_1(0u), false, vec2<f32>(1000f, -164f)), Struct_2(vec2<bool>(true, false), vec4<f32>(1421f, -233f, 1485f, -1434f), Struct_1(17840u), true, vec2<f32>(321f, 128f)), Struct_2(vec2<bool>(false, false), vec4<f32>(-1984f, -166f, -1015f, -1345f), Struct_1(4294967295u), false, vec2<f32>(946f, -1000f)), Struct_2(vec2<bool>(true, true), vec4<f32>(-1000f, 584f, -471f, 1004f), Struct_1(4294967295u), false, vec2<f32>(-536f, 1976f)), Struct_2(vec2<bool>(true, true), vec4<f32>(379f, -1000f, -680f, 1000f), Struct_1(35889u), false, vec2<f32>(-1000f, -1038f)), Struct_2(vec2<bool>(false, true), vec4<f32>(1096f, -444f, 109f, 1000f), Struct_1(24437u), true, vec2<f32>(1734f, 555f)), Struct_2(vec2<bool>(false, true), vec4<f32>(-154f, -794f, 313f, 911f), Struct_1(0u), false, vec2<f32>(-851f, -606f)));

var<private> global1: Struct_1;

var<private> global2: array<f32, 15>;

var<private> global3: Struct_1 = Struct_1(4294967295u);

var<private> global4: array<i32, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = -vec2<i32>(-global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global1.a, 4294967295u) | (global3.a | global1.a)), 29u)]);
    let var_1 = countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), u_input.b.zx), reverseBits(u_input.b.xz), any(vec4<bool>(true, false, true, arg_0))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(global1.a, global1.a)), firstLeadingBit(u_input.b.xx))), global1.a, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(2278u, 38582u)), vec2<u32>(~4294967295u, ~global3.a))));
    global4 = array<i32, 29>();
    global0 = array<Struct_2, 8>();
    var var_2 = _wgslsmith_f_op_f32(min(111f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-180f, global2[_wgslsmith_index_u32(8194u, 15u)])))), _wgslsmith_f_op_f32(f32(-1f) * -645f)))));
    return 566u;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(global3.a, 8u)];
    global1 = Struct_1(u_input.b.x);
    var var_1 = vec2<u32>(reverseBits(global1.a), ~_wgslsmith_div_u32(0u, 4294967295u));
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(abs(u_input.a), ~global3.a, u_input.b.x | global1.a) >> (~func_3(true) % 32u)), 8u)];
    let var_3 = _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(~vec2<i32>(global4[_wgslsmith_index_u32(var_1.x, 29u)], global4[_wgslsmith_index_u32(21565u, 29u)]), -_wgslsmith_add_vec2_i32(vec2<i32>(0i, -23596i), vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 29u)], global4[_wgslsmith_index_u32(59457u, 29u)])))), countOneBits(-countOneBits(vec2<i32>(global4[_wgslsmith_index_u32(var_0.c.a, 29u)], -49088i))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(66327u, 29u)], global4[_wgslsmith_index_u32(24104u, 29u)]), vec2<i32>(global4[_wgslsmith_index_u32(18760u, 29u)], global4[_wgslsmith_index_u32(u_input.a, 29u)])), (vec2<i32>(global4[_wgslsmith_index_u32(var_1.x, 29u)], 2147483647i) & vec2<i32>(global4[_wgslsmith_index_u32(global3.a, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)])) << (arg_0.yz % vec2<u32>(32u))) ^ (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(var_2.c.a, 29u)], global4[_wgslsmith_index_u32(43086u, 29u)]), vec2<i32>(83273i, global4[_wgslsmith_index_u32(23980u, 29u)])), countOneBits(global4[_wgslsmith_index_u32(u_input.b.x, 29u)])) ^ ~(vec2<i32>(1i, global4[_wgslsmith_index_u32(var_1.x, 29u)]) & vec2<i32>(global4[_wgslsmith_index_u32(8150u, 29u)], global4[_wgslsmith_index_u32(global1.a, 29u)]))));
    return global4[_wgslsmith_index_u32(abs(~1u), 29u)] & var_3.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global4 = array<i32, 29>();
    var var_0 = true;
    let var_1 = ~vec2<u32>(_wgslsmith_div_u32(~(~u_input.a), countOneBits(~u_input.a)), global3.a);
    global3 = Struct_1(4294967295u);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~arg_0.x, 0u), 29u)], ~(~(-33091i)), global4[_wgslsmith_index_u32(arg_0.x, 29u)]), max(i32(-1i) * -53235i, global4[_wgslsmith_index_u32(~(17944u | global3.a), 29u)]), 75249i, global4[_wgslsmith_index_u32(global1.a, 29u)]), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(1u, 29u)], -global4[_wgslsmith_index_u32(arg_0.x, 29u)]), _wgslsmith_clamp_i32(9942i, 1i, global4[_wgslsmith_index_u32(global1.a, 29u)]) | global4[_wgslsmith_index_u32(~var_1.x, 29u)], global4[_wgslsmith_index_u32(global1.a, 29u)]), _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(arg_0.x, 29u)], global4[_wgslsmith_index_u32(56944u, 29u)]), -_wgslsmith_sub_i32(~global4[_wgslsmith_index_u32(global1.a, 29u)], global4[_wgslsmith_index_u32(~35405u, 29u)]), func_2(u_input.b)));
    return Struct_1(_wgslsmith_mod_u32(41680u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, var_1.x), vec4<u32>(u_input.b.x, var_1.x, 1u, 62917u)) ^ (vec4<u32>(4294967295u, var_1.x, global3.a, arg_0.x) | vec4<u32>(global1.a, global3.a, 32292u, 0u)), max(vec4<u32>(4294967295u, 33268u, 1u, u_input.a) & vec4<u32>(0u, var_1.x, 1u, 64665u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, global1.a), vec4<u32>(97992u, global3.a, global1.a, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(vec2<u32>(_wgslsmith_mult_u32(~(global3.a >> (6058u % 32u)), global3.a), select(1u | global3.a, u_input.b.x, all(vec4<bool>(true, true, true, true)))));
    var var_0 = Struct_2(vec2<bool>(true, true), vec4<f32>(global2[_wgslsmith_index_u32(1u, 15u)], 615f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(49771u, 15u)], _wgslsmith_f_op_f32(abs(1000f)))), -255f), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, 27648u, u_input.b.x, 1u)), firstTrailingBit(vec4<u32>(global1.a, 36073u, 0u, global3.a))), select(vec4<u32>(30799u, 34890u, global3.a, u_input.a) >> (vec4<u32>(global3.a, global1.a, 45182u, 41782u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(16600u, 1u, 29755u, 1u)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -3034f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], -542f))))));
    let var_1 = ~reverseBits(vec4<i32>(73727i, global4[_wgslsmith_index_u32(~select(global3.a, global1.a, var_0.d), 29u)], global4[_wgslsmith_index_u32(1u, 29u)], -reverseBits(global4[_wgslsmith_index_u32(1u, 29u)])));
    global4 = array<i32, 29>();
    let var_2 = false;
    let var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, global2[_wgslsmith_index_u32(func_3(var_0.d), 15u)]);
}

