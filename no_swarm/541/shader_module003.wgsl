struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec3<u32>(0u, 119171u, 4294967295u), vec4<i32>(-28818i, 2147483647i, 26626i, 1i), vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, 0i, i32(-2147483648), -10244i), vec2<bool>(false, true), vec4<bool>(false, false, false, false))));

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<u32>(15663u, 1u, 3795u), vec4<i32>(29432i, i32(-2147483648), 21449i, 69i), vec2<bool>(true, false), Struct_1(vec4<i32>(1i, 0i, 1i, -14749i), vec2<bool>(false, false), vec4<bool>(false, true, true, false))), Struct_2(vec3<u32>(1u, 29358u, 63645u), vec4<i32>(2147483647i, 2147483647i, -1i, 0i), vec2<bool>(true, false), Struct_1(vec4<i32>(3515i, 1i, i32(-2147483648), 62527i), vec2<bool>(true, false), vec4<bool>(true, false, true, false))), Struct_2(vec3<u32>(64u, 53907u, 0u), vec4<i32>(-25388i, -47421i, 54427i, -9824i), vec2<bool>(true, false), Struct_1(vec4<i32>(-37049i, -39573i, 19748i, 69443i), vec2<bool>(false, true), vec4<bool>(false, false, true, true))), Struct_2(vec3<u32>(31581u, 10555u, 1u), vec4<i32>(-47017i, 2147483647i, 0i, 1i), vec2<bool>(false, true), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 2147483647i), vec2<bool>(true, true), vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(1u, 5622u, 4294967295u), vec4<i32>(-1i, 0i, -28933i, 1i), vec2<bool>(true, false), Struct_1(vec4<i32>(1i, 6428i, -11332i, 0i), vec2<bool>(true, true), vec4<bool>(false, true, true, true))), Struct_2(vec3<u32>(1588u, 0u, 1u), vec4<i32>(-1859i, 0i, 0i, 31187i), vec2<bool>(false, false), Struct_1(vec4<i32>(-13704i, -11308i, 1i, -1i), vec2<bool>(false, true), vec4<bool>(false, true, false, true))), Struct_2(vec3<u32>(0u, 8199u, 1u), vec4<i32>(-57367i, 25346i, 0i, 23627i), vec2<bool>(true, false), Struct_1(vec4<i32>(2041i, 1i, -15945i, -1i), vec2<bool>(true, true), vec4<bool>(false, true, false, false))), Struct_2(vec3<u32>(44474u, 1u, 4294967295u), vec4<i32>(-1i, -52780i, i32(-2147483648), 0i), vec2<bool>(false, true), Struct_1(vec4<i32>(18458i, -33469i, 0i, -1i), vec2<bool>(true, false), vec4<bool>(true, true, false, true))), Struct_2(vec3<u32>(4294967295u, 4294967295u, 63987u), vec4<i32>(22239i, 2147483647i, -10217i, -1i), vec2<bool>(true, false), Struct_1(vec4<i32>(32702i, 2147483647i, i32(-2147483648), 53838i), vec2<bool>(false, false), vec4<bool>(false, false, true, false))), Struct_2(vec3<u32>(2276u, 1u, 1u), vec4<i32>(-16496i, 2147483647i, 1i, i32(-2147483648)), vec2<bool>(true, true), Struct_1(vec4<i32>(1i, 18732i, -12070i, -5379i), vec2<bool>(false, false), vec4<bool>(true, true, false, false))), Struct_2(vec3<u32>(14536u, 10194u, 1u), vec4<i32>(-17661i, -26369i, 912i, 2147483647i), vec2<bool>(true, true), Struct_1(vec4<i32>(-46909i, 3191i, -16382i, -1i), vec2<bool>(false, true), vec4<bool>(true, true, false, false))), Struct_2(vec3<u32>(3184u, 46319u, 26608u), vec4<i32>(1i, -1i, 2147483647i, -23733i), vec2<bool>(true, false), Struct_1(vec4<i32>(-1i, 0i, -59951i, 1i), vec2<bool>(false, false), vec4<bool>(true, true, true, true))), Struct_2(vec3<u32>(32989u, 4294967295u, 0u), vec4<i32>(-14591i, -61309i, 2147483647i, i32(-2147483648)), vec2<bool>(false, false), Struct_1(vec4<i32>(14807i, 0i, 1787i, 499i), vec2<bool>(true, false), vec4<bool>(false, false, true, false))), Struct_2(vec3<u32>(80254u, 36085u, 4294967295u), vec4<i32>(2147483647i, 0i, 11956i, 12142i), vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, 2147483647i, -16702i, 0i), vec2<bool>(false, true), vec4<bool>(true, true, false, true))), Struct_2(vec3<u32>(1u, 0u, 0u), vec4<i32>(16693i, -149i, i32(-2147483648), -1i), vec2<bool>(true, false), Struct_1(vec4<i32>(-25024i, 0i, -5496i, 0i), vec2<bool>(true, false), vec4<bool>(true, false, false, true))), Struct_2(vec3<u32>(1u, 4294967295u, 78015u), vec4<i32>(-41169i, 0i, 14399i, -4824i), vec2<bool>(false, false), Struct_1(vec4<i32>(0i, -1i, 1i, -34308i), vec2<bool>(true, true), vec4<bool>(true, true, false, true))), Struct_2(vec3<u32>(2797u, 1u, 16262u), vec4<i32>(0i, 45187i, 2147483647i, 0i), vec2<bool>(true, true), Struct_1(vec4<i32>(1i, 5833i, -56810i, 47746i), vec2<bool>(false, true), vec4<bool>(true, true, true, true))), Struct_2(vec3<u32>(1u, 91836u, 1u), vec4<i32>(-1i, 26465i, 57042i, 2147483647i), vec2<bool>(false, true), Struct_1(vec4<i32>(6627i, 0i, 0i, -14928i), vec2<bool>(true, true), vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(14049u, 35393u, 39366u), vec4<i32>(-13468i, 25340i, 42033i, -57473i), vec2<bool>(false, true), Struct_1(vec4<i32>(-69608i, 33640i, 1i, 1i), vec2<bool>(true, false), vec4<bool>(true, false, true, true))), Struct_2(vec3<u32>(1u, 4294967295u, 39121u), vec4<i32>(-47492i, 16303i, 74128i, 0i), vec2<bool>(false, true), Struct_1(vec4<i32>(55128i, i32(-2147483648), -10533i, 1i), vec2<bool>(true, true), vec4<bool>(true, true, true, true))), Struct_2(vec3<u32>(5226u, 22471u, 1u), vec4<i32>(1i, 2147483647i, 2147483647i, 6590i), vec2<bool>(true, false), Struct_1(vec4<i32>(0i, -34612i, 0i, 0i), vec2<bool>(false, true), vec4<bool>(true, false, true, true))), Struct_2(vec3<u32>(1u, 62516u, 6502u), vec4<i32>(-10435i, -25199i, 2147483647i, 1i), vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, 22342i, 1i, -7425i), vec2<bool>(false, true), vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(1u, 6471u, 35079u), vec4<i32>(0i, 2147483647i, 2147483647i, -1i), vec2<bool>(false, false), Struct_1(vec4<i32>(1i, -27891i, 1i, 2147483647i), vec2<bool>(true, false), vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(4294967295u, 29629u, 1953u), vec4<i32>(-23480i, -20223i, 7384i, -11612i), vec2<bool>(false, false), Struct_1(vec4<i32>(12269i, -25726i, 1i, 59645i), vec2<bool>(true, true), vec4<bool>(false, true, true, false))), Struct_2(vec3<u32>(7073u, 44950u, 0u), vec4<i32>(-38636i, 1i, -1i, 36775i), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, 2147483647i), vec2<bool>(true, false), vec4<bool>(true, false, false, false))), Struct_2(vec3<u32>(73706u, 22239u, 6184u), vec4<i32>(1i, 0i, 32666i, -4285i), vec2<bool>(true, false), Struct_1(vec4<i32>(36118i, 0i, -1i, 27028i), vec2<bool>(false, false), vec4<bool>(true, true, false, false))), Struct_2(vec3<u32>(4294967295u, 41611u, 93271u), vec4<i32>(-1i, i32(-2147483648), 25198i, 0i), vec2<bool>(false, false), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, 0i), vec2<bool>(false, false), vec4<bool>(false, false, false, false))), Struct_2(vec3<u32>(1685u, 39732u, 4294967295u), vec4<i32>(-12757i, -9705i, 1i, 2147483647i), vec2<bool>(false, true), Struct_1(vec4<i32>(34674i, -28251i, 2147483647i, -5422i), vec2<bool>(true, true), vec4<bool>(false, true, true, true))), Struct_2(vec3<u32>(0u, 4294967295u, 1u), vec4<i32>(-34246i, 0i, 2147483647i, i32(-2147483648)), vec2<bool>(false, false), Struct_1(vec4<i32>(0i, -1i, 19241i, 13090i), vec2<bool>(true, false), vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(23267u, 116505u, 14279u), vec4<i32>(0i, -33918i, 1i, i32(-2147483648)), vec2<bool>(false, true), Struct_1(vec4<i32>(-1i, 4067i, 1602i, -24473i), vec2<bool>(false, true), vec4<bool>(true, true, false, false))), Struct_2(vec3<u32>(0u, 9292u, 1u), vec4<i32>(-22502i, 54221i, 0i, 54820i), vec2<bool>(true, false), Struct_1(vec4<i32>(-1i, -12683i, 4461i, 1i), vec2<bool>(false, false), vec4<bool>(true, false, false, true))));

