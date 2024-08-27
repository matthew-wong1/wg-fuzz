struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(408f, -1435f, -811f, -436f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 603f, 723f, global0.x), vec4<f32>(global0.x, global0.x, 587f, -1324f), true)))))));
    global0 = vec4<f32>(-854f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f))))), 1829f, 2298f);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 831f, 219f, global0.x))))))));
    let var_0 = vec4<bool>(!(all(vec4<bool>(true, true, true, true)) && true), true, true, any(vec4<bool>(any(vec4<bool>(false, false, false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), false, false)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, global0.x, 323f, 359f) - vec4<f32>(global0.x, -799f, global0.x, 321f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(238f, 1378f, -1000f, 420f), vec4<f32>(global0.x, global0.x, -804f, 558f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1079f, -388f, global0.x)))))));
    return vec2<bool>(any(var_0.xxw), var_0.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = 0i;
    var var_1 = vec2<f32>(579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f * 791f)));
    let var_2 = vec3<u32>(arg_0.x & ~(~1u), 4294967295u, arg_0.x << ((_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, arg_0.x, 0u, u_input.d.x)), abs(arg_2.x)) ^ arg_0.x) % 32u));
    var var_3 = Struct_1(vec2<i32>(-16213i, u_input.b ^ _wgslsmith_div_i32(~6681i, ~u_input.c)), !func_3(), -(_wgslsmith_mult_vec3_i32(~vec3<i32>(-47763i, u_input.c, u_input.b), -vec3<i32>(u_input.c, u_input.c, u_input.c)) & reverseBits(vec3<i32>(1i, -1i, -1i) & vec3<i32>(u_input.b, -28643i, -9973i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1129f)) - var_1.x));
    let var_4 = Struct_3(1i, vec2<i32>(var_3.a.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(6231i, u_input.a), -vec2<i32>(u_input.c, 1i)))), abs(reverseBits(firstTrailingBit(abs(var_3.a)))));
    return Struct_2(_wgslsmith_f_op_f32(1564f * -131f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_3.d));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = arg_2 >> (u_input.d.x % 32u);
    let var_1 = Struct_4(vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false))), false, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u), select(u_input.d.wxw, u_input.d.yww, vec3<bool>(true, true, false))) >= u_input.d.x), _wgslsmith_add_u32(min(24349u, ~u_input.d.x), _wgslsmith_add_u32(u_input.d.x, 1641u)) > u_input.d.x);
    var var_2 = _wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(sign(1f))));
    var_2 = global0.x;
    var var_3 = vec2<i32>(-var_0, _wgslsmith_sub_i32(~var_0, _wgslsmith_mult_i32(0i, ~arg_2) | -min(u_input.c, var_0)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1116f), _wgslsmith_f_op_f32(-global0.x), arg_0.b, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -119f, arg_0.b, arg_0.a)))))));
}

