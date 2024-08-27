struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(-2027i, -21287i, 2147483647i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(8545i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), 47649i, 2147483647i), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(-11753i, 1i, 29886i), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(-7635i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<i32>(0i, -1i, -1i), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(53281i, i32(-2147483648), 31237i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<i32>(0i, 1i, -4925i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(20585i, -5392i, 2209i), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<i32>(33715i, 43099i, 2147483647i), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<i32>(0i, -33828i, -15913i), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(-13189i, 12891i, i32(-2147483648)), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<i32>(0i, 67338i, 30266i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<i32>(68629i, -1i, -10549i), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<i32>(2147483647i, i32(-2147483648), 9810i), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<i32>(-24967i, 1i, 37759i), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(14866i, 0i, 5650i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, 0i, 6193i), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<i32>(-4897i, 0i, 45232i), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<i32>(-7689i, 2147483647i, 9663i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(1i, 0i, 55i), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<i32>(-26854i, i32(-2147483648), 3311i), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, -1i, -20695i), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 15104i, 57940i), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, 0i, i32(-2147483648)), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(28879i, 0i, -30433i), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(-18877i, 24912i, i32(-2147483648)), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<i32>(15573i, -4634i, 48150i), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(1i, -15821i, i32(-2147483648)), vec2<bool>(false, false))));

var<private> global2: i32;

var<private> global3: array<u32, 5> = array<u32, 5>(33549u, 34055u, 4294967295u, 4294967295u, 20999u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: f32) -> vec4<i32> {
    let var_0 = (-8504i << (arg_0 % 32u)) != firstLeadingBit(_wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(u_input.a.x, -1i, u_input.b.x), vec3<bool>(true, arg_2.a, arg_1)), vec3<i32>(u_input.b.x, u_input.a.x, 0i)) >> (10592u % 32u));
    global0 = array<vec4<i32>, 20>();
    var var_1 = _wgslsmith_mod_vec4_u32(((firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)], 98529u, arg_0, arg_0)) >> (countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18135u, 5u)], 5u)], 1u, 0u, 32950u)) % vec4<u32>(32u))) & countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(arg_0, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)], global3[_wgslsmith_index_u32(arg_0, 5u)], 4294967295u), vec4<u32>(29800u, 21862u, 2896u, 0u)))) << (min(vec4<u32>(arg_0, 1u, 4294967295u, global3[_wgslsmith_index_u32(min(arg_0, global3[_wgslsmith_index_u32(37175u, 5u)]), 5u)]), ~vec4<u32>(90220u, arg_0, 41035u, arg_0)) % vec4<u32>(32u)), ~vec4<u32>(1u, arg_0, countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 5u)], 5u)] ^ 10432u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)]));
    var var_2 = min(-vec4<i32>(-56391i, -1i, max(-2707i, u_input.b.x), u_input.b.x), select(vec4<i32>(firstLeadingBit(41111i), 1i, countOneBits(u_input.b.x), _wgslsmith_sub_i32(max(1i, 0i), 1i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, u_input.b.x, 1i, -4827i)), ~(global0[_wgslsmith_index_u32(15057u, 20u)] ^ vec4<i32>(u_input.b.x, 1i, 48797i, u_input.a.x))), !select(!vec4<bool>(false, var_0, arg_1, true), vec4<bool>(arg_2.a, true, true, var_0), select(vec4<bool>(true, true, arg_1, true), vec4<bool>(var_0, false, true, false), arg_2.a))));
    var_2 = vec4<i32>(-1i) * -vec4<i32>(20860i, i32(-1i) * -11736i, var_2.x, -_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(0u, 20u)], vec4<i32>(var_2.x, var_2.x, 74339i, var_2.x)));
    return -countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.b.x), firstLeadingBit(2147483647i), -2147483647i, _wgslsmith_clamp_i32(u_input.a.x, 1i, 40982i)), vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.b.x), i32(-1i) * -2147483647i, 1i, _wgslsmith_clamp_i32(var_2.x, var_2.x, u_input.b.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<u32> {
    global0 = array<vec4<i32>, 20>();
    global3 = array<u32, 5>();
    var var_0 = arg_1;
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(1082f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, -633f, arg_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-761f, arg_0.x, -307f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -179f, arg_0.x) - vec3<f32>(2119f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-576f, arg_0.x, 1490f)))), any(vec2<bool>(false, var_0.c.x))))));
    return ~_wgslsmith_mod_vec2_u32(min(abs(vec2<u32>(55706u, global3[_wgslsmith_index_u32(7042u, 5u)])), select(vec2<u32>(46719u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)]), vec2<u32>(27028u, 4294967295u), arg_2.a.a.xy)), reverseBits(vec2<u32>(global3[_wgslsmith_index_u32(39620u, 5u)], 2478u))) & countOneBits(vec2<u32>(max(global3[_wgslsmith_index_u32(18172u, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24195u, 5u)], 5u)]), ~global3[_wgslsmith_index_u32(0u, 5u)]) & ~(vec2<u32>(17052u, 0u) << (vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)]) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 695f, arg_3, arg_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, 1927f) * vec4<f32>(arg_3, arg_3, -1890f, arg_3))))))));
    global1 = array<Struct_2, 32>();
    global2 = u_input.a.x;
    var var_1 = 1f;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-508f, -318f), vec2<f32>(arg_3, arg_3), arg_1.a)) + _wgslsmith_f_op_vec2_f32(step(var_0.xx, var_0.wz))), arg_2, global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(1u, 5u)] | 4294967295u), 32u)], firstLeadingBit(func_3(global3[_wgslsmith_index_u32(4294967295u, 5u)], arg_1.a, arg_1, arg_3))), _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(48580u, 5u)], 1u), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], 5u)], 1100u)) >> (_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36856u, 5u)], 5u)])), ~vec2<u32>(0u, 1u)) % vec2<u32>(32u)), max(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], 18560u), vec2<u32>(4294967295u, 0u)), vec2<u32>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)])), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(45904u, 5u)], 5u)], 5u)], ~global3[_wgslsmith_index_u32(4294967295u, 5u)])));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1344f, _wgslsmith_f_op_f32(round(var_0.x))) * -345f);
}

