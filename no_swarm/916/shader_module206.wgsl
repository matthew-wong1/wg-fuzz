struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: f32 = 1000f;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(271f, vec4<bool>(true, false, false, false)), Struct_2(1150f, vec4<bool>(false, false, true, true)), Struct_2(-115f, vec4<bool>(false, true, false, false)), Struct_2(-604f, vec4<bool>(true, false, false, false)), Struct_2(-1571f, vec4<bool>(false, false, false, false)), Struct_2(115f, vec4<bool>(false, false, false, false)), Struct_2(707f, vec4<bool>(false, false, true, false)), Struct_2(2463f, vec4<bool>(false, false, true, false)), Struct_2(1000f, vec4<bool>(true, false, true, false)), Struct_2(1000f, vec4<bool>(true, true, true, false)), Struct_2(341f, vec4<bool>(false, false, true, true)), Struct_2(229f, vec4<bool>(false, false, false, false)), Struct_2(-346f, vec4<bool>(false, true, false, true)), Struct_2(-702f, vec4<bool>(true, false, true, true)), Struct_2(725f, vec4<bool>(false, false, false, false)), Struct_2(-1000f, vec4<bool>(false, true, true, false)), Struct_2(1601f, vec4<bool>(true, true, false, false)), Struct_2(1000f, vec4<bool>(true, true, false, true)), Struct_2(-837f, vec4<bool>(false, true, false, true)), Struct_2(-276f, vec4<bool>(true, true, false, false)), Struct_2(677f, vec4<bool>(false, false, true, false)), Struct_2(-2311f, vec4<bool>(false, true, false, true)), Struct_2(2502f, vec4<bool>(false, true, true, true)), Struct_2(968f, vec4<bool>(true, true, true, true)));

var<private> global3: i32;

var<private> global4: Struct_3 = Struct_3(Struct_1(-1040f, vec3<i32>(21266i, 1i, 39385i), 0u, vec2<i32>(0i, -12977i), vec3<bool>(true, false, false)), vec3<f32>(529f, -136f, -980f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = ~(~(-var_0.a.d.x & -26915i)) ^ ~_wgslsmith_mod_i32(global4.a.b.x, var_0.a.d.x);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.a.c, _wgslsmith_mod_u32(~77814u, u_input.a)), 24u)];
    var_2 = Struct_2(arg_2.x, !vec4<bool>(!var_2.b.x & !global4.a.e.x, var_2.b.x, global4.a.e.x, true));
    var_2 = arg_0;
    return !var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0.b.x;
    var var_1 = Struct_1(global4.a.a, -vec3<i32>(_wgslsmith_mult_i32(0i, -3036i), global4.a.d.x << (global4.a.c % 32u), arg_1.b.x), global4.a.c, firstLeadingBit(~(-max(vec2<i32>(-5102i, 24204i), vec2<i32>(global4.a.b.x, -1i)))), global4.a.e);
    global3 = -_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 1i, var_1.b.x ^ var_1.d.x), -arg_1.b.x) >> (_wgslsmith_add_u32(~var_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a >> (3032u % 32u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(49861u, u_input.a, 38617u), vec3<u32>(1u, 8520u, global4.a.c))), vec3<u32>(0u, var_1.c, var_1.c))) % 32u);
    var_0 = arg_1.b.x > ~max(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 29037i, global4.a.b.x), var_1.b, arg_1.b), vec3<i32>(-67123i, arg_1.b.x, 1i)), arg_1.d.x);
    let var_2 = arg_0;
    return var_2.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    global3 = ~0i;
    var var_0 = _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - global4.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(func_4(Struct_2(global4.a.a, func_3(global2[_wgslsmith_index_u32(20299u, 24u)], Struct_3(global4.a, vec3<f32>(arg_1.a, 311f, arg_1.a)), _wgslsmith_f_op_vec2_f32(global4.b.zy - vec2<f32>(523f, -1367f)))), Struct_1(arg_1.a, -vec3<i32>(global4.a.b.x, 1i, global4.a.d.x), 20817u, global4.a.b.zz, !arg_0))), func_3(global2[_wgslsmith_index_u32(~4294967295u, 24u)], Struct_3(Struct_1(124f, global4.a.b, abs(global4.a.c), -vec2<i32>(1i, global4.a.d.x), arg_1.b.wwx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.b - global4.b) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -195f, global4.a.a)))), global4.b.yx));
    global2 = array<Struct_2, 24>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return global4.a;
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(global4.a.d.x, ~(~(i32(-1i) * -31917i))), _wgslsmith_add_vec2_i32(~(arg_0.a.d ^ arg_0.a.b.xx), global4.a.d));
    let var_1 = arg_0.a.a;
    var var_2 = Struct_3(global4.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.b + _wgslsmith_f_op_vec3_f32(min(global4.b, vec3<f32>(-669f, global4.b.x, -386f))))))));
    var var_3 = var_2.a;
    var var_4 = 86913u;
    return Struct_3(func_2(func_2(vec3<bool>(1i >= var_0.x, global4.a.e.x || var_3.e.x, true), Struct_2(-472f, !vec4<bool>(false, var_3.e.x, true, true)), firstLeadingBit(~vec4<u32>(var_2.a.c, 4294967295u, var_2.a.c, var_2.a.c))).e, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(var_3.a - -1556f)), vec4<bool>(any(vec3<bool>(global4.a.e.x, true, var_3.e.x)), false | var_3.e.x, -552f <= var_1, !arg_1)), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c, 1u) >> (vec2<u32>(var_2.a.c, 1u) % vec2<u32>(32u)), vec2<u32>(87746u, var_2.a.c)), 1u, global4.a.c)), arg_0.b);
}

