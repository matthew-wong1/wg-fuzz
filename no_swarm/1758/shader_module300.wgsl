struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<u32, 21>;

var<private> global4: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_add_u32(var_0.c.x, global3[_wgslsmith_index_u32(u_input.a, 21u)]);
    let var_2 = arg_1;
    var var_3 = 4294967295u;
    return arg_3.x;
}

fn func_2() -> u32 {
    let var_0 = select(-firstLeadingBit(vec4<i32>(3162i, 54213i, 23206i, 2147483647i)) ^ vec4<i32>(28744i, max(-1i, _wgslsmith_add_i32(-1i, -11535i)), func_3(true, Struct_1(global1.a, global1.b, vec3<u32>(global1.c.x, 4294967295u, u_input.b), false), _wgslsmith_f_op_f32(f32(-1f) * -1031f), vec3<i32>(2147483647i, 2147483647i, -1i)), -(~(-2147483647i))), ~_wgslsmith_sub_vec4_i32(max(vec4<i32>(-40413i, 1i, -10881i, 1903i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2202i, -41195i, 38073i, -1i), vec4<i32>(-1i, -2147483647i, 10493i, 27108i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, 10280i, 0i), vec4<i32>(-62898i, -36842i, 64183i, 10037i))), false & any(global1.a.yy));
    var var_1 = Struct_1(!global1.a, 1356f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -188f), -758f, global1.b || true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mult_vec3_u32(select(_wgslsmith_sub_vec3_u32(~global1.c, global1.c), ~countOneBits(global1.c), !global1.a.wzw), vec3<u32>(u_input.a, max(global3[_wgslsmith_index_u32(27514u, 21u)] << (4294967295u % 32u), global1.c.x & 20853u), ~(~1u))), all(!global1.a));
    let var_2 = Struct_1(select(!(!vec4<bool>(var_1.a.x, false, false, true)), !select(vec4<bool>(var_1.b, false, global1.b, true), select(vec4<bool>(global1.b, false, global1.a.x, global1.d), global1.a, vec4<bool>(global1.a.x, global1.b, var_1.b, false)), all(var_1.a.xyy)), vec4<bool>(var_1.d, all(vec4<bool>(true, global1.b, false, false)), all(!global1.a.yxw), select(global1.a.x, var_0.x < var_0.x, var_1.a.x))), true, global1.c, !all(vec3<bool>(var_1.b, true, false)));
    global2 = min(u_input.b, select(1u, u_input.a, false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f * -338f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1144f, -390f))), 125f, true))));
    return 1445u;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(355f, arg_0))))), _wgslsmith_f_op_f32(arg_0 - -1424f)));
    let var_1 = _wgslsmith_add_u32(~select(global3[_wgslsmith_index_u32(global1.c.x, 21u)], abs(~global3[_wgslsmith_index_u32(20322u, 21u)]), false), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_2(), 21u)], 21u)]);
    var var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-33724i, 1i), vec2<i32>(-65692i, 0i)), func_3(global1.b, Struct_1(global1.a, false, global1.c, false), _wgslsmith_f_op_f32(sign(arg_0)), vec3<i32>(1i, 1i, 1i)), i32(-1i) * -47956i), vec4<i32>(firstLeadingBit(~(-2147483647i)), -abs(1i), ~_wgslsmith_mod_i32(58450i, -37108i), -(~0i)));
    var var_3 = select(select(!vec4<bool>(all(vec4<bool>(global1.b, global1.a.x, true, true)), global1.b, arg_0 > -1342f, global1.c.x < 112152u), global1.a, any(vec3<bool>(true, true, select(true, true, true)))), vec4<bool>(false, select(true, !(!global1.a.x), any(global1.a)), -974f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 222f)), global1.b), !vec4<bool>(select(any(global1.a), var_2.x > -11817i, all(vec3<bool>(global1.b, false, false))), all(global1.a.wyy), !(!global1.b), global1.a.x));
    var_3 = !global1.a;
    return ~0i != _wgslsmith_add_i32(var_2.x, -5193i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 21>();
    let var_0 = any(vec3<bool>(false, global1.d, func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-995f)), _wgslsmith_f_op_f32(1178f + -697f), false)))));
    global2 = u_input.a;
    var var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~4294967295u, 21u)], global1.c.x << (abs(global1.c.x) % 32u)), func_2(), global3[_wgslsmith_index_u32(86409u & u_input.a, 21u)], firstLeadingBit(u_input.b)));
    global2 = _wgslsmith_add_u32(102615u, _wgslsmith_clamp_u32(abs(abs(1u)) | var_1.x, 98181u, u_input.b));
    let var_2 = !global1.a;
    let var_3 = -574f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(56842u, global1.c.x), firstTrailingBit(select(~(~vec3<u32>(global3[_wgslsmith_index_u32(30298u, 21u)], 4294967295u, global1.c.x)), global1.c, global1.a.xzx)));
}

