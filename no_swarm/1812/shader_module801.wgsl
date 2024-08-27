struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<i32, 23> = array<i32, 23>(i32(-2147483648), -1i, 1i, -1957i, 1i, -606i, 12316i, 2147483647i, 0i, 6493i, 0i, 79030i, -52060i, -5809i, -45877i, 0i, 7831i, -1i, 9596i, -1i, 2147483647i, -21377i, 1i);

var<private> global2: u32;

var<private> global3: bool = true;

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec2<bool>(true, true), vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-17881i, 2147483647i, global1[_wgslsmith_index_u32(68471u, 23u)], global1[_wgslsmith_index_u32(1982u, 23u)]), vec4<i32>(14736i, arg_0.a, u_input.a, 1i))), select(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(24125u, 25u)], 7409i, u_input.a, global1[_wgslsmith_index_u32(4796u, 23u)]), vec4<i32>(1i, global4.a, global1[_wgslsmith_index_u32(4294967295u, 23u)], global4.a)), vec4<i32>(2147483647i, u_input.a, arg_0.a, 1288i) & vec4<i32>(-1i, 16391i, -2147483647i, 0i), vec4<bool>(false, true, false, false))), arg_0.a), 0u, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.a, u_input.a, global4.a, 0i), vec4<i32>(global1[_wgslsmith_index_u32(25402u, 23u)], 4073i, global4.a, -1i)), -(vec4<i32>(0i, -1i, u_input.a, 2147483647i) | vec4<i32>(21293i, 45278i, 65280i, global0[_wgslsmith_index_u32(13182u, 25u)]))), -8380i), vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(50768u, 0u)), ~1u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(~1u, select(38154u, 1u, false)), vec2<u32>(~37675u, 0u)));
    global1 = array<i32, 23>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(floor(-162f)), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(953f, arg_1.x)))))));
    global2 = var_0.c;
    let var_2 = countOneBits(abs(_wgslsmith_clamp_vec2_u32(countOneBits(var_0.e), var_0.e, var_0.e)));
    return firstLeadingBit(~abs(~firstLeadingBit(var_0.e.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = select(reverseBits(136u), ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(36357u, 1u), func_3(Struct_3(-2147483647i), vec3<f32>(-1000f, 2546f, 569f)))), !(all(select(arg_2.zx, arg_2.yx, arg_2.x)) & arg_2.x));
    let var_1 = 309f;
    var var_2 = Struct_4(Struct_2(vec4<bool>(true, all(arg_2.zz), false, true), 1u), arg_2);
    global2 = _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(var_0, abs(abs(1u)), abs(~var_0))), ~firstLeadingBit(var_2.a.b));
    global4 = Struct_3(-1i);
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b, 42799u, 52576u, 47895u), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1887u, 16800u, arg_0.b, 0u), vec4<u32>(34999u, arg_0.b, arg_0.b, arg_0.b)), vec4<u32>(~0u, ~4294967295u, ~0u, ~arg_0.b))), 23u)], global0[_wgslsmith_index_u32(arg_2.x, 25u)]);
    var var_1 = arg_0;
    let var_2 = Struct_4(func_2(vec4<i32>(select(-1i, 1i, arg_0.a.x), -abs(15501i), global4.a, global0[_wgslsmith_index_u32(func_2(select(vec4<i32>(-56960i, global4.a, var_0, u_input.a), vec4<i32>(43463i, global4.a, u_input.a, 2147483647i), vec4<bool>(false, true, false, arg_3.x)), true, !vec3<bool>(true, arg_0.a.x, false)).b, 25u)]), true, vec3<bool>(select(arg_3.x, true, arg_3.x), !all(arg_1.zy), arg_1.x)), arg_1);
    let var_3 = Struct_3(0i);
    global4 = Struct_3(1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1131f);
}

