struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = 1i;
    let var_1 = Struct_1(vec4<f32>(2097f, -652f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-981f * -155f), _wgslsmith_f_op_f32(ceil(-205f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f))), _wgslsmith_f_op_f32(1421f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-852f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(930f + 676f), -769f, false))))), -2147483647i, vec3<bool>(true, true | (_wgslsmith_f_op_f32(select(360f, -861f, false)) < -210f), false));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x)));
    var var_3 = -(~2147483647i);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) + _wgslsmith_f_op_f32(-var_1.a.x));
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = !func_3();
    var_0 = false;
    var_0 = true;
    let var_1 = u_input.d;
    var var_2 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(-3419i >= u_input.c.x, any(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, true), vec2<bool>(true, true))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2239f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1248f, _wgslsmith_f_op_f32(select(1377f, 781f, var_2.x)), true)))), _wgslsmith_div_f32(1965f, _wgslsmith_f_op_f32(f32(-1f) * -611f))), _wgslsmith_f_op_f32(abs(286f)), u_input.c.x >> (arg_0 % 32u), select(select(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), var_2.x), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, false)), any(vec3<bool>(true, true, true))), vec3<bool>(~4294967295u < ~arg_0, (u_input.b >= arg_0) | true, true), (~3490i == reverseBits(u_input.a.x)) | true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = arg_0.b;
    var_0 = func_2(_wgslsmith_mod_u32(~(u_input.b ^ ~103437u), ~u_input.d.x)).a.x;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1603f, _wgslsmith_f_op_f32(arg_1.x + arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(938f, 668f)) - _wgslsmith_f_op_f32(-arg_1.x)))), arg_0.d.x));
    var var_1 = arg_0;
    var var_2 = u_input.d;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(-arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) + arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1060f + -137f)), _wgslsmith_f_op_f32(-224f * -1413f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1010f))), select(min(select(-1i, -28081i, arg_0.d.x) & arg_0.c, -_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(arg_0.c, -12571i))), _wgslsmith_mult_i32(~(-var_1.c), arg_2), var_2.x > var_2.x), vec3<bool>(arg_0.d.x, var_1.d.x, all(!select(arg_0.d, arg_0.d, vec3<bool>(arg_3, var_1.d.x, arg_3)))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(firstLeadingBit(select(27590u, 1u, !any(vec4<bool>(true, arg_1, true, true)))), _wgslsmith_add_u32(u_input.d.x, 20127u), ~_wgslsmith_clamp_u32(u_input.b, u_input.d.x, ~max(39440u, 18210u)), (1u >> (~_wgslsmith_div_u32(u_input.b, 25012u) % 32u)) | ~(~(14274u ^ u_input.b)));
    var var_1 = func_4(func_2(u_input.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_2)), -270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + -920f) - arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))), reverseBits(_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, u_input.a.x, u_input.c.x, 5223i) >> (vec4<u32>(42415u, 28382u, var_0.x, u_input.b) % vec4<u32>(32u)), vec4<i32>(1i, 1i, arg_0, 42908i) << (vec4<u32>(u_input.d.x, u_input.b, u_input.d.x, u_input.b) % vec4<u32>(32u))), vec4<i32>(1i, ~arg_0, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(9880i, u_input.a.x)))), false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1631f))) * arg_3.x);
    var var_3 = select(true, true, true);
    var_1 = func_4(func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, arg_2, -332f, 647f)), 892f, ~arg_0, !vec3<bool>(arg_1, var_1.d.x, false)), var_1.a, 1i, func_4(func_4(Struct_1(var_1.a, arg_3.x, 2147483647i, vec3<bool>(false, true, false)), vec4<f32>(arg_2, 545f, arg_3.x, -690f), 2147483647i, arg_1), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(813f, -1000f, -614f, 3256f), var_1.a)), arg_0, select(false, var_1.d.x, arg_1)).d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 442f, 1381f, -165f) * _wgslsmith_f_op_vec4_f32(-var_1.a)) * vec4<f32>(-460f, var_1.b, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(var_1.a.x, -494f)))), var_1.c, any(select(var_1.d, vec3<bool>(false, true, false), any(var_1.d.yz)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -835f, -237f, arg_3.x), i32(-1i) * -var_1.c, arg_1);
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1368f, arg_3.x, var_1.a.x, arg_2))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, -1497f, arg_3.x, var_1.b))))))), -1926f, _wgslsmith_add_i32(-var_1.c, arg_0), select(var_1.d, var_1.d, vec3<bool>(true, true, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, -508f, 276f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, -170f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(532f, -155f, 900f))))));
    let var_1 = func_1(-38347i, !(!any(vec2<bool>(false, false))), 877f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1055f, 2921f) * var_0))), var_0)))));
    let var_2 = -_wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(1i, -2147483647i) >> (1u % 32u), var_1.c);
    let var_3 = var_1;
    let var_4 = vec4<i32>(-7198i, ~var_2, var_3.c, _wgslsmith_mod_i32(-2147483647i, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

