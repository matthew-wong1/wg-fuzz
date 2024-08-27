struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, false, false, false, false, true, false, true, true, false, true, true, false, true, true, true, false, true, false, false, true, true, true, false, true, false, false, false, true);

var<private> global1: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    global1 = !select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 32u)] && any(global1.ywx), false, global0[_wgslsmith_index_u32(4294967295u, 32u)]), !select(!vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(0u, 32u)], global1.x), select(vec4<bool>(false, false, global1.x, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 32u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], false, global1.x, false)), select(vec4<bool>(false, global1.x, global1.x, global0[_wgslsmith_index_u32(6848u, 32u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 32u)], true), false)), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global1.x, false, true)), all(select(vec2<bool>(false, false), global1.zx, global1.ww)), all(!global1.yzx), false));
    return vec3<u32>(firstTrailingBit(~firstLeadingBit(min(u_input.b, 1u))), ~countOneBits(~u_input.d.x ^ (u_input.d.x ^ 0u)), u_input.b);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_0, func_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(16603i, u_input.a.x)))), arg_0);
    var var_2 = ~var_1.x;
    var var_3 = firstLeadingBit(~vec4<i32>(u_input.a.x, reverseBits(17507i), u_input.a.x << (var_1.x % 32u), -2147483647i) >> (~vec4<u32>(5356u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, 64831u), vec4<u32>(4294967295u, var_1.x, u_input.b, arg_0.x)), ~0u, ~arg_0.x) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, 1000f, 1323f, -719f)))), vec4<f32>(_wgslsmith_f_op_f32(219f + 797f), _wgslsmith_f_op_f32(626f - -341f), -903f, -1591f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-1173f - -567f), _wgslsmith_div_f32(-2446f, 809f), _wgslsmith_f_op_f32(f32(-1f) * -520f)) * vec4<f32>(_wgslsmith_f_op_f32(floor(-190f)), _wgslsmith_f_op_f32(trunc(-366f)), -125f, _wgslsmith_div_f32(-1152f, 902f)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-888f, -1098f) * -379f) - var_4.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, var_4.x, -615f)), vec4<f32>(-755f, 2382f, var_4.x, var_4.x)))), _wgslsmith_mult_i32(u_input.a.x & -34721i, _wgslsmith_mod_i32(19026i, _wgslsmith_div_i32(var_3.x, -u_input.a.x))), 12139u);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = func_2(~_wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(3880u, 1u, 0u), vec3<u32>(u_input.d.x, u_input.c, u_input.b), vec3<bool>(true, false, false))), countOneBits(vec3<u32>(u_input.b, 39195u, 4294967295u))));
    let var_1 = func_2(~(~((vec3<u32>(96727u, 4786u, u_input.b) ^ vec3<u32>(var_0.d, var_0.d, 19647u)) ^ firstTrailingBit(vec3<u32>(47778u, 0u, var_0.d)))));
    var_0 = func_2(countOneBits(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 7004u, 15571u) | vec3<u32>(93286u, var_1.d, var_0.d), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.c), vec3<u32>(4294967295u, var_1.d, var_1.d))))));
    var var_2 = func_2(abs(_wgslsmith_sub_vec3_u32(~(vec3<u32>(4294967295u, u_input.b, var_1.d) | vec3<u32>(var_1.d, 4294967295u, 0u)), vec3<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 89223u, 4294967295u, u_input.d.x), vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u)), _wgslsmith_div_u32(u_input.d.x, var_0.d)))));
    var var_3 = var_1;
    return all(vec4<bool>(!(-623f <= var_0.a), !global1.x, true, !any(global1.zyz))) || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xy | vec2<i32>(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 55586i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, -1894i)), ~u_input.a.x, u_input.a.x), firstTrailingBit((u_input.a.x ^ 2147483647i) << ((u_input.c << (3904u % 32u)) % 32u)));
    let var_1 = global1.x;
    global1 = select(select(!vec4<bool>(func_1(false), select(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global1.x, global0[_wgslsmith_index_u32(u_input.b, 32u)]), true, select(global0[_wgslsmith_index_u32(u_input.b, 32u)], true, global1.x)), vec4<bool>(true || (true | global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(u_input.c, 32u)] | true, global0[_wgslsmith_index_u32(338u, 32u)], global0[_wgslsmith_index_u32(min(countOneBits(u_input.b), ~3668u), 32u)]), global0[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(any(global1.yx), !(!global0[_wgslsmith_index_u32(u_input.c, 32u)]), true, global0[_wgslsmith_index_u32(~(~60359u), 32u)]), vec4<bool>(true, true, -(~u_input.a.x) == min(-u_input.a.x, _wgslsmith_div_i32(2147483647i, var_0.x)), global0[_wgslsmith_index_u32(u_input.c, 32u)]));
    var var_2 = func_2(~firstLeadingBit(vec3<u32>(1u, reverseBits(u_input.c), _wgslsmith_div_u32(0u, 20915u))));
    global1 = !select(!(!(!vec4<bool>(false, global1.x, false, false))), vec4<bool>(true || (global0[_wgslsmith_index_u32(1u, 32u)] || global1.x), !any(global1.yzz), func_1(!global1.x), !(var_2.d >= var_2.d)), !select(select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], false, global0[_wgslsmith_index_u32(4294967295u, 32u)], true), false), select(vec4<bool>(true, false, global1.x, true), vec4<bool>(false, false, false, global1.x), global1.x), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global1.x, global0[_wgslsmith_index_u32(110095u, 32u)], false), vec4<bool>(true, true, global1.x, true), global1.x)));
    var_2 = func_2(min(~vec3<u32>(var_2.d, _wgslsmith_mod_u32(var_2.d, var_2.d), ~4294967295u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, u_input.b, 1u, 70569u) | vec4<u32>(u_input.d.x, 0u, 4294967295u, var_2.d), ~vec4<u32>(46323u, var_2.d, u_input.d.x, var_2.d)), 92777u, abs(~u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 38867u, u_input.c, var_2.d), vec4<u32>(var_2.d, var_2.d, u_input.b, var_2.d)), max(vec4<u32>(1u, 26796u, 34872u, 1u), vec4<u32>(36359u, 4294967295u, 29323u, var_2.d))), vec4<u32>(u_input.b, 94952u, 34962u, 0u) >> (firstLeadingBit(vec4<u32>(50790u, u_input.b, 1u, 4294967295u)) % vec4<u32>(32u))));
}

