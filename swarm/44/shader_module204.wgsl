struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(2744u, vec4<f32>(-1385f, -200f, 1768f, 999f), vec3<u32>(0u, 41162u, 82750u), vec2<i32>(2205i, 1i), vec4<u32>(0u, 21850u, 80142u, 0u)), Struct_3(19844u, vec4<f32>(-730f, 2325f, -1359f, -1525f), vec3<u32>(24155u, 58135u, 1u), vec2<i32>(-27003i, 47329i), vec4<u32>(1u, 1u, 0u, 2847u)), Struct_3(1u, vec4<f32>(901f, -1104f, 704f, -279f), vec3<u32>(49868u, 4294967295u, 1u), vec2<i32>(17152i, 28198i), vec4<u32>(29090u, 0u, 1u, 31311u)), Struct_3(4294967295u, vec4<f32>(-1560f, 2054f, -721f, 220f), vec3<u32>(0u, 7300u, 4294967295u), vec2<i32>(-22238i, 16822i), vec4<u32>(4294967295u, 16706u, 0u, 87070u)), Struct_3(4294967295u, vec4<f32>(-1609f, 1130f, 1196f, -328f), vec3<u32>(4294967295u, 0u, 46103u), vec2<i32>(26235i, -46486i), vec4<u32>(1u, 53370u, 88625u, 11027u)), Struct_3(24497u, vec4<f32>(471f, -308f, -1612f, -937f), vec3<u32>(77377u, 0u, 0u), vec2<i32>(1i, -3416i), vec4<u32>(0u, 42435u, 29248u, 0u)), Struct_3(58155u, vec4<f32>(-1000f, 1271f, 293f, -344f), vec3<u32>(43091u, 0u, 52727u), vec2<i32>(-1i, 1i), vec4<u32>(4294967295u, 1u, 1u, 0u)), Struct_3(4294967295u, vec4<f32>(-884f, -516f, -397f, 516f), vec3<u32>(25783u, 1u, 31095u), vec2<i32>(1i, i32(-2147483648)), vec4<u32>(73275u, 0u, 12243u, 57664u)), Struct_3(0u, vec4<f32>(-877f, 1018f, -1238f, 1000f), vec3<u32>(1u, 12799u, 1u), vec2<i32>(i32(-2147483648), 17215i), vec4<u32>(61039u, 1u, 39551u, 0u)), Struct_3(30388u, vec4<f32>(-1091f, 1545f, 734f, 1253f), vec3<u32>(0u, 1361u, 15944u), vec2<i32>(1i, 0i), vec4<u32>(34623u, 24792u, 4294967295u, 104224u)), Struct_3(15635u, vec4<f32>(1203f, -498f, 2251f, -289f), vec3<u32>(0u, 26958u, 0u), vec2<i32>(14345i, 29312i), vec4<u32>(0u, 1u, 4294967295u, 77173u)), Struct_3(1u, vec4<f32>(2763f, -1000f, -1983f, 177f), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(1i, 1i), vec4<u32>(42552u, 67665u, 4294967295u, 46752u)));

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-2450f), Struct_1(251f), Struct_1(-245f), Struct_1(-1000f), Struct_1(-473f), Struct_1(1503f), Struct_1(-1393f), Struct_1(1337f), Struct_1(906f), Struct_1(-255f), Struct_1(316f), Struct_1(239f), Struct_1(-718f), Struct_1(-774f), Struct_1(473f), Struct_1(-2166f), Struct_1(-522f), Struct_1(-771f), Struct_1(764f), Struct_1(-1391f), Struct_1(2482f), Struct_1(440f), Struct_1(-1012f), Struct_1(1491f), Struct_1(-440f), Struct_1(150f), Struct_1(788f), Struct_1(-385f), Struct_1(-802f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(998f, -1116f)), 1751f, _wgslsmith_f_op_f32(f32(-1f) * -596f), 745f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1383f, -1229f, -518f, -750f))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(false, arg_0.x, arg_1, arg_1))));
    global1 = array<vec4<u32>, 31>();
    var var_1 = Struct_2(~(-2147483647i), global2[_wgslsmith_index_u32(max(2567u, 35318u), 29u)]);
    global1 = array<vec4<u32>, 31>();
    var var_2 = vec3<u32>(u_input.a, 1u, 3296u);
    return Struct_3(~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.x, 0u), u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, 1182f, -1592f, 1298f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, _wgslsmith_div_f32(-1000f, 1372f), _wgslsmith_f_op_f32(f32(-1f) * -1659f), 2079f))), ~_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1924u, 0u, 1u), vec3<u32>(u_input.b, 8354u, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(28212u, var_2.x, var_2.x), vec3<u32>(4294967295u, 9055u, var_2.x)) ^ (vec3<u32>(var_2.x, var_2.x, 4294967295u) << (vec3<u32>(u_input.b, 42172u, var_2.x) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_2.x, var_2.x), vec3<u32>(u_input.b, u_input.a, u_input.a))), -vec2<i32>(_wgslsmith_add_i32(var_1.a, _wgslsmith_clamp_i32(var_1.a, 19163i, 1i)), var_1.a), abs(vec4<u32>(45217u, min(max(0u, var_2.x), ~0u), max(~var_2.x, countOneBits(1u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_2.x, 31u)], vec4<u32>(u_input.a, 4294967295u, var_2.x, var_2.x))))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool) -> vec4<i32> {
    global2 = array<Struct_1, 29>();
    let var_0 = -2147483647i;
    global2 = array<Struct_1, 29>();
    let var_1 = func_2(select(vec3<bool>(true, true, true), !vec3<bool>(!arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2 || any(vec3<bool>(false, arg_2, true)))), arg_2 | arg_2);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-30925i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 0i, arg_1, _wgslsmith_sub_i32(arg_1, 2147483647i)), firstTrailingBit(-vec4<i32>(1i, -1i, arg_1, u_input.d.x))), ~(-arg_1)), abs(vec4<i32>(_wgslsmith_add_i32(var_0, countOneBits(u_input.d.x)), var_1.d.x, countOneBits(i32(-1i) * -478i), -11836i)));
    return vec4<i32>(2147483647i, -20144i, -(-2147483647i << (~u_input.a % 32u)), 2147483647i);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 12388u, 0u), vec4<u32>(52960u, u_input.a, u_input.b, 1u) << (global1[_wgslsmith_index_u32(1u, 31u)] % vec4<u32>(32u)), vec4<u32>(67480u, u_input.b, u_input.b, 1u)), abs(_wgslsmith_div_vec4_u32(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<u32>(0u, 0u, u_input.b, 4294967295u)))) << ((1u << (countOneBits(~4294967295u) % 32u)) % 32u);
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 12u)];
    var var_2 = func_2(!vec3<bool>(all(vec3<bool>(false, false, false)), true, 479f == arg_2.a), !(!select(true, false, true) || true));
    let var_3 = -2147483647i ^ _wgslsmith_div_i32(reverseBits(var_1.d.x), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_1.d.x, -66338i, var_1.d.x, -12572i)), func_3(-567f, -64665i, false) << (vec4<u32>(1u, 1u, 56011u, 0u) % vec4<u32>(32u))));
    var_0 = select(1u, ~var_1.c.x, -2147483647i < var_2.d.x);
    return firstLeadingBit(4294967295u);
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = func_2(vec3<bool>(true, all(vec3<bool>(false, select(true, true, true), all(vec3<bool>(true, false, false)))), any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), all(vec2<bool>(false, true))))), true);
    let var_1 = any(vec3<bool>(any(vec3<bool>(true, true, true)), true, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    global1 = array<vec4<u32>, 31>();
    let var_2 = !var_1;
    global1 = array<vec4<u32>, 31>();
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, var_0.b.x)), _wgslsmith_f_op_vec2_f32(-func_2(vec3<bool>(false, true, var_1), var_1).b.wy), any(select(vec2<bool>(var_2, false), vec2<bool>(false, false), vec2<bool>(var_1, var_2))))) - var_0.b.zy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.yw * vec2<f32>(_wgslsmith_f_op_f32(arg_0.a - var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))) - var_0.b.ww)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 94552u), abs(vec2<u32>(53298u, 21116u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(75883u, u_input.a), vec2<u32>(9025u, 45864u)) % vec2<u32>(32u))), firstLeadingBit(~(~vec2<u32>(0u, u_input.a)))), _wgslsmith_mod_u32(u_input.b, reverseBits(_wgslsmith_mod_u32(0u << (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(6858u, 26504u))))), 1u);
    var var_1 = _wgslsmith_div_u32(var_0.x, 1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1487f, 2664f) - _wgslsmith_f_op_vec2_f32(func_4(global2[_wgslsmith_index_u32(func_1(252f, Struct_2(-1i, global2[_wgslsmith_index_u32(58154u, 29u)]), Struct_1(890f)), 29u)]))));
    global1 = array<vec4<u32>, 31>();
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), 1105f));
    global0 = array<Struct_3, 12>();
    var var_3 = any(vec4<bool>(!(!all(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))))));
    let var_4 = func_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, false, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), !vec3<bool>(any(vec2<bool>(false, true)), true, true)), ((~var_0.x | ~var_0.x) != ~40375u) | (false || !any(vec3<bool>(true, false, false))));
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.zy)), ~firstTrailingBit(-(~vec4<i32>(u_input.d.x, 1i, u_input.c, -1i))), var_2.x, _wgslsmith_add_i32(~(2147483647i >> ((u_input.b >> (56341u % 32u)) % 32u)), ~2147483647i), var_2.x);
}

