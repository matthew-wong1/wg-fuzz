struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<u32>(82198u, 11630u), true, vec3<f32>(1000f, 454f, -313f)), Struct_1(vec2<u32>(1u, 4294967295u), false, vec3<f32>(531f, -623f, -1000f)), Struct_1(vec2<u32>(1u, 4294967295u), false, vec3<f32>(1000f, -953f, -315f)), Struct_1(vec2<u32>(28310u, 32184u), true, vec3<f32>(-2098f, -542f, 916f)), Struct_1(vec2<u32>(33566u, 1u), true, vec3<f32>(-620f, -1949f, 559f)), Struct_1(vec2<u32>(125205u, 87765u), true, vec3<f32>(655f, -607f, 812f)), Struct_1(vec2<u32>(1u, 6318u), true, vec3<f32>(1000f, -2454f, -384f)), Struct_1(vec2<u32>(32156u, 0u), false, vec3<f32>(-427f, -696f, -354f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = array<Struct_1, 8>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(-1096f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(949f, 1795f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-904f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1156f)))));
    var var_1 = -(~_wgslsmith_mult_vec3_i32(abs(max(vec3<i32>(arg_0, 0i, 1i), vec3<i32>(2147483647i, -1i, 0i))), ~(vec3<i32>(arg_0, -55379i, 0i) | vec3<i32>(2147483647i, arg_0, arg_0))));
    let var_2 = Struct_1(vec2<u32>(~(~arg_1.x), 97175u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 707f), _wgslsmith_f_op_f32(f32(-1f) * -773f))) == var_0.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, var_0.x, -198f) * vec3<f32>(-629f, 1252f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3032f, var_0.x, var_0.x))))));
    global0 = array<Struct_1, 8>();
    return select(select(!(!(!vec2<bool>(var_2.b, var_2.b))), vec2<bool>(var_1.x == ~0i, true), select(vec2<bool>(true, true), select(!vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(false, var_2.b), vec2<bool>(false, false), vec2<bool>(var_2.b, var_2.b)), select(vec2<bool>(var_2.b, true), vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, var_2.b))), select(select(vec2<bool>(true, var_2.b), vec2<bool>(true, var_2.b), true), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, false), var_2.b), !vec2<bool>(var_2.b, var_2.b)))), select(vec2<bool>(var_2.b, false), !(!(!vec2<bool>(var_2.b, var_2.b))), vec2<bool>(var_2.b, false)), vec2<bool>(var_2.b, true & all(vec3<bool>(var_2.b, var_2.b, true))));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec2<bool> {
    global0 = array<Struct_1, 8>();
    let var_0 = 1284f;
    global0 = array<Struct_1, 8>();
    var var_1 = global0[_wgslsmith_index_u32(1618u, 8u)];
    var var_2 = ~(-(~vec3<i32>(-46786i, 1i, -7944i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(36343u, 0u, u_input.a.x), vec3<u32>(7946u, 0u, u_input.a.x), u_input.a.ywy) % vec3<u32>(32u)))) << (firstTrailingBit(u_input.a.wzw) % vec3<u32>(32u));
    return func_3(var_2.x, vec2<u32>(var_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~11756u, ~0u), vec2<u32>(~21039u, 4294967295u >> (0u % 32u)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, _wgslsmith_f_op_f32(round(-828f)), 1f, -129f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-929f * arg_2), _wgslsmith_f_op_f32(arg_2 - -1199f)), -2381f, 1652f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1585f, arg_2, false)), 1f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.wx))), arg_0.xy))));
    let var_2 = Struct_2(vec3<i32>(arg_1, -arg_1, abs(~(arg_1 << (24419u % 32u)))), 994f, select(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), ~vec3<i32>(arg_1, -1i, 2147483647i))), vec3<i32>(~arg_1, -arg_1, arg_1), vec3<bool>(true, true, 0u <= _wgslsmith_clamp_u32(2746u, 0u, u_input.a.x))));
    var var_3 = Struct_2(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, -arg_1, var_2.a.x | var_2.a.x), select(var_2.c, var_2.a, arg_0.yww), -_wgslsmith_mult_vec3_i32(var_2.c, var_2.a)), reverseBits(countOneBits(-vec3<i32>(var_2.c.x, 1i, 21282i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1856f, 1074f)))), -reverseBits(~vec3<i32>(-1i, -5072i, var_2.c.x)));
    return Struct_1(~_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(0u, u_input.a.x)), ~(~vec2<u32>(u_input.a.x, 3093u))), !all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x & true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xzx * vec3<f32>(var_2.b, 662f, 1183f))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(arg_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(arg_0.c)))) + arg_0.c)))));
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(549f)), _wgslsmith_f_op_f32(max(491f, 593f)))), func_4(select(vec4<bool>(true, false, arg_0.b, false), vec4<bool>(true, arg_0.b, false, true), vec4<bool>(true, arg_0.b, false, false)), -23083i, var_0.x).c.x) + _wgslsmith_div_f32(arg_0.c.x, -862f)));
    global0 = array<Struct_1, 8>();
    let var_2 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 8u)];
    return Struct_2(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 26080i, 38556i, -1i), vec4<i32>(-2147483647i, 1i, 14836i, 1i)) << (max(arg_0.a.x, u_input.a.x) % 32u), 0i, _wgslsmith_add_i32(-1i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))) + arg_1) - _wgslsmith_f_op_f32(sign(-653f))), abs(vec3<i32>(-39664i, _wgslsmith_sub_i32(i32(-1i) * -47588i, -12373i >> (var_2.a.x % 32u)), abs(-21708i))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = func_5(func_4(vec4<bool>(~48816u > ~arg_1, any(func_2(vec2<i32>(92962i, 1i), 610f)), !select(true, true, false), true), 0i, -2108f), _wgslsmith_f_op_f32(exp2(arg_0.b)));
    var var_1 = arg_0;
    var_0 = arg_0;
    global0 = array<Struct_1, 8>();
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(var_1.c.x, arg_0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-7665i, 1i), vec2<i32>(1i, -9262i)));
    return Struct_2(vec3<i32>(firstLeadingBit(~(~var_2.x)), 0i, (var_0.c.x | arg_0.a.x) | ((50061i << (u_input.a.x % 32u)) >> (~4294967295u % 32u))), arg_0.b, arg_0.a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = u_input.a.x;
    let var_1 = func_1(func_1(func_5(global0[_wgslsmith_index_u32(76139u, 8u)], _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(-arg_0.b))), 35307u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 67818u, u_input.a.x, u_input.a.x), u_input.a)), abs(32480u)) >> (~(~(~13627u)) % 32u));
    var var_2 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(select(2329i, arg_2.c.x, false), func_1(var_1, u_input.a.x).a.x, 2729i) ^ _wgslsmith_clamp_vec3_i32(-arg_0.c, _wgslsmith_mod_vec3_i32(arg_1.c, vec3<i32>(arg_2.a.x, -24289i, 2147483647i)), _wgslsmith_mod_vec3_i32(arg_0.c, var_1.a)), -(vec3<i32>(var_1.a.x, arg_0.a.x, arg_2.c.x) ^ vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.c.x))), func_4(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true)), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_div_f32(1276f, 942f))))).c.x, ~(~(~vec3<i32>(-1i, var_1.c.x, -17697i))));
    var_2 = func_1(var_1, 0u);
    let var_3 = vec3<u32>(~4294967295u, ~_wgslsmith_div_u32(4294967295u << ((63010u >> (u_input.a.x % 32u)) % 32u), min(47522u, _wgslsmith_add_u32(0u, 1u))), u_input.a.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b, 1260f, -1233f, arg_0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, var_2.b, arg_1.b, -1767f)), true)) + vec4<f32>(_wgslsmith_f_op_f32(max(690f, 518f)), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -2498f), -867f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, arg_1.b, var_2.b, -289f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, reverseBits(max(0u, 1u))), 8u)];
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = func_6(func_1(Struct_2(vec3<i32>(-1i, 57950i, 8290i) & select(vec3<i32>(-1504i, 0i, -2147483647i), vec3<i32>(63273i, 1i, 29641i), var_0.b), _wgslsmith_f_op_f32(-var_0.c.x), -vec3<i32>(1i, 1i, 1i)), u_input.a.x), func_1(func_1(func_5(global0[_wgslsmith_index_u32(52996u, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -700f)), _wgslsmith_mult_u32(~u_input.a.x, firstLeadingBit(u_input.a.x))), min(var_0.a.x, _wgslsmith_mult_u32(18569u, 0u))), Struct_2(~vec3<i32>(_wgslsmith_add_i32(11358i, -21796i), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(0i, -2147483647i)), _wgslsmith_f_op_f32(abs(1336f)), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(4442i, 1i, -2147483647i)), countOneBits(vec3<i32>(-17872i, -16106i, 31411i))) & -firstTrailingBit(vec3<i32>(-44532i, 2554i, 0i))));
}

