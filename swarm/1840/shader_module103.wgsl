struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(-1526f, 201f, 1907f, 397f), 38270u, 1u), Struct_1(vec4<f32>(1043f, 1000f, -1035f, -749f), 2835u, 1u), Struct_1(vec4<f32>(1313f, 346f, 1377f, -695f), 4294967295u, 19398u), Struct_1(vec4<f32>(355f, -119f, -1405f, 450f), 4294967295u, 4294967295u), Struct_1(vec4<f32>(292f, 244f, 1200f, 1078f), 0u, 0u), Struct_1(vec4<f32>(642f, 342f, -574f, 464f), 86188u, 1u), Struct_1(vec4<f32>(354f, -374f, -130f, 303f), 23202u, 49622u), Struct_1(vec4<f32>(-1000f, 704f, 527f, -1513f), 0u, 156389u), Struct_1(vec4<f32>(-183f, 1414f, -759f, -339f), 88406u, 4294967295u), Struct_1(vec4<f32>(-619f, -490f, -1406f, 404f), 27297u, 1u), Struct_1(vec4<f32>(-1000f, -263f, 160f, 1000f), 7891u, 17428u), Struct_1(vec4<f32>(-955f, 111f, 594f, -2279f), 99369u, 0u), Struct_1(vec4<f32>(-442f, 1305f, -927f, -1036f), 14921u, 46640u), Struct_1(vec4<f32>(-801f, 835f, 934f, -1101f), 55469u, 48231u), Struct_1(vec4<f32>(347f, 800f, 1089f, -272f), 4294967295u, 0u), Struct_1(vec4<f32>(-1468f, 611f, -824f, 980f), 43545u, 34512u), Struct_1(vec4<f32>(669f, -983f, -242f, -140f), 4294967295u, 57802u), Struct_1(vec4<f32>(-112f, -1000f, 1000f, 531f), 27683u, 4446u));

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<u32, 21> = array<u32, 21>(1u, 4294967295u, 4294967295u, 28114u, 4134u, 4294967295u, 3135u, 1u, 4294967295u, 1u, 0u, 1u, 8441u, 4294967295u, 45596u, 19381u, 3213u, 37548u, 62490u, 0u, 55551u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28992u >> ((~_wgslsmith_div_u32(0u, u_input.d) >> (12713u % 32u)) % 32u), 37647u, firstLeadingBit(u_input.d)), 29u)];
    global2 = array<u32, 21>();
    let var_1 = Struct_4(var_0.a, firstLeadingBit(vec3<u32>(~(~0u), 32283u, reverseBits(~1u))), var_0.a.a);
    var_0 = global1[_wgslsmith_index_u32(min(countOneBits(_wgslsmith_add_u32(1u, 1u >> (var_0.a.c % 32u))) & ~u_input.a, 8697u), 29u)];
    let var_2 = Struct_3(var_0.a, all(vec2<bool>(true, arg_0.a.a.x > _wgslsmith_f_op_f32(select(423f, var_0.a.a.x, true)))), _wgslsmith_f_op_f32(f32(-1f) * -302f), vec2<i32>(9312i, u_input.c), true);
    return _wgslsmith_mod_u32(~min(arg_0.b.x, ~(var_0.a.c ^ var_0.a.c)), min(arg_0.a.c, 1u) >> (_wgslsmith_sub_u32(var_2.a.c & ~1741u, var_0.a.b) % 32u));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = arg_2;
    global2 = array<u32, 21>();
    var var_1 = 458f;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return vec4<i32>(~(-u_input.b.x), ~u_input.c, countOneBits(_wgslsmith_dot_vec2_i32(-u_input.b, u_input.b)) << (_wgslsmith_sub_u32(var_0.a.b, ~1u) % 32u), 16256i);
}

