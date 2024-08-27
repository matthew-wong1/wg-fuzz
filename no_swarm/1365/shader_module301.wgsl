struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = -67636i;
    var var_1 = Struct_3(arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-371f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(arg_0.x, 178f), any(vec3<bool>(true, true, true)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), -1211f))), _wgslsmith_f_op_f32(-arg_0.x), vec3<i32>(_wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, 1i), vec2<i32>(0i, var_0)), ~vec2<i32>(-2147483647i, var_0)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-33465i, 12549i), vec2<i32>(var_0, 17865i)))), var_0, _wgslsmith_sub_i32(-var_0, ~1i)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(u_input.a, firstTrailingBit(vec3<u32>(1u, u_input.a.x, 1u))), countOneBits(max(u_input.a, vec3<u32>(74745u, u_input.a.x, u_input.a.x)))), ~vec3<u32>(u_input.a.x, reverseBits(u_input.a.x), 1u)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-687f * 1f))), vec2<f32>(1063f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), -749f))), _wgslsmith_f_op_f32(abs(-1859f)), vec3<i32>(abs(_wgslsmith_mult_i32(var_1.d.x, var_1.d.x & -1i)), -var_0, ~var_1.d.x), vec3<u32>(_wgslsmith_sub_u32(1u, var_1.e.x), var_1.e.x, abs(108594u) & ~var_1.e.x));
    var_1 = Struct_3(_wgslsmith_f_op_f32(851f - _wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.c, -1574f)), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b + vec2<f32>(1000f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-392f, arg_0.x) * vec2<f32>(var_1.c, arg_0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, false)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))))), var_1.d, _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(0u, 1u), 32495u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(14059u, 25153u, u_input.a.x, 18533u)), vec4<u32>(0u, 7837u, 4775u, 69517u))), _wgslsmith_sub_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(var_1.e, u_input.a))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(210f, var_1.a)))), arg_0, var_1.b.x, ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.x, var_0, 0i) & var_1.d, var_1.d), select(vec3<u32>(select(u_input.a.x, ~11656u, true), var_1.e.x, 1u), var_1.e, vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + -1000f) + _wgslsmith_f_op_f32(select(-214f, _wgslsmith_f_op_f32(-891f * -813f), true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, arg_0.x)) + var_1.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1143f))), _wgslsmith_f_op_f32(-2129f - -431f))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(649f, -524f)))))))));
    let var_1 = Struct_2(~abs(vec4<u32>(_wgslsmith_sub_u32(arg_1.x, 45876u), arg_1.x & arg_1.x, arg_1.x, _wgslsmith_add_u32(1u, u_input.a.x))), Struct_1(_wgslsmith_sub_u32(min(u_input.a.x, arg_1.x >> (arg_1.x % 32u)), _wgslsmith_div_u32(abs(69003u), 1u)), vec2<bool>(true, false), arg_0, min((vec4<i32>(arg_0, -2147483647i, -21042i, arg_0) >> (vec4<u32>(53556u, 1u, 1u, arg_1.x) % vec4<u32>(32u))) >> (~vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, 5400u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-37573i, -1i, arg_0, -5997i), vec4<i32>(arg_0, arg_0, 1i, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(727f)))), var_0.x));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(-1f))) + var_1.c), var_0.xx, 1f, var_1.b.d.yzw | select(var_1.b.d.zzw, ~var_1.b.d.xwz, !(!vec3<bool>(arg_2, arg_2, false))), u_input.a | reverseBits(~var_1.a.xxx));
    var var_3 = var_1.b.b.x;
    var var_4 = ~countOneBits(vec4<i32>(15480i, arg_0, _wgslsmith_mult_i32(0i, arg_0), i32(-1i) * -23593i)) & var_1.b.d;
    return 44131i;
}

fn func_1() -> vec4<f32> {
    var var_0 = any(vec4<bool>(true, !(!any(vec3<bool>(true, false, false))), true, ~u_input.a.x <= 13349u));
    var_0 = func_2(i32(-1i) * -19944i, ~vec2<u32>(61872u, ~55142u), !any(vec3<bool>(true, true, true))) > ~2147483647i;
    var var_1 = select(vec4<i32>(~abs(-1i) << (_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(56515u, u_input.a.x)) % 32u), func_2(~2026i, vec2<u32>(u_input.a.x, 1625u), any(vec3<bool>(false, true, true))) & firstTrailingBit(_wgslsmith_mod_i32(-1i, -12307i)), 1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(19391i, -21314i, 20211i), -vec3<i32>(-2147483647i, 0i, -1i)) & select(-7714i, 1i, true)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(10262i, -2147483647i), vec2<i32>(28485i, -3429i)) & max(35699i, -60296i), countOneBits(-28803i)), -22576i, -abs(_wgslsmith_add_i32(1i, 0i))), !select(vec4<bool>(false, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-909f, _wgslsmith_div_f32(808f, 486f))))))));
    let var_3 = u_input.a.x != u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 2201f, -387f, 491f) - vec4<f32>(-887f, -231f, var_2.x, -1593f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 188f, var_2.x, -370f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -279f, var_2.x, var_2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 2335f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(867f, var_2.x, var_2.x, var_2.x) + vec4<f32>(var_2.x, 1014f, 266f, 1000f)) + vec4<f32>(var_2.x, 730f, 1497f, var_2.x)))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: u32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(904f)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(639f + -708f), 437f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.x)))), vec3<i32>(abs(0i), arg_0, arg_0) | ~reverseBits(vec3<i32>(1i, 14839i, arg_0)), ~vec3<u32>(~(~78618u), _wgslsmith_mult_u32(1u, ~arg_3), u_input.a.x));
    let var_1 = !(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), true));
    var_0 = Struct_3(arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(-448f + -198f)) - 263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), vec3<i32>(-48272i, func_2(~arg_0, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.x, arg_3), u_input.a.yx), false) ^ (firstLeadingBit(1i) ^ arg_0), 5690i), ~var_0.e);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(i32(-1i) * -1i));
    var var_1 = any(!vec4<bool>(all(vec4<bool>(true, false, false, false)), false, !any(vec3<bool>(true, true, false)), 1u < _wgslsmith_sub_u32(97290u, u_input.a.x)));
    let var_2 = vec2<bool>(false, func_4(24574i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1085f, -1510f)), -2343f, 809f, _wgslsmith_f_op_f32(-544f - -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1295f, -509f, 1038f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1604f, -1421f, -1114f, 1151f))) * vec4<f32>(760f, -1000f, 1096f, -440f))), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(sign(1052f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, 1407f)) + _wgslsmith_div_vec2_f32(vec2<f32>(613f, 1892f), vec2<f32>(-132f, 1000f))))), -2709f, ~_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(29396i, 2147483647i, -35244i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(70100i, 37745i, 0i), vec3<i32>(-5179i, 13921i, 15697i))), select(select(vec3<i32>(24234i, 45914i, 1i), vec3<i32>(0i, -1i, -2147483647i), false), firstTrailingBit(vec3<i32>(-9211i, -1i, 1i)), !var_2.x)), ~u_input.a & ~select(u_input.a >> (u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(4294967295u, 0u, u_input.a.x)), select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x)));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(19384u, var_3.d, -_wgslsmith_mod_i32(-23022i, abs(var_3.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)))));
}

