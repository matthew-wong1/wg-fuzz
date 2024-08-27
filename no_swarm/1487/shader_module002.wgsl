struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: array<bool, 18>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(0i, 23650i, 0i, 43187u), Struct_1(2147483647i, -1i, -29881i, 0u), Struct_1(14867i, -12906i, 2147483647i, 0u), Struct_1(10910i, 0i, 54i, 0u), Struct_1(-29317i, -1i, 53469i, 8836u), Struct_1(i32(-2147483648), 34165i, i32(-2147483648), 546u), Struct_1(-26149i, 0i, -35475i, 20719u), Struct_1(21989i, i32(-2147483648), -1i, 41927u), Struct_1(0i, 0i, -79493i, 0u), Struct_1(1i, 2147483647i, 2147483647i, 90952u), Struct_1(23840i, 2147483647i, i32(-2147483648), 27613u), Struct_1(0i, -10133i, -1i, 1u), Struct_1(1i, 9813i, -1i, 4294967295u), Struct_1(-1i, 1i, -7541i, 26744u), Struct_1(i32(-2147483648), 1i, 7579i, 28160u), Struct_1(i32(-2147483648), -10776i, 0i, 0u), Struct_1(51649i, 90585i, 2147483647i, 4294967295u), Struct_1(27756i, 16108i, -1123i, 1u), Struct_1(-60841i, 2020i, 2147483647i, 69594u), Struct_1(0i, 19904i, 2147483647i, 5001u), Struct_1(0i, -30256i, i32(-2147483648), 4294967295u));

var<private> global3: array<u32, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    let var_0 = 1517f;
    var var_1 = 2147483647i;
    var var_2 = select(1u ^ abs(_wgslsmith_mod_u32(4294967295u, u_input.a.x >> (15844u % 32u))), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.d.yx, ~u_input.d.yy, u_input.d.zy & vec2<u32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])), ~abs(vec2<u32>(4294967295u, 9762u))), 4u)], 4u)], all(!(!(!global0[_wgslsmith_index_u32(52818u, 7u)]))));
    var_2 = firstTrailingBit(u_input.d.x);
    var var_3 = abs(abs(u_input.b));
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(~(~(~u_input.a.x))), 62921u), 21u)];
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = true && any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 45741u, u_input.d.x, 1u)), min(firstLeadingBit(u_input.a), ~vec4<u32>(1u, arg_2.b.d, 1u, u_input.a.x))), 7u)]);
    global0 = array<vec3<bool>, 7>();
    var var_1 = !(!vec3<bool>(false, -arg_2.b.a != 2716i, global1[_wgslsmith_index_u32(~(~arg_3.c.d), 18u)]));
    var var_2 = 21228i;
    var var_3 = -vec3<i32>(0i, -1i, min(~(-31322i), ~arg_3.c.a)) & ~(vec3<i32>(60105i, -1i, arg_3.c.a) << (_wgslsmith_add_vec3_u32(vec3<u32>(49818u, 1u, 27140u), vec3<u32>(u_input.a.x, u_input.d.x, 0u)) % vec3<u32>(32u)));
    return ~(-2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_1 {
    global3 = array<u32, 4>();
    global1 = array<bool, 18>();
    let var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(44875u, 4u)], arg_0.d, arg_2.x, 6880u) ^ vec4<u32>(arg_1, 0u, arg_2.x, 63100u), vec4<u32>(17554u, arg_2.x, 1u, 3120u)) | select(abs(u_input.a), min(vec4<u32>(50629u, u_input.d.x, arg_1, 4294967295u), u_input.a), false), _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(arg_1), arg_1, ~0u, 14264u), vec4<u32>(arg_2.x, ~arg_2.x, _wgslsmith_sub_u32(53009u, arg_2.x), 1u)));
    let var_1 = Struct_2(any(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.d.x, 18u)], all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 18u)])))), func_2(), Struct_1(arg_0.c, func_3(vec2<bool>(true, true), -466f, Struct_2(false, Struct_1(arg_0.a, 46093i, u_input.c.x, arg_0.d), Struct_1(u_input.b.x, -56300i, u_input.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 4u)]), global2[_wgslsmith_index_u32(1u, 21u)], Struct_1(u_input.b.x, arg_0.a, -12775i, 0u)), Struct_2(global1[_wgslsmith_index_u32(var_0.x, 18u)], Struct_1(1i, 19190i, 23040i, arg_2.x), global2[_wgslsmith_index_u32(18476u, 21u)], arg_0, global2[_wgslsmith_index_u32(arg_1, 21u)])) ^ 0i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, arg_0.a) ^ vec3<i32>(386i, arg_0.b, -2147483647i), -vec3<i32>(-2147483647i, arg_0.a, arg_0.c))), 1u), func_2(), func_2());
    global3 = array<u32, 4>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(105575u, 21u)], u_input.d.x, u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-797f, -1000f, 679f) * vec3<f32>(1220f, -404f, -795f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1694f, 1000f, -409f))), vec3<f32>(-741f, _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(ceil(186f))))));
    global2 = array<Struct_1, 21>();
    global1 = array<bool, 18>();
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    global3 = array<u32, 4>();
    global0 = array<vec3<bool>, 7>();
    global3 = array<u32, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, 745f, 653f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-853f, -695f, 1181f))), vec3<f32>(1f, 1f, 1f))), vec3<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(677f, -863f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2210f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1059f * 1349f)))), !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(58666u, u_input.a.x), 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(u_input.d.x, 60075u))), ~(~(-firstTrailingBit(vec3<i32>(var_0.c, var_0.b, u_input.c.x)))), select(vec4<i32>(0i, abs(~u_input.c.x), ~var_0.c, _wgslsmith_add_i32(1i, 1i)), ~firstTrailingBit(-vec4<i32>(-3106i, u_input.c.x, u_input.c.x, var_0.a)), vec4<bool>(!global1[_wgslsmith_index_u32(var_0.d, 18u)] && all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_0.d, 18u)])), !any(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25453u, 4u)], 7u)]), !global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.d.x, 18u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -343f, var_1.x, 1000f) - vec4<f32>(-1000f, var_1.x, var_1.x, -2850f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1766f, var_1.x, 1219f) + vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(396f, var_1.x, -789f), _wgslsmith_div_vec3_f32(vec3<f32>(-302f, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2460f, var_1.x)))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), -1529f)));
}

