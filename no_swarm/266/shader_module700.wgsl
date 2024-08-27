struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<bool>(true, true), -11765i, 1u), Struct_2(vec2<bool>(false, false), i32(-2147483648), 1u), Struct_2(vec2<bool>(true, true), 2147483647i, 0u), Struct_2(vec2<bool>(true, false), 5268i, 1u), Struct_2(vec2<bool>(true, false), -1i, 97550u), Struct_2(vec2<bool>(true, true), -8855i, 41486u), Struct_2(vec2<bool>(true, true), 28748i, 36422u), Struct_2(vec2<bool>(true, true), 2147483647i, 1u), Struct_2(vec2<bool>(false, false), 14929i, 0u), Struct_2(vec2<bool>(true, true), -1i, 24951u), Struct_2(vec2<bool>(false, true), 30636i, 1u), Struct_2(vec2<bool>(false, false), -10528i, 1u), Struct_2(vec2<bool>(false, true), 1i, 4294967295u), Struct_2(vec2<bool>(false, false), 2147483647i, 1u), Struct_2(vec2<bool>(false, true), 2147483647i, 1u), Struct_2(vec2<bool>(false, true), -41749i, 52169u), Struct_2(vec2<bool>(true, false), 2147483647i, 27398u), Struct_2(vec2<bool>(true, false), 20016i, 0u), Struct_2(vec2<bool>(false, false), -44691i, 0u), Struct_2(vec2<bool>(false, true), 1i, 15u), Struct_2(vec2<bool>(true, false), 2147483647i, 9925u), Struct_2(vec2<bool>(true, true), 1i, 26174u), Struct_2(vec2<bool>(false, true), -84831i, 69968u));

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, false), -5821i, 5780u);

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> bool {
    global1 = array<Struct_2, 23>();
    global3 = Struct_1(~select(14744u, 4294967295u, false));
    global0 = global2.a.x;
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(66006u, ~55852u)), 23u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-596f)), -147f));
    return true != all(select(var_0.a, vec2<bool>(arg_1, true), var_0.a.x));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec3<bool>(true, u_input.a.x == firstTrailingBit(global2.b ^ select(-37197i, 6176i, global2.a.x)), func_3(Struct_1(10778u), global2.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global3.a, global3.a) ^ ~vec3<u32>(0u, 7170u, global2.c), vec3<u32>(arg_0.a, 0u, global2.c) & vec3<u32>(global2.c, global2.c, global2.c))));
    global1 = array<Struct_2, 23>();
    let var_1 = reverseBits(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(global2.c, 27309u)), vec2<u32>(0u, select(30613u, 37726u, select(false, true, var_0.x)))));
    global1 = array<Struct_2, 23>();
    var var_2 = global2.c;
    return global2.c ^ reverseBits(15661u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_3 {
    global0 = all(vec3<bool>(true != arg_2.a.x, any(vec3<bool>(true, false, arg_2.a.x)), global2.a.x));
    var var_0 = -(~u_input.a);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1333f);
    let var_2 = Struct_3(vec3<bool>(all(vec2<bool>(false, true)), !(!global2.a.x), global2.a.x), Struct_1(_wgslsmith_mod_u32(arg_1.a, arg_0)), u_input.a.x, ~vec4<i32>(global2.b | 2689i, i32(-1i) * -62757i, arg_2.b, -15816i) | (vec4<i32>(2147483647i, -2147483647i, 2147483647i, ~4726i) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a, 12919u, 4294967295u, arg_2.c), vec4<u32>(22202u, arg_0, arg_1.a, 16184u)) % vec4<u32>(32u))), arg_1.a <= 4294967295u);
    var var_3 = vec3<i32>(~_wgslsmith_div_i32(-51051i >> (~arg_2.c % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.b, -1i, u_input.a.x), var_2.d), 0i)), var_2.c, 2147483647i);
    return Struct_3(select(var_2.a, !var_2.a, !vec3<bool>(global2.a.x, any(var_2.a.zz), arg_2.a.x)), Struct_1(_wgslsmith_mod_u32(var_2.b.a, _wgslsmith_add_u32(17983u, 47708u)) >> (14134u % 32u)), abs(~_wgslsmith_mod_i32(~global2.b, _wgslsmith_dot_vec3_i32(var_2.d.xzz, vec3<i32>(arg_2.b, var_0.x, 28482i)))), ~abs(firstLeadingBit(firstLeadingBit(var_2.d))), !any(var_2.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> vec3<u32> {
    global0 = false;
    let var_0 = func_4(func_2(Struct_1(8089u)), Struct_1(_wgslsmith_add_u32(18480u, ~(~global3.a))), global1[_wgslsmith_index_u32(global3.a, 23u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-149f)), -1828f, _wgslsmith_f_op_f32(trunc(1479f)), _wgslsmith_f_op_f32(f32(-1f) * -299f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, -577f, -1000f, -114f)))))));
    var var_1 = global1[_wgslsmith_index_u32(global3.a, 23u)];
    let var_2 = func_4(firstLeadingBit(arg_0.x) ^ _wgslsmith_div_u32(arg_0.x, 4294967295u), Struct_1(25055u), global1[_wgslsmith_index_u32(~(~(~var_0.b.a >> (~global2.c % 32u))), 23u)], vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-626f + 306f), _wgslsmith_f_op_f32(select(-1315f, 216f, false))))), -1000f, _wgslsmith_div_f32(373f, -904f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1181f, -1000f))), _wgslsmith_f_op_f32(sign(1554f)), any(vec2<bool>(global2.a.x, global2.a.x)))))).b;
    var_1 = Struct_2(vec2<bool>(var_1.a.x, !(arg_1 < 37306i)), 1i, _wgslsmith_sub_u32(global3.a, firstTrailingBit(35886u)));
    return ~vec3<u32>(abs(~arg_0.x), ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 42897u, arg_0.x, 63016u), vec4<u32>(var_0.b.a, 22084u, var_0.b.a, var_1.c))), ~(~global3.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = func_4((global2.c << (arg_1.x % 32u)) >> (1u % 32u), func_4(func_4(func_1(arg_1, firstLeadingBit(1i)).x, func_4(~4294967295u, func_4(global3.a, Struct_1(global2.c), global1[_wgslsmith_index_u32(27511u, 23u)], vec4<f32>(-730f, 888f, -309f, 1326f)).b, Struct_2(global2.a, -3201i, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(249f, 1017f, -1000f, 1065f) + vec4<f32>(-1925f, 1331f, -555f, 735f))).b, Struct_2(!arg_0.yz, u_input.a.x ^ -76473i, 5872u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1371f, -1477f, -1239f, -1030f)))))).b.a, Struct_1(global3.a), Struct_2(vec2<bool>(false || arg_2.x, global2.a.x && false), abs(-u_input.a.x), firstLeadingBit(global2.c << (global2.c % 32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1990f, -1323f, 305f, -496f) + vec4<f32>(1295f, 136f, -806f, -666f)) - vec4<f32>(-931f, 564f, 2282f, 748f))))).b, Struct_2(global2.a, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, min(2069u, 41246u)), vec2<u32>(_wgslsmith_add_u32(15385u, 543u), ~global3.a))), vec4<f32>(_wgslsmith_f_op_f32(ceil(2186f)), _wgslsmith_div_f32(371f, -562f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2012f))), _wgslsmith_div_f32(-2639f, _wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(trunc(-144f)))))).b;
    global3 = func_4(51534u, var_0, global1[_wgslsmith_index_u32(arg_1.x, 23u)], vec4<f32>(1f, 1f, 1f, 1f)).b;
    global3 = Struct_1(select(51114u, arg_1.x & global3.a, (any(vec4<bool>(false, false, true, false)) || any(vec3<bool>(arg_2.x, arg_0.x, arg_2.x))) & func_3(func_4(global3.a, var_0, global1[_wgslsmith_index_u32(var_0.a, 23u)], vec4<f32>(-303f, 374f, 1294f, -1000f)).b, !arg_2.x, ~arg_1)));
    let var_1 = func_4(4294967295u, var_0, Struct_2(select(vec2<bool>(global2.a.x, true), !(!global2.a), vec2<bool>(true, any(vec4<bool>(true, arg_2.x, arg_2.x, global2.a.x)))), firstTrailingBit(~global2.b), global3.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))).b;
    let var_2 = all(!(!global2.a));
    return Struct_2(vec2<bool>(_wgslsmith_div_i32(_wgslsmith_mult_i32(global2.b, u_input.a.x), 38034i) < ~abs(u_input.a.x), all(select(select(vec4<bool>(true, true, global2.a.x, true), vec4<bool>(global2.a.x, arg_0.x, true, true), vec4<bool>(true, arg_0.x, global2.a.x, var_2)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), !arg_2.x))), _wgslsmith_div_i32(firstTrailingBit(~(~u_input.a.x)), u_input.a.x), 68727u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(!select(select(!vec3<bool>(false, global2.a.x, global2.a.x), vec3<bool>(global2.a.x, true, true), all(vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x))), vec3<bool>(global2.a.x, global2.a.x, true), true), firstTrailingBit(~func_1(vec3<u32>(global3.a, 1u, global2.c), u_input.a.x)), !vec3<bool>(global2.a.x, false, false));
    global3 = Struct_1(~firstTrailingBit(~(~global3.a)));
    let var_0 = 5402i;
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(func_5(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), global2.a.x), vec3<bool>(true, true, global2.a.x), vec3<bool>(global2.a.x, true, global2.a.x)), vec3<u32>(_wgslsmith_div_u32(global2.c, global2.c), global3.a, select(global2.c, 4294967295u, global2.a.x)), select(!vec3<bool>(true, global2.a.x, true), !vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(true, false, true))).b, -2147483647i, max(-countOneBits(-2147483647i), u_input.a.x), _wgslsmith_add_i32(-_wgslsmith_sub_i32(0i, -49047i), _wgslsmith_add_i32(1i, 1i))), firstTrailingBit(-(~vec4<i32>(var_0, 1i, -1i, 23501i))));
    global2 = Struct_2(!func_4(_wgslsmith_clamp_u32(min(4294967295u, global2.c), 4294967295u, abs(global2.c)), Struct_1(global2.c ^ global2.c), global1[_wgslsmith_index_u32(func_1(~vec3<u32>(global3.a, global2.c, 10143u), reverseBits(var_0)).x, 23u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1416f, 2130f, 827f, 207f)))).a.zy, -u_input.a.x, ~(~(~global2.c)) & ~1u);
    let var_2 = vec2<bool>(global2.b <= global2.b, global2.a.x);
    var_1 = firstTrailingBit(-func_4(0u, Struct_1(_wgslsmith_add_u32(1u, 1u)), global1[_wgslsmith_index_u32(abs(~17480u), 23u)], vec4<f32>(_wgslsmith_f_op_f32(min(1078f, 587f)), 1005f, _wgslsmith_f_op_f32(sign(1646f)), _wgslsmith_f_op_f32(802f - -227f))).d);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -9265i, 0i, 0i), vec4<i32>(-1i, var_1.x, global2.b, -22293i)) << (reverseBits(vec4<u32>(global2.c, 0u, global2.c, global2.c)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -1i, -2546i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_0, u_input.a.x), vec4<i32>(1i, var_1.x, -1i, 8211i), vec4<i32>(-10266i, var_0, var_1.x, var_1.x))), true || select(false, global2.a.x, global2.a.x))), 15829i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, -257f, -1235f, -1929f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-208f, 483f, 327f) + vec3<f32>(992f, -210f, 1310f))))))));
}

