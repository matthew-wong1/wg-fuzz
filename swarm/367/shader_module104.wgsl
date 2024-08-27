struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 16> = array<bool, 16>(true, false, true, true, true, true, false, true, false, false, true, true, true, true, false, false);

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(10406u, 70593u, 1u, 4294967295u), vec4<u32>(26040u, 0u, 23285u, 37112u), vec4<u32>(4294967295u, 50528u, 1u, 29489u), vec4<u32>(37188u, 33049u, 11379u, 4294967295u), vec4<u32>(8152u, 4294967295u, 45032u, 53874u), vec4<u32>(4294967295u, 0u, 52070u, 4294967295u), vec4<u32>(29664u, 22099u, 23542u, 0u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 0u, 1u, 53198u), vec4<u32>(64085u, 3694u, 86276u, 7065u), vec4<u32>(1u, 1u, 101665u, 4294967295u), vec4<u32>(39732u, 4294967295u, 16182u, 69275u), vec4<u32>(27211u, 37658u, 14182u, 1u), vec4<u32>(1u, 32008u, 5706u, 7870u));

var<private> global3: Struct_1 = Struct_1(45407i, 63767i, 1u, 0u, vec2<f32>(114f, -190f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global3 = Struct_1(1i, max(0i, 26564i), max(~(~1u), ~0u), 0u, vec2<f32>(global3.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(349f))))));
    global0 = arg_0;
    let var_0 = Struct_1(global0.a, _wgslsmith_mod_i32(-1i, abs(select(-global0.a, 31487i, global1[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(85286u, 15u)], global2[_wgslsmith_index_u32(23130u, 15u)])), reverseBits(arg_0.c), vec2<f32>(_wgslsmith_div_f32(527f, _wgslsmith_f_op_f32(abs(-2468f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.e.x - 1676f))), -797f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(12271u, global3.d), _wgslsmith_add_u32(1u, 26442u)), 16u)]))));
    return reverseBits(arg_0.b);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> bool {
    global3 = Struct_1(1i, countOneBits(_wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.a.x, ~12897i) << ((1u | arg_3.x) % 32u)), global0.c, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global0.d | 0u, _wgslsmith_clamp_u32(20133u, ~global0.c, u_input.c)), global0.d, countOneBits(_wgslsmith_div_u32(47317u, 44217u)) << (select(56965u, global3.d << (21466u % 32u), all(vec3<bool>(arg_2, true, false))) % 32u)), vec2<f32>(1319f, _wgslsmith_f_op_f32(-global0.e.x)));
    var var_0 = false;
    let var_1 = arg_3.x;
    let var_2 = Struct_1(global3.a, ~(i32(-1i) * -14794i), 24592u, ~firstLeadingBit(select(0u, 1u, false) ^ 4294967295u), vec2<f32>(-666f, _wgslsmith_f_op_f32(abs(237f))));
    var var_3 = var_2;
    return var_2.c < abs((global3.d >> (~var_1 % 32u)) >> (4294967295u % 32u));
}

