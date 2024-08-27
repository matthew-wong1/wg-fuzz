struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec4<u32> = vec4<u32>(44871u, 4294967295u, 1u, 0u);

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 4294967295u, 0u, 59926u), vec4<u32>(16521u, 0u, 82281u, 1u), vec4<u32>(35770u, 4294967295u, 4294967295u, 6948u), vec4<u32>(92754u, 1u, 0u, 3733u), vec4<u32>(4294967295u, 0u, 26729u, 4294967295u), vec4<u32>(8809u, 4294967295u, 45734u, 4294967295u), vec4<u32>(1u, 95313u, 90050u, 0u), vec4<u32>(50753u, 96272u, 28376u, 26537u), vec4<u32>(4294967295u, 114067u, 49429u, 34393u), vec4<u32>(14989u, 4294967295u, 0u, 35810u), vec4<u32>(1u, 9388u, 18104u, 36726u), vec4<u32>(39363u, 30934u, 10717u, 1u), vec4<u32>(1u, 25110u, 1u, 0u), vec4<u32>(4294967295u, 39025u, 9041u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 100501u), vec4<u32>(4294967295u, 52050u, 4816u, 4294967295u), vec4<u32>(40201u, 0u, 41759u, 63820u), vec4<u32>(531u, 4294967295u, 4294967295u, 0u), vec4<u32>(49891u, 4294967295u, 10739u, 0u), vec4<u32>(24985u, 6705u, 5398u, 1300u), vec4<u32>(65356u, 18127u, 69525u, 34662u), vec4<u32>(4294967295u, 4294967295u, 18186u, 30411u), vec4<u32>(19482u, 4294967295u, 4646u, 36131u), vec4<u32>(28632u, 45222u, 12935u, 1u), vec4<u32>(17917u, 0u, 14949u, 0u), vec4<u32>(1u, 17395u, 38074u, 4294967295u), vec4<u32>(49521u, 0u, 13545u, 0u), vec4<u32>(4294967295u, 119178u, 0u, 27909u), vec4<u32>(44938u, 1u, 1u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(402f, 240f, arg_1.x, arg_1.x))))))))));
    var var_1 = 692f;
    var_1 = var_0.a.x;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f))), _wgslsmith_f_op_f32(-129f - -524f), _wgslsmith_f_op_f32(abs(-914f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(637f, 1612f, -339f, 1729f))))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a));
    return _wgslsmith_sub_i32(~arg_0, ~(32541i | (-1i | ~u_input.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = arg_1.c;
    let var_2 = firstLeadingBit(func_3(arg_1.a.d.x >> ((global3.x | u_input.b) % 32u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.c.x, arg_1.c.a.x, var_1.a.x))))) >= _wgslsmith_dot_vec3_i32(arg_1.a.d, vec3<i32>(u_input.a.x, -24327i, -5356i));
    let var_3 = -697f;
    var var_4 = countOneBits(global4[_wgslsmith_index_u32(1u, 29u)]);
    return ~(~(~_wgslsmith_div_u32(~4294967295u, ~39765u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> bool {
    global1 = select(select(select(!select(vec3<bool>(arg_0.x, false, false), vec3<bool>(global1.x, false, global1.x), global0[_wgslsmith_index_u32(39339u, 25u)]), select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, arg_1.x, arg_1.x), global1.x), vec3<bool>(global1.x, global1.x, true), !global1.x), !arg_1.yyx), vec3<bool>(u_input.d.x == func_2(arg_0, Struct_4(Struct_3(vec2<f32>(-198f, 1000f), true, vec4<f32>(-1256f, 281f, -1000f, -1964f), vec3<i32>(u_input.a.x, u_input.a.x, -49133i)), u_input.c, Struct_2(vec4<f32>(1000f, -261f, 1080f, -851f))), u_input.a.x), all(vec2<bool>(true, false)), false), select(all(vec3<bool>(true, true, true)), true && (global1.x | false), !(arg_1.x | arg_1.x))), arg_1.zxx, _wgslsmith_add_u32(12729u, global3.x) > _wgslsmith_mod_u32(~1u, global3.x));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(select(vec3<bool>(true, !global1.x, true), global0[_wgslsmith_index_u32(1159u, 25u)], !all(vec3<bool>(global1.x, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(any(global0[_wgslsmith_index_u32(u_input.c, 25u)]), true, func_1(global1.yy, vec4<bool>(false, global1.x, global1.x, global1.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 1u, 74130u, u_input.c), ~vec4<u32>(global2.x, 20922u, 140778u, global2.x)), 25u)], !(u_input.a.x < -196i)), !select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(global2.x, global3.x)), 25u)], global0[_wgslsmith_index_u32(firstTrailingBit(29154u), 25u)], false)), global1.x);
    var var_0 = -1733i;
    let var_1 = global1.x;
    global2 = global4[_wgslsmith_index_u32(0u, 29u)] | ~vec4<u32>(50422u, u_input.b, abs(global3.x << (global3.x % 32u)), _wgslsmith_div_u32(u_input.c ^ 0u, 14677u));
    var var_2 = vec2<i32>(-1i) * -abs(-vec2<i32>(u_input.a.x, u_input.a.x));
    global4 = array<vec4<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(i32(-1i) * -var_2.x, -_wgslsmith_mult_i32(44438i, -10163i) ^ (firstTrailingBit(-1i) ^ ~u_input.a.x)), abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(var_2.x, 0i, -33378i) << (vec3<u32>(u_input.b, 26991u, u_input.c) % vec3<u32>(32u)))), ~global2.zy, ~(~abs(~global2.xwz)));
}