fn func_1() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(660f, global0.x, global0.x, -1384f), vec4<f32>(225f, 831f, 841f, global0.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(174f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -358f, 277f, 522f)))), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(global0.x, -1000f), func_2(vec3<u32>(u_input.d.x, 4294967295u, 58671u), vec2<bool>(false, false), vec3<u32>(u_input.d.x, 39844u, 1u)), ~u_input.a, Struct_3(-2147483647i, vec2<i32>(2147483647i, u_input.c), vec2<i32>(8593i, 2147483647i)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3515f, -2062f, global0.x, -213f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 620f, 1601f)), select(true, false, true))) - vec4<f32>(_wgslsmith_f_op_f32(-421f + 609f), -1949f, _wgslsmith_f_op_f32(step(global0.x, -1206f)), _wgslsmith_f_op_f32(global0.x + -1242f)))));
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, ~(~u_input.d.x), 51541u) & vec4<u32>(17739u | u_input.d.x, 0u, u_input.d.x, u_input.d.x), max(abs(u_input.d) << (~(~vec4<u32>(u_input.d.x, 8924u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 13614u, u_input.d.x), u_input.d.wyz), abs(56920u))));
    var_0 = vec4<u32>(0u, ~reverseBits(var_0.x) ^ 5648u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~var_0.x, u_input.d.x, _wgslsmith_sub_u32(0u, 0u))), abs(u_input.d.yzw)), ~(~25515u));
    var_0 = u_input.d ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, reverseBits(12731u), max(var_0.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(29324u, 12549u), vec2<u32>(13586u, u_input.d.x))), countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 33874u, 59329u, 1u), select(vec4<u32>(9586u, u_input.d.x, u_input.d.x, u_input.d.x), u_input.d, vec4<bool>(true, true, false, true)))), vec4<u32>(min(38456u, var_0.x) << (reverseBits(0u) % 32u), ~11649u, 14383u, ~(~29754u)));
    var var_1 = Struct_2(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2510f)) - -1113f), _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-648f, -394f, global0.x, 760f) - vec4<f32>(var_1.b, global0.x, global0.x, global0.x)) * vec4<f32>(global0.x, global0.x, var_1.a, global0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(434f * -819f), global0.x, _wgslsmith_div_f32(1107f, -568f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-303f, -187f, var_1.b, global0.x) * vec4<f32>(global0.x, -540f, var_1.a, 884f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(215f, -1197f, var_1.a, var_1.b), vec4<f32>(-515f, 2291f, var_1.b, 1213f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, var_1.a, global0.x, 1516f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u) | vec2<u32>(30975u, u_input.d.x), vec2<u32>(max(var_0.x, u_input.d.x), 0u >> (var_0.x % 32u))) == var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -821f;
    let var_1 = Struct_1(-(-firstTrailingBit(vec2<i32>(u_input.c, u_input.b)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(15082i, u_input.c), vec2<i32>(15807i, u_input.b), -vec2<i32>(u_input.b, u_input.b))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>((4294967295u | u_input.d.x) == u_input.d.x, true)), vec3<i32>(u_input.c, 0i, u_input.a), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1854f)))), -386f))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1807f + -270f) * _wgslsmith_f_op_f32(-global0.x)) - -1000f), _wgslsmith_f_op_f32(ceil(-466f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-843f, global0.x, global0.x, -1333f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.d, 875f, _wgslsmith_f_op_f32(global0.x - 341f), _wgslsmith_div_f32(-1746f, global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_1.d, 1520f, var_1.d) + vec4<f32>(-511f, global0.x, var_1.d, global0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -168f, -643f, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2628f, -631f, var_1.d, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1944f, -1682f, -243f) * vec4<f32>(-1000f, 358f, -961f, -228f)))) + vec4<f32>(1170f, 687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1507f + var_1.d) * -1178f), global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, var_1.d, global0.x, -825f), vec4<f32>(var_1.d, var_1.d, global0.x, var_1.d), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_1.d, var_1.d, var_1.d) + vec4<f32>(global0.x, -421f, 1000f, 838f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1000f, var_1.d, global0.x), vec4<f32>(var_1.d, -401f, 1551f, -2889f), var_1.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, global0.x, global0.x, var_1.d)), vec4<f32>(var_1.d, 512f, var_1.d, global0.x)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 555f, 509f, var_1.d) + vec4<f32>(781f, -595f, global0.x, 1422f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, -207f), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(global0.x, var_1.d), Struct_2(global0.x, global0.x), var_1.a.x, Struct_3(1i, vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-2147483647i, var_1.c.x)))).x, 669f, _wgslsmith_f_op_vec4_f32(func_4(Struct_2(948f, global0.x), Struct_2(104f, -226f), 33313i, Struct_3(var_1.a.x, vec2<i32>(var_1.c.x, -35229i), vec2<i32>(1i, -1i)))).x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2740f, global0.x, global0.x, global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(~u_input.d, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.d.x))) | ((u_input.d >> (~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) << ((u_input.d >> (~u_input.d % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-var_1.c.x, _wgslsmith_mod_i32(var_1.c.x, var_1.c.x), -2147483647i, 0i), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, -2147483647i, u_input.c), vec4<i32>(var_1.c.x, u_input.a, 0i, -2147483647i)), reverseBits(vec4<i32>(13835i, -2147483647i, var_1.a.x, 2147483647i))), max(max(vec4<i32>(2083i, -2147483647i, 1i, 2147483647i), vec4<i32>(u_input.c, -5494i, -15117i, 1i)), vec4<i32>(u_input.a, 20406i, u_input.b, u_input.b)))));
}

