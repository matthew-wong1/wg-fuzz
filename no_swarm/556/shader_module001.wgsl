struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(528f, false, vec2<u32>(4294967295u, 0u), vec4<bool>(false, true, true, false)), Struct_1(645f, true, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(-1000f, true, vec2<u32>(0u, 0u), vec4<bool>(true, false, true, false)), Struct_1(-1046f, false, vec2<u32>(1u, 56015u), vec4<bool>(false, true, false, true)), Struct_1(414f, true, vec2<u32>(0u, 4363u), vec4<bool>(true, true, true, false)), Struct_1(-1000f, true, vec2<u32>(27088u, 21334u), vec4<bool>(false, true, true, true)), Struct_1(402f, false, vec2<u32>(1u, 0u), vec4<bool>(false, false, true, true)), Struct_1(810f, false, vec2<u32>(0u, 53311u), vec4<bool>(false, false, false, true)), Struct_1(118f, false, vec2<u32>(4294967295u, 4190u), vec4<bool>(true, false, false, false)), Struct_1(1396f, true, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, false, true, false)), Struct_1(-1584f, true, vec2<u32>(0u, 65506u), vec4<bool>(false, true, true, false)), Struct_1(-487f, true, vec2<u32>(4294967295u, 46287u), vec4<bool>(true, true, true, false)), Struct_1(-559f, true, vec2<u32>(1u, 65679u), vec4<bool>(true, false, false, true)), Struct_1(319f, true, vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, true, true)), Struct_1(641f, true, vec2<u32>(4294967295u, 43188u), vec4<bool>(false, false, true, false)), Struct_1(-892f, true, vec2<u32>(54451u, 4294967295u), vec4<bool>(true, true, false, true)), Struct_1(-1857f, true, vec2<u32>(34700u, 12176u), vec4<bool>(true, false, false, true)), Struct_1(-161f, true, vec2<u32>(1u, 1u), vec4<bool>(true, false, true, true)), Struct_1(2614f, true, vec2<u32>(0u, 37444u), vec4<bool>(true, false, true, false)), Struct_1(1147f, false, vec2<u32>(41653u, 50338u), vec4<bool>(false, true, true, false)), Struct_1(-833f, false, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_1(2210f, true, vec2<u32>(40890u, 1u), vec4<bool>(true, true, true, true)), Struct_1(840f, false, vec2<u32>(1u, 88464u), vec4<bool>(true, false, false, true)), Struct_1(1496f, false, vec2<u32>(35938u, 661u), vec4<bool>(true, true, true, true)), Struct_1(1000f, true, vec2<u32>(28891u, 2976u), vec4<bool>(false, true, true, true)));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<u32, 6>;

