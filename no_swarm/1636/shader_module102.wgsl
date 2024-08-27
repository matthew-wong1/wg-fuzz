struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    global0 = ~(~(~1u));
    let var_0 = _wgslsmith_mult_vec2_u32(~(~abs(vec2<u32>(u_input.b, u_input.d))), vec2<u32>(firstTrailingBit(~48735u), u_input.d));
    global0 = 112842u;
    var var_1 = all(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))) || (any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true))) & false);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(818f, 1000f, -196f), vec3<f32>(-1000f, -1319f, 1634f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(985f, -1304f, 1000f)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1493f, -1016f, -690f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, -438f, 159f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1305f, -165f, -1384f)))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1164f)))), _wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f), 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2874f, -1184f) * _wgslsmith_f_op_f32(max(-442f, 1749f)))))), false));
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(3634u, var_0.x), ~10208u);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32) -> i32 {
    global0 = u_input.b;
    global0 = arg_0;
    global0 = u_input.d ^ ~func_3();
    var var_0 = ~firstLeadingBit(1990u);
    global0 = 28130u;
    return abs(u_input.a);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(u_input.a, -35233i), ~abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(8940i, -1i, u_input.a, -8884i), vec4<i32>(0i, u_input.c.x, 7797i, -57121i))), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, func_2(1u, -556f, -569f)), ~u_input.a));
    var var_1 = arg_1;
    var var_2 = Struct_4(-abs(~select(vec4<i32>(u_input.a, -2147483647i, var_0.x, -1i), vec4<i32>(2147483647i, var_0.x, u_input.a, var_0.x), vec4<bool>(false, true, false, true))), Struct_1(max(~abs(vec2<u32>(var_1.x, arg_1.x)), ~min(vec2<u32>(arg_2.x, var_1.x), vec2<u32>(1u, 4294967295u))), 4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-810f * -452f), -1314f)), 4294967295u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-205f, 119f, -1000f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1935f, -754f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1645f, 743f, -1000f), vec3<f32>(1155f, 169f, 183f)))))))));
    let var_3 = Struct_4(~(~(~var_2.a)), Struct_1(~vec2<u32>(0u, 43357u) & _wgslsmith_clamp_vec2_u32(var_1.zy, vec2<u32>(u_input.b, 9370u), _wgslsmith_add_vec2_u32(var_2.b.a, vec2<u32>(var_1.x, 58593u))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1947f * _wgslsmith_f_op_f32(round(-928f)))), arg_1.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(round(-1172f))), 1f, var_2.b.c), _wgslsmith_f_op_vec3_f32(exp2(var_2.c)), any(vec3<bool>(true, true, true)))), var_2.d);
    global0 = ~0u;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 10806u, 0u), 1u)), ~(~(~(~vec3<u32>(0u, 87400u, 4294967295u)))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(~11591u, ~u_input.d)) << ((firstTrailingBit(~vec2<u32>(u_input.b, u_input.d)) >> (reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 43260u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = vec3<bool>(true, true, false);
    var var_2 = 44218i;
    var var_3 = select(u_input.c.zz, vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(-23054i) | -u_input.a, ~u_input.c.x), u_input.c.x), select(var_1.zx, vec2<bool>(var_1.x, !var_1.x || (true || var_1.x)), any(select(var_1.yx, !var_1.xy, 109697u < u_input.b))));
    var_3 = vec2<i32>(~u_input.a, firstTrailingBit(countOneBits(u_input.c.x) >> (u_input.d % 32u))) ^ reverseBits(u_input.c.xx);
    var var_4 = firstLeadingBit(vec4<u32>(var_0.d, 16072u, _wgslsmith_mod_u32(u_input.b, 4294967295u), 34784u));
    var var_5 = vec3<u32>(0u, 6300u | _wgslsmith_mod_u32(1u << (firstTrailingBit(4294967295u) % 32u), 1u), func_1(0u, vec3<u32>(var_0.b & u_input.b, 1u, reverseBits(45656u)), firstLeadingBit(~vec2<u32>(var_0.b, u_input.b))).d >> (_wgslsmith_mult_u32(var_0.b, _wgslsmith_div_u32(func_1(1u, var_4.zzy, vec2<u32>(var_0.d, 0u)).b, 6984u)) % 32u));
    let var_6 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_6), -2073f)))))));
}