fn func_2() -> vec4<i32> {
    let var_0 = ~u_input.b.x;
    var var_1 = firstLeadingBit(vec2<u32>(~(6272u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38323u, 21u)], 21u)] % 32u)) >> (~max(u_input.d, 4294967295u) % 32u), ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 21u)], 21u)] << (~0u % 32u), 21u)]));
    var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(~(_wgslsmith_add_u32(var_1.x, 0u) & _wgslsmith_mod_u32(u_input.d, var_1.x)), u_input.d), vec2<u32>(1u, _wgslsmith_sub_u32((global2[_wgslsmith_index_u32(u_input.a, 21u)] ^ var_1.x) | _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(7432u, 21u)], var_1.x, 9190u), var_1.x)));
    global0 = array<Struct_1, 18>();
    global2 = array<u32, 21>();
    return select(func_4(u_input.b.x, firstLeadingBit(func_3(Struct_4(global0[_wgslsmith_index_u32(1u, 18u)], vec3<u32>(2939u, 27321u, 54316u), vec4<f32>(1977f, -1363f, -1000f, 1656f)))), Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, -175f, -455f, 1000f)), _wgslsmith_clamp_u32(1u, 629u, 79359u), var_1.x | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47187u, 21u)], 21u)]), vec3<u32>(18207u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, global2[_wgslsmith_index_u32(45039u, 21u)]), 21u)], global2[_wgslsmith_index_u32(abs(27715u), 21u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(155f, -952f, 1000f, -347f) - vec4<f32>(-292f, 561f, 1182f, 1943f)))))), select(vec4<i32>(u_input.c, ~u_input.c, 16247i, -max(var_0, -1i)), vec4<i32>(~0i ^ (u_input.b.x ^ u_input.b.x), var_0, abs(-7583i), func_4(~var_0, 1u, Struct_4(Struct_1(vec4<f32>(261f, -822f, 507f, -1000f), 43326u, u_input.a), vec3<u32>(1693u, 140880u, 8324u), vec4<f32>(-436f, -746f, -171f, -325f))).x), false), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> vec2<u32> {
    global1 = array<Struct_2, 29>();
    global2 = array<u32, 21>();
    let var_0 = (_wgslsmith_clamp_vec4_i32(-vec4<i32>(42489i, u_input.c, u_input.b.x, u_input.c), func_2(), vec4<i32>(u_input.c, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.b.x), vec3<i32>(9770i, -2147483647i, u_input.b.x)), _wgslsmith_mod_i32(12398i, u_input.c))) >> (abs(min(arg_0, vec4<u32>(arg_3.a.b, global2[_wgslsmith_index_u32(7483u, 21u)], arg_0.x, u_input.a))) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(-2147483647i), -2147483647i, func_4(u_input.b.x, u_input.d, arg_3).x, u_input.c), ~(vec4<i32>(-14876i, u_input.c, -2147483647i, -2147483647i) & vec4<i32>(6878i, -2147483647i, 0i, 10216i))), _wgslsmith_mult_vec4_i32(vec4<i32>(14475i, ~u_input.c, u_input.c, ~u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-40621i, 0i, -2147483647i, u_input.c), vec4<i32>(u_input.c, -14781i, -2147483647i, u_input.c))));
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(arg_1, ~global2[_wgslsmith_index_u32(21141u, 21u)]) ^ abs(arg_1), u_input.d), 18u)], true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), vec2<i32>(1i ^ var_0.x, ~var_0.x), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    return vec2<u32>(4294967295u, ~(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(arg_0.x, 21u)], 0u, var_1.a.b) >> (~(global2[_wgslsmith_index_u32(arg_0.x, 21u)] & arg_1) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~func_1(~vec4<u32>(u_input.d, 1u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53931u, 21u)], 21u)]), ~global2[_wgslsmith_index_u32(u_input.d, 21u)], -1000f, Struct_4(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46426u, 21u)], 18u)], vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 21u)], u_input.a), vec4<f32>(-408f, 1427f, -1608f, 576f)))));
    global1 = array<Struct_2, 29>();
    global0 = array<Struct_1, 18>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1018f, _wgslsmith_f_op_f32(733f * 1224f), any(vec2<bool>(false, true))))))) + -2753f);
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1086f, var_1, var_1, 696f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, -809f, var_1, var_1) + vec4<f32>(415f, var_1, 692f, -562f)), any(vec3<bool>(false, true, true))))), countOneBits(var_0.x << (~0u % 32u)), global2[_wgslsmith_index_u32(0u, 21u)]), min(~vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 21u)], 41269u, 1u), select(min(vec3<u32>(u_input.a, 15621u, u_input.d), vec3<u32>(var_0.x, u_input.a, var_0.x) & vec3<u32>(u_input.d, 47412u, 110344u)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 112242u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(var_0.x, 4294967295u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, u_input.d, 74469u))), vec3<bool>(true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, 660f, -1878f, 726f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1836f), var_1, -1000f, var_1)));
    let var_3 = firstTrailingBit(~(~u_input.c));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_2.a.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -591f), var_2.c.x, var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x - 394f))))), ~var_2.b.x, ~(firstLeadingBit(u_input.a) ^ firstLeadingBit(0u)) | ~(~(4294967295u >> (u_input.d % 32u))));
    global0 = array<Struct_1, 18>();
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_2.c.x)), u_input.b, var_5.a.a.x);
}

