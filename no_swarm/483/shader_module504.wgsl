struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = ~vec3<u32>(1u, 1u, 1u) ^ (vec3<u32>(reverseBits(8837u), ~select(2178u, 0u, false), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 68710u, 0u), vec3<u32>(1u, 4294967295u, 1u)), ~4294967295u)) & firstLeadingBit(vec3<u32>(31900u, ~49091u, 0u)));
    let var_1 = vec4<i32>(u_input.b.x >> (((~38626u >> (_wgslsmith_mod_u32(var_0.x, 4294967295u) % 32u)) | ~abs(1u)) % 32u), -21116i, max(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ u_input.b), abs(min(u_input.b, vec4<i32>(-81312i, u_input.b.x, u_input.b.x, -20440i)))), ~(-_wgslsmith_div_i32(-130i, 1i))), i32(-1i) * -1i);
    let var_2 = abs(~(~abs(var_0.yx)));
    var var_3 = vec3<f32>(-1211f, _wgslsmith_f_op_f32(abs(-830f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    let var_4 = u_input.b.x;
    return vec4<u32>(~min(reverseBits(1u), var_0.x), var_2.x & countOneBits(~4294967295u >> (~var_0.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~15567u), min(4294967295u, 4294967295u << (var_2.x % 32u)), 4294967295u), _wgslsmith_div_vec3_u32(~(var_0 << (var_0 % vec3<u32>(32u))), ~abs(vec3<u32>(0u, var_0.x, 35700u)))), var_0.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(func_3(-993f));
    var var_1 = var_0.a.yyx;
    var var_2 = Struct_2(vec4<u32>(var_1.x, abs(var_0.a.x), ~(_wgslsmith_add_u32(var_0.a.x, 18866u) | ~56707u), ~var_1.x));
    var_2 = Struct_2(~(~var_0.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(427f, _wgslsmith_f_op_f32(f32(-1f) * -1364f))))));
    return Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * 541f), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(var_3.x - -181f)))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) * _wgslsmith_f_op_f32(step(var_3.x, var_3.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, 961f))), abs(u_input.a), 1363f), vec3<u32>(var_1.x, _wgslsmith_div_u32(1u, ~60189u), ~(~var_1.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = select(~abs(select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 6927u), vec2<u32>(16231u, arg_2.x)), abs(var_0.c.yz), arg_1.x < -712f)), _wgslsmith_add_vec2_u32(~(~(vec2<u32>(47406u, var_0.c.x) & var_0.c.zz)), ~firstTrailingBit(~vec2<u32>(1u, 4294967295u))), true);
    let var_2 = var_0.a.a;
    var var_3 = func_2();
    let var_4 = Struct_2(abs((vec4<u32>(arg_2.x, var_1.x, 66329u, 32645u) & vec4<u32>(arg_2.x, 4294967295u, var_1.x, var_1.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, var_3.c.x), vec4<u32>(var_3.c.x, 1u, arg_2.x, var_0.c.x))) & abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.c.x, var_0.c.x, 4294967295u, var_0.c.x), vec4<u32>(var_1.x, var_0.c.x, var_3.c.x, 17759u), vec4<u32>(39007u, 4294967295u, 0u, 0u))));
    return Struct_2(_wgslsmith_mult_vec4_u32(~select(~var_4.a, vec4<u32>(43622u, var_1.x, 19520u, var_0.c.x), false), select(_wgslsmith_add_vec4_u32(var_4.a, var_4.a), vec4<u32>(var_3.c.x, var_1.x, 0u, var_4.a.x) ^ var_4.a, vec4<bool>(false, false, true, true)) | var_4.a));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_3 {
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = select(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(arg_1.b.b > u_input.a, false), vec2<bool>(false, true)), vec2<bool>(any(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true)), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, false, false))))));
    var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true)))));
    var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(var_0.x, select(true, _wgslsmith_dot_vec3_i32(u_input.b.zxx, vec3<i32>(arg_1.a.b, 0i, u_input.b.x)) <= (func_2().a.b | ~(-6297i)), true));
    var var_1 = Struct_3(arg_1.a, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(210f, 912f), arg_2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.a.x) * arg_2.a), !var_0.x)))), 15524i, _wgslsmith_f_op_f32(floor(arg_0.a.x))), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 10873u), arg_3.a.xwz | vec3<u32>(0u, 69090u, arg_1.c.x))), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.c.x), arg_1.c.yz), _wgslsmith_add_u32(102145u, arg_1.c.x) | (arg_3.a.x << (14003u % 32u))), 1u));
    return select(select(select(vec2<bool>(arg_3.a.x >= arg_3.a.x, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(var_0.x, false))), vec2<bool>((arg_1.b.b >= -11155i) || false, !(!var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.x, var_1.a.c, var_0.x))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_1.b.a.x, arg_0.c))))), select(select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), var_0.x), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), !vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x)), select(vec2<bool>(true, true), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), false))), select(!(!vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true)), var_0.x), !all(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(Struct_1(vec2<f32>(1f, 1f), ~u_input.b.x & (-51290i | u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1507f * 788f), _wgslsmith_f_op_f32(f32(-1f) * -1345f)))), func_4(_wgslsmith_f_op_f32(sign(208f)), func_1(vec3<i32>(2497i, 0i, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1037f, 776f)), vec2<u32>(1u, 1u)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), true)), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(966f, 1524f), vec2<f32>(713f, 1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(553f, -519f), vec2<f32>(-326f, 2268f)))), 36705i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-407f, -1226f, false))))), func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, u_input.b.x), vec3<i32>(-44984i, u_input.a, 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1192f, 475f)) - _wgslsmith_div_vec2_f32(vec2<f32>(548f, 1752f), vec2<f32>(551f, -353f))), vec2<u32>(firstTrailingBit(0u), 107924u))), vec2<bool>(true, true), 1f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2070f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(640f)) + 1115f))));
    var var_1 = select(vec3<bool>(var_0.x, true, false), !select(select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), true), !var_0.x), vec3<bool>(!var_0.x, true, false), func_5(Struct_1(vec2<f32>(354f, 391f), u_input.a, 297f), Struct_3(Struct_1(vec2<f32>(-294f, -189f), u_input.b.x, 142f), Struct_1(vec2<f32>(-372f, -1192f), u_input.a, -1541f), vec3<u32>(1u, 1u, 32263u)), Struct_1(vec2<f32>(739f, 1466f), 35101i, -1000f), Struct_2(vec4<u32>(0u, 1u, 45418u, 1u))).x), select(select(vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), any(vec2<bool>(false, false)), any(vec2<bool>(var_0.x, var_0.x))), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, var_0.x, false), false), select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, true), true), vec3<bool>(false, false, true), all(vec4<bool>(true, true, var_0.x, false)))), select(!vec3<bool>(var_0.x, true, var_0.x), !select(vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, var_0.x))), !(!(!vec3<bool>(true, var_0.x, var_0.x)))));
    var var_2 = func_2();
    var var_3 = var_0.x;
    var var_4 = func_1(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-1i), -14074i, u_input.b.x & var_2.a.b), vec3<i32>(u_input.b.x, var_2.b.b, ~(-7044i)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-871f, 1027f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a.x, var_2.a.a.x)))))), vec2<u32>(func_2().c.x, 64516u));
    let var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1324f), var_2.b.c), ~u_input.b.x, var_2.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(553f, i32(-1i) * -21173i, _wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(-1i, u_input.b.x)), vec4<i32>(~(_wgslsmith_div_i32(var_5.b, 0i) & countOneBits(var_5.b)), 1i, -u_input.b.x, var_5.b << (_wgslsmith_clamp_u32(93774u, 1u, var_4.a.x) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, var_5.c, 1000f, -1761f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(465f, 495f, 1596f, 1000f) - vec4<f32>(1904f, -232f, var_5.c, 467f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a.x, 929f, -618f, 777f) - vec4<f32>(var_2.b.a.x, var_5.a.x, 652f, -445f)))))));
}

