struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(2600f, -1000f, 1815f, -1109f), vec2<u32>(72116u, 0u), vec2<bool>(true, true));

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<bool>(false, true), 260f), Struct_3(vec2<bool>(true, true), -1000f), Struct_3(vec2<bool>(false, true), -960f), Struct_3(vec2<bool>(true, true), -1549f), Struct_3(vec2<bool>(false, true), 1000f), Struct_3(vec2<bool>(true, true), -1252f), Struct_3(vec2<bool>(false, false), 676f), Struct_3(vec2<bool>(true, true), -1873f), Struct_3(vec2<bool>(true, true), 1117f), Struct_3(vec2<bool>(false, false), 196f), Struct_3(vec2<bool>(false, false), 458f), Struct_3(vec2<bool>(true, false), 758f), Struct_3(vec2<bool>(false, false), 880f), Struct_3(vec2<bool>(true, false), -1146f), Struct_3(vec2<bool>(true, true), 396f), Struct_3(vec2<bool>(true, true), -1303f), Struct_3(vec2<bool>(false, false), 1569f), Struct_3(vec2<bool>(true, false), 761f));

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, global0.a.x, 103f, arg_1.b)) + _wgslsmith_f_op_vec4_f32(-global0.a)))));
    var var_1 = 1497f;
    global2 = array<Struct_3, 23>();
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    return vec4<u32>(~6389u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~global0.b.x, select(28027u, 1u, true), ~global0.b.x), ~vec3<u32>(20146u, global0.b.x, arg_3)), global0.b.x, ~69265u);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> vec2<i32> {
    let var_0 = global3[_wgslsmith_index_u32(arg_2.b.x << (abs(~firstTrailingBit(77271u) ^ firstLeadingBit(abs(arg_2.a.b.x))) % 32u), 7u)];
    let var_1 = global0.c.x;
    let var_2 = u_input.a;
    global3 = array<vec2<bool>, 7>();
    global1 = array<Struct_3, 18>();
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, var_2), vec2<i32>(9437i, var_2))), -_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 3948i)), vec2<i32>(var_2, -61916i))), -(vec2<i32>(var_2, u_input.a) << (max(global0.b, _wgslsmith_clamp_vec2_u32(arg_2.b.zy, vec2<u32>(arg_0, arg_0), vec2<u32>(arg_2.b.x, 50246u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_4(global0.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-795f * -1755f), arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(958f, global0.a.x))) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-428f, global0.a.x))) + _wgslsmith_f_op_f32(arg_0.b * arg_0.b)), global0.a.x), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, 1332f, 2021f))), vec2<u32>(global0.b.x, global0.b.x) << (vec2<u32>(0u, global0.b.x) % vec2<u32>(32u)), select(vec2<bool>(false, true), !arg_1.zz, true)), ~(~func_3(global1[_wgslsmith_index_u32(global0.b.x, 18u)], Struct_3(arg_0.a, -1116f), true, global0.b.x))), global0.a.x);
    var var_1 = global0.b.x;
    global2 = array<Struct_3, 23>();
    let var_2 = global0.a.xyw;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(var_2.x, -355f, arg_0.b, var_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, arg_0.b, global0.a.x, 970f)))), _wgslsmith_mod_vec2_u32(global0.b, vec2<u32>(~global0.b.x, 16927u)), !select(arg_1.zx, vec2<bool>(true, false), global3[_wgslsmith_index_u32(0u, 7u)])), vec4<u32>(_wgslsmith_div_u32(88171u | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 4294967295u, global0.b.x), vec3<u32>(4294967295u, 0u, global0.b.x)), global0.b.x), reverseBits(~49594u), _wgslsmith_dot_vec2_u32(~global0.b, countOneBits(~global0.b)), select(~min(28708u, global0.b.x), global0.b.x, global0.c.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    let var_0 = func_2(Struct_3(!vec2<bool>(any(vec2<bool>(false, global0.c.x)), true), -1376f), vec3<bool>(any(global0.c), true, true));
    global1 = array<Struct_3, 18>();
    var var_1 = !global3[_wgslsmith_index_u32(var_0.b.x >> (firstTrailingBit(func_3(Struct_3(vec2<bool>(var_0.a.c.x, true), 1000f), global1[_wgslsmith_index_u32(~1u, 18u)], any(arg_3.yxz), min(var_0.a.b.x, 78307u)).x) % 32u), 7u)];
    let var_2 = vec4<f32>(224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -1023f)) + arg_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.a.x), arg_1.x)), global0.a.x);
    let var_3 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    return select(reverseBits(~(~(~1u))), _wgslsmith_clamp_u32(44381u, _wgslsmith_clamp_u32(var_0.b.x, ~1u, ~select(global0.b.x, global0.b.x, false)), ~var_0.b.x >> (_wgslsmith_dot_vec4_u32(~var_0.b, var_0.b) % 32u)), true);
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_1 {
    global3 = array<vec2<bool>, 7>();
    let var_0 = func_2(Struct_3(select(!(!global0.c), func_2(Struct_3(global0.c, global0.a.x), select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), vec3<bool>(false, true, true), global0.c.x)).a.c, func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 80921u), global0.b), 18u)], !vec3<bool>(arg_1, arg_1, arg_1)).a.c), global0.a.x), vec3<bool>(true, any(!vec4<bool>(true, arg_1, global0.c.x, true)), global0.c.x)).a.a;
    global1 = array<Struct_3, 18>();
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), 1587f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, -563f), _wgslsmith_f_op_f32(exp2(global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1502f - global0.a.x)) + _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))), 1f), abs(global0.b), !vec2<bool>(arg_1, false && (arg_1 || global0.c.x)));
    let var_2 = firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(~arg_0, 4294967295u, 31959u << (global0.b.x % 32u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x, var_1.b.x, global0.b.x), vec3<u32>(4294967295u, var_1.b.x, var_1.b.x)), vec3<u32>(61191u, arg_0, arg_0))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, _wgslsmith_div_f32(global0.a.x, -906f), 861f, _wgslsmith_f_op_f32(global0.a.x + global0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), global0.a.x, 1000f)), vec3<bool>(global0.c.x, select(u_input.a, u_input.a, true) > (-2147483647i & u_input.a), all(vec2<bool>(global0.c.x, true))), !vec4<bool>(global0.c.x, global0.c.x, global0.c.x, all(vec3<bool>(false, global0.c.x, true)))), !(-44692i > _wgslsmith_clamp_i32(-u_input.a, u_input.a, -u_input.a)));
    global3 = array<vec2<bool>, 7>();
    var var_0 = (all(vec4<bool>(true, true, true, global0.a.x != global0.a.x)) & (~global0.b.x <= global0.b.x)) || global0.c.x;
    let var_1 = _wgslsmith_f_op_f32(-global0.a.x);
    var_0 = true;
    let var_2 = Struct_1(global0.a, ~(vec2<u32>(global0.b.x, 51334u << (global0.b.x % 32u)) << (global0.b % vec2<u32>(32u))), global3[_wgslsmith_index_u32(select(5055u, select(_wgslsmith_sub_u32(0u, ~global0.b.x), func_5(global0.b.x >> (global0.b.x % 32u), global0.b.x <= 1u).b.x, false), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1464f, -1272f, -1000f) * global0.a), global0.a, vec3<bool>(true, global0.c.x, false), !vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x)) <= ~(~global0.b.x)), 7u)]);
    var var_3 = _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(abs(var_2.b.x), 1u), _wgslsmith_clamp_u32(75606u, 0u, func_5(35006u, var_2.c.x).b.x), _wgslsmith_clamp_u32(~var_2.b.x, ~global0.b.x, global0.b.x))), _wgslsmith_div_vec3_u32(abs(~(vec3<u32>(global0.b.x, 15602u, var_2.b.x) >> (vec3<u32>(4294967295u, 34912u, 1u) % vec3<u32>(32u)))), firstLeadingBit(vec3<u32>(var_2.b.x, var_2.b.x, global0.b.x) & abs(vec3<u32>(global0.b.x, 4294967295u, global0.b.x)))));
    var_0 = true;
    var var_4 = 24493i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~vec4<u32>(13064u, 1u, 4294967295u, 11172u))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-48932i, 42754i)), max(vec2<i32>(u_input.a, 2210i), vec2<i32>(u_input.a, -2147483647i)) << (global0.b % vec2<u32>(32u)), -(~vec2<i32>(u_input.a, -2147483647i)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-2152f, -606f), _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2(global1[_wgslsmith_index_u32(19083u, 18u)], vec3<bool>(true, true, true)).a.a.x)) - var_1), all(select(var_2.c, vec2<bool>(true, global0.c.x), var_2.c.x)))), _wgslsmith_f_op_f32(-var_2.a.x), ~func_3(global1[_wgslsmith_index_u32(var_2.b.x, 18u)], global1[_wgslsmith_index_u32(var_2.b.x, 18u)], false, 54313u));
}

