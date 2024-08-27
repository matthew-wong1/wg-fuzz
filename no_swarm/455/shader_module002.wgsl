struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_3(Struct_1(abs(~vec3<u32>(5324u, arg_1.a.c, arg_3.c)) & u_input.d.yzy, vec3<bool>(arg_0, any(vec3<bool>(false, false, true)) & (arg_1.a.b.x == false), arg_1.c), ~u_input.d.x, arg_3.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(select(arg_1.b, -489f, arg_0))))))), !(-u_input.a.x <= 20221i), vec2<f32>(406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(563f - -1488f)) + _wgslsmith_div_f32(arg_1.d.x, -1189f))));
    let var_1 = ~(~u_input.d.x);
    var var_2 = Struct_2(u_input.b, var_0.a, Struct_1(_wgslsmith_mult_vec3_u32(var_0.a.a, u_input.d.wzw & var_0.a.a), arg_3.b, ~4294967295u, vec2<u32>(5519u | var_0.a.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.c, 1u, 4294967295u, 1u), u_input.d))), Struct_1(arg_1.a.a, select(vec3<bool>(arg_1.a.b.x, true, true), arg_1.a.b, !vec3<bool>(arg_0, arg_0, true)), _wgslsmith_sub_u32(~var_1, ~87250u), _wgslsmith_clamp_vec2_u32(vec2<u32>(123269u, _wgslsmith_clamp_u32(1284u, 28930u, 27621u)), firstTrailingBit(_wgslsmith_add_vec2_u32(var_0.a.d, vec2<u32>(arg_3.d.x, var_1))), vec2<u32>(0u, _wgslsmith_add_u32(arg_3.d.x, 20418u)))));
    var_2 = Struct_2(23942i, Struct_1(_wgslsmith_mod_vec3_u32(var_2.b.a, vec3<u32>(4294967295u, 4294967295u << (arg_1.a.d.x % 32u), max(1u, arg_3.d.x))), vec3<bool>(true, select(var_0.b > arg_2.x, any(var_0.a.b), any(vec3<bool>(var_0.a.b.x, arg_0, true))), false), ~firstLeadingBit(~arg_1.a.d.x), ~arg_1.a.a.zz ^ vec2<u32>(abs(1u), ~var_0.a.d.x)), arg_1.a, arg_3);
    let var_3 = Struct_3(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -454f), !(all(select(vec2<bool>(var_2.b.b.x, arg_0), vec2<bool>(true, true), arg_3.b.x)) && (true & (false == var_0.a.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_vec2_f32(round(arg_1.d)))));
    return true;
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = Struct_3(Struct_1(~u_input.d.wzy, !select(!vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(true, arg_1, true), all(vec3<bool>(arg_1, arg_1, arg_1))), u_input.c, abs(min(~vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d.x, arg_0)))), 1402f, arg_1 | false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-839f, _wgslsmith_f_op_f32(floor(-664f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(733f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(364f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))))));
    let var_2 = Struct_3(Struct_1(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), ~52237u, u_input.c)), select(vec3<bool>(select(false, var_0.c, true), arg_1, false), select(!var_0.a.b, vec3<bool>(arg_1, var_0.c, arg_1), true), var_1 < -945f), 27753u, vec2<u32>(_wgslsmith_sub_u32(select(var_0.a.a.x, u_input.d.x, false), var_0.a.a.x), abs(u_input.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-658f)), _wgslsmith_f_op_f32(var_0.b * 607f))) + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -621f)))), !(~4294967295u > firstTrailingBit(0u)) | (all(!vec3<bool>(var_0.c, var_0.c, false)) || true), vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, 1000f)) + var_1)));
    let var_3 = Struct_1(_wgslsmith_mod_vec3_u32(u_input.d.yzw | ~(~vec3<u32>(u_input.d.x, 49925u, 26823u)), u_input.d.zxw), vec3<bool>(var_0.c, !(true && all(vec4<bool>(arg_1, true, var_2.a.b.x, arg_1))), any(vec2<bool>(func_2(true, var_2, var_0.d, var_0.a), false))), _wgslsmith_div_u32(~firstLeadingBit(~1u), firstTrailingBit(1u)), u_input.d.wx);
    var_0 = var_2;
    return (4294967295u >> (var_3.d.x % 32u)) | (~_wgslsmith_dot_vec3_u32(var_2.a.a, ~vec3<u32>(87623u, 4294967295u, arg_0)) >> (~1u % 32u));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(abs(u_input.d.yww), _wgslsmith_sub_vec3_u32(u_input.d.zyw, u_input.d.wxx)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(true, func_2(false, Struct_3(Struct_1(vec3<u32>(u_input.c, arg_0, 4294967295u), vec3<bool>(false, true, false), 53775u, u_input.d.yy), -616f, true, vec2<f32>(338f, 1190f)), vec2<f32>(1361f, -726f), Struct_1(u_input.d.wxy, vec3<bool>(true, false, true), 41463u, vec2<u32>(4294967295u, 0u))), any(vec4<bool>(false, true, true, true))), true), all(vec2<bool>(true, true))), ~(~1u), u_input.d.yw);
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1413f)))));
    var_1 = vec4<u32>(_wgslsmith_add_u32(0u << (var_0.a.x % 32u), 4294967295u), 7667u, ~_wgslsmith_mod_u32(21840u, ~1u) >> (select(u_input.d.x, func_3(var_1.x, any(var_0.b.yz)), func_2(true, Struct_3(var_0, var_2.x, true, var_2.xx), var_2.yz, var_0)) % 32u), 4294967295u);
    var_1 = vec4<u32>(~1u, max(_wgslsmith_dot_vec2_u32(var_0.d, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_0.c), var_1.wx)), select(var_1.x, 56670u, var_2.x >= var_2.x)), _wgslsmith_mod_u32(23240u, ~1462u >> (~var_1.x % 32u)), firstLeadingBit(~4294967295u ^ ~u_input.c)) ^ ~(u_input.d << ((u_input.d | vec4<u32>(1u, var_1.x, 4294967295u, var_1.x)) % vec4<u32>(32u)));
    return Struct_3(Struct_1(~u_input.d.wzw, !select(select(var_0.b, vec3<bool>(var_0.b.x, var_0.b.x, false), var_0.b), var_0.b, select(var_0.b, vec3<bool>(var_0.b.x, true, false), vec3<bool>(var_0.b.x, false, var_0.b.x))), arg_0, var_1.zz), 437f, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 209f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = arg_0.a;
    var var_1 = func_1(_wgslsmith_mult_u32(~(~1u), ~var_0.d.x ^ 1u));
    var var_2 = func_1(firstLeadingBit(~(~(~arg_2)))).a;
    var_2 = var_0;
    var_1 = Struct_3(Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.a, firstTrailingBit(vec3<u32>(var_2.d.x, arg_2, arg_0.a.d.x))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 1u, var_0.d.x), vec3<u32>(33509u, arg_1.x, var_0.a.x))), vec3<bool>(all(var_0.b.zx), any(vec4<bool>(var_0.b.x, arg_0.a.b.x, var_2.b.x, var_2.b.x)), 4294967295u != _wgslsmith_mult_u32(var_1.a.a.x, 30636u)), 1u, ~(~(~vec2<u32>(var_1.a.a.x, arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1735f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.d.x, -826f)))))) + _wgslsmith_f_op_f32(sign(1712f))), var_2.b.x, _wgslsmith_f_op_vec2_f32(-var_1.d));
    return ~(~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, func_4(func_1(~0u), u_input.d, countOneBits(~36788u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2309f * -1341f), 2040f)), countOneBits(u_input.d.x & 4294967295u)), 58313u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1336f)), -481f) * _wgslsmith_f_op_f32(ceil(-1143f)))), u_input.d);
}

