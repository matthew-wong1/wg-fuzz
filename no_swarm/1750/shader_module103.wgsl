struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<u32, 26> = array<u32, 26>(1u, 23156u, 4294967295u, 36568u, 34045u, 17777u, 1u, 1744u, 0u, 4294967295u, 4294967295u, 91524u, 12404u, 4294967295u, 0u, 32419u, 36286u, 4294967295u, 0u, 4294967295u, 1u, 28875u, 20069u, 4294967295u, 0u, 45783u);

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec3<i32>(1i, 1i, 32726i), Struct_1(-585f, 9715u), true, false), Struct_3(vec3<i32>(22826i, 1i, 2147483647i), Struct_1(-397f, 0u), true, false), Struct_3(vec3<i32>(-1i, 1i, 2147483647i), Struct_1(533f, 1u), true, false), Struct_3(vec3<i32>(-1i, 12492i, 1i), Struct_1(1000f, 52249u), false, true), Struct_3(vec3<i32>(2147483647i, 1692i, 2147483647i), Struct_1(-344f, 25678u), true, false), Struct_3(vec3<i32>(0i, 11658i, 43575i), Struct_1(1098f, 4294967295u), true, false), Struct_3(vec3<i32>(-6141i, 1834i, -4715i), Struct_1(1269f, 0u), false, true), Struct_3(vec3<i32>(i32(-2147483648), -23537i, 7836i), Struct_1(-913f, 34931u), false, true), Struct_3(vec3<i32>(39604i, 20157i, -22867i), Struct_1(-121f, 1u), true, false), Struct_3(vec3<i32>(-1173i, -33217i, 12918i), Struct_1(926f, 0u), true, true), Struct_3(vec3<i32>(i32(-2147483648), 48595i, -1i), Struct_1(458f, 63180u), true, true), Struct_3(vec3<i32>(10648i, i32(-2147483648), 28165i), Struct_1(352f, 6586u), false, false), Struct_3(vec3<i32>(1i, -43009i, -30607i), Struct_1(-895f, 0u), true, false), Struct_3(vec3<i32>(-14360i, -56023i, 0i), Struct_1(424f, 18213u), true, false), Struct_3(vec3<i32>(1i, 54960i, 1i), Struct_1(-966f, 0u), false, false), Struct_3(vec3<i32>(10936i, 0i, 2147483647i), Struct_1(-1551f, 4294967295u), false, false), Struct_3(vec3<i32>(-22132i, -1i, i32(-2147483648)), Struct_1(-1857f, 39174u), true, true), Struct_3(vec3<i32>(-53512i, i32(-2147483648), 39689i), Struct_1(1267f, 1u), false, true), Struct_3(vec3<i32>(0i, 2147483647i, i32(-2147483648)), Struct_1(-290f, 1u), true, false), Struct_3(vec3<i32>(i32(-2147483648), -1i, -55134i), Struct_1(-1031f, 66717u), false, false), Struct_3(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), Struct_1(-758f, 62442u), false, true), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), -4232i), Struct_1(-1086f, 54027u), true, true), Struct_3(vec3<i32>(-1i, -22098i, 2147483647i), Struct_1(953f, 1u), true, false), Struct_3(vec3<i32>(43571i, -19524i, 0i), Struct_1(975f, 0u), false, true), Struct_3(vec3<i32>(1i, 0i, -2633i), Struct_1(-147f, 1u), true, false), Struct_3(vec3<i32>(27007i, 1686i, 5368i), Struct_1(-600f, 4294967295u), true, false), Struct_3(vec3<i32>(5058i, 11820i, 2147483647i), Struct_1(362f, 4294967295u), false, false), Struct_3(vec3<i32>(i32(-2147483648), 17057i, -343i), Struct_1(1636f, 1u), false, true));

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    var var_0 = Struct_4(false, all(vec4<bool>(false, any(vec3<bool>(true, true, false)) == true, true, 0i > _wgslsmith_add_i32(-2147483647i, u_input.c.x))), ~(~(~firstTrailingBit(1u))));
    let var_1 = Struct_4(var_0.b, true, 29997u & (u_input.a.x ^ max(5604u, ~1u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zy + vec2<f32>(_wgslsmith_f_op_f32(step(global3.x, -1000f)), _wgslsmith_f_op_f32(-global3.x))))));
    var var_3 = u_input.c;
    var var_4 = var_1;
    return _wgslsmith_mult_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, abs(4911i)), vec2<i32>(1i, abs(-1i)))), -vec2<i32>(~(-5232i), arg_0) << (~(~(~u_input.a)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>) -> vec2<i32> {
    global2 = array<Struct_3, 28>();
    let var_0 = countOneBits(abs(~global1[_wgslsmith_index_u32(u_input.a.x, 26u)]));
    let var_1 = global2[_wgslsmith_index_u32(1u, 28u)];
    let var_2 = Struct_5(select(vec2<bool>(false, var_1.d), vec2<bool>(any(!vec3<bool>(true, var_1.c, true)), var_1.c), vec2<bool>(-2147483647i == -u_input.c.x, !(!var_1.d))), ~(select(4294967295u, _wgslsmith_mult_u32(var_0, global1[_wgslsmith_index_u32(75889u, 26u)]), true) >> (0u % 32u)), select(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], var_0, var_1.c), Struct_2(var_1.b, select(select(!vec2<bool>(var_1.c, var_1.d), vec2<bool>(true, var_1.c), all(vec3<bool>(true, var_1.d, false))), vec2<bool>(var_1.d & var_1.d, select(var_1.c, var_1.c, var_1.d)), vec2<bool>(var_1.d, all(vec3<bool>(true, false, true)))), var_1.b, false));
    global2 = array<Struct_3, 28>();
    return var_1.a.xy;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, 1i), 37289i)), func_4(func_3(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-16438i, 0i)))));
    global0 = firstTrailingBit(firstLeadingBit(_wgslsmith_mult_i32(1i, u_input.c.x)));
    global0 = _wgslsmith_mult_i32(-(~(_wgslsmith_add_i32(-2147483647i, u_input.b) >> (0u % 32u))), abs(1i));
    var var_0 = ~(func_4(_wgslsmith_add_vec2_i32(min(u_input.c.xz, u_input.c.zx), u_input.c.yy)).x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(42471u, 26u)], 1u, u_input.a.x) ^ ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 3754u, 4294967295u, u_input.a.x), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74110u, 26u)], 26u)], 26u)]), vec4<u32>(31510u, 1u, 77281u, 1u)), max(vec4<u32>(global1[_wgslsmith_index_u32(1u, 26u)], u_input.a.x, 28551u, 17680u), vec4<u32>(u_input.a.x, 12795u, 35647u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50047u, 26u)], 26u)])))) % 32u));
    var var_1 = vec3<bool>(false, !(0u >= abs(_wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(278u, 26u)], 0u))), true);
    return 358f;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-958f - _wgslsmith_f_op_f32(func_2())), (70438u & global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)]), 26u)]) >> (~abs(13636u) % 32u)), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x) + global3.x), ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(4294967295u, 4294967295u))), (-418f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))) != !all(vec2<bool>(true, true)));
    global2 = array<Struct_3, 28>();
    var_0 = Struct_2(Struct_1(-490f, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(6475u, 57564u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(29383u, 26u)], 1u, 1u)), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 1u, var_0.a.b)), _wgslsmith_add_u32(1u, reverseBits(u_input.a.x)))), var_0.b, Struct_1(-409f, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(35776u, 26u)], 4294967295u) | 73584u), var_0.b.x);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, global3.x, global3.x) - vec3<f32>(1185f, global3.x, -1647f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-240f, var_0.c.a, global3.x) * vec3<f32>(-365f, var_0.a.a, -622f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a, 781f, -255f), vec3<f32>(-1000f, var_0.a.a, var_0.c.a)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, 1103f, 1293f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1623f, global3.x, 1019f), vec3<f32>(-1000f, global3.x, var_0.a.a))) + vec3<f32>(1037f, var_0.c.a, 1000f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-167f, -737f) * var_0.c.a), 2127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f * global3.x)), -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(186f, var_0.c.a, var_0.c.a, global3.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, global3.x, var_0.c.a, -965f)))))));
    return reverseBits(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.xy;
    let var_1 = vec2<u32>(~3275u >> (1u % 32u), u_input.a.x);
    let var_2 = _wgslsmith_mult_u32(~(~(var_1.x ^ ~var_1.x)), ~(~((var_1.x & global1[_wgslsmith_index_u32(var_1.x, 26u)]) | global1[_wgslsmith_index_u32(func_1(), 26u)])));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -1938f, 1026f, 1024f) * vec4<f32>(global3.x, 1442f, var_0.x, 493f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(654f, var_0.x, 1000f, global3.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1796f, 401f, global3.x, var_0.x) + vec4<f32>(var_0.x, 2363f, -870f, 1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -269f, var_0.x, -121f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1573f, var_0.x, -1634f, var_0.x), vec4<f32>(var_0.x, -531f, var_0.x, 309f), vec4<bool>(true, false, true, true))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 3419f, 1167f, global3.x)))))), ~(~(0u | u_input.a.x)), -1i);
}