fn func_2() -> i32 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_mult_vec3_i32(select(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-25242i, global3.b, -2147483647i), vec3<i32>(-1i, global0.b, 0i) & vec3<i32>(54561i, global3.b, global3.a))), vec3<i32>(1i, global3.b, reverseBits(global0.b | 38598i)), func_4(-func_3(Struct_1(global0.a, global0.a, global3.d, global0.d, vec2<f32>(global3.e.x, global3.e.x))), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.c, u_input.c)), 16u)], (-1673f <= global0.e.x) & any(vec3<bool>(true, global1[_wgslsmith_index_u32(global3.c, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), vec2<u32>(1u, 4294967295u))), -_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-10519i, global0.b, -40896i), vec3<i32>(1i, global3.a, global0.a)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global3.a, 56185i, global3.b)), ~vec3<i32>(0i, -3610i, 35419i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, 235f, -323f, -188f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.e.x, global3.e.x, 1671f, 200f), vec4<f32>(-1088f, 181f, global0.e.x, 688f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-295f, global3.e.x, -1115f, global3.e.x), vec4<f32>(-1291f, -573f, -756f, global3.e.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.e.x, global3.e.x, global0.e.x))))))));
    let var_3 = reverseBits(-(var_1.x ^ global0.a));
    global1 = array<bool, 16>();
    return 4272i;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(~func_2(), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.b, 0i, 0i), vec3<i32>(global0.a, -43644i, 24419i)), ~vec3<i32>(u_input.e, 2956i, global3.a), -vec3<i32>(u_input.e, global0.a, 44498i)), vec3<i32>(global3.b, 29348i, u_input.e))) & vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, global3.a, global0.b), reverseBits(-23843i)), -1i);
    global1 = array<bool, 16>();
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, global0.a, -20046i, -13590i), min(-vec4<i32>(var_0.x, -23627i, 1i, 6268i), ~vec4<i32>(-10682i, 0i, global0.b, -2147483647i))) ^ global3.a, global0.a, 0u, reverseBits(~1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.e.x), 413f)));
    let var_1 = select(!select(vec2<bool>(21522u >= global0.c, all(vec2<bool>(true, true))), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(global0.d, 16u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)])), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(global3.d, 16u)] || global1[_wgslsmith_index_u32(global3.d, 16u)]), select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(44265u, 16u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global3.c, 16u)], true), vec2<bool>(global1[_wgslsmith_index_u32(global0.c, 16u)], global1[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.d, 16u)], global1[_wgslsmith_index_u32(60403u, 16u)])))), !select(vec2<bool>(false, true), !select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(37810u, 16u)], global1[_wgslsmith_index_u32(global3.c, 16u)]), global1[_wgslsmith_index_u32(global0.d, 16u)]), select(select(vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(global3.d, 16u)]), true), vec2<bool>(false, false), !vec2<bool>(global1[_wgslsmith_index_u32(global0.d, 16u)], false))), true);
    global3 = Struct_1(global0.b, 1138i, u_input.c, ~(~u_input.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.x, global3.e.x))))));
    return Struct_1(~(~u_input.b) & (0i >> (min(1u, global0.d) % 32u)), -var_0.x, ~countOneBits(_wgslsmith_mult_u32(1u, abs(0u))), ~(~4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.e)));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = 2147483647i;
    var var_1 = -func_1().b;
    var var_2 = func_1();
    var_2 = func_1();
    let var_3 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(980f, arg_0.e.x, _wgslsmith_f_op_f32(var_3.e.x + _wgslsmith_f_op_f32(trunc(1286f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1565f), _wgslsmith_f_op_f32(arg_0.e.x * 610f), arg_0.e.x, 805f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1610f, arg_0.e.x, 224f, 183f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.e.x, var_3.e.x, global3.e.x, 339f)))))), var_2.a, vec4<i32>(19220i, reverseBits(1i), ~(i32(-1i) * -2147483647i), _wgslsmith_add_i32(var_3.b, -33532i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, global0.e.x, global0.e.x, 2229f)))), min(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, -2147483647i, global3.b, 2147483647i) << (select(vec4<u32>(1u, arg_0.c, global0.c, var_2.d), global2[_wgslsmith_index_u32(4294967295u, 15u)], vec4<bool>(global1[_wgslsmith_index_u32(arg_0.c, 16u)], false, global1[_wgslsmith_index_u32(var_3.d, 16u)], true)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -11785i, global0.b, arg_0.a), vec4<i32>(1i, arg_0.b, 23096i, global3.b) ^ vec4<i32>(1i, -2147483647i, 66406i, global3.b))), (~var_2.b ^ global0.b) | ~(-var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(4294967295u > global0.d, all(vec4<bool>(global3.c != global0.d, false && global1[_wgslsmith_index_u32(41916u, 16u)], true, true)));
    global2 = array<vec4<u32>, 15>();
    global1 = array<bool, 16>();
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(max(vec3<i32>(-2147483647i, u_input.e, global3.a) | vec3<i32>(u_input.e, 70999i, global0.b), min(vec3<i32>(11881i, global3.b, global0.a), vec3<i32>(u_input.d, global3.a, u_input.e))), (vec3<i32>(global3.b, 2147483647i, u_input.a.x) & vec3<i32>(u_input.d, global3.a, global0.a)) << (reverseBits(vec3<u32>(4294967295u, 25093u, 0u)) % vec3<u32>(32u)));
    global1 = array<bool, 16>();
    let x = u_input.a;
    s_output = func_5(func_1());
}

