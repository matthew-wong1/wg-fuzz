struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, 35248i, Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false), true), true, vec3<u32>(17541u, 17294u, 14549u));

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(4294967295u, -1i, Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), true), false, vec3<u32>(1u, 4294967295u, 0u)), -1i, Struct_2(81838u, 2147483647i, Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), true), false, vec3<u32>(46125u, 1u, 117062u))), Struct_4(Struct_2(29458u, -16154i, Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), false), true, vec3<u32>(4294967295u, 1u, 1u)), -7290i, Struct_2(1u, 1i, Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false), true), true, vec3<u32>(1u, 1u, 70605u))), Struct_4(Struct_2(0u, -1i, Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true), true), true, vec3<u32>(4294967295u, 21031u, 10450u)), -42408i, Struct_2(0u, 0i, Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, true), true), true, vec3<u32>(1407u, 0u, 39680u))), Struct_4(Struct_2(87265u, 2147483647i, Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), false), false, vec3<u32>(0u, 4294967295u, 40830u)), -9255i, Struct_2(1u, 2147483647i, Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), false), false, vec3<u32>(44518u, 4294967295u, 39777u))), Struct_4(Struct_2(0u, -25598i, Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), true), true, vec3<u32>(0u, 4294967295u, 1u)), 1i, Struct_2(4294967295u, 35209i, Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), false), true, vec3<u32>(0u, 13787u, 0u))), Struct_4(Struct_2(1u, -8707i, Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, false), false), false, vec3<u32>(0u, 0u, 1u)), i32(-2147483648), Struct_2(28126u, -4729i, Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false), false), true, vec3<u32>(16820u, 78727u, 4294967295u))), Struct_4(Struct_2(73830u, -1i, Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), true), false, vec3<u32>(1818u, 85799u, 0u)), 0i, Struct_2(1u, -32497i, Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true), false), true, vec3<u32>(31278u, 54519u, 59517u))), Struct_4(Struct_2(23706u, 2147483647i, Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), false), true, vec3<u32>(4294967295u, 42303u, 61654u)), 1i, Struct_2(4294967295u, i32(-2147483648), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), false), false, vec3<u32>(0u, 0u, 69736u))), Struct_4(Struct_2(41660u, 0i, Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, false), false), false, vec3<u32>(108179u, 105963u, 86578u)), -7156i, Struct_2(0u, i32(-2147483648), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, false), false), false, vec3<u32>(2446u, 13592u, 2086u))), Struct_4(Struct_2(18177u, 2147483647i, Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true), false), true, vec3<u32>(13238u, 35246u, 26754u)), 0i, Struct_2(4294967295u, -33440i, Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true), true), false, vec3<u32>(18700u, 0u, 4294967295u))));

var<private> global2: vec3<i32> = vec3<i32>(1i, 80293i, 52713i);

