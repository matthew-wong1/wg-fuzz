struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: array<Struct_5, 21>;

var<private> global2: array<f32, 2>;

var<private> global3: u32;

var<private> global4: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-401f, -123f, 1000f, 882f), vec4<f32>(-1549f, 1289f, 1439f, 235f), vec4<f32>(160f, -387f, 1458f, -1604f), vec4<f32>(-1000f, 689f, 294f, 607f), vec4<f32>(739f, -646f, -575f, 1000f), vec4<f32>(-197f, -1000f, 1000f, -1133f), vec4<f32>(138f, -460f, 1232f, -509f), vec4<f32>(-1919f, -2241f, 536f, 1746f), vec4<f32>(-455f, -205f, -835f, -670f), vec4<f32>(2620f, 589f, 2044f, 808f), vec4<f32>(-354f, 1234f, 746f, 511f), vec4<f32>(-415f, 765f, -1000f, -931f), vec4<f32>(519f, 1379f, -295f, 650f), vec4<f32>(1058f, 1042f, -234f, -699f), vec4<f32>(-565f, 2186f, -438f, -2069f), vec4<f32>(1212f, -1351f, -1620f, -425f), vec4<f32>(1045f, 512f, -1067f, 224f), vec4<f32>(-318f, -1000f, 197f, 1581f), vec4<f32>(-759f, -744f, 137f, 914f), vec4<f32>(2430f, 1000f, 545f, 479f), vec4<f32>(1072f, 377f, -366f, -696f), vec4<f32>(-1607f, -849f, -1314f, 1040f), vec4<f32>(239f, -486f, 709f, -1219f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c, _wgslsmith_mod_i32(firstLeadingBit(u_input.c), ~(-13250i))), reverseBits(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(-12471i, u_input.c), -36152i))));
    global2 = array<f32, 2>();
    var var_1 = abs(select(u_input.b, _wgslsmith_dot_vec4_u32(~u_input.d & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, u_input.b, u_input.a.x), u_input.d), min(_wgslsmith_mod_vec4_u32(vec4<u32>(53338u, 35731u, 4294967295u, u_input.a.x), u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 2840u)))), true));
    return global4[_wgslsmith_index_u32(1u, 23u)];
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_5(-39589i, var_0, abs(u_input.d.xzw), arg_0.e);
    global2 = array<f32, 2>();
    global3 = var_0;
    var var_2 = 31715u;
    return vec4<u32>(var_1.c.x, var_0, ~(~countOneBits(u_input.b)), 1u);
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: vec3<bool>) -> vec2<f32> {
    global2 = array<f32, 2>();
    global3 = arg_1.b;
    let var_0 = func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1545f, -396f)), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 2u)], arg_1.d.zwx, arg_1.a, vec4<f32>(global2[_wgslsmith_index_u32(arg_1.c.x, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], 103f), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_sub_i32(arg_1.d.x, -u_input.c), Struct_1(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_1.c.x, 2u)])), arg_1.d.zww, arg_1.a, _wgslsmith_f_op_vec4_f32(func_3()), !vec4<bool>(arg_2.x, true, arg_2.x, false)), false, arg_1.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global4[_wgslsmith_index_u32(~arg_1.b, 23u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1314f, 1134f, global2[_wgslsmith_index_u32(42536u, 2u)], -168f), global4[_wgslsmith_index_u32(arg_0, 23u)], false)), arg_2.x)) * global4[_wgslsmith_index_u32(arg_1.c.x, 23u)]), !vec4<bool>(!arg_2.x, true, arg_2.x, false)) ^ ~u_input.d;
    global4 = array<vec4<f32>, 23>();
    let var_1 = Struct_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, u_input.c, 2147483647i), -arg_1.d.yzy), Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_0, 2u)], global2[_wgslsmith_index_u32(52990u, 2u)]), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])))), Struct_1(-1000f, arg_1.d.ywy, 15367i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(26784u, 2u)], -1033f, global2[_wgslsmith_index_u32(0u, 2u)], -1228f)), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), -1i, Struct_1(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_mod_vec3_i32(arg_1.d.xwy, -arg_1.d.zyy), -2147483647i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(47919u, 2u)], -1315f, -1397f, global2[_wgslsmith_index_u32(var_0.x, 2u)]))), select(!vec4<bool>(false, arg_2.x, arg_2.x, false), select(vec4<bool>(arg_2.x, false, arg_2.x, false), vec4<bool>(arg_2.x, false, false, arg_2.x), vec4<bool>(false, true, arg_2.x, arg_2.x)), select(vec4<bool>(true, true, arg_2.x, false), vec4<bool>(arg_2.x, true, arg_2.x, true), true))), true, reverseBits(arg_1.d)), Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(-312f)), -485f), Struct_1(global2[_wgslsmith_index_u32(max(var_0.x, arg_0), 2u)], arg_1.d.yyy, u_input.c | -26254i, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], 1362f, -1355f, global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), !vec4<bool>(true, true, arg_2.x, arg_2.x))), -(~abs(12799i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -978f), _wgslsmith_mult_vec3_i32(arg_1.d.zyy, arg_1.d.wzy) & reverseBits(arg_1.d.xxx), max(abs(1i), min(-16570i, arg_1.d.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 2u)], -466f, global2[_wgslsmith_index_u32(0u, 2u)], 806f))))), !vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), var_0.x < max(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, arg_1.b, u_input.d.x, 0u)), ~u_input.d.x), vec4<i32>(2147483647i, u_input.c, _wgslsmith_dot_vec3_i32(arg_1.d.wxx, arg_1.d.yyz >> (vec3<u32>(arg_0, 1u, 59356u) % vec3<u32>(32u))), -(i32(-1i) * -39625i))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c.a.b.d.x, _wgslsmith_f_op_f32(-498f + -256f)), vec2<f32>(var_1.b.a.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2248f * -1336f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)])))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(~(~arg_0), 2u)], var_1.c.c.a)), all(select(!select(vec2<bool>(true, true), vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, false)), vec2<bool>(arg_2.x || arg_2.x, true), any(var_1.c.c.e.zx)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(-14622i, arg_0.x, 12696i, 3161i)) ^ vec4<i32>(i32(-1i) * -24822i, u_input.c, i32(-1i) * -30449i, ~arg_0.x), vec4<i32>(u_input.c, arg_0.x, i32(-1i) * -2147483647i, arg_0.x) & -vec4<i32>(0i, 0i, arg_0.x, arg_0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)] - global2[_wgslsmith_index_u32(18159u, 2u)]), 369f), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mult_u32(85211u, u_input.d.x), Struct_5(var_0.x, 4294967295u, vec3<u32>(u_input.b, 1u, u_input.d.x), vec4<i32>(2147483647i, var_0.x, 50463i, var_0.x)), vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3()).wz * vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)]), global2[_wgslsmith_index_u32(u_input.a.x, 2u)])))));
    var var_2 = _wgslsmith_f_op_f32(715f + var_1.x);
    let var_3 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))));
    var var_4 = u_input.b;
    return global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~87850u | _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), u_input.b), ~_wgslsmith_div_vec2_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), ~global0[_wgslsmith_index_u32(u_input.b, 1u)])), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_add_u32(0u, 1u)), ~_wgslsmith_mult_u32(34957u, 1u))), _wgslsmith_div_u32(1u, u_input.a.x)), 21u)];
    var var_1 = func_1(var_0.d.wx);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -929f)), global2[_wgslsmith_index_u32(firstLeadingBit(13119u), 2u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 2u)] - -549f))))), _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(76u, 23u)])));
    let var_3 = Struct_1(global2[_wgslsmith_index_u32(u_input.d.x ^ _wgslsmith_mult_u32(~1u, ~(var_1.c.x << (3382u % 32u))), 2u)], firstLeadingBit(var_0.d.xyz), -66359i, _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(~0u, 23u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(var_1.b, 23u)]) * _wgslsmith_f_op_vec4_f32(func_3()))), vec4<bool>(!all(vec4<bool>(false, false, true, false)), 0i > var_0.a, !(true | (var_1.c.x == 0u)), all(vec2<bool>(true, true))));
    global1 = array<Struct_5, 21>();
    global4 = array<vec4<f32>, 23>();
    let var_4 = u_input.d;
    global1 = array<Struct_5, 21>();
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(select(-var_1.d.xw, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, select(0i, 16949i, true)), max(-vec2<i32>(1i, -1i), ~var_3.b.xz)), all(!(!vec2<bool>(var_3.e.x, var_5.e.x)))), _wgslsmith_mod_i32(var_1.d.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, var_5.c)), vec2<i32>(_wgslsmith_sub_i32(var_5.b.x, var_5.c), i32(-1i) * -1i))), ~vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(u_input.a.x, ~u_input.b), 1u));
}

