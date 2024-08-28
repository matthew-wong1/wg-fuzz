struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 23>;

var<private> global4: Struct_2 = Struct_2(Struct_1(true), Struct_1(false), true, vec4<u32>(55265u, 4294967295u, 121u, 37074u), 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    global4 = Struct_2(global4.a, global4.a, all(arg_0.b.zw), abs(~vec4<u32>(global4.e, 40387u, u_input.a.x, ~0u)), min(u_input.a.x, ~(~(~arg_1.a))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1116f, -652f, -504f) - vec3<f32>(430f, global1.x, global1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 227f, 1740f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -123f, -573f), vec3<f32>(global1.x, global1.x, global1.x), arg_0.b.zzx))), select(vec3<bool>(true, arg_1.b.x, true), vec3<bool>(arg_0.c.b, false, global4.a.a), arg_1.b.x == true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) * vec3<f32>(_wgslsmith_f_op_f32(global1.x - -1342f), global1.x, -147f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, global4.a.a))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(global1.x))))));
    var var_0 = arg_1.c;
    let var_1 = select(vec2<bool>(false, arg_1.c.b), arg_0.b.xx, arg_0.b.yy);
    global2 = 0u;
    return 20748u;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(global4.a, Struct_1(!all(vec2<bool>(arg_0.x, true))), all(!select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, false, false, global4.a.a), vec4<bool>(false, global4.c, arg_0.x, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(global4.d, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global4.d.x))), 0u, _wgslsmith_mult_u32(~u_input.a.x, global4.e), abs(0u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5885u, 0u, 15847u, 1u), vec4<u32>(global4.d.x, global4.e, 4294967295u, global4.e)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.d.x, 0u), vec2<u32>(57666u, global4.d.x)), func_3(Struct_4(global4.e, vec4<bool>(global4.b.a, true, true, true), Struct_3(vec2<i32>(-14735i, -2147483647i), global4.a.a)), Struct_4(47703u, vec4<bool>(global4.a.a, arg_0.x, arg_0.x, false), Struct_3(vec2<i32>(0i, 0i), false))), 78138u, ~global4.e))), global4.e);
    global4 = Struct_2(global3[_wgslsmith_index_u32(~select(_wgslsmith_add_u32(max(90873u, 4294967295u), ~4294967295u), countOneBits(var_0.e), any(vec4<bool>(false, arg_0.x, global4.a.a, false))), 23u)], global4.a, !(~(~14186u) >= _wgslsmith_mod_u32(4294967295u | global4.d.x, u_input.a.x)), vec4<u32>(0u, _wgslsmith_div_u32(~u_input.a.x, 76227u), firstTrailingBit(_wgslsmith_clamp_u32(53960u, ~var_0.d.x, abs(33682u))), firstLeadingBit(~firstTrailingBit(global4.e))), 35035u);
    let var_1 = Struct_1(!(!(global4.e < 6341u)));
    return Struct_3(-vec2<i32>(~firstTrailingBit(-10388i), -(~arg_2.x)), !(!(!(!var_0.b.a))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(arg_3)), _wgslsmith_f_op_vec3_f32(arg_3 - arg_3), !vec3<bool>(arg_1.b, global4.c, global4.b.a))))));
    var var_0 = _wgslsmith_div_f32(2669f, 1f);
    let var_1 = vec3<u32>(35749u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(38265u), arg_0.x, func_3(Struct_4(60458u, vec4<bool>(arg_1.b, true, false, global4.b.a), arg_1), Struct_4(4294967295u, vec4<bool>(true, false, global4.c, global4.b.a), arg_1))), abs(firstTrailingBit(113392u))), _wgslsmith_sub_u32(_wgslsmith_add_u32(max(_wgslsmith_mod_u32(34958u, 42789u), u_input.a.x), 16654u), ~0u));
    var var_2 = Struct_2(Struct_1(global4.a.a || all(vec2<bool>(arg_1.b, false))), global4.b, false, vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(global4.d, min(vec4<u32>(var_1.x, global4.d.x, 68262u, u_input.a.x), max(vec4<u32>(var_1.x, global4.e, 1u, 1u), global4.d))), global4.e, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global4.e), vec2<u32>(6931u, global4.d.x)), 1u, _wgslsmith_mult_u32(var_1.x, 4804u), min(56175u, 4294967295u)), vec4<u32>(global4.e, global4.e, u_input.a.x, arg_0.x >> (50809u % 32u)))), ~(73551u ^ ~reverseBits(u_input.a.x)));
    var var_3 = (global4.e | 0u) << (var_2.d.x % 32u);
    return firstLeadingBit(func_3(Struct_4(var_2.d.x, vec4<bool>(var_2.a.a, all(vec3<bool>(true, arg_1.b, arg_1.b)), true, false == var_2.c), func_2(select(vec3<bool>(var_2.b.a, global4.c, false), vec3<bool>(arg_1.b, false, false), false), -1238i << (var_1.x % 32u), select(u_input.c, u_input.c, vec4<bool>(true, global4.c, false, true)))), Struct_4(arg_0.x, !vec4<bool>(global4.a.a, var_2.c, global4.b.a, arg_1.b), arg_1)));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = arg_1.x;
    global1 = arg_2.xyx;
    global1 = arg_2.xzz;
    var var_1 = global1.x;
    global4 = Struct_2(global3[_wgslsmith_index_u32(~(~reverseBits(max(u_input.a.x, 31843u))), 23u)], Struct_1(!(!(arg_0 > arg_0))), ~(~9425u) != ~global4.e, ~firstTrailingBit(~_wgslsmith_clamp_vec4_u32(u_input.a, global4.d, vec4<u32>(59214u, global4.e, global4.d.x, u_input.a.x))), 63966u);
    return arg_2.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(-660f - 695f));
    let var_1 = ~abs(~(~(~74814u)));
    var var_2 = (i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c.x, 10052i, u_input.b), u_input.b)) <= -(i32(-1i) * -u_input.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, _wgslsmith_f_op_f32(func_5(func_4(vec3<u32>(u_input.a.x, var_1, arg_3.e), func_2(vec3<bool>(arg_1.a, true, arg_2.a), -2147483647i, vec4<i32>(u_input.b, 2147483647i, -2147483647i, 1i)), _wgslsmith_f_op_f32(-1000f - -688f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))), vec4<i32>(0i, -53638i, u_input.c.x, u_input.b) ^ _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 45466i, -1i, 12642i), u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, 879f, global1.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-181f, -685f, -1402f, global1.x), vec4<f32>(global1.x, 396f, 2558f, global1.x)))))));
    let var_4 = ~(_wgslsmith_add_vec2_u32(countOneBits(select(global4.d.xz, arg_3.d.yx, false)), vec2<u32>(firstTrailingBit(38781u), global4.e)) ^ vec2<u32>(var_1, arg_3.e));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-35851i, -(i32(-1i) * -38107i), ~u_input.b & ~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-11782i, u_input.c.x, ~func_1(false, global3[_wgslsmith_index_u32(global4.e, 23u)], Struct_1(global4.b.a), Struct_2(global4.b, Struct_1(false), global4.b.a, vec4<u32>(global4.e, 50504u, u_input.a.x, 0u), u_input.a.x))), u_input.c.yzw));
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    global3 = array<Struct_1, 23>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1333f, _wgslsmith_f_op_f32(-global1.x))))));
    let var_2 = global4.a;
    var var_3 = func_2(!vec3<bool>(true, !var_2.a | (global1.x > -752f), global1.x > global1.x), 1i, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c.x, -2147483647i, -33416i, u_input.b) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, var_0.x, var_0.x), u_input.c)), ~(-u_input.c)));
    let var_4 = true & (var_3.b | true);
    var var_5 = global4.d;
    var var_6 = Struct_3(_wgslsmith_add_vec2_i32(var_0.xz, var_3.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_5.x, min(vec2<i32>(~u_input.b, -abs(19012i)), firstLeadingBit(-vec2<i32>(var_0.x, var_3.a.x))));
}

