struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: u32 = 58427u;

var<private> global2: array<i32, 8>;

var<private> global3: f32 = -1576f;

var<private> global4: array<u32, 13> = array<u32, 13>(4294967295u, 12395u, 1u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 97309u, 114366u, 49154u, 4294967295u, 1u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = u_input.e.zyz;
    var var_1 = var_0.x;
    return vec4<bool>(all(select(vec2<bool>(true, !global0.x), vec2<bool>(global0.x, arg_1.a < -511f), !(!vec2<bool>(global0.x, true)))), all(!vec2<bool>(global0.x, !global0.x)), true, global0.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = select(!vec4<bool>(false, global0.x, (true || global0.x) && true, true), select(select(func_3(~33607u, arg_0), vec4<bool>(select(global0.x, true, false), false, false, any(vec3<bool>(false, global0.x, global0.x))), global0.x), select(vec4<bool>(true, false && global0.x, all(vec3<bool>(true, false, true)), global0.x != global0.x), !(!vec4<bool>(true, global0.x, false, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], 25394i, global2[_wgslsmith_index_u32(86076u, 8u)], -12528i), vec4<i32>(0i, global2[_wgslsmith_index_u32(9182u, 8u)], -1i, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1.x, 13u)], 8u)])) <= -u_input.d.x), !(409f == arg_0.a)), !select(func_3(_wgslsmith_sub_u32(3306u, arg_1.x), Struct_5(-1053f)), select(!vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, false, false, true), false), !(!vec4<bool>(false, true, global0.x, global0.x))));
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-394f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + arg_0.a), -1628f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.a) - arg_0.a), arg_0.a)));
    global1 = reverseBits(4294967295u);
    global0 = vec4<bool>(true, true, any(!(!vec2<bool>(false, var_0.x))), false == var_0.x);
    var var_1 = 69800u;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), arg_0.a) - vec2<f32>(-1875f, arg_0.a))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> vec2<i32> {
    global1 = ~_wgslsmith_div_u32(1u, 1u);
    global2 = array<i32, 8>();
    let var_0 = Struct_3(!select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_1.b, arg_1.b, true, false)), false));
    var var_1 = -10336i;
    global2 = array<i32, 8>();
    return select(vec2<i32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~abs(global4[_wgslsmith_index_u32(16965u, 13u)]), 13u)], 8u)] >> (_wgslsmith_sub_u32(~0u, abs(u_input.b)) % 32u), max(_wgslsmith_mult_i32(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_3.x, 13u)], 8u)], 2147483647i), u_input.d.wy)), 36145i)), vec2<i32>(0i, -countOneBits(global2[_wgslsmith_index_u32(arg_3.x, 8u)])) >> (~vec2<u32>(firstLeadingBit(1u), _wgslsmith_clamp_u32(3295u, arg_3.x, 1u)) % vec2<u32>(32u)), func_3(~(51584u | max(4294967295u, u_input.a.x)), Struct_5(-850f)).wz);
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_f32(733f, 2842f);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-813f, arg_0)), 560f, -1033f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1053f, arg_0, arg_3.c.a.x), vec3<f32>(-304f, arg_3.c.a.x, arg_3.a), arg_2.zww)))))));
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 484f, arg_3.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1117f, var_1.x) + vec3<f32>(-1605f, 686f, var_1.x)))))), Struct_2(arg_3.a, func_3(1u, Struct_5(arg_3.a)).x, arg_3.c), _wgslsmith_f_op_f32(-arg_3.c.a.x), u_input.e).x;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), -906f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(max(arg_3.a, var_1.x)), !global0.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.c.a.x, 2398f, arg_3.c.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.a, -1008f, arg_0))))))))));
    var var_4 = Struct_5(-1778f);
    return _wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(~arg_1, arg_1)), arg_1.x);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f + 217f));
    var var_1 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-1f));
    var var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(369f)) * _wgslsmith_f_op_f32(-var_0))))), min(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, abs(2147483647i)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-25437i, 1i), vec2<i32>(-9480i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec2<i32>(u_input.c, u_input.c) | u_input.d.wx)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1000f) - vec3<f32>(var_0, 121f, var_0))), Struct_2(-2125f, true, func_2(Struct_5(980f), u_input.a, global2[_wgslsmith_index_u32(4294967295u, 8u)])), -1373f, vec4<u32>(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], 20340u), ~u_input.a.x, global4[_wgslsmith_index_u32(1u, 13u)] << (4294967295u % 32u), ~1u))), !vec4<bool>(!global0.x, !all(vec4<bool>(global0.x, true, global0.x, global0.x)), true | global0.x, _wgslsmith_mult_u32(1u, u_input.a.x) <= ~u_input.b), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), global0.x, func_2(Struct_5(var_0), reverseBits(u_input.a) & u_input.e.zy, global2[_wgslsmith_index_u32(min(u_input.b, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(30996u, 31149u), 13u)]), 8u)])));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(15772i, 60156i), u_input.d.xy);
    global4 = array<u32, 13>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(false, func_1()));
    var var_1 = -(~(-u_input.d.xxw));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wxy, global2[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f - -162f) + func_2(Struct_5(-275f), vec2<u32>(u_input.e.x, u_input.b), 2147483647i).a.x), -2595f), -419f)));
}

