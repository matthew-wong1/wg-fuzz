struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(39468u, 1u, 8791u), true, vec3<bool>(false, false, false), 1i), Struct_1(vec3<u32>(23924u, 4294967295u, 45365u), false, vec3<bool>(false, false, false), -11051i), Struct_1(vec3<u32>(1u, 16547u, 66914u), false, vec3<bool>(false, false, false), 15781i), Struct_1(vec3<u32>(26814u, 42124u, 1u), false, vec3<bool>(true, false, true), i32(-2147483648)), Struct_1(vec3<u32>(10509u, 89812u, 18520u), false, vec3<bool>(true, false, true), -20907i), Struct_1(vec3<u32>(12687u, 1u, 1u), true, vec3<bool>(false, false, true), 0i), Struct_1(vec3<u32>(3782u, 19574u, 1u), false, vec3<bool>(false, false, true), 33759i), Struct_1(vec3<u32>(35282u, 53594u, 61024u), true, vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 78574u), false, vec3<bool>(false, true, true), -1i), Struct_1(vec3<u32>(4294967295u, 112229u, 1u), false, vec3<bool>(true, true, false), 2147483647i), Struct_1(vec3<u32>(16059u, 4147u, 0u), false, vec3<bool>(true, false, false), 54769i), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), true, vec3<bool>(true, true, false), -65198i), Struct_1(vec3<u32>(77666u, 49412u, 70183u), false, vec3<bool>(true, true, false), 19165i), Struct_1(vec3<u32>(7016u, 16395u, 4294967295u), false, vec3<bool>(false, false, false), 6275i), Struct_1(vec3<u32>(0u, 15637u, 39389u), false, vec3<bool>(true, true, true), 60182i), Struct_1(vec3<u32>(6675u, 4294967295u, 3594u), true, vec3<bool>(true, false, true), -8262i), Struct_1(vec3<u32>(8962u, 10757u, 0u), true, vec3<bool>(false, true, true), -37021i), Struct_1(vec3<u32>(4294967295u, 1u, 23020u), true, vec3<bool>(true, false, true), 7233i), Struct_1(vec3<u32>(69979u, 4294967295u, 1u), false, vec3<bool>(false, false, false), 2147483647i), Struct_1(vec3<u32>(1u, 41177u, 51216u), true, vec3<bool>(false, false, true), 31298i), Struct_1(vec3<u32>(1u, 38203u, 65573u), false, vec3<bool>(false, true, true), 0i), Struct_1(vec3<u32>(1u, 4294967295u, 60652u), true, vec3<bool>(false, true, true), 7127i));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(76872u, 59193u, 84606u), true, vec3<bool>(true, false, false), 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    global0 = arg_1;
    var var_0 = select(global3.c, !arg_1.c, global3.c);
    var var_1 = Struct_1(abs(_wgslsmith_mod_vec3_u32(arg_1.a, global0.a)), true, select(!global0.c, arg_1.c, true), max(arg_1.d, 0i >> ((~global0.a.x << (1u % 32u)) % 32u)));
    global2 = array<Struct_1, 22>();
    let var_2 = Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a, var_1.a), ~(~vec3<u32>(1u, 0u, var_1.a.x))), select(any(select(!vec3<bool>(false, false, var_1.b), vec3<bool>(true, global3.c.x, var_0.x), global0.c)), min(global0.d, _wgslsmith_div_i32(1i, 1231i)) >= 9637i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1497f))) >= _wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(sign(-926f)))), global3.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -24977i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.d, 1215i, global0.d, 31880i), vec4<i32>(-1i) * -vec4<i32>(17169i, -1i, 19527i, arg_1.d))));
    return ~(~vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(var_1.a.x, 34380u)), 1u, var_2.a.x, (u_input.a.x >> (9357u % 32u)) | abs(1u)));
}

