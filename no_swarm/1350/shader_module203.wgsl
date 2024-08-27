struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = ~43167u;
    let var_1 = Struct_3(~var_0, Struct_2(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    let var_2 = Struct_5(~(~1u), Struct_3(u_input.b.x, var_1.b), false, var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-159f, _wgslsmith_f_op_f32(trunc(-151f))) + _wgslsmith_f_op_f32(-1914f + _wgslsmith_f_op_f32(step(-989f, 1307f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1151f - 1394f))) * 1360f), _wgslsmith_f_op_f32(f32(-1f) * -115f)));
    let var_3 = Struct_2(vec2<bool>(var_2.b.b.a.x, var_2.e.x <= _wgslsmith_f_op_f32(trunc(var_2.e.x))));
    return var_2.c;
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(select(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true), all(select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3()), true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), true), select(false, any(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, false, false, false))))));
    let var_1 = 1f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 440f) * _wgslsmith_f_op_f32(-1000f - var_1)), _wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(-1031f + var_1), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1, -111f), _wgslsmith_f_op_f32(ceil(var_1))))), vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(449f * -728f) - _wgslsmith_div_f32(368f, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    var var_3 = Struct_5(_wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(firstTrailingBit(50243u), u_input.b.x)), Struct_3(~u_input.b.x, Struct_2(!select(var_0.yx, vec2<bool>(var_0.x, var_0.x), false))), all(!var_0), Struct_2(var_0.xy), var_2.zwz);
    var var_4 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.a.x, ~_wgslsmith_mult_i32(u_input.a.x, 2147483647i), u_input.a.x, -63998i), select(u_input.a, u_input.a, vec4<bool>(any(var_0.yy), true, true, true))), abs(vec4<i32>(abs(2147483647i), -22315i, ~(~2147483647i), u_input.a.x ^ 1i)), ~u_input.a);
    return Struct_2(select(vec2<bool>(true, true), var_0.yx, var_0.zy));
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = arg_0.b;
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-848f - -102f) + _wgslsmith_f_op_f32(-128f * 395f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-648f)), _wgslsmith_div_f32(-336f, 700f))), -803f))));
    var_0 = func_2();
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = vec4<i32>(-99i, u_input.a.x & func_4(Struct_3(u_input.b.x, func_2())), _wgslsmith_mult_i32(u_input.a.x & -(u_input.a.x & 2147483647i), abs(-43458i)), u_input.a.x);
    let var_1 = vec3<bool>(any(vec3<bool>(_wgslsmith_mod_i32(var_0.x, 76150i) == min(u_input.a.x, u_input.a.x), u_input.b.x > 107301u, true)), !(true && arg_0), false);
    let var_2 = Struct_4(select(1u, ~(74152u & ~u_input.b.x), true), Struct_1(var_0.x & ~var_0.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(ceil(103f)), _wgslsmith_f_op_f32(1608f + 724f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, 234f, 436f) - vec3<f32>(1031f, -127f, 403f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-193f, -2155f, 382f), vec3<f32>(1000f, -892f, 350f), vec3<bool>(true, false, var_1.x)))))), vec2<u32>(1u, 1u), var_1.zy);
    var var_3 = Struct_1(-var_2.b.a, _wgslsmith_f_op_vec3_f32(exp2(var_2.b.b)));
    var_0 = vec4<i32>(max(22760i, var_2.b.a), -31797i, u_input.a.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(7903i, u_input.a.x)), vec2<i32>(var_0.x, min(var_2.b.a, var_3.a))) | -79170i);
    return -1881f;
}

fn func_5(arg_0: vec4<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_5(4294967295u, Struct_3(~reverseBits(~arg_1), Struct_2(vec2<bool>(true, true))), any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), false)), Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.xwy)));
    var var_1 = Struct_4(58117u, Struct_1(~26062i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_0.x, var_0.e.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1268f, var_0.e.x, arg_0.x), vec3<f32>(var_0.e.x, var_0.e.x, -1308f), vec3<bool>(false, true, true))), any(!var_0.b.b.a)))), ~((abs(u_input.b.xz) << (~vec2<u32>(22486u, var_0.a) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(vec2<u32>(45867u, arg_1) >> (vec2<u32>(84420u, 0u) % vec2<u32>(32u)), min(u_input.b.wy, vec2<u32>(0u, u_input.b.x)))), var_0.d.a);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(reverseBits(arg_1 >> (61715u % 32u))), var_0.a), vec2<u32>(75947u >> (firstTrailingBit(1u ^ arg_1) % 32u), ~max(~var_0.b.a, ~var_0.b.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0)));
    var var_4 = all(vec4<bool>(true, any(vec3<bool>(true, false, var_1.d.x)) | false, var_1.d.x, !any(func_2().a)));
    return Struct_3(var_1.c.x, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.b.x, Struct_2(vec2<bool>(all(vec2<bool>(false, false)), true)));
    var_0 = Struct_3(_wgslsmith_add_u32(0u, var_0.a), Struct_2(var_0.b.a));
    var_0 = func_5(vec4<f32>(-375f, -754f, -685f, _wgslsmith_f_op_f32(func_1((var_0.b.a.x == true) | true, true))), 52469u);
    var var_1 = Struct_1(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(func_1(all(!vec3<bool>(var_0.b.a.x, var_0.b.a.x, true)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f), 919f), 1331f));
    var var_2 = !(true | ((~u_input.a.x >= -2147483647i) | var_0.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_1.b.x))), 1i << (0u % 32u), u_input.b.x, min(vec4<i32>(firstLeadingBit(-4123i), 7535i, firstLeadingBit(select(-1i, -925i, false)), u_input.a.x), reverseBits(select(u_input.a, firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, var_1.a, 1i)), false))));
}