var<private> global2: u32;

var<private> global3: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false));

var<private> global4: vec4<i32> = vec4<i32>(45917i, 0i, 2147483647i, 22081i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.a.wwy;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1672f)))), -1748f));
    global3 = array<vec4<bool>, 28>();
    return 35684i;
}

fn func_2() -> bool {
    global4 = vec4<i32>(18547i, 14328i & _wgslsmith_add_i32(_wgslsmith_add_i32(global4.x, func_3(Struct_1(vec4<i32>(4254i, -2147483647i, global4.x, 21227i), vec2<bool>(true, true), vec4<bool>(false, false, true, false)))), -2147483647i), global4.x, global4.x >> (_wgslsmith_div_u32(min(1u, ~43555u), ~(~32216u)) % 32u));
    global4 = vec4<i32>(1i, select(23545i | abs(global4.x), global4.x, false), _wgslsmith_sub_i32(-16131i, ~firstTrailingBit(-1i) ^ global4.x), global4.x);
    var var_0 = -2009f;
    global1 = array<Struct_2, 31>();
    let var_1 = !vec3<bool>(true, false, all(vec2<bool>(true, all(vec2<bool>(true, false)))));
    return any(vec2<bool>(any(select(vec3<bool>(var_1.x, false, true), var_1, false)) | true, true));
}

