struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33860u, 1u, 0u, 1u);

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<u32>(4294967295u, 5400u, 4445u, 37365u), 2147483647i, 3287u, 10222u, -1300f), Struct_1(vec4<u32>(28251u, 104531u, 0u, 29602u), 5480i, 67908u, 4294967295u, 844f), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), 18370i, 0u, 11690u, -308f), Struct_1(vec4<u32>(1u, 0u, 1u, 1u), 19841i, 43266u, 93418u, 116f), Struct_1(vec4<u32>(46348u, 4294967295u, 1u, 4294967295u), 53050i, 1u, 4294967295u, 325f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 29220u, 23185u), -31951i, 0u, 30441u, -1492f), Struct_1(vec4<u32>(4330u, 113059u, 48876u, 0u), -16945i, 4294967295u, 4294967295u, -118f), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 72640u), 13332i, 4294967295u, 0u, 780f), Struct_1(vec4<u32>(70605u, 44763u, 9414u, 4294967295u), 21902i, 26881u, 65019u, 196f), Struct_1(vec4<u32>(1u, 1u, 9897u, 0u), -15870i, 46926u, 1u, -1605f), Struct_1(vec4<u32>(0u, 83293u, 17095u, 1u), -3483i, 9411u, 4294967295u, 1814f), Struct_1(vec4<u32>(1u, 7046u, 1u, 140654u), -1i, 12273u, 0u, -1905f), Struct_1(vec4<u32>(0u, 3422u, 58040u, 1u), -1i, 18000u, 1u, -583f), Struct_1(vec4<u32>(4294967295u, 19732u, 1u, 43239u), -1i, 0u, 51208u, -1514f));

