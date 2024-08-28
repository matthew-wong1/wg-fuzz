struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2048f, 1769f) + vec2<f32>(727f, 941f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, -421f)) - vec2<f32>(-101f, -1107f)))))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_2 = vec4<bool>(!arg_0.x, var_1.b.x, true, any(vec4<bool>(true, any(vec3<bool>(var_1.b.x, false, false)), all(arg_0.xy), any(arg_0))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-317f, var_0.x, 544f, -981f), vec4<f32>(var_0.x, var_0.x, 198f, var_0.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -330f, -166f, 339f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -559f, 980f)))))));
    global1 = vec2<u32>(46342u, u_input.a.x >> (15594u % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_3.x)))) * 989f);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = arg_2.b;
    let var_1 = -757f;
    var var_2 = arg_3;
    let var_3 = vec2<bool>(true, all(!(!vec3<bool>(false, var_0.b.x, arg_1.b.b.x))));
    let var_4 = -(~(vec3<i32>(2147483647i, 1i, 2147483647i) & ~arg_1.d) & abs(abs(~vec3<i32>(-1i, -35053i, -32511i))));
    return _wgslsmith_f_op_f32(func_3(!vec3<bool>(select(all(vec3<bool>(false, arg_2.a.x, false)), var_3.x, true), true, false), -arg_1.e.x));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<u32>) -> bool {
    let var_0 = ~1u;
    var var_1 = select(!select(!(!vec4<bool>(false, false, arg_2.x, arg_2.x)), !vec4<bool>(arg_2.x, true, arg_2.x, true), arg_2.x), vec4<bool>(true, any(!(!vec4<bool>(false, arg_2.x, false, true))), select(arg_2.x, !arg_2.x, !arg_2.x), true), vec4<bool>(true, false, true, arg_2.x));
    global0 = array<Struct_1, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1667f, arg_1, arg_1)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(147f, arg_1, 355f, arg_1)))));
    var var_3 = Struct_2(!vec4<bool>(any(vec4<bool>(arg_2.x, true, arg_2.x, false)), any(var_1.zzy), true || !arg_2.x, select(arg_2.x, var_1.x, false) & true), Struct_1(_wgslsmith_clamp_u32(1u, ~(19561u ^ u_input.a.x), global1.x & ~global1.x), !(!select(vec2<bool>(true, false), vec2<bool>(true, var_1.x), vec2<bool>(arg_2.x, var_1.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, global1.x, u_input.a.x, 40132u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, global1.x, arg_3.x), vec4<u32>(arg_0, 48779u, var_0, 1u)), ~vec4<u32>(var_0, var_0, arg_0, 4294967295u)), vec4<u32>(18220u, 1u, global1.x | arg_0, select(firstTrailingBit(var_0), ~47755u, true))), 2147483647i, firstTrailingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-17233i, 0i, 434i), vec3<i32>(9150i, 28742i, 38738i), vec3<i32>(54248i, 0i, 2147483647i)) >> (~vec3<u32>(1u, arg_0, 29761u) % vec3<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(23766i, 0i, -72639i), vec3<i32>(-54294i, 1i, -2751i), vec3<i32>(-34337i, -2147483647i, 1i)), ~vec3<i32>(12147i, -2147483647i, -14096i)), -vec3<i32>(26938i, 0i, 1i)), -39682i));
    return !(true && var_1.x) && (-1i > _wgslsmith_mult_i32(0i, var_3.c));
}