fn func_5(arg_0: f32) -> bool {
    global2 = u_input.b.x;
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(566f, 1490f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1596f - 1381f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1070f, 1280f, 1796f) * vec4<f32>(arg_0, arg_0, arg_0, -679f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -2356f, arg_0, -654f), vec4<f32>(-583f, 709f, 525f, 344f), true))))));
    global0 = array<vec4<i32>, 20>();
    return abs(~(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39301u, 5u)], 5u)] & 0u))) >= _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(func_4(var_0.xy, Struct_1(vec3<bool>(false, false, true), vec3<i32>(-49643i, 16130i, -1i), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(-40552i, u_input.a.x, u_input.a.x), vec2<bool>(false, false))), global0[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42790u, 5u)], 5u)]), 20u)] | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)]), 20u)]).x, 5u)], 0u << (0u % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<u32> {
    global0 = array<vec4<i32>, 20>();
    var var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1.x < _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(arg_1.x, 5u)], 17374u, arg_1.x), true), vec3<bool>(false, func_5(_wgslsmith_f_op_f32(func_2(vec4<i32>(-29967i, -28250i, arg_0.b.x, 1i), Struct_4(arg_0.c.x), Struct_1(vec3<bool>(false, false, false), u_input.b, arg_0.a.zy), 907f))), false)));
    global2 = u_input.b.x;
    let var_1 = global3[_wgslsmith_index_u32(74072u, 5u)] >= ~51953u;
    var var_2 = Struct_4(!(!all(!vec4<bool>(true, arg_0.a.x, true, arg_0.a.x))));
    return abs(countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.x, global3[_wgslsmith_index_u32(0u, 5u)], arg_1.x), vec3<u32>(75234u, arg_1.x, 9120u)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 19288u, 52671u), vec3<u32>(arg_1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43584u, 5u)], 5u)], 5u)])) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-245f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(393f, -558f))))))));
    var var_1 = u_input.a.x;
    global3 = array<u32, 5>();
    global2 = -(~(-(~(~u_input.a.x))));
    var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, u_input.a.x | -(~(-2147483647i)), _wgslsmith_mod_i32(2810i, countOneBits(-715i))), vec2<u32>(85491u, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(9307u, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42394u, 5u)], 5u)], 4294967295u)), func_1(Struct_1(vec3<bool>(false, true, false), vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec2<bool>(true, true)), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65736u, 5u)], 5u)], 46101u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_div_f32(-222f, -1617f))) - -586f), -569f));
}

