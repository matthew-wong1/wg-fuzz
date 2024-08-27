struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-414f, -694f))), _wgslsmith_f_op_f32(-arg_2.a.x), (_wgslsmith_f_op_f32(-arg_2.a.x) <= _wgslsmith_div_f32(1000f, arg_2.a.x)) || true)));
    var var_2 = select(~(~vec4<i32>(0i, -12277i, 14397i, 18777i)) & -select(abs(vec4<i32>(48936i, arg_0.a, arg_0.a, 2147483647i)), vec4<i32>(arg_0.a, 0i, 1i, -1i), vec4<bool>(true, true, true, true)), max(_wgslsmith_add_vec4_i32(min(vec4<i32>(arg_0.a, var_0.a, -70072i, arg_0.a), vec4<i32>(1i, var_0.a, arg_0.a, arg_0.a)), ~vec4<i32>(9829i, -2147483647i, 2147483647i, var_0.a)), vec4<i32>(0i, 2147483647i, arg_0.a, ~(-1i) ^ (var_0.a ^ 59224i))), true);
    let var_3 = Struct_2(arg_0.a);
    let var_4 = arg_0;
    return ~_wgslsmith_sub_u32(arg_2.b.x, 10104u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yy), vec2<f32>(_wgslsmith_f_op_f32(804f - -711f), 242f)))), reverseBits(vec2<u32>(1u, max(u_input.a, 10247u)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, 79677u, 1u)), ~4294967295u) % vec2<u32>(32u))));
    var var_1 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(reverseBits(1u), 56665u), arg_2.xy);
    var var_2 = Struct_2(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(countOneBits(arg_1.a), 1i), arg_1.a, 0i));
    var_1 = abs(arg_2.xy);
    var var_3 = 0i;
    return arg_1.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1657f, 1367f, 1230f) + vec3<f32>(-973f, -463f, -1404f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1880f, -967f, -391f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1319f, -492f, 1057f), vec3<f32>(-245f, -721f, 249f), vec3<bool>(false, arg_0.x, arg_0.x))), true))), arg_1, vec3<u32>(abs(u_input.a), func_3(Struct_2(1i), _wgslsmith_add_vec3_u32(vec3<u32>(82968u, 0u, 1u), vec3<u32>(1u, 0u, u_input.a)), Struct_1(vec2<f32>(-273f, -1000f), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_clamp_u32(0u, 20268u, ~u_input.a))));
    let var_1 = Struct_1(vec2<f32>(181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(303f))))), select(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 82428u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 0u)), countOneBits(vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a))), abs(~vec2<u32>(u_input.a, 25795u)), arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(122f, var_1.a.x), -1550f)), _wgslsmith_f_op_f32(-var_1.a.x))));
    let var_3 = ~2147483647i << (_wgslsmith_sub_u32(u_input.a | ~_wgslsmith_add_u32(var_1.b.x, 10859u), func_3(arg_1, select(vec3<u32>(var_1.b.x, 13156u, u_input.a) & vec3<u32>(67509u, var_1.b.x, u_input.a), vec3<u32>(u_input.a, 9368u, 0u) >> (vec3<u32>(20913u, u_input.a, 21649u) % vec3<u32>(32u)), any(arg_0.yyx)), var_1)) % 32u);
    var_0 = arg_1;
    return -(-12446i >> (max(firstTrailingBit(_wgslsmith_sub_u32(7504u, var_1.b.x)), _wgslsmith_div_u32(41824u, ~u_input.a)) % 32u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(~select(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-2147483647i, 40028i, -1i)), any(vec2<bool>(true, false))), _wgslsmith_sub_i32(-24830i, func_2(vec4<bool>(true, true, false, true), Struct_2(-1i))) | 36567i), max(_wgslsmith_mod_i32(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(715i, -27536i, 2147483647i, -2147483647i), vec4<i32>(1i, 0i, 559i, 2147483647i)), -35470i), min(1i, 1i) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(40684u, u_input.a, u_input.a), vec3<u32>(arg_0, arg_0, u_input.a)), vec3<u32>(u_input.a, 71222u, 1u) | vec3<u32>(61878u, 1u, u_input.a)) % 32u)));
    var var_1 = all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))) && true;
    var var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(false, !any(vec3<bool>(true, false, true)), false), select(vec3<bool>(any(vec2<bool>(true, false)), false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 33787i, 1i, 2147483647i) >> (vec4<u32>(arg_0, 1u, u_input.a, 1u) % vec4<u32>(32u)), select(vec4<i32>(-11777i, 0i, 17536i, -2147483647i), vec4<i32>(16421i, -12027i, 9837i, 22302i), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), select(select(select(vec4<i32>(15359i, -2147483647i, 6655i, -1i), vec4<i32>(13650i, -2147483647i, 53219i, -12523i), vec4<bool>(var_2.x, false, var_2.x, false)), abs(vec4<i32>(-1i, 0i, 42568i, -1i)), vec4<bool>(var_2.x, var_2.x, false, false)), vec4<i32>(-3585i, -27289i, 0i, i32(-1i) * -12243i), var_2.x)), ~2147483647i);
    var_0 = firstTrailingBit(func_2(select(vec4<bool>(var_2.x != var_2.x, false, !var_2.x, all(vec4<bool>(false, var_2.x, true, true))), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, true, true), vec4<bool>(var_2.x, true, var_2.x, true)), true), Struct_2(-reverseBits(412i))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1146f), vec2<f32>(-1229f, -454f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(633f, -187f))), false))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(696f, -298f) - vec2<f32>(-1504f, 1308f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, 902f) - vec2<f32>(-1531f, 139f)))), vec2<f32>(2561f, _wgslsmith_f_op_f32(sign(1000f))), !(!var_2.x)))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, _wgslsmith_add_u32(95265u, u_input.a)), ~(~vec2<u32>(arg_0, 18317u))), ~select(min(vec2<u32>(u_input.a, arg_0), vec2<u32>(arg_0, u_input.a)), ~vec2<u32>(81447u, u_input.a), vec2<bool>(true, false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~(-reverseBits(abs(83983i))), 26135i);
    let var_1 = true;
    let var_2 = func_1(abs(u_input.a));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) * var_2.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_2.a.x)) - _wgslsmith_f_op_vec2_f32(var_2.a + var_2.a)))), var_2.b);
    var var_4 = !select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_f_op_f32(var_2.a.x + -581f)) < _wgslsmith_f_op_f32(max(var_3.a.x, _wgslsmith_f_op_f32(select(-902f, var_2.a.x, false)))), var_2.b.x >= ~0u, all(!vec2<bool>(false, var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

