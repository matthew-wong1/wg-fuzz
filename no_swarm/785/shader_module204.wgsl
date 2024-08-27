struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(4294967295u);

var<private> global1: array<vec4<bool>, 8>;

var<private> global2: u32;

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<f32>(870f, 451f, -2512f), 34033u, false), Struct_2(vec3<f32>(1604f, -203f, 2226f), 42722u, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_3(!select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.x, 43369u, u_input.d.x) ^ vec4<u32>(arg_0.x, 31946u, u_input.d.x, 1u), ~vec4<u32>(2809u, 0u, arg_0.x, 4294967295u)), 8u)], vec4<bool>(false, any(vec3<bool>(true, true, true)), true, false), false), Struct_1(arg_0, _wgslsmith_mult_i32(~firstLeadingBit(u_input.c.x), u_input.e & _wgslsmith_clamp_i32(u_input.e, 1i, u_input.c.x)), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.d.x, 28269u, arg_0.x, 78877u)), vec4<u32>(11936u, global0.a, ~14573u, u_input.d.x)), _wgslsmith_f_op_f32(select(-272f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(868f, 815f)))), any(select(global1[_wgslsmith_index_u32(arg_0.x, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(55606u, 8u)])))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f) - _wgslsmith_f_op_f32(869f * 905f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f + 1000f) * 186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), -reverseBits(-vec4<i32>(u_input.e, -2147483647i, -2484i, 55279i)) << (vec4<u32>(43931u, 4294967295u, countOneBits(global0.a) ^ (global0.a ^ 1u), abs(global0.a)) % vec4<u32>(32u)));
    let var_1 = Struct_4(var_0.b.a.x | global0.a);
    global3 = array<Struct_2, 2>();
    var var_2 = var_1.a;
    let var_3 = Struct_2(var_0.b.e, var_1.a, u_input.a >= (20474u >> (arg_0.x % 32u)));
    return 42546u;
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(func_3(u_input.d.zy), _wgslsmith_sub_u32(global0.a, global0.a)), u_input.a, ~_wgslsmith_sub_u32(u_input.a, u_input.d.x))), ~_wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.d) >> (vec3<u32>(60662u, global0.a, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(6517u, u_input.a, 4294967295u) << (u_input.d % vec3<u32>(32u)), vec3<u32>(0u, 0u, 1u))));
    var var_0 = 679f;
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.e), _wgslsmith_mult_i32(-u_input.b, min(u_input.b, u_input.c.x ^ -27702i)), _wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(abs(u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 63785i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.b, 25669i, -9712i, u_input.b)), -32701i)), u_input.e), -_wgslsmith_mult_vec4_i32(-vec4<i32>(-24290i, u_input.b, u_input.c.x, u_input.e), -vec4<i32>(u_input.c.x, 8015i, 0i, 1i)));
    var var_2 = select(vec3<u32>(45715u, min(_wgslsmith_dot_vec2_u32(u_input.d.xx, select(vec2<u32>(43922u, u_input.a), vec2<u32>(global0.a, u_input.a), vec2<bool>(true, false))), u_input.a), ~(~global0.a)), ~(~firstLeadingBit(vec3<u32>(u_input.d.x, 67510u, 24461u))) >> (~(vec3<u32>(25199u, 4294967295u, u_input.d.x) ^ u_input.d) % vec3<u32>(32u)), select(select(vec3<bool>(false, select(true, true, false), false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), !vec3<bool>(all(vec2<bool>(true, false)), false, any(vec2<bool>(true, true))), vec3<bool>(true, true, false)));
    let var_3 = Struct_1(vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, global0.a, u_input.d.x), ~vec4<u32>(var_2.x, u_input.a, 1950u, global0.a))) << (u_input.d.yz % vec2<u32>(32u)), min(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-35590i, 2147483647i, var_1)), -vec3<i32>(u_input.b, 7725i, u_input.c.x)) >> (u_input.a % 32u), firstTrailingBit(1i)), _wgslsmith_add_u32(var_2.x >> (25682u % 32u), 73111u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(sign(-1000f)), false))) * _wgslsmith_f_op_f32(-1115f - 1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -1300f, _wgslsmith_f_op_f32(f32(-1f) * -586f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(259f, -214f, _wgslsmith_f_op_f32(761f * 791f))))));
    return Struct_3(select(select(vec4<bool>(u_input.e > var_3.b, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), 0i >= var_3.b, any(vec4<bool>(true, true, true, false)), true), select(global1[_wgslsmith_index_u32(~var_2.x, 8u)], select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(36384u, 8u)], vec4<bool>(false, false, true, true)), true)), global1[_wgslsmith_index_u32(~var_2.x, 8u)], !(!global1[_wgslsmith_index_u32(u_input.a, 8u)])), Struct_1(vec2<u32>(global0.a, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d) << (_wgslsmith_add_u32(67605u, 1u) % 32u)), 1i, global0.a, -604f, var_3.e), ~vec4<i32>(~var_1 | ~1i, ~2147483647i & min(2147483647i, u_input.b), u_input.c.x | var_1, ~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c)));
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = reverseBits(u_input.d);
    var var_1 = func_2();
    var var_2 = func_2();
    let var_3 = _wgslsmith_div_i32(i32(-1i) * -firstTrailingBit(2147483647i), ~(~2147483647i)) <= -27904i;
    var var_4 = Struct_1(~(~_wgslsmith_mod_vec2_u32(var_0.xz, _wgslsmith_mult_vec2_u32(var_1.b.a, vec2<u32>(var_2.b.c, 81584u)))), _wgslsmith_dot_vec2_i32(countOneBits(max(vec2<i32>(var_1.b.b, u_input.e), vec2<i32>(var_2.b.b, -3795i))), vec2<i32>(var_2.c.x, _wgslsmith_div_i32(u_input.c.x, var_1.c.x ^ -7891i))), var_0.x, func_2().b.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.d, 339f, _wgslsmith_f_op_f32(522f + -747f)))));
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, ~(~abs(1u))), ~(~reverseBits(var_4.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a & (func_1(Struct_4(u_input.d.x)) | func_1(Struct_4(_wgslsmith_add_u32(u_input.d.x, 0u))));
    var_0 = 4294967295u;
    global3 = array<Struct_2, 2>();
    var var_1 = global3[_wgslsmith_index_u32(~1u, 2u)];
    let var_2 = func_2().c & vec4<i32>(-64271i, reverseBits(select(u_input.b, 43781i, true)), u_input.c.x, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~40520u), ~global0.a | select(u_input.a, global0.a, var_1.c)), u_input.d.zx), _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_2.x, 1i), firstTrailingBit(vec2<i32>(44219i, 41892i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, u_input.b), vec2<i32>(-2033i, var_2.x))), _wgslsmith_mod_vec2_i32(-max(vec2<i32>(u_input.c.x, 29042i), u_input.c), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(0i, u_input.e)) >> (select(u_input.d.yz, u_input.d.zy, vec2<bool>(var_1.c, var_1.c)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-477f, 1530f, var_1.a.x, 478f), vec4<f32>(263f, var_1.a.x, var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -1000f, -1085f) * vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1066f)))), !vec4<bool>(false, false, var_1.c, false)))), -vec4<i32>(min(8764i, u_input.c.x & 51052i), 1i, ~func_2().c.x, -1i), var_1.a.yx);
}

