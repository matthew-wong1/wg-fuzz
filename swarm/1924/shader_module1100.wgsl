struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, false, true, false, false, false, false, false);

var<private> global1: array<Struct_2, 4>;

var<private> global2: vec3<i32> = vec3<i32>(-14316i, 0i, 0i);

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: u32) -> vec4<bool> {
    let var_0 = vec2<bool>(all(vec3<bool>(global3.c, false, global0[_wgslsmith_index_u32(53224u ^ arg_1, 22u)] | global3.c)), true);
    global0 = array<bool, 22>();
    var var_1 = abs(arg_0.wy);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -435f);
    let var_3 = !(!select(select(vec3<bool>(global3.c, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 22u)], false, true), var_0.x), select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, true))), select(!vec3<bool>(var_0.x, false, global3.c), vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(61289u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(true, true, true)), false));
    return !select(select(select(!vec4<bool>(var_0.x, global3.c, var_0.x, false), select(vec4<bool>(var_3.x, var_0.x, global3.c, global0[_wgslsmith_index_u32(arg_3, 22u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(145455u, 22u)], false, var_0.x), vec4<bool>(global3.a, false, true, var_0.x)), !global0[_wgslsmith_index_u32(arg_0.x, 22u)]), !vec4<bool>(true, false, true, global3.c), global3.a), vec4<bool>(true, true, true, !(!var_3.x)), global3.c && !any(vec4<bool>(false, var_0.x, var_3.x, var_0.x)));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global0 = array<bool, 22>();
    var var_0 = select(vec4<bool>(!(global3.a | all(vec3<bool>(false, global3.c, true))), select(all(vec3<bool>(global3.a, global0[_wgslsmith_index_u32(17930u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])) && true, global3.a, global3.a), global3.c, true), func_3(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 31265u, ~0u), vec4<u32>(0u << (0u % 32u), _wgslsmith_clamp_u32(1802u, 33291u, 4294967295u), ~0u, 1u)), abs(_wgslsmith_div_u32(~11195u, _wgslsmith_mult_u32(37205u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.d.x)) - global3.b.x), firstLeadingBit(1u)), all(select(select(!vec4<bool>(global3.a, global3.c, global3.c, true), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(6902u, 22u)], false), vec4<bool>(false, true, false, global3.c), global0[_wgslsmith_index_u32(4294967295u, 22u)]), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(0u, 22u)], true), global0[_wgslsmith_index_u32(1u, 22u)] || any(vec3<bool>(false, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(182f - global3.b.x))));
    var var_2 = global3.b.x;
    var var_3 = global1[_wgslsmith_index_u32(~(~22173u) << (min(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31102u, 46601u, 12751u), vec3<u32>(0u, 1u, 19076u)), 4294967295u) | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15328u, 1u), vec3<u32>(1u, 16817u, 0u)), ~1508u), _wgslsmith_dot_vec4_u32(~vec4<u32>(47731u, 10223u, 0u, 3718u), vec4<u32>(1u, 1u, 1u, 1u)) << (1444u % 32u)) % 32u), 4u)];
    return vec4<bool>(true, true, global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(1u)), 22u)], !(!global0[_wgslsmith_index_u32(~4294967295u, 22u)]));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<bool, 22>();
    var var_0 = any(!func_2((global3.e.x & global2.x) >> (~1u % 32u)));
    global3 = Struct_1(true, vec3<f32>(141f, 771f, 1450f), func_3(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22577u, 3050u, 35231u), vec4<u32>(0u, 1u, 16906u, 0u)), _wgslsmith_mod_u32(36966u, 1u), 1u, ~1u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(14850u, 0u), 21891u, 27558u), firstTrailingBit(1u)), -638f, ~select(25560u, 0u, global3.c) | ~_wgslsmith_sub_u32(16350u, 1u)).x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-110f - global3.b.x), global3.d.x, true)), _wgslsmith_f_op_f32(-global3.b.x)) - global3.b), ~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, global3.e.x, global3.e.x)), global3.e, vec3<i32>(max(29065i, u_input.a.x), -1i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    var_0 = global3.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f))) >= 1192f, global3.b, false, vec3<f32>(_wgslsmith_div_f32(-406f, -108f), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1101f))))))), -(~select(u_input.a.zyz & vec3<i32>(0i, 14609i, 31869i), _wgslsmith_sub_vec3_i32(global3.e, u_input.a.zwx), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, true))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = array<bool, 22>();
    let var_0 = u_input.a;
    global2 = abs(var_0.yzy);
    var var_1 = min(arg_2.e.xz, select(var_0.zz, u_input.a.zw, arg_2.a));
    global2 = -vec3<i32>(arg_2.e.x, arg_1.e.x, ~arg_1.e.x);
    return arg_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(!select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], global3.a), vec3<bool>(global3.a, false, global3.c), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(true, global3.c, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.d)))), 12848u >= ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(80917u, 70445u, 1u, 18482u), vec4<u32>(77277u, 4129u, 20257u, 31291u))), global3.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 48303i, func_4(func_1(-6014i), Struct_1(global0[_wgslsmith_index_u32(0u, 22u)], global3.d, global0[_wgslsmith_index_u32(0u, 22u)], vec3<f32>(2546f, 1071f, -184f), vec3<i32>(u_input.a.x, global2.x, global2.x)), func_1(0i), true)), ~_wgslsmith_add_vec3_i32(~u_input.a.xxy, vec3<i32>(global2.x, u_input.a.x, -4364i)), u_input.a.xwx << (~_wgslsmith_div_vec3_u32(vec3<u32>(48719u, 61074u, 62594u), vec3<u32>(35150u, 83158u, 4294967295u)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(9194u, ~1u, ~_wgslsmith_clamp_u32(1u, 80072u, 1u), 25730u), vec4<u32>(1u, max(firstLeadingBit(~1u), _wgslsmith_div_u32(1u, 1u)), ~reverseBits(0u), ~(~4294967295u)), ~vec4<u32>(1u, 1u, 1u, 1u));
    global2 = u_input.a.yzy;
    let var_2 = firstLeadingBit(4294967295u);
    global3 = func_1(0i);
    var var_3 = var_0.b;
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    var var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_div_vec2_u32(var_1.wy, ~select(vec2<u32>(2761u, 4294967295u), firstTrailingBit(vec2<u32>(4294967295u, var_1.x)), var_3.x >= -800f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global3.d, var_0.d)))) - vec3<f32>(_wgslsmith_f_op_f32(1381f + _wgslsmith_f_op_f32(-1459f * var_0.d.x)), 741f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.b.x + 1205f))))), select(_wgslsmith_sub_u32(~0u, 1u ^ (var_1.x >> (var_1.x % 32u))), 1u & _wgslsmith_mod_u32(~var_2, ~55810u), global3.d.x < _wgslsmith_f_op_f32(f32(-1f) * -832f)));
}

