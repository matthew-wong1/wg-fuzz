struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<u32, 4> = array<u32, 4>(17449u, 62297u, 1u, 1u);

var<private> global2: array<u32, 8>;

var<private> global3: Struct_2 = Struct_2(24019u, vec2<u32>(0u, 1u), vec2<bool>(true, true), false);

var<private> global4: array<u32, 7> = array<u32, 7>(4294967295u, 0u, 1u, 1u, 36169u, 26524u, 0u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> i32 {
    global1 = array<u32, 4>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(-arg_0));
    let var_1 = any(!select(!select(vec3<bool>(global3.c.x, global3.d, false), vec3<bool>(true, global3.c.x, global3.c.x), true), select(vec3<bool>(global3.c.x, true, global3.c.x), !vec3<bool>(global3.d, false, false), select(vec3<bool>(true, global3.c.x, true), vec3<bool>(global3.c.x, true, true), global3.d)), global3.d));
    var var_2 = u_input.a.x;
    global2 = array<u32, 8>();
    return ~(_wgslsmith_mod_i32(71424i >> (global3.a % 32u), -2147483647i) >> (u_input.a.x % 32u));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1))));
    var var_1 = var_0;
    global2 = array<u32, 8>();
    let var_2 = vec3<bool>(!global3.d, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 8u)]) <= abs(global3.b.x), !(u_input.a.x > 1u));
    var_1 = _wgslsmith_div_f32(1490f, var_0);
    return Struct_2(firstLeadingBit(countOneBits(reverseBits(max(22534u, u_input.a.x)))), ~(~(~(global3.b & global3.b))), vec2<bool>(any(select(arg_0, vec4<bool>(var_2.x, false, false, arg_0.x), !arg_0)), !(!var_2.x) & global3.d), !var_2.x);
}

fn func_1() -> Struct_2 {
    let var_0 = func_3(vec4<bool>(!global3.c.x, all(global3.c), global3.c.x, global3.d), -119f, abs(-vec4<i32>(-20727i, 8884i, _wgslsmith_sub_i32(-1i, -1i), func_2(-1437f, 51852u, Struct_4(vec4<i32>(0i, -2147483647i, -2147483647i, -1i), Struct_1(67717u))))));
    global4 = array<u32, 7>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1162f))), 280f, !(var_0.c.x == false))) - 1f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(298f)))));
    let var_1 = Struct_3(func_3(vec4<bool>(!(false | var_0.c.x), _wgslsmith_sub_u32(global3.a, var_0.a) > ~global4[_wgslsmith_index_u32(0u, 7u)], false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f + -1727f))), abs(vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, _wgslsmith_f_op_f32(floor(-300f)), -1278f))));
    return func_3(!select(!select(vec4<bool>(var_1.a.d, global3.c.x, var_1.a.d, global3.d), vec4<bool>(true, false, var_0.d, true), var_0.c.x), select(vec4<bool>(var_1.a.c.x, var_0.d, true, var_0.c.x), !vec4<bool>(global3.d, false, var_0.d, var_1.a.d), !vec4<bool>(var_0.c.x, var_0.d, var_1.a.d, var_1.a.c.x)), !(var_1.b.x > -777f)), -1305f, ~(firstTrailingBit(vec4<i32>(2147483647i, -1i, 23791i, 2147483647i)) >> (vec4<u32>(global3.b.x, 0u, _wgslsmith_mult_u32(19899u, 14566u), global3.b.x) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    let var_0 = arg_2.a.x <= ~reverseBits(arg_2.a.x);
    let var_1 = vec2<bool>(all(vec2<bool>(true, true)), select(all(!vec3<bool>(var_0, arg_1.d, arg_1.c.x)) && !arg_1.d, arg_1.c.x, false));
    var var_2 = Struct_1(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 4u)], arg_1.a));
    var_2 = Struct_1(global4[_wgslsmith_index_u32(arg_1.a, 7u)]);
    var var_3 = arg_2.a.x;
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> f32 {
    global1 = array<u32, 4>();
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -895f);
    let var_0 = _wgslsmith_f_op_f32(-arg_3);
    var var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(~(~1i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(25046i, 1i), vec2<i32>(23839i, -2147483647i)), _wgslsmith_mult_i32(0i, -1i)), -(i32(-1i) * -2147483647i), -2147483647i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(11655i, 0i, -19855i, 0i), firstLeadingBit(vec4<i32>(-2147483647i, 49606i, 246i, -23328i)), vec4<i32>(45010i, -14311i, 1i, -1i)) | vec4<i32>(1i, 15835i, -1i, 1i)));
    let var_2 = func_1();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(!global3.d | any(vec3<bool>(global3.d, false, global3.d)), !(!vec3<bool>(true, global3.d, false)), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-303f, -292f), vec2<f32>(116f, 198f)), func_1(), Struct_4(vec4<i32>(2147483647i, -2147483647i, 2147483647i, 1i), Struct_1(global2[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_f_op_f32(min(-1122f, -455f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f * 1416f)), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(419f - -1281f), -309f, -1431f, _wgslsmith_f_op_f32(521f + -685f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(563f, -1186f, global3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -226f), _wgslsmith_f_op_f32(f32(-1f) * -1785f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1275f, -1000f, false)), _wgslsmith_f_op_f32(-2475f - -713f)))));
    var var_1 = -_wgslsmith_div_i32(-func_2(_wgslsmith_f_op_f32(round(-340f)), ~global3.b.x, Struct_4(vec4<i32>(-1i, -2147483647i, -20588i, 2147483647i), Struct_1(3097u))), ~0i);
    var var_2 = Struct_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(1i), countOneBits(12921i), -_wgslsmith_add_i32(0i, 20724i), -2147483647i >> (~4294967295u % 32u)), -vec4<i32>(1i, 1i, 1i, 1i) & vec4<i32>(func_2(1000f, global3.b.x, Struct_4(vec4<i32>(42477i, 30377i, -21491i, 22143i), Struct_1(u_input.a.x))), abs(-8137i), -6981i, -2147483647i), vec4<i32>(14762i, firstTrailingBit(8140i), select(-1094i, 14214i, false), func_2(var_0.x, global3.b.x, Struct_4(vec4<i32>(12082i, -1i, -1i, 6162i), Struct_1(global3.a)))) >> ((vec4<u32>(4294967295u, u_input.a.x, global4[_wgslsmith_index_u32(25257u, 7u)], 1496u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(58082u, 0u, u_input.a.x, 9293u), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(1u, 7u)], 2852u, 103120u)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(0u));
    var_1 = -abs(2147483647i);
    let var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - 423f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-594f, var_0.x)))))), ~(~_wgslsmith_div_vec4_i32(var_2.a, vec4<i32>(2147483647i, 0i, var_2.a.x, 26970i))), min(1u, ~var_3.a));
}

