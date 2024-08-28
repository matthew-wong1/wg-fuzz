struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(287f, vec2<i32>(-1i, -1i), true), Struct_1(-710f, vec2<i32>(-1i, 1i), false), Struct_1(-216f, vec2<i32>(2147483647i, -8122i), true), Struct_1(-1000f, vec2<i32>(-4801i, 0i), false), Struct_1(686f, vec2<i32>(-20764i, -26920i), false), Struct_1(-308f, vec2<i32>(2147483647i, 1i), true), Struct_1(-1142f, vec2<i32>(49928i, 33315i), false), Struct_1(455f, vec2<i32>(-11791i, 1i), false), Struct_1(-103f, vec2<i32>(-10404i, 12424i), true), Struct_1(1489f, vec2<i32>(-2338i, 1i), false), Struct_1(-1000f, vec2<i32>(1i, 71235i), false), Struct_1(1369f, vec2<i32>(-36838i, 23115i), true), Struct_1(174f, vec2<i32>(27660i, 1i), false), Struct_1(-815f, vec2<i32>(0i, -1i), false), Struct_1(109f, vec2<i32>(-1i, 35513i), false), Struct_1(532f, vec2<i32>(-64080i, -1i), false), Struct_1(486f, vec2<i32>(-12520i, 12052i), false), Struct_1(-1242f, vec2<i32>(0i, -25455i), true), Struct_1(205f, vec2<i32>(-1i, -40884i), false), Struct_1(-2041f, vec2<i32>(13460i, i32(-2147483648)), false), Struct_1(-701f, vec2<i32>(41448i, 0i), false), Struct_1(-344f, vec2<i32>(15285i, 1i), true), Struct_1(-1324f, vec2<i32>(-1i, 1i), false), Struct_1(1746f, vec2<i32>(7139i, -9170i), true), Struct_1(-1571f, vec2<i32>(1i, -42546i), false), Struct_1(618f, vec2<i32>(-27111i, i32(-2147483648)), false), Struct_1(-296f, vec2<i32>(1i, 0i), false));

var<private> global2: array<i32, 18>;

var<private> global3: array<i32, 10>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    let var_0 = 0u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1510f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0, 5u)], global0[_wgslsmith_index_u32(var_0, 5u)], arg_0.x)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))) + _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b & var_0, 15590u | u_input.a.x), 5u)], -1000f))), _wgslsmith_mod_vec2_i32(-select(vec2<i32>(global2[_wgslsmith_index_u32(9602u, 18u)], 0i), -vec2<i32>(global3[_wgslsmith_index_u32(0u, 10u)], -62060i), any(arg_0)), vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(8002u, u_input.b)), 18u)], abs(0i))), arg_0.x);
    let var_2 = _wgslsmith_dot_vec3_i32(abs(-(vec3<i32>(-1i) * -vec3<i32>(-8914i, 3861i, global3[_wgslsmith_index_u32(25668u, 10u)]))), vec3<i32>(-_wgslsmith_add_i32(arg_1, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(27483u, u_input.b), 10u)]), _wgslsmith_add_i32(29396i, ~(var_1.b.x & global3[_wgslsmith_index_u32(var_0, 10u)])), ~(-5444i)));
    global0 = array<f32, 5>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -1218f) * -1405f), var_1.b, arg_0.x);
    return firstTrailingBit(_wgslsmith_add_u32(4294967295u, var_0) | 24818u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = reverseBits(func_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))), -4676i)) << ((func_3(vec4<bool>(all(vec2<bool>(false, true)), true, true, false), firstLeadingBit(firstTrailingBit(29202i))) << (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1032f, -146f, -1072f, -734f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 114f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])))), all(vec2<bool>(true, true))))));
    let var_2 = Struct_1(281f, _wgslsmith_mod_vec2_i32(arg_0, -vec2<i32>(24140i, -2147483647i)) | ~arg_1.yz, true);
    let var_3 = true;
    let var_4 = any(select(!select(!vec3<bool>(var_3, var_2.c, var_2.c), vec3<bool>(false, false, var_2.c), !vec3<bool>(var_2.c, var_2.c, var_3)), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(u_input.a.x, 5u)] <= _wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(f32(-1f) * -1029f))));
    return Struct_1(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(55884u, func_3(vec4<bool>(true, true, true, var_3), global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), 5u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(max(570f, 1608f)))))), ~(~arg_1.yx), any(select(vec2<bool>(!var_3, true), select(vec2<bool>(false, var_3), vec2<bool>(var_4, var_4), !var_4), vec2<bool>(var_2.c, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    var var_0 = ~u_input.a.yz;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(1375f)), _wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_3, 5u)] - arg_0.a)) + _wgslsmith_f_op_f32(2018f * _wgslsmith_div_f32(986f, 380f))) + _wgslsmith_f_op_f32(trunc(-1156f))));
    let var_2 = func_2(arg_2.b, min(max(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 0i, 1i), vec3<i32>(arg_2.b.x, arg_2.b.x, 10934i)), ~vec3<i32>(10023i, 50374i, -1i)), vec3<i32>(arg_0.b.x, -2147483647i, arg_2.b.x) << (~u_input.a.yxw % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(reverseBits(select(vec3<i32>(-2147483647i, arg_0.b.x, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<i32>(60786i, arg_0.b.x, arg_0.b.x), arg_2.c)), reverseBits(vec3<i32>(arg_0.b.x, 37273i, arg_0.b.x)))));
    global2 = array<i32, 18>();
    var var_3 = Struct_1(arg_2.a, vec2<i32>(~(~(-arg_0.b.x)), min(~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(18554u, arg_3), 18u)], -firstTrailingBit(1i))), (38554i >> (func_3(select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0.c, arg_2.c, var_2.c), vec4<bool>(var_2.c, var_2.c, arg_0.c, var_2.c)), var_2.b.x) % 32u)) < _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], ~(-2147483647i & global3[_wgslsmith_index_u32(var_0.x, 10u)])));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.zx, _wgslsmith_div_vec2_f32(arg_1.xx, vec2<f32>(2128f, var_2.a)), true)))), arg_3 >> ((u_input.b | 493u) % 32u), u_input.a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(~1u, 10u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~u_input.b, u_input.a.x), 18u)] & 0i), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 0u) & 1u, _wgslsmith_mod_u32(~42971u, ~u_input.a.x)), 10u)]);
    global1 = array<Struct_1, 27>();
    global0 = array<f32, 5>();
    global3 = array<i32, 10>();
    let x = u_input.a;
    s_output = func_1(Struct_1(1679f, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global3[_wgslsmith_index_u32(0u, 10u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)])), countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], -23918i))) | _wgslsmith_mult_vec2_i32(max(vec2<i32>(-12628i, 2147483647i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)])), vec2<i32>(6050i, global3[_wgslsmith_index_u32(u_input.b, 10u)])), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(910f, 1725f, global0[_wgslsmith_index_u32(u_input.b, 5u)]))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(678f, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<f32>(-621f, global0[_wgslsmith_index_u32(26518u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 236f, global0[_wgslsmith_index_u32(1u, 5u)]), vec3<f32>(global0[_wgslsmith_index_u32(62209u, 5u)], -1000f, 794f)))))), global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(abs(~u_input.b), u_input.a.x)), 27u)], abs(u_input.a.x));
}

