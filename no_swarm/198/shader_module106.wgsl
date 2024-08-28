struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(!any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), true)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 0u, ~1u, min(13538u, 16060u)), vec4<u32>(20714u, _wgslsmith_sub_u32(0u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33467u), vec2<u32>(4294967295u, 2514u)), max(4294967295u, 1u))), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(55934u, 0u, 10407u))), ~abs(vec3<u32>(1u, 1u, 1u)));
    var var_1 = -abs(~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(1750u, 4294967295u) % vec2<u32>(32u))) & vec2<i32>(-30590i, 19035i));
    var_0 = Struct_1(!all(vec2<bool>(var_0.a, true)), vec3<u32>(var_0.c.x, ~(~(~0u)), 33048u), var_0.c);
    var var_2 = Struct_2(vec4<bool>(!(!(!var_0.a)), var_0.a, all(vec2<bool>(true, var_0.a)), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 1006f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f + -1096f) - _wgslsmith_f_op_f32(-169f * 1163f)), 1705f) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-634f, 195f, 587f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1305f, -188f, -1097f))))));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1340f, -237f), _wgslsmith_f_op_f32(abs(-152f)), var_2.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return arg_0 >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0, arg_0, arg_0)), ~(vec3<u32>(arg_0, arg_0, arg_0) & vec3<u32>(65102u, 4294967295u, arg_0))), select(~(~885u), arg_0, all(vec4<bool>(false, true, false, false))), select(firstTrailingBit(1u), max(~arg_0, 55251u), true));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f * -1311f) + _wgslsmith_f_op_f32(1000f - -100f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(176f)), _wgslsmith_f_op_f32(1888f - 130f)))), -450f, -2866f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(272f, _wgslsmith_f_op_f32(1718f * -745f), 948f, _wgslsmith_f_op_f32(floor(902f))))) + vec4<f32>(_wgslsmith_div_f32(-919f, 1079f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1697f)), 2119f)), _wgslsmith_f_op_f32(ceil(626f)), _wgslsmith_f_op_f32(step(-1277f, _wgslsmith_f_op_f32(step(692f, -1867f)))))));
    let var_1 = ~arg_3.x;
    var var_2 = var_0;
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1156f - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_0.x))), var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1516f + _wgslsmith_f_op_f32(-var_2.x)))), -334f)));
    let var_3 = Struct_1(!arg_1.x, ~vec3<u32>(var_1, ~(53217u | arg_3.x), 1u), vec3<u32>(countOneBits(~arg_3.x), max(31966u, ~arg_3.x), arg_3.x));
    return Struct_2(!(!(!vec4<bool>(true, var_3.a, var_3.a, true))), var_0.yyx);
}

fn func_1() -> vec3<u32> {
    let var_0 = firstLeadingBit(25262u);
    var var_1 = func_4(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)) ^ ~vec4<i32>(-11119i, u_input.a, -1i, u_input.a), min(vec4<i32>(u_input.a, 92849i, 1i, -1i) | vec4<i32>(2147483647i, 2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.a, 1i, 41392i, u_input.a) << (vec4<u32>(6592u, 0u, 53142u, 22363u) % vec4<u32>(32u)))) << (min(select(vec4<u32>(4294967295u, var_0, 1698u, 1u), abs(vec4<u32>(20361u, 4294967295u, var_0, var_0)), func_2(9942u)), abs(select(vec4<u32>(var_0, 4294967295u, var_0, var_0), vec4<u32>(0u, 0u, 4294967295u, var_0), false))) % vec4<u32>(32u)), select(vec3<bool>(all(vec2<bool>(false, true)), false, select(any(vec4<bool>(true, true, false, false)), true, select(true, false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(any(vec3<bool>(false, true, false)), true, true)), u_input.a, ~vec2<u32>(_wgslsmith_mult_u32(var_0, 0u), ~4294967295u) | _wgslsmith_mult_vec2_u32(select(abs(vec2<u32>(10906u, var_0)), ~vec2<u32>(var_0, var_0), any(vec4<bool>(false, false, false, true))), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(17356u, var_0), vec2<u32>(var_0, 52129u)))));
    var var_2 = false;
    let var_3 = Struct_1(true, vec3<u32>(abs(0u) >> (var_0 % 32u), ~min(21317u, 0u), _wgslsmith_mult_u32(min(~var_0, max(var_0, 83902u)), var_0)), select(~firstTrailingBit(abs(vec3<u32>(var_0, 22176u, var_0))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 55340u, var_0), firstLeadingBit(vec3<u32>(var_0, var_0, 12225u))), ~min(var_0, var_0), 19468u), vec3<bool>(false, all(vec2<bool>(false, var_1.a.x)), (false == var_1.a.x) && true)));
    var_2 = true;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false)), ~func_1(), ~select(reverseBits(select(vec3<u32>(0u, 1u, 88368u), vec3<u32>(4294967295u, 85549u, 38796u), false)), min(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(12187u, 7093u, 0u))), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), true)));
    var_0 = Struct_1(var_0.a, vec3<u32>(51189u, ~50457u, ~var_0.c.x ^ 0u) ^ _wgslsmith_mult_vec3_u32(var_0.b, vec3<u32>(~99525u, ~var_0.c.x, var_0.c.x)), vec3<u32>(~var_0.b.x, var_0.c.x, ~var_0.c.x >> (_wgslsmith_clamp_u32(var_0.c.x, _wgslsmith_div_u32(var_0.b.x, var_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 27328u, 52383u, 6761u), vec4<u32>(80675u, var_0.c.x, var_0.c.x, 42227u))) % 32u)));
    var_0 = Struct_1(true, var_0.c, ~abs(var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~9552i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1213f, 150f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -191f)))), 43629u);
}