var<private> global2: vec3<f32> = vec3<f32>(-2381f, 216f, -157f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_i32(-20775i, firstLeadingBit(firstTrailingBit(arg_1.b) & 1882i));
    var var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.x, ~global0.x), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.c, 22556u) | vec2<u32>(4294967295u, arg_2.c), _wgslsmith_clamp_vec2_u32(arg_2.a.zy, vec2<u32>(0u, 44902u), vec2<u32>(arg_1.a.x, 31032u)), ~vec2<u32>(63269u, 10831u))), vec2<u32>(6631u, _wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, ~34422u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, u_input.b, u_input.b, u_input.b), arg_1.a), arg_1.c, ~u_input.c.x))));
    global0 = abs(vec4<u32>(_wgslsmith_div_u32(1u, var_1.x >> (reverseBits(arg_2.a.x) % 32u)), 30964u, 7077u, reverseBits(~0u << (_wgslsmith_div_u32(u_input.b, arg_2.c) % 32u))));
    var var_2 = -1046f;
    let var_3 = arg_1;
    return _wgslsmith_div_vec4_i32(firstTrailingBit(select(-(vec4<i32>(12731i, var_0, 35182i, 895i) | vec4<i32>(var_3.b, -2147483647i, arg_1.b, arg_2.b)), vec4<i32>(arg_1.b, arg_2.b, var_3.b, 1i), true)), (max(~vec4<i32>(u_input.a, -1i, 2147483647i, var_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_2.b, -1i, 0i), vec4<i32>(-23773i, arg_1.b, var_3.b, arg_1.b), vec4<i32>(-1i, -2147483647i, u_input.a, -21069i))) & vec4<i32>(2147483647i, 33068i << (arg_1.c % 32u), _wgslsmith_div_i32(u_input.a, u_input.a), firstLeadingBit(-34353i))) | vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -40436i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b, var_3.b), vec2<i32>(57346i, -1i))), ~(~arg_2.b), -min(u_input.a, 2147483647i), ~1i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~(~firstLeadingBit(vec4<i32>(21599i, -22238i, -2207i, arg_0.b))), vec4<i32>(arg_0.b, arg_0.b, _wgslsmith_mult_i32(37940i, abs(1418i)), 0i)), ~func_3(!all(vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(13594u, 14u)], arg_0), vec4<i32>(~(-u_input.a), arg_0.b, -49407i, arg_0.b) ^ func_3(_wgslsmith_f_op_f32(f32(-1f) * -937f) > _wgslsmith_f_op_f32(ceil(-177f)), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(0u, 59141u, u_input.b, 22942u))), 14u)], Struct_1(select(vec4<u32>(61975u, 0u, 36734u, arg_0.d), vec4<u32>(arg_0.a.x, 64014u, arg_0.a.x, arg_0.c), vec4<bool>(false, true, true, true)), 51084i, u_input.b | arg_0.c, global0.x, _wgslsmith_f_op_f32(step(arg_0.e, arg_0.e)))));
    let var_1 = arg_0;
    global0 = var_1.a;
    let var_2 = true;
    global1 = array<Struct_1, 14>();
    return Struct_1(vec4<u32>(23941u, _wgslsmith_sub_u32(~arg_0.c, firstTrailingBit(arg_0.d)) << (global0.x % 32u), (80035u >> ((global0.x & arg_0.d) % 32u)) ^ 45333u, 4294967295u), _wgslsmith_sub_i32(arg_0.b, var_1.b), 4294967295u, ~(u_input.b >> (8279u % 32u)), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(floor(-678f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    global0 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(16613u, global0.x, 59487u, global0.x)), ~vec4<u32>(4294967295u, global0.x, 82599u, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~global0.x, 20174u), u_input.c.x, u_input.c.x, u_input.b), arg_0.a));
    global1 = array<Struct_1, 14>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, global2.x, 1174f), vec3<f32>(arg_0.e, -1000f, arg_1))), _wgslsmith_div_vec3_f32(vec3<f32>(851f, arg_1, 1072f), vec3<f32>(-577f, -746f, global2.x)), false))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-532f, _wgslsmith_f_op_f32(f32(-1f) * -2762f), global2.x))))));
    let var_0 = Struct_1(select(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d, 14642u, 4294967295u, 43748u), arg_0.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~arg_0.a, vec4<u32>(u_input.b, u_input.c.x, 1u, 20084u)), arg_0.a), true), countOneBits(10642i), 25972u | abs(_wgslsmith_mult_u32(~4294967295u, global0.x)), ~u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + global2.x))) * -1539f));
    var var_1 = Struct_1(~(_wgslsmith_add_vec4_u32(reverseBits(arg_0.a), var_0.a) ^ firstLeadingBit(firstTrailingBit(vec4<u32>(19867u, var_0.c, 31863u, var_0.a.x)))), _wgslsmith_div_i32(1i, 24708i), 44489u, 29657u, _wgslsmith_f_op_f32(floor(var_0.e)));
    return vec3<bool>(all(vec3<bool>(any(vec3<bool>(true, false, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), any(vec4<bool>(true, true, true, true)))), false, 4294967295u == var_1.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    return any(select(vec3<bool>(true, true, true), func_4(func_2(Struct_1(vec4<u32>(arg_0.d, 1u, arg_1.d, 54058u), 2147483647i, 4294967295u, arg_0.c, arg_0.e)), _wgslsmith_f_op_f32(abs(1231f))), true)) & true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(select(true, true, any(vec4<bool>(true, false, false, true))), select(true, true, true)), !func_1(global1[_wgslsmith_index_u32(40315u, 14u)], Struct_1(vec4<u32>(global0.x, global0.x, 0u, 4294967295u), -4548i, u_input.c.x, global0.x, global2.x)));
    let var_1 = firstTrailingBit(global0.xw ^ u_input.c);
    let var_2 = vec3<i32>(-1i) * -countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), ~vec3<i32>(-1i, -1i, u_input.a)));
    global1 = array<Struct_1, 14>();
    var var_3 = global0.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-632f, -520f, global2.x), vec3<f32>(global2.x, -1198f, -317f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1043f, -1133f))) - vec3<f32>(_wgslsmith_f_op_f32(-618f - global2.x), -1000f, 1642f)))));
}

