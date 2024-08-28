struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<i32>,
    d: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-853f, -899f, 346f, -691f), vec4<f32>(2486f, 999f, 972f, 134f), vec4<f32>(-2349f, -1569f, -1000f, -1534f), vec4<f32>(-784f, 448f, 1112f, -586f), vec4<f32>(-108f, -800f, 1000f, 360f), vec4<f32>(1177f, 143f, -1403f, 1673f));

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 29>;

var<private> global3: array<i32, 24>;

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = select(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(1u, 24u)], arg_1.x), vec3<i32>(global3[_wgslsmith_index_u32(31275u, 24u)], 1i, u_input.a) >> (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u))) | vec3<i32>(13554i, abs(arg_1.x), -15879i), arg_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(select(arg_1.x, -82417i, true), global3[_wgslsmith_index_u32(6219u, 24u)] ^ 1i, 49310i), abs(arg_1), select(-arg_1, reverseBits(vec3<i32>(u_input.a, arg_1.x, arg_0.b)), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 29u)], true, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(global2[_wgslsmith_index_u32(30964u, 29u)], global2[_wgslsmith_index_u32(28156u, 29u)], false), vec3<bool>(true, true, false))))), vec3<i32>(u_input.b, _wgslsmith_clamp_i32(-1i, arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-48998i, global1.x, 43047i, global3[_wgslsmith_index_u32(u_input.c, 24u)]), select(vec4<i32>(arg_0.b, global3[_wgslsmith_index_u32(u_input.c, 24u)], global1.x, arg_1.x), vec4<i32>(-59038i, 0i, -295i, arg_0.b), true))), 2147483647i), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 29u)], true, false, true)));
    let var_1 = _wgslsmith_mod_u32(1u, u_input.c);
    var var_2 = true;
    var var_3 = _wgslsmith_sub_i32(global1.x, 0i);
    global3 = array<i32, 24>();
    return any(!vec2<bool>(!global2[_wgslsmith_index_u32(24861u, 29u)], !(0i < global1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> Struct_2 {
    var var_0 = select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 29u)], false), true), all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 29u)]))), true), vec2<bool>(all(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 29u)], arg_1.d, global2[_wgslsmith_index_u32(4294967295u, 29u)], false))), func_3(arg_1.b, abs(_wgslsmith_add_vec3_i32(arg_1.c, vec3<i32>(global3[_wgslsmith_index_u32(29352u, 24u)], 2147483647i, u_input.b))))), vec2<bool>(-846f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1520f + 296f))), all(!(!vec2<bool>(arg_1.d, arg_1.d)))));
    global0 = array<vec4<f32>, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a), 1661f, -671f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-879f, -1939f, 1381f), vec3<f32>(-330f, 618f, 1375f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, arg_1.b.a.a, 782f) + vec3<f32>(arg_0.a.a, arg_0.a.a, arg_1.b.a.a))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(145f * -829f), arg_1.b.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2686f, arg_1.b.a.a, arg_0.a.a)))), vec3<bool>(!(!arg_1.d), true, !all(vec2<bool>(arg_1.d, true)))))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~(~4294967295u), u_input.c), abs(_wgslsmith_mult_u32(60402u, u_input.c)), ~70613u, u_input.c);
    global3 = array<i32, 24>();
    return arg_1.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec2<f32>) -> f32 {
    var var_0 = func_2(arg_2.b, arg_2);
    var_0 = Struct_2(func_2(func_2(arg_2.b, arg_2), Struct_4(_wgslsmith_div_vec2_i32(global1.xx | vec2<i32>(-1i, -15151i), -arg_2.c.zy), func_2(func_2(arg_2.b, Struct_4(vec2<i32>(-60712i, arg_2.a.x), arg_2.b, vec3<i32>(-27928i, global3[_wgslsmith_index_u32(arg_1.x, 24u)], global3[_wgslsmith_index_u32(u_input.c, 24u)]), false)), Struct_4(vec2<i32>(-52806i, 2147483647i), Struct_2(Struct_1(arg_3.x), global3[_wgslsmith_index_u32(arg_0.x, 24u)]), vec3<i32>(11707i, -37143i, 2147483647i), false)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global3[_wgslsmith_index_u32(54339u, 24u)], 2147483647i), vec3<i32>(u_input.b, -23533i, u_input.a)), select(arg_2.c, arg_2.c, true), select(vec3<bool>(arg_2.d, global2[_wgslsmith_index_u32(50679u, 29u)], false), vec3<bool>(true, arg_2.d, true), vec3<bool>(arg_2.d, global2[_wgslsmith_index_u32(arg_0.x, 29u)], false))), global2[_wgslsmith_index_u32(4294967295u >> (max(arg_0.x, 17602u) % 32u), 29u)])).a, -global3[_wgslsmith_index_u32(u_input.c, 24u)]);
    var_0 = Struct_2(arg_2.b.a, var_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3 * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.a.a), _wgslsmith_f_op_f32(127f - var_0.a.a))))));
    global1 = vec3<i32>(abs(_wgslsmith_div_i32(i32(-1i) * -arg_2.b.b, 2147483647i << (~arg_1.x % 32u))), countOneBits(arg_2.b.b), firstTrailingBit(min(~u_input.a, firstTrailingBit(-8273i))) << ((arg_1.x << (69041u % 32u)) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -1000f)) * _wgslsmith_f_op_f32(-arg_2.b.a.a)), var_0.a.a), _wgslsmith_f_op_f32(-2060f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_5) -> Struct_2 {
    let var_0 = Struct_2(func_2(func_2(Struct_2(global4[_wgslsmith_index_u32(u_input.c, 26u)], arg_3.a), Struct_4(select(vec2<i32>(24871i, global1.x), vec2<i32>(arg_3.a, global1.x), vec2<bool>(false, true)), Struct_2(Struct_1(arg_0.x), global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<i32>(-1i, 2147483647i, global1.x), true | global2[_wgslsmith_index_u32(u_input.c, 29u)])), Struct_4(select(_wgslsmith_sub_vec2_i32(global1.yx, vec2<i32>(1i, -1i)), global1.zx, vec2<bool>(true, true)), Struct_2(func_2(Struct_2(global4[_wgslsmith_index_u32(1u, 26u)], global1.x), Struct_4(global1.xy, Struct_2(Struct_1(arg_0.x), arg_3.a), vec3<i32>(u_input.b, -2147483647i, global1.x), global2[_wgslsmith_index_u32(0u, 29u)])).a, abs(-2147483647i)), ~(~vec3<i32>(1i, -38803i, -20930i)), !(false | global2[_wgslsmith_index_u32(u_input.c, 29u)]))).a, abs(u_input.a));
    global4 = array<Struct_1, 26>();
    var var_1 = vec3<f32>(var_0.a.a, arg_2.x, var_0.a.a);
    var var_2 = Struct_4(reverseBits(global1.xz), var_0, ~min(vec3<i32>(~u_input.a, -1i, select(global3[_wgslsmith_index_u32(1u, 24u)], 1i, global2[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.b, 2147483647i) | vec3<i32>(global1.x, -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 24u)]), -vec3<i32>(2147483647i, -7658i, -13821i))), any(select(vec3<bool>(arg_1.x <= 1000f, false, !global2[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(54197u, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(79288u, 29u)], global2[_wgslsmith_index_u32(8313u, 29u)])), false & global2[_wgslsmith_index_u32(5766u, 29u)], all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 29u)], true))), true)));
    let var_3 = var_0.b;
    return Struct_2(Struct_1(arg_0.x), var_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_4(vec2<i32>(_wgslsmith_add_i32(-1i, 19823i), func_2(Struct_2(Struct_1(arg_0.a.a), abs(global3[_wgslsmith_index_u32(u_input.c, 24u)])), Struct_4(global1.xx & vec2<i32>(-2147483647i, 1769i), func_2(arg_0, Struct_4(vec2<i32>(-27425i, 2147483647i), Struct_2(Struct_1(1444f), arg_0.b), vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 24u)], -92479i, arg_0.b), global2[_wgslsmith_index_u32(u_input.c, 29u)])), vec3<i32>(-42631i, arg_0.b, global3[_wgslsmith_index_u32(26019u, 24u)]) ^ vec3<i32>(global3[_wgslsmith_index_u32(1u, 24u)], arg_0.b, -1897i), !global2[_wgslsmith_index_u32(1u, 29u)])).b), Struct_2(global4[_wgslsmith_index_u32(25128u, 26u)], ~_wgslsmith_add_i32(-12166i, abs(global3[_wgslsmith_index_u32(u_input.c, 24u)]))), firstLeadingBit(~(~(-vec3<i32>(global3[_wgslsmith_index_u32(46870u, 24u)], global3[_wgslsmith_index_u32(u_input.c, 24u)], global3[_wgslsmith_index_u32(101827u, 24u)])))), all(vec3<bool>(true, true, true)));
    var var_1 = global4[_wgslsmith_index_u32(u_input.c, 26u)];
    let var_2 = select(firstLeadingBit(~u_input.c), u_input.c, var_0.d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f));
    global0 = array<vec4<f32>, 6>();
    return func_2(var_0.b, var_0).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(func_4(vec4<f32>(-711f, _wgslsmith_div_f32(913f, -1876f), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c, 32728u), vec3<u32>(1u, 0u, 56790u), Struct_4(vec2<i32>(1i, global1.x), Struct_2(global4[_wgslsmith_index_u32(49903u, 26u)], 56624i), vec3<i32>(2147483647i, u_input.b, global3[_wgslsmith_index_u32(u_input.c, 24u)]), global2[_wgslsmith_index_u32(0u, 29u)]), vec2<f32>(808f, -1736f))), _wgslsmith_f_op_f32(sign(1990f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(1u, 6u)], vec4<f32>(1000f, -2132f, 920f, -1170f))), vec3<f32>(-1094f, -1000f, _wgslsmith_f_op_f32(max(-508f, -472f))), Struct_5(-global1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1385f)), vec2<f32>(1207f, _wgslsmith_f_op_f32(min(-197f, -405f))))), -76859i);
    global1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(u_input.a, abs(u_input.b)), func_2(func_2(Struct_2(Struct_1(1121f), -49913i), Struct_4(vec2<i32>(global1.x, 12641i), Struct_2(global4[_wgslsmith_index_u32(u_input.c, 26u)], global1.x), vec3<i32>(var_0.b, global1.x, global1.x), global2[_wgslsmith_index_u32(112644u, 29u)])), Struct_4(vec2<i32>(-1i, 0i), Struct_2(Struct_1(-798f), var_0.b), vec3<i32>(1i, u_input.a, -40153i), false)).b, ~var_0.b);
    var var_1 = vec3<i32>(global1.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.x, -2147483647i, -1i, var_0.b)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-46477i, 15538i, var_0.b, global1.x), vec4<i32>(1i, -2147483647i, var_0.b, 0i)))), u_input.a), firstLeadingBit(1i));
    let var_2 = func_4(vec4<f32>(var_0.a.a, var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1788f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1273f), var_0.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.a.a, 209f, -444f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c, 6u)] * global0[_wgslsmith_index_u32(7261u, 6u)]) + global0[_wgslsmith_index_u32(53317u, 6u)]))), vec3<f32>(_wgslsmith_f_op_f32(func_1(~(~vec2<u32>(0u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, u_input.c), Struct_4(select(global1.yy, global1.zz, vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 29u)])), Struct_2(Struct_1(1796f), 21232i), ~vec3<i32>(-2147483647i, -160i, 2147483647i), !global2[_wgslsmith_index_u32(u_input.c, 29u)]), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, -1516f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.a, 809f), vec2<f32>(1442f, 1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.a * var_0.a.a)))), -257f), Struct_5(i32(-1i) * -func_4(vec4<f32>(452f, var_0.a.a, -1241f, 1207f), vec4<f32>(var_0.a.a, var_0.a.a, var_0.a.a, -452f), vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a), Struct_5(29405i)).b));
    var var_3 = -854f;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-func_2(Struct_2(var_2.a, _wgslsmith_dot_vec2_i32(global1.zx, vec2<i32>(var_2.b, var_2.b))), Struct_4(var_1.yy >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), func_2(Struct_2(var_0.a, global1.x), Struct_4(global1.yx, Struct_2(global4[_wgslsmith_index_u32(u_input.c, 26u)], -11413i), vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(0u, 24u)], -1i), true)), select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 24u)], var_1.x, 1i), vec3<i32>(2147483647i, var_0.b, global3[_wgslsmith_index_u32(1u, 24u)]), false), any(vec2<bool>(true, false)))).a.a), 381f, 255f, -672f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

