struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-1000f, -1320f, 831f, -141f), vec4<f32>(-194f, 1121f, 317f, -470f), vec4<f32>(1063f, 963f, 288f, 1363f), vec4<f32>(-1000f, -679f, -1720f, -136f), vec4<f32>(1151f, 1159f, 1650f, 1169f), vec4<f32>(782f, -1354f, 549f, 107f), vec4<f32>(850f, -438f, 404f, 1085f), vec4<f32>(-1081f, -569f, -985f, 401f), vec4<f32>(543f, -169f, 372f, -1177f), vec4<f32>(-104f, 1990f, 275f, -498f), vec4<f32>(689f, 961f, -2949f, 408f), vec4<f32>(665f, 134f, 104f, 1266f), vec4<f32>(-1431f, -1011f, -1249f, 1000f), vec4<f32>(-141f, -149f, 613f, -946f), vec4<f32>(1596f, -699f, -1000f, 332f), vec4<f32>(101f, 352f, -955f, 1419f), vec4<f32>(972f, -495f, 118f, 713f), vec4<f32>(1025f, 219f, -1003f, 252f), vec4<f32>(1123f, -758f, 609f, -1936f), vec4<f32>(264f, -1290f, 213f, 1085f), vec4<f32>(-948f, -289f, -178f, -1000f));

var<private> global2: array<vec2<i32>, 17>;

