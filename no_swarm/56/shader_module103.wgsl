struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: u32 = 9536u;

var<private> global2: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    var var_0 = select(arg_1.a.d.x, _wgslsmith_mult_i32(-_wgslsmith_add_i32(1i, arg_1.a.d.x), arg_1.a.d.x), arg_3.a.a);
    let var_1 = Struct_1(!arg_1.a.c == !((u_input.d & 2147483647i) == abs(26801i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a * arg_2.a) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b, -1000f), arg_2.a)) * _wgslsmith_f_op_vec2_f32(abs(arg_2.a)))));
    let var_3 = arg_1;
    let var_4 = Struct_1(false);
    return _wgslsmith_f_op_f32(977f + arg_0) > -856f;
}

fn func_2() -> Struct_4 {
    var var_0 = 1f;
    var var_1 = -26361i;
    var var_2 = ~u_input.a.xx;
    var var_3 = select(!vec2<bool>(false, func_3(_wgslsmith_f_op_f32(-434f - 872f), Struct_4(Struct_2(Struct_1(false), Struct_1(false), false, vec2<i32>(-18216i, 1i), vec4<u32>(4294967295u, 1u, var_2.x, var_2.x)), u_input.b), Struct_3(vec2<f32>(-1300f, -1031f), -1723f), Struct_2(Struct_1(true), global0[_wgslsmith_index_u32(583u, 27u)], false, vec2<i32>(u_input.b, u_input.c), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)))), !vec2<bool>(func_3(978f, Struct_4(Struct_2(global0[_wgslsmith_index_u32(var_2.x, 27u)], Struct_1(false), false, vec2<i32>(-2147483647i, 1i), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)), u_input.c), Struct_3(vec2<f32>(-141f, -1613f), -587f), Struct_2(Struct_1(false), global0[_wgslsmith_index_u32(4294967295u, 27u)], true, vec2<i32>(16046i, 2147483647i), vec4<u32>(41556u, var_2.x, var_2.x, u_input.e.x))), any(vec2<bool>(false, true))), true);
    let var_4 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(max(~vec3<i32>(u_input.c, u_input.b, u_input.b), vec3<i32>(-64102i, 2147483647i, -68263i) ^ vec3<i32>(u_input.b, 0i, 1i))), select(vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(u_input.d, u_input.c)), i32(-1i) * -38790i), -vec3<i32>(2147483647i, -2147483647i, -1i) | -vec3<i32>(u_input.d, u_input.d, -1i), select(!vec3<bool>(false, var_3.x, true), vec3<bool>(var_3.x, var_3.x, var_3.x), true))), vec3<i32>(u_input.d, 1i, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-57276i, u_input.d), vec2<i32>(75934i, 6401i))));
    return Struct_4(Struct_2(Struct_1(var_3.x), global0[_wgslsmith_index_u32(~var_2.x, 27u)], true, -var_4.xx, _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(var_2.x, 32784u, var_2.x, var_2.x)), firstLeadingBit(vec4<u32>(20860u, 1u, u_input.a.x, u_input.e.x)))), -_wgslsmith_clamp_i32(28443i, ~var_4.x & ~u_input.b, i32(-1i) * -56919i));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = ~(~(-62021i));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))), -1776f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -1355f), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -635f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b, arg_1.b, -298f, arg_1.b))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -784f, arg_1.a.x, arg_1.b), vec4<f32>(arg_1.b, arg_1.a.x, arg_1.a.x, arg_1.b)))))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(213f + -834f), _wgslsmith_f_op_f32(-arg_1.a.x)))), -675f)));
    var var_2 = vec4<bool>(arg_0.a.a.a, (_wgslsmith_div_i32(u_input.b | u_input.c, arg_0.a.d.x) ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, -44888i), 1i)) > ~u_input.d, any(!(!(!vec3<bool>(arg_3, false, arg_2.a)))), arg_2.a);
    var_0 = abs(u_input.d);
    return ~(~firstLeadingBit(arg_0.a.e));
}

fn func_1() -> u32 {
    let var_0 = Struct_2(Struct_1(any(vec2<bool>(true, true))), Struct_1(true), (~u_input.e.x << (_wgslsmith_sub_u32(select(u_input.a.x, 4294967295u, true), 1u) % 32u)) != 11978u, countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -1i), ~vec2<i32>(u_input.c, -5434i)) & (vec2<i32>(2147483647i, -22139i) ^ vec2<i32>(u_input.b, u_input.c))), ~func_4(func_2(), Struct_3(vec2<f32>(-829f, -1907f), -2700f), func_2().a.b, false));
    global0 = array<Struct_1, 27>();
    var var_1 = !all(select(select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.b.a, false), select(vec2<bool>(var_0.a.a, false), vec2<bool>(var_0.a.a, true), false)), vec2<bool>(true, all(vec2<bool>(true, var_0.a.a))), !var_0.c));
    let var_2 = -countOneBits(var_0.d.x);
    let var_3 = func_2().a.a;
    return min(4294967295u, max(var_0.e.x, u_input.a.x));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(892f, -1858f)), vec2<f32>(694f, -1000f), !arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(501f, 166f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1892f, 769f), vec2<f32>(-145f, 935f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(145f, -621f), vec2<f32>(722f, 206f), vec2<bool>(arg_1.a, arg_1.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(377f, 583f) * vec2<f32>(-740f, 936f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1811f)), 792f, true & !arg_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1261f, 1090f)) * _wgslsmith_f_op_f32(-1560f - _wgslsmith_f_op_f32(sign(-600f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21943u;
    let var_1 = vec4<bool>(true, _wgslsmith_div_f32(-1140f, _wgslsmith_f_op_f32(round(-324f))) > 630f, -u_input.c == _wgslsmith_mult_i32(0i, 1i), !all(vec3<bool>(true, true, 53822u < u_input.a.x)));
    global0 = array<Struct_1, 27>();
    let var_2 = func_5(~u_input.e.x >= 27780u, global0[_wgslsmith_index_u32(func_1(), 27u)], vec4<u32>(select(u_input.a.x, abs(abs(u_input.a.x)), true), u_input.a.x, u_input.a.x, 40688u));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(((vec4<i32>(28737i, u_input.c, u_input.b, -2147483647i) | vec4<i32>(23122i, u_input.d, 2147483647i, -6701i)) | -vec4<i32>(u_input.c, 1i, u_input.b, 2147483647i)) ^ vec4<i32>(u_input.c ^ -2147483647i, ~2147483647i, u_input.b, _wgslsmith_mult_i32(1i, u_input.c))), vec2<i32>(reverseBits(-15540i | (u_input.d ^ u_input.b)), _wgslsmith_mod_i32(u_input.b, u_input.c)));
}

