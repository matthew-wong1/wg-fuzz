struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: vec2<f32> = vec2<f32>(-792f, 254f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(true, global1.x <= _wgslsmith_f_op_f32(ceil(1785f)));
    global0 = array<vec3<bool>, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1074f) - vec3<f32>(global1.x, global1.x, -284f))))))), vec2<i32>(0i, abs(u_input.a)));
    var var_2 = var_1;
    var_2 = var_1;
    return _wgslsmith_add_i32(-15309i, firstLeadingBit(49347i));
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = Struct_2(~55800u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 455f) * vec4<f32>(global1.x, global1.x, 240f, 225f))))), firstTrailingBit(-55825i), 0i);
    var var_1 = vec2<u32>(var_0.a, countOneBits(~var_0.a));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(var_0.b.x, var_0.b.x)) - -1000f)))));
    let var_3 = Struct_2(~79352u, var_0.b, u_input.a, _wgslsmith_mult_i32(var_0.c, -24120i));
    global0 = array<vec3<bool>, 21>();
    return -vec3<i32>(-2147483647i, -select(_wgslsmith_add_i32(var_0.d, u_input.a), func_3(), -14746i >= var_3.d), min(var_0.d, _wgslsmith_clamp_i32(~var_3.c, 1i, 0i)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = (select(u_input.a >= arg_0, any(vec2<bool>(true, true)) & false, true) && true) & true;
    var var_1 = abs(_wgslsmith_sub_vec3_i32(func_2(u_input.a != -6666i) | (-vec3<i32>(u_input.a, 1i, 1i) ^ -vec3<i32>(-41179i, arg_0, arg_0)), ~reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))));
    let var_2 = Struct_2(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, 699f, global1.x, -389f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 246f, global1.x) * vec4<f32>(-184f, -829f, global1.x, -357f))))), var_1.x, -17269i);
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b.x, 1370f, var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(180f, var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(global1.x, var_2.b.x, global1.x, 350f)))))))), u_input.a, _wgslsmith_clamp_i32(1i, 1i, ~(i32(-1i) * -30035i)));
    var_1 = select(~vec3<i32>(-var_3.c, -30239i, -u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 33015i, min(35613i, 1i)), max(vec3<i32>(var_3.c, var_2.c, 20520i) ^ vec3<i32>(u_input.a, u_input.a, var_1.x), func_2(false)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(27083i, var_1.x)), ~0i, 29803i)), vec3<bool>(false, false, _wgslsmith_div_f32(1634f, var_2.b.x) > global1.x)) << (arg_1.wxy % vec3<u32>(32u));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-285f + global1.x), _wgslsmith_f_op_f32(func_1(31777i, vec4<u32>(1u, 9658u, 0u, 98156u))), true)))))), -168f);
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    var var_0 = _wgslsmith_mod_u32(firstTrailingBit(12308u), _wgslsmith_div_u32(59036u, _wgslsmith_dot_vec3_u32(vec3<u32>(~11270u, ~4294967295u, ~28138u), vec3<u32>(1u, 1u, 1u))));
    var var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1162f * global1.x), abs(vec2<i32>(u_input.a, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-570f - -256f), _wgslsmith_f_op_f32(func_1(1i, vec4<u32>(4095u, 0u, 8402u, 0u))), global1.x))));
}

