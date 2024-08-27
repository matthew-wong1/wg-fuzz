struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, 3394f, _wgslsmith_f_op_f32(f32(-1f) * -3197f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -223f, -1114f) - vec3<f32>(-701f, 898f, 1331f)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-544f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2258f - -414f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1197f)) - _wgslsmith_f_op_f32(min(-1000f, -392f))))));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = abs(u_input.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * vec3<f32>(-1224f, _wgslsmith_f_op_f32(-1450f - 461f), _wgslsmith_f_op_f32(f32(-1f) * -154f))))));
    let var_2 = (~66419u << (u_input.d % 32u)) | (~(~u_input.d) & (~_wgslsmith_mod_u32(u_input.d, 2190u) & 1u));
    let var_3 = Struct_1(u_input.b.zy, _wgslsmith_f_op_f32(740f * var_1.x));
    global0 = 281f;
    return all(vec2<bool>(!all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), true));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<bool>(true, select(true, false, false), arg_0.x, false && func_2(arg_0.zzx));
    global0 = _wgslsmith_f_op_vec3_f32(func_3()).x;
    var_0 = select(!(!select(!vec4<bool>(arg_0.x, arg_0.x, false, var_0.x), vec4<bool>(false, true, false, arg_1), var_0.x)), !vec4<bool>(all(select(var_0.wy, vec2<bool>(arg_1, false), var_0.wy)), any(!vec4<bool>(arg_1, var_0.x, false, var_0.x)), all(vec2<bool>(arg_0.x, arg_0.x)), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 10036i) < -u_input.b.x), select(arg_0, vec4<bool>(var_0.x, arg_0.x, var_0.x, true), !select(select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, true, false, arg_0.x), arg_1), vec4<bool>(false, arg_0.x, arg_1, true), !var_0.x)));
    var_0 = arg_0;
    let var_1 = _wgslsmith_mod_vec4_i32(~firstTrailingBit(firstLeadingBit(~vec4<i32>(2147483647i, u_input.a.x, -25577i, -26977i))), vec4<i32>(u_input.a.x, u_input.b.x, abs(-736i), _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x)));
    return Struct_1(-(u_input.a.yy | -firstTrailingBit(vec2<i32>(var_1.x, -1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1189f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-434f, 704f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec2<bool>(u_input.d <= ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(u_input.d, u_input.d, 57969u)) & u_input.d) | _wgslsmith_add_u32(u_input.d, 51961u)), true);
    var var_1 = Struct_1(vec2<i32>(-2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yy) >> (_wgslsmith_mult_u32(u_input.d, 0u) % 32u))), 2245f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.b)))) + var_1.b), _wgslsmith_f_op_f32(abs(var_1.b)), var_1.b);
    let var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) * _wgslsmith_div_f32(556f, arg_1.b)) + _wgslsmith_div_f32(-410f, var_2.x));
    return select(vec2<bool>(true, true | !(var_0.x && arg_0.x)), vec2<bool>(!(false | func_2(vec3<bool>(true, var_0.x, false))), arg_0.x), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a;
    var var_1 = !vec2<bool>(false, any(vec4<bool>(true, true, true, true)) && true);
    var_1 = !(!func_4(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), func_1(select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, false, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, true)), 26300i != u_input.b.x, ~21693u)));
    let var_2 = -abs((-vec3<i32>(u_input.b.x, var_0.x, 13830i) << (vec3<u32>(0u, 73667u, u_input.d) % vec3<u32>(32u))) << ((~vec3<u32>(31187u, 29240u, 4294967295u) & select(vec3<u32>(u_input.d, 114739u, 54159u), vec3<u32>(u_input.d, 0u, 1u), vec3<bool>(false, false, var_1.x))) % vec3<u32>(32u)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1709f)) + _wgslsmith_f_op_vec3_f32(func_3()).x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_1(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), all(vec4<bool>(var_1.x, true, var_1.x, true)), abs(0u)).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(863f * 887f) - _wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(1097f + 1000f))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1307f))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x - var_3.x))))))));
    var_1 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(all(vec4<bool>(var_1.x, false, false, true)), true), all(select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(abs(vec2<u32>(1u, 1u)) & min(~vec2<u32>(u_input.d, u_input.d), ~vec2<u32>(u_input.d, 68551u))), u_input.c);
}

