struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3) -> u32 {
    return u_input.a.x;
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_1(-998f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-839f))))));
    var var_1 = Struct_2(abs(8252u));
    global0 = 0u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1770f - 727f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.b), -1514f)))));
    var var_3 = !all(vec4<bool>(false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false)), global1.a != _wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.xy), false));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = arg_3;
    var var_1 = vec2<bool>(func_3(), any(select(!(!vec4<bool>(false, true, arg_2, true)), select(!vec4<bool>(arg_2, arg_2, arg_2, false), select(vec4<bool>(true, true, arg_2, true), vec4<bool>(arg_2, true, false, true), vec4<bool>(true, false, arg_2, true)), vec4<bool>(false, arg_2, false, arg_2)), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, false, arg_2 && true))));
    var_1 = select(select(vec2<bool>(true, false), vec2<bool>(false, false), !select(vec2<bool>(false, var_1.x), vec2<bool>(arg_2, var_1.x), true)), select(select(select(!vec2<bool>(arg_2, var_1.x), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, var_1.x), var_1.x), vec2<bool>(arg_2, true)), select(vec2<bool>(var_1.x, false), vec2<bool>(arg_2, false), true), select(select(vec2<bool>(false, false), vec2<bool>(arg_2, var_1.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2))), select(!vec2<bool>(true, var_1.x), !vec2<bool>(false, var_1.x), true), vec2<bool>(select(select(arg_2, var_1.x, false), var_1.x, true), all(vec4<bool>(true, var_1.x, arg_2, false)))), true & var_1.x);
    var var_2 = -2147483647i;
    global0 = ~4294967295u;
    return var_1.x & !any(select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, var_1.x, true, false), false), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, true, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-222f, -934f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(min(-1305f, -2046f))))), ~vec2<u32>(global1.a, arg_1), all(vec4<bool>(arg_0.x, true || func_3(), true, u_input.a.x >= firstLeadingBit(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-351f * -450f)));
    var var_1 = Struct_2(arg_1);
    var var_2 = var_0;
    var var_3 = select(!(!vec4<bool>(func_4(Struct_3(Struct_1(-640f, -275f)), u_input.a.wy, var_0, 1641f), arg_2.x, var_0 && arg_2.x, true & arg_2.x)), !vec4<bool>(arg_2.x, true, arg_2.x, true), 1974f == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1214f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_4 = (2147483647i <= min(1392i ^ (u_input.c << (94167u % 32u)), countOneBits(_wgslsmith_add_i32(u_input.c, u_input.c)))) | true;
    return select(var_3.wwz, var_3.wwy, var_3.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(select(vec3<bool>(true, true, true), func_2(vec2<bool>(false, true), func_1(Struct_3(Struct_1(258f, 1317f))), vec2<bool>(true, true)), vec3<bool>(true, true, true))), func_4(Struct_3(Struct_1(1001f, _wgslsmith_f_op_f32(f32(-1f) * -1298f))), vec2<u32>(global1.a, _wgslsmith_div_u32(4294967295u, ~36729u)), !(global1.a > _wgslsmith_sub_u32(global1.a, u_input.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-653f, -805f), _wgslsmith_f_op_f32(f32(-1f) * -568f)))))));
    global1 = Struct_2(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, global1.a), vec4<u32>(39026u, 38346u, 4294967295u, global1.a)) ^ u_input.b));
    global0 = 38867u >> (_wgslsmith_add_u32(firstTrailingBit(min(global1.a, abs(69783u))), ~(~_wgslsmith_dot_vec3_u32(u_input.a.wwx, u_input.a.yyy))) % 32u);
    global1 = Struct_2(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(~min(11986i, 1i), u_input.c), -92841i), vec2<i32>(firstTrailingBit(u_input.c), -1i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-60459i, u_input.c), _wgslsmith_add_vec2_i32(select(vec2<i32>(43430i, 0i), vec2<i32>(-15328i, -24003i), true), vec2<i32>(u_input.c, u_input.c))), global1.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-673f + 1000f), -536f))), 402f, _wgslsmith_f_op_f32(step(-1090f, 1388f))));
}

