struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(u_input.b, -1i);
    var var_1 = !any(vec2<bool>(false, arg_1.x));
    return Struct_2(_wgslsmith_div_i32(-(~firstTrailingBit(var_0.x)), -2147483647i));
}

fn func_3() -> f32 {
    let var_0 = !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true));
    var var_1 = Struct_1(~(~firstLeadingBit(~vec4<u32>(4294967295u, u_input.c.x, 22205u, u_input.c.x))), -1303f, vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(702f, 516f, false)), _wgslsmith_f_op_f32(floor(379f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(247f, 1218f)))))), 53813u);
    var_1 = Struct_1(~max(~_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(var_1.a.x, 0u, 4294967295u, 84408u)), min(reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, var_1.d, 1u)), var_1.a)), _wgslsmith_f_op_f32(var_1.b * var_1.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), var_1.b)), 1u);
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -425f), -903f, var_1.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-973f, var_1.c.x, var_1.b, 1644f) - vec4<f32>(var_1.c.x, var_1.b, var_1.b, 623f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, var_1.c.x, -216f, -363f))) - vec4<f32>(_wgslsmith_div_f32(521f, var_1.c.x), var_1.b, var_1.b, var_1.c.x))), vec4<bool>(true, any(!vec3<bool>(true, var_0.x, var_0.x)), !(var_0.x & true), true));
    var_1 = Struct_1(~(~abs(u_input.c)) << (vec4<u32>(max(abs(12262u), var_1.d), min(var_1.a.x, ~u_input.c.x), 0u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f - _wgslsmith_f_op_f32(floor(var_1.c.x)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + 1225f), -817f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(max(-1281f, var_1.b))), _wgslsmith_f_op_vec2_f32(trunc(var_1.c))))), _wgslsmith_dot_vec2_u32(u_input.c.wx, select(~(var_1.a.wy & var_1.a.xx), select(var_1.a.wx << (var_1.a.xx % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 4294967295u), select(var_0.xz, vec2<bool>(var_0.x, true), var_0.yw)), vec2<bool>(true, true))));
    return 664f;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.b;
    var var_1 = reverseBits(u_input.a);
    let var_2 = Struct_2(u_input.b ^ (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(2147483647i, u_input.b))));
    var_1 = abs(1i);
    let var_3 = Struct_1(abs(abs(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 15755u, 20743u), vec4<u32>(0u, u_input.c.x, u_input.c.x, 60110u), vec4<u32>(1u, 16469u, 4294967295u, arg_0.a.x))))), _wgslsmith_f_op_f32(trunc(-1451f)), arg_0.c, ~(firstTrailingBit(54555u) << (~_wgslsmith_mod_u32(28837u, arg_0.a.x) % 32u)));
    return !(false || all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
}

fn func_1() -> u32 {
    var var_0 = Struct_2(_wgslsmith_clamp_i32(1065i, -u_input.a ^ ~(~u_input.b), 0i));
    let var_1 = ~(~(~vec3<u32>(~u_input.c.x, ~908u, 44646u)));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(889f, -1000f, 493f, -295f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1257f, 1357f, -670f, -1000f))), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(326f, 912f, 944f, -172f), vec4<f32>(-238f, 1000f, -143f, 1357f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(263f, 1090f, -2208f, -527f)))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_1.x != 1u)));
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, -143f, -195f, -328f)) * vec4<f32>(1338f, 804f, 826f, 1926f)))))), vec4<bool>(!((-1i >> (u_input.c.x % 32u)) >= 8929i), true, (_wgslsmith_f_op_f32(sign(757f)) == 712f) && (true & all(vec3<bool>(false, true, true))), func_4(Struct_1(reverseBits(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-354f, -564f))), 30743u))));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(770f, -1000f, -1365f, 1160f) + vec4<f32>(-1588f, 664f, 646f, 304f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(140f)), _wgslsmith_f_op_f32(868f * 740f), -1470f, _wgslsmith_f_op_f32(step(1104f, -935f))))))), !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a);
    var var_1 = select((true || all(vec2<bool>(true, true))) || true, !all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), true);
    let var_2 = vec2<f32>(-1000f, -371f);
    let var_3 = max(vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b), var_0.a), -firstTrailingBit(vec2<i32>(1i, -1i)) >> (~u_input.c.xx % vec2<u32>(32u))) << (u_input.c.xy % vec2<u32>(32u));
    var var_4 = Struct_1(reverseBits(~abs(~vec4<u32>(u_input.c.x, 1640u, u_input.c.x, 4294967295u))), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_2.x) - _wgslsmith_f_op_f32(-var_2.x)), -1446f))), 89635u);
    var_0 = Struct_2(~(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1385f, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, func_1(), 1u, ~var_4.a.x), ~(~var_4.a) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(67389u, 4294967295u, 50074u, var_4.d), u_input.c)));
}

