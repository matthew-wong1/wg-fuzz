struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<u32> {
    let var_0 = -u_input.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, -2098f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1302f, 1644f) * vec2<f32>(-543f, -1000f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1661f, -1321f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))));
    var_2 = 682f;
    return u_input.a.xzz;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> bool {
    let var_0 = arg_0.a;
    var var_1 = countOneBits(-38452i);
    var_1 = u_input.d.x << (~_wgslsmith_mult_u32(4294967295u, abs(arg_0.c.x) << (reverseBits(arg_0.c.x) % 32u)) % 32u);
    var var_2 = arg_0.a;
    var_2 = var_0;
    return !all(!(!(!vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(~select(_wgslsmith_sub_vec3_u32(u_input.c.xwy, vec3<u32>(6353u, u_input.a.x, 7847u)), u_input.c.yxx & vec3<u32>(1u, 110674u, 41767u), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), func_2(), u_input.a.yxw) & u_input.a.yyz;
    var var_1 = u_input.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 227f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(arg_1 - -522f))) + 100f))));
    var var_3 = func_3(Struct_4(Struct_1(var_2.x, u_input.a.x, _wgslsmith_f_op_f32(abs(arg_1))), vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, false), firstTrailingBit(~reverseBits(u_input.c))), ~max(var_0.yy, countOneBits(_wgslsmith_sub_vec2_u32(var_1.zw, var_0.yz))));
    let var_4 = firstLeadingBit(~vec2<u32>(_wgslsmith_div_u32(~var_0.x, arg_0.x), var_1.x));
    return -603f;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec2<bool>(all(arg_0), arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(floor(arg_3.a));
    var var_2 = Struct_3(var_1, arg_3, vec4<i32>(arg_1.x | 286i, abs(~(-14559i)), arg_1.x, select(_wgslsmith_clamp_i32(2147483647i, u_input.d.x, -arg_1.x), min(22542i, 0i), false)));
    var_0 = !vec2<bool>(true, arg_0.x);
    var_0 = arg_2.yz;
    return select(select(select(!vec4<bool>(true, arg_2.x, arg_0.x, true), select(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, arg_0.x, var_0.x, true), var_0.x), !vec4<bool>(arg_2.x, false, true, arg_0.x), !vec4<bool>(var_0.x, false, false, true)), vec4<bool>(var_2.c.x <= arg_1.x, true, all(vec2<bool>(arg_2.x, var_0.x)), arg_0.x | arg_0.x)), select(vec4<bool>(false, arg_0.x, any(vec4<bool>(false, false, true, arg_2.x)), true), vec4<bool>(var_0.x == arg_0.x, func_3(Struct_4(var_2.b, vec4<bool>(false, true, false, arg_2.x), u_input.c), u_input.a.wx), arg_2.x, true), vec4<bool>(var_0.x, var_2.b.c < -440f, arg_2.x, u_input.b != 26644u)), func_3(Struct_4(Struct_1(-1112f, arg_3.b, var_1), vec4<bool>(true, false, arg_0.x, arg_0.x), max(u_input.c, vec4<u32>(var_2.b.b, 1u, arg_3.b, 0u))), vec2<u32>(97194u, 1u))), vec4<bool>(func_3(Struct_4(var_2.b, vec4<bool>(true, true, true, false), u_input.a), abs(u_input.a.xw)) == true, var_0.x, !(!all(vec3<bool>(arg_2.x, false, var_0.x))), arg_2.x), any(select(select(!vec3<bool>(false, arg_2.x, arg_0.x), vec3<bool>(false, var_0.x, arg_2.x), select(arg_0.x, arg_2.x, arg_2.x)), select(select(vec3<bool>(false, arg_2.x, arg_0.x), arg_2, arg_0), !arg_0, true || arg_2.x), !(!vec3<bool>(arg_0.x, arg_0.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, any(vec3<bool>(true, true, true)), !(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.a.yx) < (81555u >> (u_input.c.x % 32u))));
    var var_1 = vec4<bool>(var_0.x, true, true, all(select(vec2<bool>(!var_0.x, true), select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.x), var_0.zz, var_0.xx), var_0.zz), var_0.xx)));
    var_1 = func_4(vec3<bool>(true, !var_1.x, any(!select(vec4<bool>(var_1.x, var_0.x, var_1.x, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, var_1.x, var_0.x)))), ~u_input.d.xy, var_0, Struct_1(490f, min(~(~4294967295u), u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-877f, 587f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, u_input.b), 329f)) - _wgslsmith_f_op_f32(-1618f - 423f))))));
    let var_2 = u_input.d << (~(~_wgslsmith_mod_vec3_u32(u_input.c.yyx, u_input.c.ywx)) % vec3<u32>(32u));
    let var_3 = var_2.zx;
    var_1 = vec4<bool>(true, var_0.x, var_1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-571f))), -194f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(618f * -764f) - _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2383f, -649f), vec2<f32>(-1409f, -1000f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-118f, -1501f), vec2<f32>(-656f, 1000f)))))))), ~countOneBits(4107i));
}