var<private> global3: vec3<u32> = vec3<u32>(9287u, 38008u, 40343u);

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32) -> bool {
    return u_input.b.x == u_input.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> bool {
    var var_0 = select(vec2<bool>(!(!(!arg_0.b.x)), false), select(arg_1.d.zy, arg_0.b.yy, select(!(!arg_1.d.zz), arg_1.d.wx, all(arg_1.d.wyw))), !select(vec2<bool>(arg_1.d.x && false, u_input.b.x >= 1i), arg_0.b.yz, vec2<bool>(arg_0.b.x, all(vec3<bool>(arg_1.d.x, arg_0.b.x, false)))));
    let var_1 = arg_1.c.x;
    global2 = array<u32, 6>();
    let var_2 = true;
    global3 = reverseBits(firstTrailingBit(vec3<u32>(firstTrailingBit(61636u), ~2380u, (u_input.d & 1u) ^ 32499u)));
    return _wgslsmith_f_op_f32(sign(1f)) > _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global2 = array<u32, 6>();
    global0 = array<Struct_1, 25>();
    global3 = ~select(u_input.c | vec3<u32>(~u_input.c.x, 52184u & arg_0.x, _wgslsmith_div_u32(0u, 4294967295u)), vec3<u32>(global3.x, global3.x, _wgslsmith_mult_u32(~u_input.d, ~0u)), select(vec3<bool>(true, func_2(-682f), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))));
    let var_0 = -2144f;
    let var_1 = Struct_3(abs(~reverseBits(max(vec2<i32>(-36509i, u_input.a.x), vec2<i32>(u_input.a.x, 0i)))), u_input.b.zz);
    return Struct_4(_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(global3.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(126246u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), global3.zz)), _wgslsmith_add_vec2_u32(vec2<u32>(8389u, global2[_wgslsmith_index_u32(1u, 6u)]), ~vec2<u32>(arg_0.x, 50430u))), Struct_1(_wgslsmith_f_op_f32(-var_0), all(vec3<bool>(true, true, true)), ~select(vec2<u32>(u_input.c.x, 1u), global3.zx, false), vec4<bool>(func_3(global1[_wgslsmith_index_u32(global3.x, 7u)], Struct_1(var_0, true, vec2<u32>(u_input.c.x, arg_0.x), vec4<bool>(false, false, false, false)), vec3<f32>(var_0, -1000f, 1126f), -563f) && all(vec4<bool>(false, true, true, false)), select(true, all(vec2<bool>(false, true)), func_3(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 6u)], 7u)], global0[_wgslsmith_index_u32(u_input.d, 25u)], vec3<f32>(1301f, var_0, var_0), var_0)), false, true)));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1351f * arg_1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1232f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, 1598f)))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2011f - -239f) + _wgslsmith_f_op_f32(f32(-1f) * -237f))) * _wgslsmith_f_op_f32(min(func_1(_wgslsmith_add_vec2_u32(arg_1.b.c, vec2<u32>(u_input.d, 4294967295u))).b.a, arg_1.b.a))));
    let var_1 = ~_wgslsmith_div_vec4_u32(abs(~firstTrailingBit(vec4<u32>(global3.x, 35464u, arg_1.b.c.x, 20443u))), firstTrailingBit(vec4<u32>(u_input.c.x, ~u_input.c.x, ~arg_1.b.c.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, global2[_wgslsmith_index_u32(global3.x, 6u)]), 6u)])));
    global4 = array<Struct_3, 15>();
    let var_2 = (any(select(arg_1.b.d, select(arg_1.b.d, vec4<bool>(false, arg_1.b.b, true, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_1.b.d.x, arg_1.b.b, arg_1.b.b, arg_1.b.d.x), arg_1.b.d))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.a, 1617f, arg_1.b.b))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) - -1499f))) || arg_1.b.d.x;
    global2 = array<u32, 6>();
    return !var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1062f;
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-1000f, 2023f), -360f, _wgslsmith_f_op_f32(2592f + -300f), _wgslsmith_f_op_f32(f32(-1f) * -459f)))), vec4<f32>(_wgslsmith_f_op_f32(min(1f, -784f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(220f, 816f)))), 1766f, _wgslsmith_div_f32(-3372f, -117f))), vec4<bool>(true, !select(all(vec4<bool>(false, false, false, false)), true, true), true, !func_4(-448f, func_1(global3.zz))));
    global2 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, 3617i, u_input.a.x, -1i) << (vec4<u32>(0u, u_input.d, 26550u, u_input.d) % vec4<u32>(32u))), ~vec4<i32>(2147483647i, 1i, -2147483647i, 43930i)), -(vec4<i32>(-47833i, 0i, u_input.b.x, -18166i) >> (vec4<u32>(global2[_wgslsmith_index_u32(0u, 6u)], u_input.d, 1u, global3.x) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(global2[_wgslsmith_index_u32(0u, 6u)], 4294967295u, 0u, 4294967295u)), ~vec4<u32>(global3.x, global3.x, 45205u, 60960u)) % vec4<u32>(32u))), ~(~vec3<u32>(_wgslsmith_mult_u32(global3.x, global2[_wgslsmith_index_u32(u_input.c.x, 6u)]), ~u_input.d, 13683u)));
}