var<private> global3: array<f32, 13> = array<f32, 13>(-307f, -1000f, -352f, 1568f, 651f, 1357f, -328f, -861f, 174f, -922f, 1636f, 758f, 693f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 31u)];
    let var_1 = Struct_1(~var_0.a | (~var_0.a & var_0.a), select(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, var_0.b.x, 44656i), var_0.b, vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(-18454i, -1i, u_input.a))) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, -1i, var_0.b.x), vec3<i32>(u_input.a, -37332i, 1i)), var_0.b), abs(abs(_wgslsmith_div_vec3_i32(var_0.b, var_0.b))), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    var var_2 = ~vec3<i32>(firstLeadingBit(-17007i), var_1.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(43511i, 2147483647i, var_0.b.x), vec3<i32>(var_0.b.x, 47549i, u_input.a))) >> (min(firstTrailingBit(~(~vec3<u32>(60797u, 4294967295u, var_0.a.x))), var_1.a.wyz) % vec3<u32>(32u));
    var var_3 = global0[_wgslsmith_index_u32(min(52955u, countOneBits(4294967295u)), 31u)];
    var var_4 = Struct_1(~(~select(var_1.a, vec4<u32>(var_3.a.x, 11601u, 26491u, var_0.a.x), false) & var_0.a), var_1.b);
    return vec3<i32>(2147483647i, ~(_wgslsmith_sub_i32(reverseBits(-15358i), i32(-1i) * -2147483647i) & (-1i >> (var_1.a.x % 32u))), var_1.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(~abs(vec4<u32>(~arg_0.a.x, ~arg_1.a.x, countOneBits(arg_1.a.x), ~1u)), select(arg_0.b, max((arg_1.b ^ vec3<i32>(16201i, 10614i, -3102i)) & arg_0.b, func_3()), vec3<bool>(true, true, true)));
    var var_1 = vec3<f32>(global3[_wgslsmith_index_u32(arg_0.a.x, 13u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-292f))), _wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2)))), _wgslsmith_f_op_f32(round(351f)));
    global3 = array<f32, 13>();
    var var_2 = u_input.b.x;
    var var_3 = Struct_1(var_0.a, abs(abs(vec3<i32>(14362i, var_0.b.x, -46675i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.a.x, arg_1.a.x), vec3<u32>(arg_1.a.x, 1u, 51914u)) % vec3<u32>(32u))));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(~4294967295u, 31u)], -1215f);
    global2 = array<vec2<i32>, 17>();
    return global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = false;
    global2 = array<vec2<i32>, 17>();
    let var_1 = vec2<bool>(true, !select(select(true, true, true), true, true));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1701f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.a.x << (33995u % 32u), 13u)])))));
    var var_3 = min(~vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), min(arg_1.b.x, u_input.a), 1i, -18252i), vec4<i32>(min(-arg_1.b.x, _wgslsmith_clamp_i32(arg_1.b.x, arg_1.b.x, arg_1.b.x)), select(2147483647i, func_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 41465u, 4294967295u), arg_0.b)).b.x, true), ~(i32(-1i) * -26609i), _wgslsmith_sub_i32(func_4(Struct_1(vec4<u32>(0u, arg_1.a.x, u_input.b.x, arg_0.a.x), arg_1.b)).b.x, countOneBits(u_input.a)))) | vec4<i32>(u_input.a << (arg_1.a.x % 32u), 1i, u_input.a, firstLeadingBit((arg_1.b.x | 1i) << (19718u % 32u)));
    return func_4(arg_1);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec4<u32> {
    return vec4<u32>(~(firstLeadingBit(u_input.b.x) >> (arg_3.x % 32u)), ~(~4294967295u), ~(~(~min(arg_0.a.x, arg_1.a.x))), arg_0.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_i32(max((vec3<i32>(8073i, 2147483647i, u_input.a) | vec3<i32>(u_input.a, 2147483647i, 2147483647i)) ^ reverseBits(vec3<i32>(-1i, 2147483647i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -6182i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(65286i, -3520i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)), ~vec3<i32>(14311i, u_input.a, u_input.a))), ~((vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, 0i)) ^ select(vec3<i32>(26558i, u_input.a, 42558i), vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<bool>(true, true, true)))) ^ ((-vec3<i32>(u_input.a, -50578i, u_input.a) << (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(1u, 25863u, u_input.b.x)), firstLeadingBit(vec3<u32>(0u, 60557u, u_input.b.x))) % vec3<u32>(32u))) ^ select(select(vec3<i32>(64066i, 0i, u_input.a), vec3<i32>(2147483647i, 2147483647i, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, 1i, -1i), vec3<i32>(0i, 2147483647i, -2147483647i)), true));
    global3 = array<f32, 13>();
    let var_1 = Struct_1(func_6(func_5(func_4(func_2(Struct_1(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u), vec3<i32>(u_input.a, 0i, -1i)), Struct_1(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 60675u), vec3<i32>(var_0.x, u_input.a, u_input.a)), global3[_wgslsmith_index_u32(18422u, 13u)])), func_2(Struct_1(vec4<u32>(1u, 14312u, u_input.b.x, u_input.b.x), vec3<i32>(16774i, var_0.x, -28173i)), global0[_wgslsmith_index_u32(0u << (1u % 32u), 31u)], global3[_wgslsmith_index_u32(u_input.b.x, 13u)])), global0[_wgslsmith_index_u32(~(~func_4(global0[_wgslsmith_index_u32(65701u, 31u)]).a.x), 31u)], vec4<bool>(select(true, true, false) | true, false, true, false), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 12171u, u_input.b.x))), func_2(func_2(global0[_wgslsmith_index_u32(~(~u_input.b.x), 31u)], global0[_wgslsmith_index_u32(~u_input.b.x, 31u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(1u, 13u)]))))), global0[_wgslsmith_index_u32(~(~u_input.b.x) << (0u % 32u), 31u)], global3[_wgslsmith_index_u32(reverseBits(func_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 10124u, u_input.b.x), vec3<i32>(var_0.x, 2147483647i, var_0.x)), Struct_1(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, 1i, 14882i)), -1010f).a.x) << ((0u | u_input.b.x) % 32u), 13u)]).b);
    let var_2 = -2147483647i;
    var var_3 = global3[_wgslsmith_index_u32(37825u, 13u)];
    return global0[_wgslsmith_index_u32(39564u, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 12839i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 13u)], 1279f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(193f, global3[_wgslsmith_index_u32(u_input.b.x, 13u)]) + vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 13u)], global3[_wgslsmith_index_u32(u_input.b.x, 13u)])))))));
    var var_2 = vec2<u32>(u_input.b.x, 3980u);
    var_2 = u_input.b;
    global2 = array<vec2<i32>, 17>();
    global2 = array<vec2<i32>, 17>();
    let var_3 = func_1();
    var var_4 = global2[_wgslsmith_index_u32(u_input.b.x, 17u)];
    let var_5 = -1406f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)), -1226f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-864f, 1513f) - vec2<f32>(297f, var_5))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-354f, global3[_wgslsmith_index_u32(var_3.a.x, 13u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(var_5, var_5), vec2<f32>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(73566u, 13u)]))))));
}

