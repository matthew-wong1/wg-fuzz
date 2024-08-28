struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, true, true, false, false, false, false, true, true, true, false, true, true, true, true, true, false, false, true, false);

var<private> global2: array<vec4<bool>, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec3<bool>, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f + arg_1)) * _wgslsmith_f_op_f32(-arg_2))));
    global1 = array<bool, 21>();
    global0 = array<vec3<bool>, 11>();
    var var_1 = arg_3.c.d;
    return arg_3.c;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1892f + 1706f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1673f))))), 797f, _wgslsmith_f_op_f32(722f + -1000f), _wgslsmith_f_op_f32(abs(1000f)));
    global0 = array<vec3<bool>, 11>();
    let var_1 = arg_0.b;
    let var_2 = ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, u_input.a) >> (firstTrailingBit(countOneBits(u_input.a)) % vec3<u32>(32u)), vec3<u32>(1u, func_1(func_1(0i, var_0.x, var_0.x, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 21u)], true, false, global1[_wgslsmith_index_u32(arg_0.c, 21u)]), arg_0, arg_0, vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global1[_wgslsmith_index_u32(51099u, 21u)]))).b, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(round(-2163f)), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_0, arg_0, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 21u)], true, global1[_wgslsmith_index_u32(arg_0.a.x, 21u)], false))).c, ~u_input.c));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~min(vec4<u32>(80232u, u_input.e, arg_0.a.x, arg_0.a.x), vec4<u32>(u_input.a.x, arg_0.c, u_input.c, 5373u))), ~(countOneBits(vec4<u32>(var_2.x, 141495u, 4294967295u, 20091u)) >> ((vec4<u32>(var_2.x, 4294967295u, 0u, 5283u) ^ vec4<u32>(23271u, 4294967295u, u_input.c, 0u)) % vec4<u32>(32u)))), 10u)], arg_0, arg_0, select(!(!(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_0.a.x, 21u)], false))), select(!(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 21u)], true)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_0.c), 10u)], select(global2[_wgslsmith_index_u32(arg_0.a.x, 10u)], vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(arg_0.c, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, false, global1[_wgslsmith_index_u32(3165u, 21u)]))), true));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(arg_0.a.x), reverseBits(_wgslsmith_sub_u32(25876u, u_input.e))), abs(~_wgslsmith_sub_u32(u_input.e, var_2.x))) & _wgslsmith_div_u32(abs(1u), firstLeadingBit(abs(14380u))), 21u)];
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(808f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-521f)) - _wgslsmith_f_op_f32(f32(-1f) * -547f)))))));
    let var_1 = func_1(1i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(sign(-200f)), Struct_2(!global2[_wgslsmith_index_u32(0u, 10u)], func_1(1i, var_0, var_0, Struct_2(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.e, 21u)], true), arg_1, arg_1, select(vec4<bool>(global1[_wgslsmith_index_u32(48939u, 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)], true), global2[_wgslsmith_index_u32(0u, 10u)], false))), func_1(-1i, _wgslsmith_f_op_f32(845f * _wgslsmith_f_op_f32(-var_0)), var_0, Struct_2(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false, global1[_wgslsmith_index_u32(u_input.e, 21u)], true), func_1(5135i, 1124f, var_0, Struct_2(global2[_wgslsmith_index_u32(arg_0.x, 10u)], Struct_1(arg_2, u_input.b, arg_0.x, vec4<i32>(-1i, arg_1.b, u_input.b, -28537i)), arg_1, vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)], false, true))), func_1(u_input.d.x, -422f, -295f, Struct_2(global2[_wgslsmith_index_u32(1u, 10u)], Struct_1(u_input.a.zz, u_input.b, 67958u, vec4<i32>(16313i, -1i, 38827i, u_input.d.x)), arg_1, vec4<bool>(global1[_wgslsmith_index_u32(13032u, 21u)], false, global1[_wgslsmith_index_u32(arg_2.x, 21u)], false))), global2[_wgslsmith_index_u32(u_input.c, 10u)])), vec4<bool>(!global1[_wgslsmith_index_u32(arg_0.x, 21u)], !(true || global1[_wgslsmith_index_u32(1u, 21u)]), global1[_wgslsmith_index_u32(arg_0.x, 21u)], func_3(arg_1, _wgslsmith_div_u32(38564u, arg_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1549f);
    let var_3 = ~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i, firstTrailingBit(2147483647i), 0i, -var_1.b)), (reverseBits(vec4<i32>(u_input.b, 0i, -1i, u_input.b)) ^ vec4<i32>(-1i, -14534i, 13782i, 0i)) & vec4<i32>(_wgslsmith_div_i32(1i, arg_1.b), i32(-1i) * -34164i, select(0i, u_input.d.x, false), var_1.d.x));
    var_2 = _wgslsmith_f_op_f32(-2804f + 901f);
    return arg_1.d.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global2 = array<vec4<bool>, 10>();
    global2 = array<vec4<bool>, 10>();
    var var_0 = vec3<u32>(57457u, 1u, u_input.a.x);
    let var_1 = arg_1;
    var_0 = vec3<u32>(arg_1.a.x, arg_1.a.x, reverseBits(arg_1.a.x));
    return -2188f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(vec4<i32>(59961i, u_input.d.x, func_2(~u_input.a, func_1(reverseBits(u_input.d.x), _wgslsmith_f_op_f32(404f - -1427f), _wgslsmith_f_op_f32(445f + -462f), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true), Struct_1(vec2<u32>(u_input.c, 4294967295u), u_input.d.x, u_input.a.x, vec4<i32>(u_input.b, u_input.d.x, u_input.b, u_input.d.x)), Struct_1(u_input.a.xx, 37529i, 0u, vec4<i32>(515i, 0i, 63642i, u_input.b)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global1[_wgslsmith_index_u32(28479u, 21u)], true))), _wgslsmith_mod_vec2_u32(u_input.a.xx, ~u_input.a.xz)), u_input.b), func_1(-u_input.b, 1000f, _wgslsmith_f_op_f32(1616f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(811f, 844f, false)))), Struct_2(!global2[_wgslsmith_index_u32(select(u_input.a.x, 31685u, true), 10u)], func_1(-u_input.d.x, _wgslsmith_f_op_f32(sign(-860f)), _wgslsmith_f_op_f32(f32(-1f) * -636f), Struct_2(global2[_wgslsmith_index_u32(69288u, 10u)], Struct_1(u_input.a.xz, -1i, 4294967295u, vec4<i32>(11040i, 2147483647i, -1i, 33996i)), Struct_1(u_input.a.yy, -83290i, 86145u, vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x)), global2[_wgslsmith_index_u32(u_input.e, 10u)])), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(12250u, u_input.c), u_input.a.zz), u_input.b << (95031u % 32u), 41155u, _wgslsmith_clamp_vec4_i32(vec4<i32>(42393i, u_input.d.x, 45116i, u_input.b), vec4<i32>(14007i, u_input.b, 2147483647i, u_input.d.x), vec4<i32>(u_input.b, -26426i, 1i, u_input.d.x))), vec4<bool>(all(global0[_wgslsmith_index_u32(u_input.c, 11u)]), true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, u_input.c, 64998u), 21u)], true))), vec3<u32>(func_1(~_wgslsmith_mult_i32(u_input.b, -2147483647i), _wgslsmith_f_op_f32(select(1481f, _wgslsmith_f_op_f32(-240f * -444f), !global1[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1645f * -2172f), _wgslsmith_f_op_f32(f32(-1f) * -787f)), Struct_2(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), Struct_1(vec2<u32>(4294967295u, 77714u), -11249i, 0u, vec4<i32>(u_input.d.x, u_input.b, -2147483647i, u_input.d.x)), Struct_1(vec2<u32>(4215u, u_input.e), 0i, 1u, vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.b)), global2[_wgslsmith_index_u32(4294967295u >> (u_input.a.x % 32u), 10u)])).a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, 91377u, 14775u, 4294967295u), vec4<u32>(u_input.c, 56109u, u_input.a.x, 42920u)), _wgslsmith_add_u32(~0u, u_input.a.x)), abs(~(~u_input.e)))));
    global2 = array<vec4<bool>, 10>();
    global2 = array<vec4<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(1u), 67534u, ~56500u), select(vec3<u32>(0u, u_input.a.x, u_input.e) << ((vec3<u32>(1u, u_input.e, u_input.e) & vec3<u32>(u_input.e, 1u, 69984u)) % vec3<u32>(32u)), ~select(vec3<u32>(0u, u_input.c, 0u), u_input.a, global0[_wgslsmith_index_u32(27164u, 11u)]), global1[_wgslsmith_index_u32(u_input.a.x | 0u, 21u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-232f, 1131f, -1471f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(178f, 976f, -722f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, 1106f, -1332f) - vec3<f32>(-332f, -1356f, -686f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(162f, 1491f, -490f), vec3<f32>(186f, 1443f, 594f), global0[_wgslsmith_index_u32(28700u, 11u)]))))), i32(-1i) * -5003i, vec3<i32>((_wgslsmith_mod_i32(u_input.d.x, u_input.d.x) >> (~u_input.e % 32u)) << (~_wgslsmith_clamp_u32(u_input.e, 1u, u_input.c) % 32u), firstLeadingBit(0i), min(17186i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.d.x), u_input.d)))));
}

