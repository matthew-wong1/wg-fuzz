struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -197f), arg_0), _wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(595f, -908f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(363f, arg_0.x) - arg_0), vec2<f32>(1f, _wgslsmith_f_op_f32(select(804f, arg_0.x, false)))) + vec2<f32>(arg_0.x, 978f)));
    var var_1 = arg_0;
    var var_2 = vec2<i32>(2147483647i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, -1i, 1i) & arg_2.a, vec3<i32>(arg_3.a, arg_2.a.x, 2147483647i)), -1i), -(-46712i << (~(~arg_3.b.x) % 32u)));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.x ^ 1u, min(0u, u_input.a.x)), arg_1.x), u_input.a.x), u_input.a.yyx);
    var var_4 = arg_2.a.x;
    return arg_3.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-1i, u_input.a);
    let var_1 = Struct_2(vec3<i32>(~_wgslsmith_mult_i32(min(var_0.a, 1i), _wgslsmith_sub_i32(var_0.a, var_0.a)), -1i, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(843f, 349f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-260f, 530f)))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1670u, u_input.a.x), var_0.b.yxw), Struct_2(abs(vec3<i32>(var_0.a, -2147483647i, var_0.a))), Struct_1(min(var_0.a, var_0.a), ~vec4<u32>(58532u, u_input.a.x, 0u, var_0.b.x)))));
    let var_2 = u_input.a.yy;
    var var_3 = Struct_1(countOneBits(min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, var_1.a.x), 0i), -7844i)), ~vec4<u32>(var_0.b.x, _wgslsmith_sub_u32(7238u, abs(var_0.b.x)), ~(~651u), var_2.x));
    var_3 = Struct_1(var_3.a, u_input.a);
    return u_input.a.x;
}

fn func_1() -> bool {
    let var_0 = Struct_1(firstLeadingBit(-2147483647i), select(~(firstTrailingBit(u_input.a) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 70946u) % vec4<u32>(32u))), vec4<u32>(func_2(), ~(0u ^ u_input.a.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~u_input.a.x), ~(u_input.a.x ^ u_input.a.x)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(true, false, false)))));
    let var_1 = u_input.a.wwy;
    let var_2 = select(4294967295u, u_input.a.x, true);
    return any(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, var_0.a <= -10929i, false)), true && select(true, true, true)));
}

fn func_4(arg_0: bool) -> StorageBuffer {
    var var_0 = Struct_2(select(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(77159i, -36849i, -36068i), vec3<i32>(15160i, 4254i, 15026i)), vec3<i32>(1i, 1i, 1i), vec3<bool>((u_input.a.x & 30890u) <= ~u_input.a.x, all(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), arg_0 & select(arg_0, arg_0, arg_0))));
    var var_1 = vec2<u32>(4294967295u, 0u);
    var_1 = ~(~vec2<u32>(19708u, 12260u << (u_input.a.x % 32u)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1464f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -811f, select(any(vec4<bool>(false, arg_0, arg_0, false)), true, true)))))));
    var var_3 = Struct_1(var_0.a.x, firstTrailingBit(~(~vec4<u32>(15244u, var_1.x, u_input.a.x, 4294967295u))));
    return StorageBuffer(reverseBits(var_0.a), reverseBits(vec2<u32>(1u, min(36322u, var_3.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!func_1() | ((func_3(vec2<f32>(1147f, -125f), u_input.a.zwy, Struct_2(vec3<i32>(0i, -1i, 0i)), Struct_1(41388i, vec4<u32>(u_input.a.x, 96080u, 60510u, 26507u))) << (~1u % 32u)) <= -func_3(vec2<f32>(1014f, -285f), vec3<u32>(62737u, 40919u, u_input.a.x), Struct_2(vec3<i32>(0i, 2147483647i, -8411i)), Struct_1(53931i, vec4<u32>(u_input.a.x, 69900u, u_input.a.x, u_input.a.x)))));
}

