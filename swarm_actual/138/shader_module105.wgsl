struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: Struct_3 = Struct_3(Struct_1(8243i, vec4<i32>(6719i, -17751i, -21502i, -2589i), 1u, -1737f));

var<private> global2: array<Struct_4, 5>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = vec3<bool>(false, all(!vec3<bool>(all(vec3<bool>(arg_1, true, arg_1)), all(vec4<bool>(arg_1, true, true, arg_1)), select(true, arg_1, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(114f, global1.a.d))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.a.d)))))));
    var var_1 = Struct_4(global1.a, Struct_2(arg_0.a), Struct_3(arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d, -833f, global1.a.d, -2383f) * vec4<f32>(arg_0.a.d, -1000f, arg_0.a.d, arg_0.a.d)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d, global1.a.d, -447f, -1174f) * vec4<f32>(arg_0.a.d, 534f, global1.a.d, arg_0.a.d)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1166f, 1000f, arg_0.a.d, arg_0.a.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1806f, 1008f, global1.a.d, -682f)), any(!vec4<bool>(arg_1, false, true, false))))), global1.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1796f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -400f), var_1.d.x)));
}

fn func_3(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_1(global1.a.a, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.a, -1082i, global1.a.a, 0i) >> (vec4<u32>(global1.a.c, 69452u, 35753u, global0[_wgslsmith_index_u32(1u, 30u)]) % vec4<u32>(32u)), ~vec4<i32>(global1.a.b.x, 1i, -2147483647i, -2147483647i)), select(vec4<i32>(global1.a.b.x, global1.a.b.x, 2147483647i, -2147483647i), ~global1.a.b, true), ~select(global1.a.b, global1.a.b, vec4<bool>(false, false, false, true))), global1.a.b), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(3812i, global1.a.b, 4294967295u, global1.a.d)), true))) + 785f)));
    var var_1 = u_input.a.xz;
    var var_2 = var_0.b.xyy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))));
    var var_4 = Struct_3(global1.a);
    return Struct_3(global1.a);
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = !vec3<bool>(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false)), true, true);
    let var_1 = arg_0.a.d;
    global1 = Struct_3(Struct_1(_wgslsmith_mult_i32(~countOneBits(0i), 0i), global1.a.b, 4294967295u, global1.a.d));
    global1 = Struct_3(func_3(global1.a.d).a);
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, 36276u >> (global0[_wgslsmith_index_u32(1u, 30u)] % 32u), 1u, 61331u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(arg_0.a.c, 0u), 28735u, u_input.b), u_input.a)), u_input.a);
    return 2147483647i;
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<i32> {
    return vec3<i32>(func_4(func_3(_wgslsmith_f_op_f32(func_2(Struct_3(global1.a), true)))), _wgslsmith_mod_i32(i32(-1i) * -(~2147483647i), i32(-1i) * -1i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), vec3<i32>(global1.a.a, -7107i, -71486i)) & global1.a.a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0, arg_0, -13881i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-30948i, global1.a.b.x, arg_0), vec3<i32>(-13989i, arg_0, 1i))) >> (global1.a.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(-func_1(-global1.a.b.x, ~global0[_wgslsmith_index_u32(4294967295u, 30u)]) & global1.a.b.xxx, ~(func_1(_wgslsmith_sub_i32(26944i, global1.a.a), ~global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) ^ vec3<i32>(abs(-1i), 36353i, global1.a.a)));
    global0 = array<u32, 30>();
    let var_1 = _wgslsmith_add_u32(u_input.d, global1.a.c);
    let var_2 = Struct_2(func_3(_wgslsmith_f_op_f32(floor(global1.a.d))).a);
    var var_3 = -3294i;
    var var_4 = select(select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, true, false), 0u == var_1), vec4<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)), true, false), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), true), true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, true), true)), true), !vec4<bool>(true, all(vec2<bool>(false, true)), select(true, select(false, true, false), true), true));
    global0 = array<u32, 30>();
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.a.d)), var_2.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1094f)), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(620f + var_5.x) * var_2.a.d), _wgslsmith_f_op_f32(-1913f * _wgslsmith_div_f32(-1023f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_5.x - -1238f))))), abs(var_0 << (~_wgslsmith_mult_u32(1u, global1.a.c) % 32u)), (_wgslsmith_mod_i32(1i, global1.a.b.x) << (var_1 % 32u)) | var_2.a.b.x);
}

