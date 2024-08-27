struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-252f, 1335f, -1244f, -2330f, 299f, 751f, -842f, 387f, -1373f, 523f, -823f);

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_2 {
    global0 = array<f32, 11>();
    let var_0 = arg_1.c;
    global1 = _wgslsmith_f_op_vec2_f32(arg_1.c.zz - var_0.yx);
    let var_1 = vec3<i32>(0i, arg_1.d.b, arg_1.d.b);
    global0 = array<f32, 11>();
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<f32> {
    global0 = array<f32, 11>();
    var var_0 = min(~max(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b, arg_0.d.d), vec2<u32>(0u, 15877u), arg_0.d.c.zy), ~vec2<u32>(25569u, arg_0.d.d)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.d.d, 11888u), vec2<u32>(arg_0.d.d, arg_0.d.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d.d, arg_0.d.d), vec2<u32>(4294967295u, arg_0.d.d)))), select(min(~min(vec2<u32>(u_input.a, 0u), vec2<u32>(36087u, 1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.a))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, arg_0.d.d), ~vec2<u32>(arg_0.d.d, u_input.a), vec2<u32>(u_input.a, 19330u) >> (vec2<u32>(38275u, arg_0.d.d) % vec2<u32>(32u))), vec2<bool>(arg_0.d.c.x, false)));
    var var_1 = Struct_5(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-903f, global1.x))) <= 1176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a * _wgslsmith_div_f32(1895f, arg_0.a)))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, -18208i, ~abs(arg_1.x), _wgslsmith_mod_i32(~arg_0.d.b, arg_0.d.b)), min(_wgslsmith_add_vec4_i32(abs(vec4<i32>(57110i, arg_1.x, -1i, -33454i)), min(vec4<i32>(arg_0.d.b, -2147483647i, arg_1.x, arg_0.d.b), vec4<i32>(arg_0.d.b, 2147483647i, 2147483647i, -2147483647i))), max(firstLeadingBit(vec4<i32>(2147483647i, arg_0.d.b, arg_0.d.b, -2147483647i)), -vec4<i32>(-1i, arg_0.d.b, -1i, arg_1.x)))), arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(974f, arg_0.d.a), _wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(63955u, 11u)]), _wgslsmith_f_op_f32(-arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1512f, global1.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44280u, 49967u, u_input.b), vec4<u32>(5943u, var_1.d.d.d, 0u, 0u)), 11u)]), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.b)))), _wgslsmith_div_f32(-1495f, _wgslsmith_f_op_f32(var_1.d.d.a * -240f)), var_1.b, _wgslsmith_f_op_f32(-var_1.b)))));
    var var_3 = vec4<f32>(global1.x, 637f, var_2.x, 162f);
    return _wgslsmith_div_vec2_f32(var_3.yx, _wgslsmith_f_op_vec2_f32(-var_1.d.c.yx));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(func_2(vec2<bool>(arg_0, false), Struct_2(-1428f, vec3<bool>(false, arg_0, true), vec4<f32>(-1757f, arg_1.e, 1631f, 440f), arg_1), arg_1.d != 0u, true), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_1.b) | vec2<i32>(arg_1.b, 28441i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.b, -76478i), vec2<i32>(-35186i, 28059i)))))))));
    var var_0 = Struct_4(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(892f - -1000f) - _wgslsmith_f_op_f32(max(745f, 208f))), select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, arg_1.b, -55297i) & select(vec4<i32>(-23817i, arg_1.b, arg_1.b, arg_1.b), vec4<i32>(arg_1.b, 2147483647i, arg_1.b, -2147483647i), vec4<bool>(arg_1.c.x, true, false, arg_1.c.x)), vec4<i32>(~(-21435i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, 0i), vec2<i32>(arg_1.b, arg_1.b)), -2147483647i, arg_1.b)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-21419i, 0i, arg_1.b, arg_1.b) >> (vec4<u32>(61200u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))), ~(vec4<i32>(arg_1.b, 0i, -1i, -1114i) << (vec4<u32>(50124u, 4294967295u, arg_1.d, arg_1.d) % vec4<u32>(32u)))), vec4<bool>(!select(arg_0, true, arg_1.c.x), 5300i < (arg_1.b ^ -6127i), -103f >= _wgslsmith_f_op_f32(-500f + arg_1.e), arg_1.c.x == !arg_0)), Struct_3(arg_1.d, countOneBits(~vec2<u32>(u_input.b, 65973u)) ^ vec2<u32>(max(1u, u_input.a), func_2(vec2<bool>(false, arg_1.c.x), Struct_2(1063f, arg_1.c, vec4<f32>(global1.x, global0[_wgslsmith_index_u32(37539u, 11u)], 618f, global0[_wgslsmith_index_u32(4294967295u, 11u)]), arg_1), arg_1.c.x, false).d.d), ~vec2<u32>(0u, ~35709u), func_2(select(arg_1.c.zz, !arg_1.c.zx, arg_0), Struct_2(_wgslsmith_f_op_f32(-832f + -632f), arg_1.c, vec4<f32>(global1.x, global1.x, 432f, global1.x), func_2(arg_1.c.zz, Struct_2(753f, vec3<bool>(arg_0, arg_1.c.x, false), vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], arg_1.a, 1229f, -525f), Struct_1(global1.x, arg_1.b, vec3<bool>(true, arg_0, false), 3618u, 1418f)), false, arg_1.c.x).d), !(global1.x <= 206f), false)));
    global0 = array<f32, 11>();
    var var_1 = -2147483647i;
    let var_2 = vec2<u32>(var_0.d.d.d.d, u_input.b);
    return abs(~select(~select(vec4<u32>(1u, 0u, arg_1.d, u_input.a), vec4<u32>(var_2.x, 1u, var_2.x, 1u), false), vec4<u32>(reverseBits(var_2.x), max(arg_1.d, 4082u), var_2.x, _wgslsmith_div_u32(1u, var_2.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -583f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, global1.x)))))));
    let var_1 = vec2<u32>(~_wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 2796u, 48591u, 4294967295u), vec4<u32>(u_input.b, u_input.a, 125186u, 4294967295u)), func_1(false, Struct_1(global1.x, 19855i, vec3<bool>(false, true, var_0), 50845u, 297f)))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 25995u, 23606u, 25361u), vec4<u32>(u_input.a, u_input.b, 1u, 22364u)), ~vec4<u32>(4294967295u, 24554u, u_input.a, u_input.a)), u_input.a));
    let var_2 = abs(-54651i);
    var var_3 = ~(~0i);
    let var_4 = Struct_3(_wgslsmith_dot_vec2_u32(var_1, ~vec2<u32>(_wgslsmith_div_u32(0u, var_1.x), abs(u_input.b))), ~(var_1 & vec2<u32>(~u_input.a, 1u)), var_1 | var_1, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.x))))), !func_2(vec2<bool>(true, true), Struct_2(global0[_wgslsmith_index_u32(var_1.x, 11u)], vec3<bool>(true, var_0, true), vec4<f32>(771f, 729f, 286f, 1233f), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 11u)], var_2, vec3<bool>(true, var_0, var_0), var_1.x, 584f)), true, false).b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, -267f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 11u)], global1.x))), global1.x, global1.x), Struct_1(global1.x, var_2 << (abs(4090u) % 32u), !(!vec3<bool>(var_0, true, var_0)), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * 702f))));
    let var_5 = Struct_5(var_4.d.d.c.x, -1201f, max(~(~vec4<i32>(var_2, 2147483647i, var_4.d.d.b, var_2) << (vec4<u32>(var_1.x, u_input.b, u_input.a, var_4.d.d.d) % vec4<u32>(32u))), min(select(vec4<i32>(var_4.d.d.b, -2147483647i, var_2, var_4.d.d.b) & vec4<i32>(var_2, 0i, var_2, var_2), firstLeadingBit(vec4<i32>(1i, -2147483647i, 19229i, var_2)), !vec4<bool>(false, true, var_4.d.b.x, true)), vec4<i32>(var_2, -38747i, var_2, var_4.d.d.b) << (vec4<u32>(8505u, var_4.d.d.d, 78627u, 4294967295u) % vec4<u32>(32u)))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.d.a - global0[_wgslsmith_index_u32(4294967295u, 11u)]), global1.x), !func_2(vec2<bool>(false, true), Struct_2(var_4.d.d.a, vec3<bool>(true, var_0, false), vec4<f32>(248f, -1631f, -528f, global1.x), Struct_1(var_4.d.d.a, var_2, vec3<bool>(false, var_0, var_0), 86424u, 445f)), true, true).d.c, var_4.d.c, var_4.d.d));
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_4.a, 4294967295u, abs(4294967295u), 116820u), ~abs(select(vec4<u32>(4294967295u, 28052u, var_5.d.d.d, var_5.d.d.d), vec4<u32>(var_5.d.d.d, var_5.d.d.d, var_4.d.d.d, var_5.d.d.d), true))), 4294967295u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(countOneBits(var_5.d.d.d), 1u), 120590u), abs(vec2<u32>(9797u, ~4294967295u))));
}

