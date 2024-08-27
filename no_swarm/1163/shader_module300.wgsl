struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), -10534i, 82236i), vec3<i32>(i32(-2147483648), 1167i, 1i), vec3<i32>(2147483647i, 2147483647i, -84646i), vec3<i32>(-3634i, -54705i, 0i), vec3<i32>(-1i, i32(-2147483648), 20749i), vec3<i32>(1i, 0i, 4393i), vec3<i32>(1i, 1i, -1i), vec3<i32>(-51151i, 0i, i32(-2147483648)), vec3<i32>(46692i, 5549i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 34047i), vec3<i32>(-92922i, -56800i, -1i), vec3<i32>(40698i, 2147483647i, 7211i), vec3<i32>(1i, -1i, -18970i), vec3<i32>(36394i, 1i, 1i), vec3<i32>(-14190i, -1i, i32(-2147483648)), vec3<i32>(61784i, 9613i, -17078i), vec3<i32>(43816i, 1i, -8408i), vec3<i32>(0i, -13108i, -1i), vec3<i32>(i32(-2147483648), -21164i, 44749i), vec3<i32>(2147483647i, 30714i, -41269i), vec3<i32>(43006i, i32(-2147483648), 0i), vec3<i32>(-17205i, -1181i, 40497i), vec3<i32>(2147483647i, -9238i, i32(-2147483648)), vec3<i32>(-15145i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 11645i, 0i), vec3<i32>(32091i, -66650i, 1i), vec3<i32>(-48587i, 2147483647i, 0i), vec3<i32>(0i, 0i, 2147483647i));

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<u32>(40102u, 52365u, 0u, 75753u), 241f, 16646u, vec3<u32>(86165u, 54425u, 97884u)), Struct_2(vec4<u32>(74761u, 15425u, 25198u, 4294967295u), 540f, 0u, vec3<u32>(1u, 78044u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 20537u, 55179u, 1u), -599f, 22719u, vec3<u32>(112197u, 2632u, 6543u)), Struct_2(vec4<u32>(155u, 31046u, 0u, 30740u), 1190f, 73398u, vec3<u32>(0u, 31072u, 1u)), Struct_2(vec4<u32>(45493u, 1u, 3356u, 39291u), -817f, 271u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 1151u, 4294967295u, 1u), 165f, 26530u, vec3<u32>(115499u, 11821u, 25667u)), Struct_2(vec4<u32>(59654u, 1u, 6179u, 4294967295u), 2030f, 0u, vec3<u32>(50505u, 0u, 0u)), Struct_2(vec4<u32>(4294967295u, 0u, 71803u, 0u), 1458f, 1u, vec3<u32>(29725u, 1u, 1u)), Struct_2(vec4<u32>(11914u, 0u, 0u, 1u), 113f, 51930u, vec3<u32>(76933u, 2640u, 1u)), Struct_2(vec4<u32>(69304u, 4294967295u, 4294967295u, 0u), 115f, 168111u, vec3<u32>(4294967295u, 106754u, 9216u)), Struct_2(vec4<u32>(39236u, 0u, 58924u, 1u), -1287f, 4294967295u, vec3<u32>(21564u, 1u, 0u)), Struct_2(vec4<u32>(4294967295u, 74674u, 128043u, 13940u), 568f, 0u, vec3<u32>(0u, 73180u, 0u)), Struct_2(vec4<u32>(0u, 4294967295u, 25331u, 38621u), 252f, 4294967295u, vec3<u32>(18039u, 61644u, 4294967295u)), Struct_2(vec4<u32>(1u, 0u, 0u, 46598u), -1589f, 592u, vec3<u32>(4799u, 27703u, 0u)), Struct_2(vec4<u32>(38347u, 5166u, 45187u, 4294967295u), -676f, 4294967295u, vec3<u32>(23924u, 0u, 79481u)), Struct_2(vec4<u32>(9638u, 31104u, 0u, 4294967295u), -1673f, 39521u, vec3<u32>(17982u, 22892u, 1u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = abs(vec4<i32>(min(min(_wgslsmith_mod_i32(-2147483647i, -22155i), firstLeadingBit(-17607i)), 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), u_input.b) % 32u)), 1i, 1i, reverseBits(-2147483647i)));
    let var_1 = u_input.b.x;
    global2 = array<Struct_2, 16>();
    return var_0.x;
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    global1 = array<vec2<u32>, 17>();
    let var_0 = arg_0.b;
    let var_1 = abs(vec3<i32>(arg_0.d, func_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.a), arg_0.b.a, _wgslsmith_f_op_f32(1203f - var_0.a), -696f), Struct_1(_wgslsmith_f_op_f32(-var_0.a)), arg_0.c), ~arg_0.d));
    global2 = array<Struct_2, 16>();
    global1 = array<vec2<u32>, 17>();
    return ~(-(~(~max(arg_0.d, arg_0.d))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, -30253i), 2147483647i) & _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), firstTrailingBit(vec2<i32>(-507i, 25748i))), vec2<i32>(reverseBits(50570i), select(24727i, 1i, true)) | _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(6247i, 34972i), vec2<i32>(-1i, 16545i)), firstLeadingBit(vec2<i32>(2147483647i, -25035i)))), _wgslsmith_mod_i32(16358i, _wgslsmith_div_i32(-(-46113i << (u_input.b.x % 32u)), 1i)), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(0i, i32(-1i) * -36765i), i32(-1i) * -1i));
    var_0 = vec4<i32>(0i, i32(-1i) * -1i, i32(-1i) * -(func_2(Struct_4(true, Struct_1(326f), Struct_3(0u), var_0.x), true, vec2<bool>(false, true)) | -2147483647i), ~(i32(-1i) * -11407i));
    var var_1 = ~(~u_input.a.x ^ max(~(~1u), 26758u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1238f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_f_op_f32(-2605f - _wgslsmith_f_op_f32(133f * -281f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 956f)), _wgslsmith_f_op_f32(1f + 663f)))));
    var var_3 = global2[_wgslsmith_index_u32(18283u, 16u)];
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b + -702f) - _wgslsmith_f_op_f32(-var_3.b)), var_2.x)))));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = array<vec2<u32>, 17>();
    let var_0 = func_1();
    global2 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_sub_i32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 359f, _wgslsmith_f_op_f32(-1459f * -492f), _wgslsmith_div_f32(var_0.a, arg_0.a)), vec4<f32>(-1795f, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -143f), var_0.a)), var_0, Struct_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)), ~4294967295u))), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -27335i), _wgslsmith_add_vec2_i32(vec2<i32>(-93824i, -28114i), vec2<i32>(1i, 1i))), 0i));
    var var_2 = Struct_4(true, var_0, Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(42493u, ~u_input.b.x), u_input.b)), _wgslsmith_mult_i32(~(48125i >> (u_input.b.x % 32u)), 0i) | _wgslsmith_clamp_i32(-15608i, -_wgslsmith_clamp_i32(0i, 0i, 4940i), -2147483647i));
    return ~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~(~u_input.b.x)), countOneBits(_wgslsmith_add_u32(var_2.c.a, abs(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~_wgslsmith_mult_i32(countOneBits(-1i), abs(_wgslsmith_mod_i32(13519i, 2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(0i, -11121i, 25954i, -52432i)), vec4<i32>(-25605i, 0i, -1795i, -1i) >> (~u_input.a % vec4<u32>(32u)))), abs(1i));
    let var_1 = Struct_2(~vec4<u32>(4294967295u, ~u_input.a.x & 0u, 37161u, ~_wgslsmith_mod_u32(30962u, 4294967295u)), 1874f, select(~_wgslsmith_div_u32(4294967295u, 1u) ^ ~u_input.b.x, 53075u, true), vec3<u32>(0u, func_4(func_1()), countOneBits(69722u)));
    global1 = array<vec2<u32>, 17>();
    global1 = array<vec2<u32>, 17>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1003f * -1904f) - -964f))), var_1.b, _wgslsmith_f_op_f32(-var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(func_2(Struct_4(false, Struct_1(var_1.b), Struct_3(3591u), var_0.x), true, vec2<bool>(false, false)), min(2147483647i, var_0.x)), var_0.x), func_2(Struct_4(any(vec3<bool>(true, true, true)), Struct_1(var_1.b), Struct_3(var_1.d.x), var_0.x), true, vec2<bool>(true, true)), var_0.x));
}

