struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec2<f32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec3_u32(~(_wgslsmith_mod_vec3_u32(countOneBits(u_input.d.wzz), u_input.d.yww) & (reverseBits(vec3<u32>(arg_0.a, arg_0.a, 47745u)) >> (u_input.d.xyx % vec3<u32>(32u)))), firstTrailingBit(u_input.d.xxy));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, -385f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(-1481f, global1.x)))))));
    let var_1 = ~countOneBits(var_0.x) << (u_input.d.x % 32u);
    var var_2 = false;
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1395f)), _wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f * global1.x) * _wgslsmith_f_op_f32(global1.x * global1.x)))));
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(16041u, 29062u), ~var_1 >> ((firstTrailingBit(0u) & 70938u) % 32u)) | arg_0.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, 1303f)) * _wgslsmith_f_op_f32(-278f - -1045f)))));
    var var_0 = Struct_1(~arg_0.x);
    let var_1 = Struct_2(Struct_1(4294967295u), Struct_1(1u << (func_3(Struct_1(0u), vec2<bool>(true, true), vec2<i32>(u_input.a.x, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -9845i, arg_2, arg_2), vec4<i32>(u_input.b, arg_2, u_input.a.x, 0i))) % 32u)), Struct_1(_wgslsmith_div_u32(~4294967295u, 13507u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f + 539f) - global1.x))));
    let var_2 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)) || false, true, true | (var_0.a == var_0.a)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), !all(vec4<bool>(false, false, false, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, false)), true));
    var var_3 = Struct_2(Struct_1(~23364u), var_1.b, Struct_1(~(~_wgslsmith_div_u32(29990u, 39309u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + global1.x) + -123f));
    return -525f;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    let var_0 = 16421i;
    var var_1 = select(!(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)), vec3<bool>(true, true, true), false);
    let var_2 = false;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(arg_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-215f + 702f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(arg_3.b.a, arg_1.a), -782f, -var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - -724f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(217f - arg_0.x) - _wgslsmith_f_op_f32(func_2(max(u_input.d.wx, u_input.d.zw), _wgslsmith_f_op_f32(abs(-798f)), -1i & u_input.b)))), arg_0.x);
    global0 = reverseBits(~(~36094u));
    return var_2 != (any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, var_2), !var_1.x)) | true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(-global1.x)) * global1.x)));
    let var_0 = 7345u;
    var var_1 = false | !(!(385f == global1.x));
    var_1 = any(!select(vec4<bool>(true, true, false, func_1(vec4<f32>(534f, 648f, global1.x, global1.x), Struct_1(1u), u_input.a, Struct_2(Struct_1(1u), Struct_1(0u), Struct_1(13111u), 1000f))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, any(vec4<bool>(false, true, false, false)))));
    var var_2 = select(!(!any(vec2<bool>(true, true))) && (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1000f)) < 1344f), false, any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-104f, -758f) + global1.x)));
    let var_4 = vec4<u32>(~countOneBits(_wgslsmith_add_u32(min(u_input.c, 80829u), 17317u)), _wgslsmith_add_u32(34317u, (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 54161u, 0u, 1u), u_input.d) ^ _wgslsmith_dot_vec3_u32(u_input.d.xyy, vec3<u32>(99448u, 1u, 40250u))) ^ ~(~26735u)), u_input.d.x, var_0);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-141f, global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -960f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(var_4.x << (var_0 % 32u))) >> (4294967295u % 32u));
}

