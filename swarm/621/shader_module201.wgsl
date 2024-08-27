struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = vec3<u32>(firstLeadingBit(u_input.c) >> (14372u % 32u), u_input.a, _wgslsmith_clamp_u32(u_input.c << (~0u % 32u), ~4294967295u & _wgslsmith_dot_vec3_u32(~u_input.b.zyx, ~u_input.b.xxw), ~111173u));
    let var_1 = all(!arg_0);
    let var_2 = ~(-min(_wgslsmith_mod_i32(-2147483647i, firstTrailingBit(2147483647i)), _wgslsmith_mod_i32(-2147483647i, -9254i)));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_f_op_f32(sign(-1990f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-301f)))) - _wgslsmith_f_op_f32(round(1046f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -748f), -704f, 510f) + vec3<f32>(_wgslsmith_f_op_f32(333f + _wgslsmith_div_f32(-281f, 492f)), 161f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(334f * 553f))))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_5 {
    var var_0 = -select(-(vec4<i32>(arg_0, arg_0, -2147483647i, arg_0) & vec4<i32>(1411i, 39486i, arg_0, -1i)) >> (countOneBits(u_input.b ^ vec4<u32>(9544u, 49552u, u_input.c, 0u)) % vec4<u32>(32u)), vec4<i32>(27363i, -7725i, -1i, ~(i32(-1i) * -50284i)), !vec4<bool>(arg_1, arg_1 | arg_1, arg_1, !arg_1));
    var_0 = ~(vec4<i32>(-1i) * -vec4<i32>(0i, var_0.x, arg_0, -48706i));
    let var_1 = Struct_5(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, ~u_input.c), ~vec2<u32>(u_input.a, u_input.c)), Struct_1(!arg_1), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -836f, 859f)))))))), all(vec3<bool>(!(!arg_1), !(!arg_1), select(!arg_1, false, any(vec4<bool>(arg_1, false, true, arg_1))))), Struct_2(u_input.a, Struct_1(all(vec3<bool>(true, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(false, arg_1, false), vec3<bool>(false, false, arg_1), arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1102f, -1651f, 899f))) * vec3<f32>(-537f, 692f, -585f))))));
    var_0 = vec4<i32>(-1i, var_0.x, var_0.x, 21164i);
    return Struct_5(var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.c.x), -453f, !var_1.b)))) == var_1.c.c.x, Struct_2(var_1.a.a >> (~60885u % 32u), Struct_1(true), _wgslsmith_f_op_vec3_f32(var_1.c.c * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.c.x, -558f, -1004f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.c.x, var_1.a.c.x, 280f), vec3<f32>(-1200f, -1529f, -897f), vec3<bool>(arg_1, var_1.a.b.a, false))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> u32 {
    var var_0 = ~max(vec2<i32>(-select(arg_0, arg_0, false), -9498i), firstTrailingBit(~min(vec2<i32>(37231i, 0i), vec2<i32>(arg_0, 10592i))));
    return 0u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~(~func_4(-1i, func_2(-22473i, any(vec2<bool>(true, true)))));
    var_0 = 82032u;
    let var_1 = Struct_4(vec4<f32>(1270f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(-2147483647i, true).c.c.x, 679f));
    var_0 = u_input.a;
    let var_2 = _wgslsmith_div_vec2_u32(~(_wgslsmith_sub_vec2_u32(u_input.b.wz, u_input.b.yx) ^ vec2<u32>(62618u, 0u)) << (u_input.b.yz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(43472u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), u_input.b.ywy)), u_input.b.x));
    return func_2(_wgslsmith_div_i32(27420i, -arg_0 << ((~var_2.x ^ _wgslsmith_add_u32(39838u, u_input.a)) % 32u)), !func_2(-46709i, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))).a.b.a).a.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f * 877f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1238f + -907f)), _wgslsmith_f_op_f32(round(-904f)), -1367f))));
    var var_1 = arg_1.a;
    let var_2 = var_0.xxz;
    let var_3 = _wgslsmith_f_op_f32(abs(-285f));
    var var_4 = 55843u;
    return Struct_3(Struct_1(arg_1.a));
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_5) -> u32 {
    let var_0 = true;
    let var_1 = ~arg_1;
    let var_2 = -(vec4<i32>(2147483647i, arg_0.x & arg_0.x, arg_0.x, -37910i) | vec4<i32>(arg_0.x, ~arg_0.x, abs(-1i), -arg_0.x)) & select(firstTrailingBit(countOneBits(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -13889i))), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -78551i, -32348i), vec3<i32>(arg_0.x, -2147483647i, arg_0.x)), -firstTrailingBit(arg_0.x), _wgslsmith_clamp_i32(2147483647i, -15981i, -1i), arg_0.x), select(!select(vec4<bool>(true, arg_2.a.a, var_0, arg_2.a.a), vec4<bool>(arg_3.a.b.a, arg_2.a.a, arg_3.b, arg_3.a.b.a), true), vec4<bool>(true, true, arg_3.a.c.x < 1415f, func_5(vec4<i32>(arg_0.x, arg_0.x, -1i, -42332i), arg_2.a).a.a), !select(vec4<bool>(false, var_0, true, arg_2.a.a), vec4<bool>(false, var_0, false, arg_3.c.b.a), vec4<bool>(arg_2.a.a, arg_2.a.a, arg_2.a.a, true))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.c.c.x, 1156f)), _wgslsmith_f_op_f32(max(1000f, arg_3.c.c.x)), -828f, arg_3.a.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-785f, 1430f, arg_3.c.c.x, arg_3.a.c.x) + vec4<f32>(arg_3.c.c.x, arg_3.a.c.x, arg_3.c.c.x, arg_3.c.c.x)) - vec4<f32>(578f, -521f, arg_3.a.c.x, arg_3.c.c.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.c.x, arg_3.a.c.x, 1000f, 1000f) * vec4<f32>(arg_3.c.c.x, arg_3.c.c.x, arg_3.a.c.x, -1435f)))))));
    var var_4 = var_2;
    return _wgslsmith_dot_vec3_u32(u_input.b.wzz, _wgslsmith_mult_vec3_u32(select(~u_input.b.wzw, u_input.b.www, !select(vec3<bool>(var_0, false, arg_3.a.b.a), vec3<bool>(var_0, false, arg_3.c.b.a), false)), vec3<u32>(~(arg_3.c.a & arg_3.c.a), 0u, ~var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -45002i), vec3<i32>(1i, 0i, 25039i)), 1i, max(2147483647i, 46828i)) & vec4<i32>(1i, 1i, 1i, 1i)) << (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 25107u, u_input.c, u_input.c), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b))) % vec4<u32>(32u)));
    let var_1 = ~(~37711u) ^ _wgslsmith_dot_vec2_u32(u_input.b.wx, firstTrailingBit(u_input.b.xy));
    let var_2 = ~(~func_6(_wgslsmith_sub_vec2_i32(vec2<i32>(5464i, 42977i), vec2<i32>(var_0.x, -2147483647i)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzz, vec3<u32>(10216u, var_1, u_input.c)), var_1), func_5(var_0, func_1(2147483647i)), func_2(var_0.x, any(vec2<bool>(true, false)))));
    var var_3 = func_2(-select(-2147483647i, min(-474i, var_0.x), true), true).a.b;
    var var_4 = ~select(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, -6283i, 0i), vec3<bool>(true, var_3.a, false)) << (u_input.b.xzx % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-1i, var_0.x, -10476i)), firstLeadingBit(~firstTrailingBit(var_0.wxw)), vec3<bool>(all(vec2<bool>(true, true)), any(!vec2<bool>(var_3.a, true)), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