fn func_6(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = vec4<bool>(!func_5(func_5(arg_0, global0.x), max(u_input.a, u_input.a) <= _wgslsmith_dot_vec2_u32(vec2<u32>(92875u, 4294967295u), vec2<u32>(arg_0.a.c, 1u))).a.e.x, all(vec3<bool>(!global0.x, any(!vec3<bool>(global0.x, false, true)), !all(vec3<bool>(global4.a.e.x, arg_0.a.e.x, global4.a.e.x)))), ~((arg_0.a.b.x | -26919i) ^ global4.a.b.x) == 31759i, ((true || func_3(Struct_2(589f, vec4<bool>(arg_0.a.e.x, true, global4.a.e.x, global0.x)), Struct_3(arg_0.a, arg_0.b), vec2<f32>(arg_0.a.a, global4.a.a)).x) && all(vec2<bool>(global0.x, true))) && !arg_0.a.e.x);
    var var_1 = _wgslsmith_div_vec3_i32(global4.a.b, reverseBits(~(-vec3<i32>(arg_0.a.d.x, 1i, 29449i))));
    global4 = func_5(Struct_3(func_5(arg_0, global4.a.e.x || all(vec4<bool>(global0.x, var_0.x, false, arg_0.a.e.x))).a, arg_0.b), arg_0.a.e.x);
    var var_2 = func_5(func_5(Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_0.b.x + -1463f), ~global4.a.b, arg_0.a.c, var_1.yz | vec2<i32>(-14887i, arg_0.a.b.x), var_0.xyz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b))), true & global0.x), arg_0.a.e.x).a.c;
    var_2 = _wgslsmith_mult_u32(max(15642u, 4294967295u), _wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(arg_0.a.c, global4.a.c)) ^ 58504u);
    return vec2<bool>(false, global4.a.c > ~u_input.a);
}

