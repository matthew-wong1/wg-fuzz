struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-1i, -25684i), vec2<i32>(21369i, -25453i), vec2<i32>(i32(-2147483648), -13361i), vec2<i32>(3970i, 31769i), vec2<i32>(-80700i, -46709i), vec2<i32>(28621i, -39099i), vec2<i32>(2147483647i, 0i), vec2<i32>(10655i, 11265i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(65687i, i32(-2147483648)), vec2<i32>(-27444i, i32(-2147483648)), vec2<i32>(4861i, -1i), vec2<i32>(-1i, 9271i), vec2<i32>(-87835i, i32(-2147483648)), vec2<i32>(-3830i, 30691i), vec2<i32>(6849i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 212i), vec2<i32>(3942i, 0i), vec2<i32>(-1i, -19631i), vec2<i32>(-40598i, -14333i));

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true));

var<private> global4: array<u32, 13> = array<u32, 13>(40332u, 23180u, 68531u, 0u, 17172u, 58051u, 5173u, 1u, 4711u, 1u, 4294967295u, 28511u, 27179u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> u32 {
    global0 = -_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 21u)], ~firstTrailingBit(countOneBits(arg_3.b.c)));
    var var_0 = Struct_2(!((i32(-1i) * -1i) >= ~_wgslsmith_mod_i32(arg_2, -16154i)), Struct_1(~abs(select(vec3<i32>(-1i, -8936i, global2.a.x), vec3<i32>(-2147483647i, arg_3.c.c.x, -14938i), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_sub_vec2_u32(global2.e.wx, global2.b), -_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.b.a.x, arg_3.c.a.x), select(global2.c, vec2<i32>(-29272i, 27410i), arg_0)), _wgslsmith_clamp_u32(6128u, 16265u, ~38524u), _wgslsmith_clamp_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_1, 1u), u_input.a), ~vec4<u32>(51012u, arg_3.c.d, arg_1, 4294967295u)), min(vec4<u32>(arg_1, u_input.a.x, 28893u, global4[_wgslsmith_index_u32(0u, 13u)]), vec4<u32>(5300u, 0u, global4[_wgslsmith_index_u32(29380u, 13u)], arg_1)), select(u_input.a, ~global2.e, arg_3.d))), Struct_1(arg_3.b.a, vec2<u32>(84347u, (arg_3.c.e.x >> (u_input.b.x % 32u)) << (~arg_3.c.e.x % 32u)), -select(_wgslsmith_mult_vec2_i32(global2.a.yx, global2.c), vec2<i32>(arg_2, arg_3.b.a.x), false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, arg_3.b.e.x, u_input.a.x), vec3<u32>(6053u, 46956u, global2.b.x)) ^ ~1u, ~u_input.a), !arg_3.d);
    var var_1 = true;
    let var_2 = !(arg_3.a || (all(select(vec4<bool>(true, var_0.a, true, arg_0.x), var_0.d, arg_0.x)) && false));
    var_1 = any(arg_3.d.wyx);
    return arg_3.c.b.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(0u >= ~u_input.b.x, Struct_1(select(~_wgslsmith_add_vec3_i32(global2.a, global2.a), global2.a, true), global2.b << (u_input.a.zw % vec2<u32>(32u)), vec2<i32>(global2.a.x, global2.c.x), _wgslsmith_div_u32(global2.b.x, func_3(vec2<bool>(true, true), 0u ^ global4[_wgslsmith_index_u32(3501u, 13u)], -2147483647i, Struct_2(false, Struct_1(global2.a, u_input.b.xy, global1[_wgslsmith_index_u32(58512u, 21u)], global4[_wgslsmith_index_u32(13515u, 13u)], u_input.a), Struct_1(global2.a, vec2<u32>(51677u, 1u), global2.a.yy, global2.b.x, u_input.a), global3[_wgslsmith_index_u32(23555u, 25u)]))), select(~(~u_input.a), ~_wgslsmith_mult_vec4_u32(u_input.a, global2.e), all(vec2<bool>(false, false)))), Struct_1(~global2.a, u_input.a.yy, vec2<i32>(_wgslsmith_dot_vec2_i32(-global2.c, ~vec2<i32>(0i, global2.a.x)), 1463i), _wgslsmith_dot_vec3_u32(abs(global2.e.zww), ~vec3<u32>(54300u, global2.d, global2.b.x)), vec4<u32>(~37720u, firstLeadingBit(global4[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_dot_vec4_u32(u_input.a, global2.e), ~(global2.d & 12683u))), vec4<bool>((~global4[_wgslsmith_index_u32(1u, 13u)] > 1u) | all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), true, true, all(vec2<bool>(all(vec3<bool>(false, true, true)), global2.c.x > global2.a.x))));
    var var_1 = var_0.b.e;
    var var_2 = _wgslsmith_f_op_f32(ceil(317f));
    let var_3 = 648f;
    var var_4 = ~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(1u, 13u)], var_0.b.d), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c.b.x), ~u_input.a.zz)));
    return u_input.b.xz;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> i32 {
    global4 = array<u32, 13>();
    let var_0 = arg_1.c;
    var var_1 = Struct_1(vec3<i32>(global2.a.x, 16100i, ~2147483647i & _wgslsmith_mult_i32(39341i, global2.a.x)), firstLeadingBit(_wgslsmith_add_vec2_u32(arg_0.e.zx, vec2<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 13u)]) >> (var_0.e.wx % vec2<u32>(32u))) & min(arg_0.e.wy, vec2<u32>(u_input.b.x, global4[_wgslsmith_index_u32(var_0.d, 13u)]))), vec2<i32>(-9277i, global2.c.x) >> (func_2() % vec2<u32>(32u)), firstLeadingBit(4294967295u) ^ min(firstLeadingBit(4294967295u), countOneBits(arg_1.c.e.x << (arg_0.d % 32u))), firstTrailingBit(var_0.e >> (global2.e % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b.x, 21218u, 21063u, 0u)), vec4<u32>(1u, 0u, 36893u, arg_1.c.b.x) | vec4<u32>(0u, arg_1.b.e.x, global2.d, 0u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-98811i, -15613i), vec2<i32>(select(reverseBits(2147483647i), _wgslsmith_sub_i32(global2.a.x, -22819i), arg_2), select(0i, arg_1.c.c.x, var_0.c.x >= var_0.c.x))) | arg_1.b.a.xy;
    var var_3 = arg_1.b;
    return -19892i;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -(~global2.c.x);
    global4 = array<u32, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(367f, 247f, -1000f) - vec3<f32>(625f, 1457f, 789f)))) + vec3<f32>(_wgslsmith_f_op_f32(round(-733f)), 299f, _wgslsmith_f_op_f32(2239f + -575f)))));
    let var_2 = Struct_2(any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))), Struct_1(vec3<i32>(0i, var_0, min(_wgslsmith_dot_vec3_i32(global2.a, vec3<i32>(10975i, 57810i, global2.c.x)), _wgslsmith_mult_i32(24959i, arg_2.c.x))), ~arg_2.b, global2.a.zy, u_input.b.x, max(vec4<u32>(_wgslsmith_clamp_u32(arg_1, global2.e.x, arg_0), 18301u, ~71975u, _wgslsmith_sub_u32(global2.d, 29276u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(81464u, 4294967295u, u_input.a.x, 4294967295u)), u_input.a))), arg_2, select(global3[_wgslsmith_index_u32(4294967295u, 25u)], vec4<bool>(firstLeadingBit(1i) == var_0, true, true, -1542f < _wgslsmith_f_op_f32(select(-2154f, var_1.x, false))), any(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, ~4294967295u), 25u)])));
    let var_3 = arg_2;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, -918f) - vec2<f32>(-1157f, 1129f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(540f, 881f), vec2<f32>(2047f, -702f))))))))));
    let var_1 = func_4(~0u << (u_input.b.x % 32u), 33862u, Struct_1(global2.a, countOneBits(global2.b) >> (global2.b % vec2<u32>(32u)), vec2<i32>(func_1(Struct_1(global2.a, vec2<u32>(4917u, u_input.a.x), vec2<i32>(global2.c.x, global2.a.x), global4[_wgslsmith_index_u32(0u, 13u)], global2.e), Struct_2(false, Struct_1(vec3<i32>(global2.a.x, -2147483647i, global2.a.x), u_input.b.xx, global2.c, 68998u, u_input.a), Struct_1(vec3<i32>(global2.c.x, global2.c.x, global2.c.x), u_input.b.yy, global1[_wgslsmith_index_u32(global2.d, 21u)], 19159u, vec4<u32>(36366u, global4[_wgslsmith_index_u32(global2.d, 13u)], 0u, 4294967295u)), global3[_wgslsmith_index_u32(global2.e.x, 25u)]), true), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(6131i, 1i, 12934i), ~global2.c.x)), _wgslsmith_mult_u32(1u, ~firstTrailingBit(global2.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global2.d, 29562u, 109152u), ~global2.e)));
    global4 = array<u32, 13>();
    global4 = array<u32, 13>();
    let var_2 = Struct_2(var_1.e.x == 4294967295u, func_4(min(~(~1u), var_1.e.x), abs(func_3(vec2<bool>(true, false), u_input.a.x, -1575i, Struct_2(false, Struct_1(vec3<i32>(2147483647i, global2.a.x, 33737i), global2.b, vec2<i32>(-29743i, global2.c.x), global2.d, u_input.a), Struct_1(global2.a, var_1.b, var_1.a.xz, 14606u, var_1.e), vec4<bool>(true, false, true, false)))) ^ ~(4294967295u << (0u % 32u)), func_4(reverseBits(17668u), ~var_1.b.x, Struct_1(reverseBits(var_1.a), vec2<u32>(global2.e.x, var_1.b.x), vec2<i32>(global2.a.x, -16i), ~0u, ~vec4<u32>(u_input.b.x, 73275u, var_1.e.x, 0u)))), Struct_1(_wgslsmith_div_vec3_i32(select(global2.a, -vec3<i32>(-41987i, -1i, 36154i), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), vec3<i32>(var_1.a.x, 9354i, reverseBits(global2.c.x))), _wgslsmith_sub_vec2_u32(func_2(), var_1.b), select(max(~vec2<i32>(1i, global2.a.x), global2.c), global1[_wgslsmith_index_u32(~(global2.b.x >> (20995u % 32u)), 21u)], vec2<bool>(var_1.c.x == var_1.a.x, true)), global2.b.x << (global4[_wgslsmith_index_u32(5087u, 13u)] % 32u), max(vec4<u32>(17183u, _wgslsmith_div_u32(global2.b.x, 118611u), 1u, _wgslsmith_mult_u32(global2.e.x, u_input.b.x)), ~vec4<u32>(1u, 20516u, u_input.a.x, 0u) >> (vec4<u32>(0u, 38699u, global2.b.x, 28769u) % vec4<u32>(32u)))), !global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(0u), global4[_wgslsmith_index_u32(35228u, 13u)]) << (_wgslsmith_dot_vec2_u32(func_2(), ~vec2<u32>(u_input.a.x, 4294967295u)) % 32u), 25u)]);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -113f), -691f, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(-190f)), _wgslsmith_f_op_f32(-2106f - var_0.x), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1710f)), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_mod_i32(max(var_1.a.x, global2.a.x << (global4[_wgslsmith_index_u32(0u, 13u)] % 32u)), abs(var_1.c.x >> (0u % 32u))) & 1i, min(vec4<u32>(reverseBits(global4[_wgslsmith_index_u32(u_input.a.x, 13u)]), _wgslsmith_mult_u32(~var_2.c.d, ~global2.d), reverseBits(_wgslsmith_mod_u32(41047u, global2.d)), ~global2.e.x), firstLeadingBit(firstLeadingBit(~vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22856u, 13u)], 13u)], u_input.b.x, global2.e.x)))));
}