var<private> global3: array<bool, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global3 = array<bool, 25>();
    var var_0 = Struct_1(!(!select(!global0.c.b.zz, select(vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), global0.c.b.zz, global0.d), vec2<bool>(global0.d, true))), global0.c.b, global0.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-722f)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-116f)), -316f)));
    let var_2 = Struct_2(u_input.a.x, 7232i, global0.c, all(vec2<bool>(global0.c.b.x, global3[_wgslsmith_index_u32(~25967u, 25u)])) || false, _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(~1u), 93862u, abs(~1u)), u_input.a | countOneBits(~global0.e)));
    let var_3 = u_input.a;
    return true;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_4 {
    global0 = Struct_2(1u, global0.b, Struct_1(global0.c.b.xx, global0.c.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.e.xx, u_input.a.xx), 25u)]), func_3() || !(!func_3()), u_input.a);
    let var_0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(-403f, 1000f, true)));
    global1 = array<Struct_4, 10>();
    global0 = Struct_2(4294967295u, global0.b, Struct_1(global0.c.a, !select(!global0.c.b, global0.c.b, !global0.c.b), true), true, ~u_input.a | _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 55290u, global0.e.x)));
    var var_1 = vec2<bool>(true, true);
    return Struct_4(Struct_2(7240u, _wgslsmith_add_i32(reverseBits(global0.b), -global2.x) & _wgslsmith_add_i32(global2.x, firstLeadingBit(global0.b)), Struct_1(select(vec2<bool>(global0.d, true), !vec2<bool>(true, var_1.x), vec2<bool>(global3[_wgslsmith_index_u32(22531u, 25u)], false)), vec3<bool>(true, global0.b == -3466i, global0.d), !(global3[_wgslsmith_index_u32(53963u, 25u)] || true)), global0.c.c, u_input.a), global2.x, Struct_2(global0.a, global0.b, global0.c, !(!var_1.x), _wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(u_input.a, u_input.a) ^ firstLeadingBit(u_input.a))));
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_4, 10>();
    var var_0 = func_2(-1417f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f + 437f)))))));
    var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1031f)), _wgslsmith_f_op_f32(1000f - 703f))))), -1914f);
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1150f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -746f)))).a.c;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -898f)))), _wgslsmith_f_op_f32(step(-195f, 225f)), global0.c.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1231f, -1114f), vec2<f32>(1000f, -1198f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2505f, 198f))))))));
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = abs(vec4<i32>(-1i, abs(-global0.b), 2147483647i, arg_1.a.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1479f, arg_1.b) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), -1201f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-306f, 511f), vec2<f32>(arg_1.b, arg_1.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1424f, -2339f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1066f, 371f), vec2<f32>(-1384f, -235f))), vec2<f32>(-938f, arg_1.b), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1980f, arg_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -128f)), arg_1.b > arg_1.b)), arg_1.a.c.b.x))));
    let var_2 = func_2(_wgslsmith_f_op_f32(ceil(1297f)), -158f);
    let var_3 = ~(~21419u);
    let var_4 = 0u;
    return vec4<u32>(5131u, ~4294967295u & _wgslsmith_div_u32(1u, ~var_4), _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, arg_1.a.e.x), _wgslsmith_clamp_u32(var_2.c.e.x, u_input.a.x, arg_1.a.e.x))), u_input.a.x), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 10>();
    let var_0 = !vec4<bool>(false, any(vec4<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(56003u), 25u)], true, 7798u == u_input.a.x, true)), (global2.x >= -8580i) && true, global0.d);
    global2 = (abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(global2.x, global0.b, 19336i), -vec3<i32>(0i, 26145i, global0.b))) & _wgslsmith_div_vec3_i32(abs(-vec3<i32>(global0.b, 2147483647i, -53228i)), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, global2.x), global2.x, max(1i, global0.b)))) ^ ~_wgslsmith_add_vec3_i32(-(~vec3<i32>(global2.x, global0.b, global2.x)), firstLeadingBit(-vec3<i32>(-2147483647i, global2.x, global0.b)));
    var var_1 = select(~(~(vec4<u32>(48289u, u_input.a.x, 1u, u_input.a.x) & vec4<u32>(global0.e.x, 4294967295u, 37905u, global0.e.x))), vec4<u32>(u_input.a.x, ~1u, max(global0.a, global0.a << (global0.a % 32u)), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.a, 12378u, 35971u))), !select(var_0, select(var_0, var_0, vec4<bool>(global0.d, global3[_wgslsmith_index_u32(0u, 25u)], true, true)), false)) | func_4(func_1(), Struct_3(Struct_2(1u, global0.b, global0.c, true && global3[_wgslsmith_index_u32(global0.a, 25u)], vec3<u32>(0u, 4294967295u, u_input.a.x) | u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(847f - -1221f))));
    global2 = ~(~vec3<i32>(global0.b, 1i ^ global2.x, ~min(1i, -1551i)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(min(abs(vec3<i32>(8712i, global2.x, -2147483647i)), -vec3<i32>(0i, -2147483647i, global0.b)), -(~vec3<i32>(-35464i, global0.b, global0.b))));
}

