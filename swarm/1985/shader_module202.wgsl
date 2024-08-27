struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 26> = array<f32, 26>(-1354f, -196f, -142f, 878f, 1197f, -644f, -510f, 1000f, -1000f, -568f, -1203f, 339f, -1000f, -592f, -297f, -1000f, 682f, 1000f, 1159f, 1436f, 672f, -1000f, 712f, 1000f, 621f, -753f);

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> i32 {
    global2 = global0.x >> (15821u % 32u);
    let var_0 = (-2147483647i & _wgslsmith_clamp_i32(u_input.b, abs(max(global0.x, global0.x)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, -7582i, 47653i), -1002i))) >> (u_input.a.x % 32u);
    var var_1 = any(select(vec2<bool>(firstTrailingBit(4294967295u) > 23519u, false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), true), vec2<bool>(-u_input.c.x <= select(-39961i, u_input.c.x, false), true)));
    var var_2 = -1i;
    global1 = array<f32, 26>();
    return var_0;
}

fn func_2() -> bool {
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_mod_u32(min(~4294967295u, ~u_input.a.x), _wgslsmith_mult_u32(0u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 26u)])))), u_input.b), -424f, u_input.a.yx, Struct_2(~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(0u, 26u)], u_input.b));
    global2 = global0.x;
    let var_1 = ~(~4294967295u);
    return !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.b == var_0.d.b, var_0.d.b <= 1846f, true), true));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<bool> {
    global1 = array<f32, 26>();
    var var_0 = vec2<i32>(~u_input.b, ~u_input.b);
    return !select(select(select(vec4<bool>(arg_0, arg_0, arg_1.x, true), vec4<bool>(false, false, arg_0, arg_0), select(vec4<bool>(arg_1.x, false, arg_0, arg_1.x), vec4<bool>(arg_0, false, true, arg_0), arg_0)), vec4<bool>(any(vec4<bool>(true, true, false, arg_1.x)), global1[_wgslsmith_index_u32(28507u, 26u)] != -2552f, any(vec4<bool>(false, arg_0, true, arg_0)), arg_1.x | arg_0), !select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_0, arg_1.x), arg_0)), !(!vec4<bool>(arg_0, true, arg_1.x, arg_0)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(18890u, 38984u, u_input.a.x, 38504u))), ~vec4<u32>(u_input.a.x ^ 5334u, _wgslsmith_sub_u32(17366u, 0u), u_input.a.x >> (13061u % 32u), u_input.a.x));
    var var_1 = any(vec2<bool>(true, false));
    let var_2 = -(~(-(i32(-1i) * -1i)));
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(0i, (i32(-1i) * -1i) & (global0.x & -28194i), func_1()) ^ vec3<i32>(3489i, u_input.c.x, -2147483647i), u_input.c);
    let var_4 = select(!vec2<bool>(func_2(), true), !vec2<bool>(any(func_3(false, vec3<bool>(true, false, true))), select(true, true, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), func_3(false, vec3<bool>(true, true, true)).x));
    var var_5 = vec3<i32>(-50344i, firstTrailingBit(func_1()), u_input.c.x);
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 26u)] * 420f) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])) - 1461f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 26u)] + _wgslsmith_f_op_f32(f32(-1f) * -620f)), -586f, func_3(u_input.a.x < 56474u, vec3<bool>(var_4.x, false, false)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-2791f, global1[_wgslsmith_index_u32(var_0.x, 26u)])), _wgslsmith_div_f32(-867f, global1[_wgslsmith_index_u32(var_0.x, 26u)]))))), 396f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(300f + -1544f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_6.xx), var_6.zxw, ~(-var_3.x) ^ ~firstLeadingBit(-1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_6.xw, vec2<f32>(-1543f, var_6.x))))));
}

