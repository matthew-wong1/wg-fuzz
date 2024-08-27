struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(26257u <= abs(max(u_input.c.x ^ 30020u, ~39570u)), u_input.c.x, vec4<bool>(!any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), false), ~(~(u_input.c.x | u_input.c.x)), select(!vec4<bool>(false, true, all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, false))), !vec4<bool>(false, all(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, false)), true), true));
    let var_1 = _wgslsmith_mod_u32(max(_wgslsmith_div_u32(42773u, var_0.b), ~_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(var_0.d, u_input.c.x)) << (_wgslsmith_mult_u32(select(1u, 1u, true), var_0.d) % 32u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(28184u, u_input.c.x, u_input.c.x), u_input.c) ^ 4294967295u) ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), countOneBits(2665u), min(u_input.c.x, countOneBits(u_input.c.x))));
    var var_2 = (u_input.b.x << (firstTrailingBit(u_input.c.x) % 32u)) | (u_input.b.x << (_wgslsmith_div_u32(~(~var_0.d), min(~var_1, ~u_input.c.x)) % 32u));
    let var_3 = firstLeadingBit(~_wgslsmith_dot_vec3_u32((u_input.c << (vec3<u32>(29132u, 59986u, var_1) % vec3<u32>(32u))) >> (abs(vec3<u32>(u_input.c.x, var_0.b, var_1)) % vec3<u32>(32u)), vec3<u32>(var_1, 1u, 4294967295u)));
    var var_4 = var_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(693f))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -991f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_mult_u32(min(1u, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~44622u, 1u), u_input.c << (~vec3<u32>(57479u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a.x > u_input.b.x, u_input.c.x <= u_input.c.x, true), vec4<bool>(all(vec3<bool>(true, false, true)), true, u_input.b.x >= u_input.a.x, all(vec4<bool>(false, true, true, true)))), 4294967295u << (_wgslsmith_dot_vec2_u32(u_input.c.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zz)) % 32u), select(vec4<bool>(true, true, -244f == _wgslsmith_f_op_f32(trunc(-1000f)), all(vec3<bool>(false, true, false)) | (u_input.c.x == 0u)), select(vec4<bool>(false, false, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true)), vec4<bool>(false, false, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1658f, -1074f, -558f))))));
    var var_2 = var_0.c.x;
    let var_3 = Struct_1(!((1486f == _wgslsmith_div_f32(var_1.x, var_1.x)) || !var_0.e.x), select(~var_0.d << (~1u % 32u), 42421u, !var_0.a) ^ u_input.c.x, !(!vec4<bool>(var_0.c.x | false, all(vec2<bool>(var_0.a, var_0.a)), any(vec3<bool>(false, var_0.e.x, false)), var_0.a)), u_input.c.x, vec4<bool>(select(select(any(vec3<bool>(true, true, true)), !var_0.e.x, true), !(!var_0.e.x), !(!var_0.e.x)), true, _wgslsmith_f_op_f32(-901f + _wgslsmith_f_op_f32(var_1.x * 879f)) < -110f, false));
    var_2 = ~(~1u) == abs(_wgslsmith_mod_u32(~57888u, var_3.b));
    return Struct_1(false, ~(~max(var_0.d, u_input.c.x)), vec4<bool>(all(select(var_0.e, var_3.c, vec4<bool>(false, var_3.c.x, var_3.e.x, false))) & true, any(vec4<bool>(var_0.c.x, false, var_0.d > 34833u, true)), all(select(var_0.c.wx, var_0.e.yx, var_0.c.xw)) && !(!var_3.c.x), true), select(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(80533u, 0u, 1u, var_0.b)) | vec4<u32>(u_input.c.x, 28897u, 6952u, var_0.d), vec4<u32>(~50548u, firstTrailingBit(45415u), u_input.c.x, firstLeadingBit(79890u))), var_3.d ^ _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(41871u, var_3.b, var_3.d)), false), vec4<bool>(u_input.c.x == var_3.d, all(!var_3.e.wy), any(var_3.c.xxw), true));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = func_2();
    let var_1 = 1u;
    var var_2 = Struct_1(true, u_input.c.x, vec4<bool>(arg_0.c.x, arg_0.a, var_0.c.x, func_2().a), var_0.b | arg_0.b, arg_0.e);
    let var_3 = reverseBits(vec2<u32>(select(var_2.d ^ 1u, ~var_2.b, var_0.e.x), func_2().d));
    let var_4 = firstLeadingBit(_wgslsmith_mod_vec2_u32(max(~u_input.c.zy, var_3) ^ vec2<u32>(var_3.x, var_1 ^ 17450u), vec2<u32>(17551u, ~var_1)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x == 4294967295u)), 34184u, vec4<bool>(true, 16829i <= u_input.a.x, func_1(Struct_1(false, ~u_input.c.x, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), _wgslsmith_sub_u32(4294967295u, u_input.c.x), vec4<bool>(true, true, true, true))), true), countOneBits(u_input.c.x), vec4<bool>(true, true, true, true));
    let var_1 = -countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), ~vec3<i32>(u_input.a.x, -2147483647i, u_input.b.x)) | _wgslsmith_sub_vec3_i32(~u_input.a, firstLeadingBit(u_input.a)));
    var var_2 = u_input.c.x;
    var_2 = u_input.c.x;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.d), vec2<u32>(~8447u, firstTrailingBit(4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(4294967295u, u_input.c.x)) >> (1u % 32u)), vec2<u32>(~abs(1u), 50529u | ~var_3.d)), ~(-1i));
}