fn func_1() -> u32 {
    var var_0 = vec3<i32>(select(global0[_wgslsmith_index_u32(min(abs(_wgslsmith_mod_u32(48094u, 13566u)), 0u), 25u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 25u)], -global1[_wgslsmith_index_u32(0u, 23u)], 0i), _wgslsmith_add_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(31659u, 25u)], 72694i, 1515i), vec3<i32>(1i, -2147483647i, -5615i)))), 1f != _wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(global0[_wgslsmith_index_u32(4488u, 25u)], -1584i, -28668i, 1i), false, vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<u32>(1u, 1u, 1u), vec4<bool>(false, true, true, false)))), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(~(~abs(44603u)), 23u)], 2147483647i), ~(-max(global4.a, global4.a)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, select(40457u, 868u, true)), max(vec2<u32>(1u, 1u), select(vec2<u32>(0u, 20747u), vec2<u32>(11939u, 1u), vec2<bool>(false, false)))) % 32u));
    let var_1 = Struct_4(Struct_2(vec4<bool>(true, true, true, true), 1u), select(!vec3<bool>(all(vec4<bool>(false, true, false, true)), any(vec2<bool>(false, true)), true), vec3<bool>(false, !select(true, true, false), false), select(vec3<bool>(true, any(vec2<bool>(false, false)), true), !func_2(vec4<i32>(8331i, var_0.x, global4.a, 2147483647i), true, vec3<bool>(false, false, true)).a.yww, false)));
    var var_2 = var_1.a.a.x;
    let var_3 = ~(vec3<u32>(~(~1u), ~_wgslsmith_mod_u32(var_1.a.b, var_1.a.b), ~var_1.a.b >> (_wgslsmith_sub_u32(31465u, var_1.a.b) % 32u)) << (~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.a.b, 25164u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(34296u, 41170u, var_1.a.b)) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.b, var_1.a.b, 1u), vec3<u32>(var_1.a.b, 23102u, var_1.a.b))) % vec3<u32>(32u)));
    var var_4 = (abs(-1i) ^ var_0.x) < _wgslsmith_mod_i32(select(abs(~var_0.x), global4.a, 1u != max(var_1.a.b, 0u)), -1i);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(25678i, global0[_wgslsmith_index_u32(4294967295u, 25u)], -14254i), vec3<i32>(global1[_wgslsmith_index_u32(30971u, 23u)], global0[_wgslsmith_index_u32(7154u, 25u)], 0i)), 16275i, -1i, -37694i | u_input.a) | ~_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, u_input.a, global0[_wgslsmith_index_u32(25321u, 25u)]), ~vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(37240u, 23u)], u_input.a, -1i)), vec4<i32>(abs(reverseBits(_wgslsmith_mod_i32(-1i, u_input.a))), firstLeadingBit((global0[_wgslsmith_index_u32(31909u, 25u)] ^ global4.a) & global1[_wgslsmith_index_u32(4294967295u << (0u % 32u), 23u)]), global0[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(func_1(), 23u)]), any(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1286f, 1018f, 1329f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1568f, -1117f, 284f) * vec3<f32>(506f, 934f, -245f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(839f, 109f, -1577f), vec3<f32>(205f, 936f, -1324f)) - vec3<f32>(-467f, -1430f, -1000f))))));
    let var_2 = ~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1401u, 39825u), 1u, 12896u, 20657u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = vec2<u32>(4294967295u, ~(~(~max(var_2.x, var_2.x))));
    let var_4 = func_2(firstLeadingBit(~select(vec4<i32>(16753i, -35088i, 1i, -15831i), vec4<i32>(var_0.x, u_input.a, u_input.a, 0i), false) ^ (vec4<i32>(45579i, u_input.a, global1[_wgslsmith_index_u32(var_2.x, 23u)], -20457i) | reverseBits(vec4<i32>(8113i, 1i, -2147483647i, 76323i)))), all(!vec4<bool>(all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true)))), select(func_2(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(4269i, -69414i, -11334i, -21935i), vec4<i32>(global4.a, global4.a, global1[_wgslsmith_index_u32(0u, 23u)], var_0.x), vec4<bool>(false, false, true, false)), firstTrailingBit(vec4<i32>(1221i, global1[_wgslsmith_index_u32(6025u, 23u)], 21314i, u_input.a)), -vec4<i32>(global1[_wgslsmith_index_u32(var_2.x, 23u)], var_0.x, 4825i, global4.a)), true, vec3<bool>(true, any(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, false)))).a.wzw, func_2(vec4<i32>(u_input.a, global4.a, -19677i, global4.a) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-32974i, u_input.a, global4.a, global4.a), vec4<i32>(u_input.a, -4959i, 13655i, 0i)), false, func_2(vec4<i32>(u_input.a, u_input.a, -1i, global1[_wgslsmith_index_u32(37798u, 23u)]) & vec4<i32>(global1[_wgslsmith_index_u32(3814u, 23u)], -49245i, global1[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 25u)]), false, vec3<bool>(true, true, false)).a.wzy).a.wzz, any(vec3<bool>(true, true, true))));
    let var_5 = var_2.wwy;
    let x = u_input.a;
    s_output = StorageBuffer(-53846i, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~(~var_4.b), var_4.b, 19437u), ~var_2, var_2));
}