fn func_2() -> vec4<u32> {
    global1 = _wgslsmith_clamp_u32(0u | global0.a.x, 0u, ~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.a.x, 4294967295u, global3.a.x, global3.a.x), vec4<u32>(global0.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), select(vec4<u32>(global3.a.x, u_input.a.x, global0.a.x, global0.a.x), vec4<u32>(global3.a.x, u_input.a.x, 5889u, 4294967295u), global0.c.x), 2147483647i < global3.d)));
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~min(~vec4<u32>(19250u, global3.a.x, 4294967295u, global3.a.x), ~vec4<u32>(global0.a.x, 92597u, 4294967295u, 61005u)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(17463u, global0.a.x, global0.a.x, global0.a.x), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global3.a.x)), ~(vec4<u32>(60321u, u_input.a.x, 27667u, u_input.a.x) << (vec4<u32>(9283u, 0u, u_input.a.x, global0.a.x) % vec4<u32>(32u))))), max(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, global0.a.x, 0u), vec4<u32>(global0.a.x, 1u, 1u, global3.a.x))) << (((vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 12390u) << (vec4<u32>(1u, u_input.a.x, global3.a.x, global3.a.x) % vec4<u32>(32u))) & ~vec4<u32>(40559u, global0.a.x, global3.a.x, global3.a.x)) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global3.a.x, 13650u, 4294967295u) << (vec4<u32>(32068u, global0.a.x, u_input.a.x, global3.a.x) % vec4<u32>(32u)), vec4<u32>(global0.a.x, 4294967295u, 0u, 8793u)))), 22u)];
    var var_1 = ~var_0.d;
    var var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-673f * -1411f))), 1796f), -452f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1039f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1017f, -1641f)) * _wgslsmith_f_op_f32(abs(202f))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1397f + -901f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(145f, 738f) - _wgslsmith_f_op_f32(1922f - -632f))))));
    return func_3(select(~(~(-56175i)), i32(-1i) * -2147483647i, global3.c.x), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~4294967295u, ~(~4294967295u)), 22u)]);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-980f, -589f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f + 591f)), any(vec2<bool>(true, global3.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(417f))) - _wgslsmith_f_op_f32(sign(-261f))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 22u)];
    let var_2 = global2[_wgslsmith_index_u32((_wgslsmith_clamp_u32(~func_2().x, ~max(12935u, var_1.a.x), ~4294967295u) << (0u % 32u)) << (abs(39698u) % 32u), 22u)];
    global1 = ~var_1.a.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f * -697f));
    return !(!select(!(!vec4<bool>(false, true, true, global0.b)), select(!vec4<bool>(false, true, var_0, true), select(vec4<bool>(global0.c.x, false, false, false), vec4<bool>(var_2.c.x, global3.c.x, true, var_1.b), vec4<bool>(true, var_2.b, false, var_0)), vec4<bool>(true, global3.b, var_2.b, var_1.c.x)), !var_0));
}

fn func_1() -> f32 {
    var var_0 = select(select(!select(vec4<bool>(true, global0.b, false, true), vec4<bool>(true, global0.b, global3.c.x, global0.b), any(vec4<bool>(false, false, global0.b, false))), vec4<bool>(true, true, true, false), true), !select(!vec4<bool>(global3.b, global0.b, global0.b, false), select(!vec4<bool>(global0.c.x, global3.c.x, global3.b, global3.b), !vec4<bool>(global0.b, global3.c.x, false, true), select(vec4<bool>(global0.b, true, global3.c.x, true), vec4<bool>(global0.c.x, true, global3.b, global3.c.x), vec4<bool>(global3.b, global3.b, true, true))), vec4<bool>(true, global3.b, true, global0.c.x)), !(!func_4(func_2(), global3.c.zz)));
    var var_1 = -1344f;
    global1 = min(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a.x, global3.a.x, global3.a.x), func_2().wzw, func_4(vec4<u32>(344u, 0u, 34933u, 4294967295u), var_0.yz).wxz), global3.a)), abs(_wgslsmith_clamp_u32(firstLeadingBit(84625u), select(abs(38459u), 0u | global0.a.x, false), _wgslsmith_div_u32(4294967295u | u_input.a.x, global3.a.x << (u_input.a.x % 32u)))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global3.a.x) << (u_input.a.x % 32u), 22u)];
    var_1 = _wgslsmith_f_op_f32(trunc(-683f));
    return _wgslsmith_f_op_f32(ceil(593f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    global1 = 45530u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -101f), _wgslsmith_div_f32(-295f, -1058f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 802f))), countOneBits(min(u_input.a, _wgslsmith_div_vec2_u32(global0.a.zy, max(global3.a.yz, u_input.a)))));
}

