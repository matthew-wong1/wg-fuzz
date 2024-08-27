struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    global1 = -1i;
    var var_0 = Struct_1(!vec3<bool>(all(vec4<bool>(false, false, false, true)) | any(vec2<bool>(true, false)), true, any(vec4<bool>(true, true, true, true))), 0u, -19073i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-297f, -148f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(-arg_0.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(295f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1244f))), arg_0.x)));
    global0 = ~(~(-max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(global0.x, u_input.a, var_0.c)), select(vec3<i32>(u_input.a, u_input.a, global0.x), vec3<i32>(-1701i, 0i, -5174i), var_0.a))));
    let var_2 = var_1.x;
    return ~(~(vec3<u32>(67497u, 20447u, _wgslsmith_mult_u32(u_input.b, 0u)) & select(_wgslsmith_sub_vec3_u32(vec3<u32>(109241u, var_0.b, u_input.c), vec3<u32>(u_input.b, u_input.c, 4294967295u)), vec3<u32>(var_0.b, u_input.c, var_0.b), !vec3<bool>(var_0.a.x, true, true))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_1(select(vec3<bool>(false, select(false, false, true) != true, true), !vec3<bool>(true, any(vec4<bool>(false, false, false, false)), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), _wgslsmith_mod_u32(35307u, arg_0.x), -2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return vec3<u32>(_wgslsmith_clamp_u32(var_0.b, 53423u, ~var_0.b), 1u, abs(~_wgslsmith_mod_u32(1u, arg_1)));
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_vec3_u32(~(~arg_0 << (func_2(vec2<f32>(176f, -181f)) % vec3<u32>(32u))), arg_0, _wgslsmith_div_vec3_u32(func_3(vec4<u32>(u_input.b, 893u, 4294967295u, 72193u) | (vec4<u32>(arg_0.x, 4294967295u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.c, 52059u, u_input.c) % vec4<u32>(32u))), 4294967295u), arg_0));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f - 1780f)), _wgslsmith_f_op_f32(abs(1969f)))), 911f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(-756f - 829f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) - _wgslsmith_f_op_f32(706f - -463f))), -394f);
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1))));
    let var_3 = ~global0.x;
    return select(vec3<bool>(false, any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), select(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true, false)), select(vec3<bool>(false, false, 1i >= -var_3), vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), true, true & any(vec4<bool>(true, true, false, false))), vec3<bool>(true, _wgslsmith_div_f32(-1247f, -1000f) > var_1.x, !(arg_0.x < var_0.x))), any(vec3<bool>(select(u_input.c, arg_0.x, true) == _wgslsmith_dot_vec3_u32(arg_0, arg_0), u_input.a > 73374i, select(true, any(vec2<bool>(true, true)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(countOneBits(u_input.a), -(_wgslsmith_div_i32(~global0.x, _wgslsmith_mult_i32(global0.x, -3556i)) & global0.x), -_wgslsmith_sub_i32(-20516i, -43868i));
    let var_0 = 1i;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-(firstLeadingBit(u_input.a) >> (4294967295u % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 24407i, 75666i, 2147483647i), vec4<i32>(17920i, var_0, global0.x, 1i)) | var_0, 1i)), u_input.a);
    global1 = -1i;
    let var_2 = !all(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    var var_3 = Struct_1(func_1(reverseBits(~abs(vec3<u32>(11298u, 1u, 1583u)))), ~0u, 19120i);
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<u32>(var_3.b, countOneBits(var_3.b), func_3(vec4<u32>(33353u, 15481u, u_input.c, var_3.b), u_input.c).x), select(vec3<u32>(var_3.b, var_3.b, 0u) >> (vec3<u32>(1u, u_input.c, 5411u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 0u, 0u) | vec3<u32>(57868u, u_input.b, var_3.b), var_3.a)));
}