fn func_1() -> i32 {
    let var_0 = false;
    let var_1 = select(func_6(func_5(Struct_3(func_2(global4.a.e, global2[_wgslsmith_index_u32(u_input.a, 24u)], vec4<u32>(53837u, global4.a.c, global4.a.c, global4.a.c)), vec3<f32>(global4.a.a, 858f, -566f)), true)), select(global0.yx, select(vec2<bool>(all(global4.a.e.zz), any(vec4<bool>(var_0, false, false, global4.a.e.x))), !vec2<bool>(false, global4.a.e.x), all(vec3<bool>(var_0, global0.x, false)) & !global4.a.e.x), false), global0.zz);
    let var_2 = vec4<f32>(_wgslsmith_div_f32(-448f, -386f), global4.a.a, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-global4.a.a));
    var var_3 = vec4<i32>(~(-(~(~11775i))), _wgslsmith_mod_i32(i32(-1i) * -1i, -2147483647i), -reverseBits(firstTrailingBit(1i << (global4.a.c % 32u))), ~global4.a.d.x);
    global1 = var_2.x;
    return _wgslsmith_add_i32(~global4.a.d.x, _wgslsmith_sub_i32(func_5(func_5(func_5(Struct_3(global4.a, vec3<f32>(var_2.x, var_2.x, 125f)), global4.a.e.x), true), true).a.d.x, -firstLeadingBit(_wgslsmith_clamp_i32(-1i, -1i, 8940i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 24>();
    global3 = -2147483647i;
    global3 = reverseBits(func_1());
    var var_0 = select(u_input.a >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(global4.a.c, u_input.a), firstTrailingBit(7432u >> (u_input.a % 32u)), 1u) % 32u), 1u, true);
    var var_1 = _wgslsmith_f_op_f32(-global4.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global4.a.a), select(vec3<i32>(global4.a.b.x, _wgslsmith_div_i32(-19600i, global4.a.b.x), 2147483647i), ~(~select(vec3<i32>(global4.a.b.x, global4.a.d.x, -28537i), global4.a.b, true)), func_2(vec3<bool>(func_3(Struct_2(-767f, vec4<bool>(true, true, true, global4.a.e.x)), Struct_3(Struct_1(global4.a.a, vec3<i32>(global4.a.d.x, global4.a.d.x, global4.a.b.x), 52743u, global4.a.d, vec3<bool>(false, global0.x, global4.a.e.x)), global4.b), vec2<f32>(2030f, -1050f)).x, false, func_3(Struct_2(global4.b.x, vec4<bool>(global0.x, global0.x, global0.x, false)), Struct_3(global4.a, global4.b), global4.b.xz).x), global2[_wgslsmith_index_u32(abs(global4.a.c) & ~u_input.a, 24u)], select(_wgslsmith_mod_vec4_u32(vec4<u32>(40941u, 0u, 79320u, 4294967295u), vec4<u32>(global4.a.c, 54607u, 4294967295u, u_input.a)), countOneBits(vec4<u32>(4294967295u, 47965u, global4.a.c, u_input.a)), vec4<bool>(global0.x, global0.x, global4.a.e.x, global0.x))).e), firstLeadingBit(u_input.a), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-min(vec2<i32>(2147483647i, global4.a.d.x), vec2<i32>(0i, -24128i)), -(vec2<i32>(-12751i, 1i) << (vec2<u32>(global4.a.c, u_input.a) % vec2<u32>(32u)))), ~_wgslsmith_mod_vec2_i32(firstTrailingBit(global4.a.b.zx), vec2<i32>(-2147483647i, global4.a.b.x))), func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9032u, 1u, 1u), 24u)], Struct_3(global4.a, global4.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global4.b.xx, _wgslsmith_div_vec2_f32(global4.b.xy, vec2<f32>(global4.b.x, global4.b.x)))))).wyy);
    var var_3 = ~47694u;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -703f)))), ~vec3<i32>(firstTrailingBit(-2147483647i), _wgslsmith_clamp_i32(var_2.d.x, 1i, -var_2.b.x), -global4.a.d.x), u_input.a, var_2.b.xy, !(!(!global4.a.e)));
    var_3 = abs(_wgslsmith_add_u32(~_wgslsmith_add_u32(abs(2549u), ~66588u), global4.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(func_1());
}