fn func_1() -> vec2<bool> {
    return select(vec2<bool>(func_2(), false), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true), vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: f32) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 31u)];
    let var_1 = abs(_wgslsmith_sub_u32(arg_0.a.x, u_input.a.x) & arg_0.a.x);
    var var_2 = Struct_2(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 106624u, ~_wgslsmith_sub_u32(0u ^ u_input.a.x, ~1u)), arg_1, !vec2<bool>(all(arg_0.d.c.yx), true), arg_0.d);
    var var_3 = Struct_1(-(~arg_0.b), func_1(), vec4<bool>(select(var_2.c.x, false, true), any(!var_0.d.c.ww), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-arg_3)) < _wgslsmith_div_f32(arg_3, -516f)));
    var var_4 = select(select(!select(!vec4<bool>(false, true, arg_0.c.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_3.c.x, true)), !(!select(vec4<bool>(false, arg_0.c.x, var_2.d.b.x, true), var_0.d.c, true)), -_wgslsmith_sub_i32(arg_2.x, var_2.d.a.x) != global4.x), var_2.d.c, var_2.d.c);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(Struct_2(u_input.a.ywy, vec4<i32>(global4.x, min(59904i, global4.x & -2147483647i), global4.x, _wgslsmith_clamp_i32(-global4.x, ~global4.x, global4.x)), !select(vec2<bool>(true, true), vec2<bool>(false, true), func_1()), Struct_1(-vec4<i32>(global4.x, -2147483647i, global4.x, global4.x), select(vec2<bool>(false, false), vec2<bool>(false, true), func_1()), vec4<bool>(u_input.a.x > u_input.a.x, true, true, false))), ~(~vec4<i32>(abs(-3191i), ~1i, ~global4.x, global4.x)), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global4.x, -44975i, 2147483647i, 24053i), vec4<i32>(global4.x, global4.x, global4.x, global4.x)), -vec4<i32>(global4.x, global4.x, global4.x, global4.x), abs(vec4<i32>(global4.x, -17568i, global4.x, global4.x))), vec4<i32>(-1i) * -vec4<i32>(global4.x, -54443i, global4.x, global4.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-158f, _wgslsmith_div_f32(-1298f, _wgslsmith_f_op_f32(min(102f, 313f))))), _wgslsmith_f_op_f32(step(1000f, -1000f)))));
    let var_0 = Struct_1(vec4<i32>(-_wgslsmith_add_i32(-1i, -global4.x), select(global4.x, 2147483647i, true) >> (_wgslsmith_clamp_u32(3115u, u_input.a.x, u_input.a.x << (14444u % 32u)) % 32u), -1i, global4.x), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), !select(vec4<bool>(true, true, func_2(), true), global3[_wgslsmith_index_u32(~4294967295u, 28u)], !all(vec2<bool>(false, false))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(1u & firstTrailingBit(u_input.a.x)), _wgslsmith_add_u32(1u, 56716u), u_input.a.x), 31u)];
    var var_2 = var_1.d;
    var var_3 = Struct_2(_wgslsmith_div_vec3_u32(var_1.a, countOneBits(~(~vec3<u32>(12043u, u_input.a.x, 4294967295u)))), abs(-_wgslsmith_sub_vec4_i32(-var_1.b, abs(var_1.b))), var_1.d.b, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min(firstTrailingBit(vec2<i32>(var_2.a.x, var_0.a.x) >> (vec2<u32>(var_3.a.x, 58950u) % vec2<u32>(32u))), ~var_1.d.a.ww ^ -_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-1i, 52910i))), 44490u, _wgslsmith_mult_vec3_i32(-vec3<i32>(-var_3.d.a.x, var_3.d.a.x, abs(var_3.d.a.x)), global4.zxz));
}

