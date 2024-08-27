struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 559f;

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: array<bool, 10> = array<bool, 10>(true, true, true, false, true, false, true, true, true, true);

var<private> global3: vec4<i32> = vec4<i32>(-386i, 2147483647i, -9211i, 2147483647i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = arg_1;
    global1 = array<vec2<bool>, 5>();
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, i32(-1i) * -14544i, u_input.a.x >> (u_input.d.x % 32u)), vec4<i32>(_wgslsmith_mult_i32(reverseBits(-1i), 4409i), ~firstTrailingBit(u_input.c.x), ~_wgslsmith_dot_vec2_i32(~global3.wz, _wgslsmith_div_vec2_i32(u_input.a.xy, vec2<i32>(-1i, -17323i))), _wgslsmith_add_i32(_wgslsmith_div_i32(~1i, global3.x), 20257i)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1466f) - _wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) + _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(f32(-1f) * -739f));
    var var_3 = Struct_1(true, ~global3.yyz);
    return Struct_4(Struct_3(~(~vec4<u32>(u_input.d.x, u_input.b.x, 15897u, u_input.b.x)), ~u_input.c, i32(-1i) * -var_3.b.x, Struct_2(Struct_1(var_3.a, u_input.a), Struct_1(true, var_3.b), ~53762u, var_3.a), -16903i), u_input.a.x, false, true, vec4<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.c.x, abs(var_3.b.x)), _wgslsmith_mod_i32(arg_2, ~(-3162i >> (0u % 32u))), arg_2 | global3.x));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(588f, -540f))), 772f) * vec2<f32>(1253f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = -3150f;
    let var_2 = global3.x;
    let var_3 = Struct_3(~arg_1.a.a & vec4<u32>(arg_3.x, arg_3.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 44439u), _wgslsmith_sub_u32(1u, arg_3.x), 1u), _wgslsmith_mod_u32(arg_1.a.a.x, select(51399u, 50137u, arg_1.a.d.a.a))), arg_1.e.xx, 94091i, Struct_2(arg_1.a.d.a, arg_1.a.d.b, u_input.b.x, arg_2), -(~u_input.a.x));
    let var_4 = var_3.d.b.a;
    return all(select(select(select(vec3<bool>(true, var_4, global2[_wgslsmith_index_u32(arg_3.x, 10u)]), vec3<bool>(true, arg_2, global2[_wgslsmith_index_u32(var_3.d.c, 10u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1.a.a.x, 10u)], false)), !vec3<bool>(arg_1.c, true, true), false), vec3<bool>(true, all(vec4<bool>(var_3.d.b.a, true, var_3.d.a.a, true)), false), !var_3.d.d)) & true;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1904f), 465f, -(~(~global3.x >> (~u_input.b.x % 32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(702f - -112f), -334f, -2012f), vec3<f32>(-1015f, 726f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1673f, 718f, true)), -611f)))));
    let var_1 = var_0.e.zxy;
    var var_2 = -633f;
    global2 = array<bool, 10>();
    let var_3 = Struct_4(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~29663i), -global3.ww), select(global2[_wgslsmith_index_u32(var_0.a.a.x, 10u)] & var_0.c, false || (func_3(global2[_wgslsmith_index_u32(4294967295u, 10u)], var_0, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], var_0.a.a.zyz) & var_0.d), false), _wgslsmith_f_op_f32(-2107f * -1155f) <= _wgslsmith_f_op_f32(floor(1000f)), var_0.e);
    return var_0.a.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), Struct_1(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 10u)], -_wgslsmith_div_vec3_i32(select(global3.wxy, global3.wzx, global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), global3.wyw)), select(~(u_input.b.x | 12147u) | ~u_input.d.x, 57015u, !func_1().a), false);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-622f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1429f)))), -1000f));
    global2 = array<bool, 10>();
    let var_2 = ~abs(57367u);
    global1 = array<vec2<bool>, 5>();
    global2 = array<bool, 10>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1), vec2<f32>(1f, 1f), !vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 10u)], false))), global1[_wgslsmith_index_u32(16361u, 5u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 651f))))));
    global1 = array<vec2<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1843f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, 1529f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1191f - var_3.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, 1146f, true)))), 1825f, var_1.x))), 1u, 2147483647i);
}