fn func_1() -> vec4<f32> {
    var var_0 = vec2<bool>(true, true);
    var var_1 = vec3<bool>(true, all(select(vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, false)), !vec3<bool>(var_0.x, var_0.x, false))) | any(select(!vec2<bool>(true, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), !vec2<bool>(var_0.x, false))), false);
    var var_2 = _wgslsmith_f_op_f32(floor(709f));
    var var_3 = Struct_1(global1.x, vec2<bool>(true || ((u_input.a.x & u_input.a.x) != _wgslsmith_mult_u32(global1.x, global1.x)), true), 1u, ~_wgslsmith_mult_vec4_u32(u_input.a, firstTrailingBit(~vec4<u32>(17240u, u_input.a.x, u_input.a.x, global1.x))));
    let var_4 = Struct_2(vec4<bool>(!var_0.x, func_4(global1.x & 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, global1.x), Struct_2(vec4<bool>(true, true, var_3.b.x, false), global0[_wgslsmith_index_u32(4294967295u, 2u)], 3596i, vec3<i32>(0i, -9755i, -2147483647i), vec2<i32>(0i, 1i)), Struct_2(vec4<bool>(var_0.x, var_0.x, false, var_0.x), global0[_wgslsmith_index_u32(34511u, 2u)], -20031i, vec3<i32>(-2147483647i, 13117i, -1i), vec2<i32>(-12677i, 27654i)), 369f)) + _wgslsmith_div_f32(2495f, -127f)), vec3<bool>(select(true, true, false), select(var_1.x, false, var_1.x), var_1.x), countOneBits(select(u_input.a.wwz, vec3<u32>(1u, var_3.d.x, 7621u), false))), var_3.b.x, !var_3.b.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, global1.x)), global1.x, u_input.a.x), ~(~vec3<u32>(0u, 5797u, 43279u))), ~countOneBits(~var_3.a), ~abs(~6794u)), 2u)], firstTrailingBit(120643i) ^ ~_wgslsmith_clamp_i32(-350i, 11213i, abs(-2147483647i)), vec3<i32>(_wgslsmith_sub_i32(~7853i, select(0i, 1i, var_3.b.x)) | -_wgslsmith_mult_i32(14127i, 45754i), -1i, abs(_wgslsmith_clamp_i32(min(2147483647i, -1i), 1i, abs(1i)))), min(vec2<i32>(~_wgslsmith_clamp_i32(1i, 4573i, 2147483647i), -(~1055i)), countOneBits(-max(vec2<i32>(2147483647i, 31971i), vec2<i32>(-35132i, 12290i)))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -179f))), -1051f, -975f, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true), -2147483647i))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1564f - 1067f), -1623f), _wgslsmith_f_op_f32(min(-536f, _wgslsmith_f_op_f32(ceil(-169f)))), _wgslsmith_div_f32(-136f, -1253f), _wgslsmith_f_op_f32(-1287f + 997f)), (var_3.b.x && any(vec2<bool>(false, var_0.x))) == !select(var_1.x, false, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1073f, _wgslsmith_f_op_f32(380f * 1765f), -506f, -194f), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), false)), select(vec4<bool>(var_3.b.x, true, true, select(any(var_4.a), !var_0.x, any(var_1.zx))), var_4.a, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) * vec4<f32>(-601f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(608f * _wgslsmith_f_op_f32(trunc(1235f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1757f, -1611f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-576f)), _wgslsmith_div_f32(1147f, -2809f)) * _wgslsmith_f_op_f32(-403f + _wgslsmith_f_op_f32(step(-2628f, 721f)))), 912f));
    global1 = max(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 57746u), _wgslsmith_mod_vec2_u32(u_input.a.zy, u_input.a.xw)), _wgslsmith_mult_vec2_u32(select(u_input.a.yx, vec2<u32>(1u, 18875u), false), vec2<u32>(1u, 20916u))), u_input.a.zw);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)) + var_0.x))));
    global1 = vec2<u32>(max(~41587u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xw, _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 31776u), vec2<u32>(1u, u_input.a.x))), abs(abs(16655u)), reverseBits(~u_input.a.x))), reverseBits(_wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.a.x << (global1.x % 32u), _wgslsmith_div_u32(global1.x, 25778u))) ^ select(38061u, countOneBits(countOneBits(u_input.a.x)), func_4(~global1.x, 822f, vec3<bool>(true, false, true), u_input.a.yyy ^ vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1682f, var_0.x))) - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1850f))) + _wgslsmith_f_op_f32(func_2(~vec2<u32>(30271u, global1.x), Struct_2(vec4<bool>(false, false, false, false), Struct_1(4294967295u, vec2<bool>(false, true), 63065u, u_input.a), 35829i, vec3<i32>(1i, -2147483647i, 1720i), vec2<i32>(-2147483647i, 14101i)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(53075u, vec2<bool>(true, true), 0u, u_input.a), 16318i, vec3<i32>(-9054i, 2147483647i, 53980i), vec2<i32>(-8198i, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -170f))))), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-652f, var_0.x, true)) * 1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-921f, var_1, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -402f), true)));
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(select(abs(u_input.a), select(vec4<u32>(39429u, 1u, 27800u, 68666u), u_input.a, vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false)) << (u_input.a % vec4<u32>(32u)), select(vec4<u32>(abs(u_input.a.x), reverseBits(global1.x), _wgslsmith_add_u32(6402u, u_input.a.x), 4294967295u), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, global1.x)), vec4<bool>(all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, false))))), u_input.a.zyw, _wgslsmith_f_op_f32(min(1874f, 1819f)), -(~1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(628f, var_0.x) * _wgslsmith_f_op_f32(457f - 1758f)), -592f, var_1, var_0.x)));
}

