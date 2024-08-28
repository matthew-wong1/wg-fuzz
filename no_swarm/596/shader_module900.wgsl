struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: array<Struct_1, 6>;

var<private> global3: vec3<u32>;

var<private> global4: array<u32, 10> = array<u32, 10>(33863u, 4294967295u, 43910u, 0u, 4294967295u, 47791u, 1u, 4294967295u, 20525u, 59897u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    global1 = true;
    let var_0 = _wgslsmith_f_op_f32(-3430f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-113f * 914f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(394f - 393f), _wgslsmith_f_op_f32(f32(-1f) * -458f), !arg_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -367f), select(true, true, any(arg_0)))));
    let var_1 = 41163i;
    global1 = arg_0.x;
    var var_2 = var_1;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-418f, -673f, 595f, var_0), vec4<f32>(-1286f, var_0, 504f, 833f), vec4<bool>(false, true, arg_0.x, arg_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(-1642f)), _wgslsmith_div_f32(-660f, var_0), _wgslsmith_f_op_f32(var_0 - -374f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: f32) -> vec4<f32> {
    global1 = any(vec2<bool>(true, false));
    var var_0 = Struct_2(arg_0.a);
    var var_1 = -59163i;
    global2 = array<Struct_1, 6>();
    var_0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true || any(vec4<bool>(false, true, false, true)), true))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2100f, 886f)), _wgslsmith_f_op_f32(floor(arg_3)), _wgslsmith_f_op_vec4_f32(func_3(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))).x), vec4<f32>(arg_3, _wgslsmith_f_op_f32(237f + _wgslsmith_f_op_f32(abs(-1929f))), -197f, -246f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<u32>(arg_3, global3.x, 1u, arg_2.b.x)), max(global3.x, arg_2.b.x), i32(-1i) * -1i, _wgslsmith_f_op_f32(f32(-1f) * -460f))))) * vec4<f32>(1366f, _wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<u32>(global3.x, arg_2.b.x, arg_3, u_input.a)), arg_3, 1i, _wgslsmith_f_op_f32(-arg_2.a))).x, -1048f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + 843f)))));
    global4 = array<u32, 10>();
    global4 = array<u32, 10>();
    var var_1 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, !any(vec4<bool>(arg_1.x, arg_1.x, arg_0.x, arg_1.x)), true), !(!vec4<bool>(arg_0.x, arg_1.x, arg_1.x, true)), !select(!vec4<bool>(true, arg_0.x, arg_1.x, false), !vec4<bool>(false, arg_1.x, arg_1.x, true), !arg_1.x)), vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(arg_1.x, arg_0.x), vec2<bool>(true, true)), vec2<bool>(arg_0.x, false), vec2<bool>(false, true))), any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(arg_1.x, arg_1.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_1.x, arg_1.x, arg_0.x), arg_0.x), !arg_1.x)), true, true & !all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), vec4<bool>(any(!(!vec3<bool>(false, arg_1.x, arg_1.x))), arg_1.x, arg_0.x, arg_0.x | !(!arg_0.x)));
    let var_2 = -50582i;
    return Struct_2(vec4<u32>(31399u, ~1u << (~max(arg_2.b.x, 63003u) % 32u), global4[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(83283u, 10u)] & global3.x, _wgslsmith_dot_vec3_u32(arg_2.c.xxx, vec3<u32>(arg_3, arg_3, global3.x)), arg_3, 85464u), vec4<u32>(_wgslsmith_dot_vec2_u32(global3.xx, vec2<u32>(arg_2.c.x, 38536u)), _wgslsmith_add_u32(arg_3, 4294967295u), arg_3, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(31957u, 10u)], u_input.a)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = i32(-1i) * -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -55290i, 39009i, -1i)), ~vec4<i32>(30988i, 0i, -8439i, 18009i));
    global1 = any(vec4<bool>(true, true, true, true));
    var var_1 = vec4<bool>(!any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, (-1i != var_0) && true)), select((~var_0 != 4598i) & false, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))));
    let var_2 = ~(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, global4[_wgslsmith_index_u32(6376u, 10u)], 1u)), _wgslsmith_mult_vec3_u32(arg_0.a.yyz, arg_3.a.xyw >> (arg_0.a.wzz % vec3<u32>(32u)))));
    let var_3 = reverseBits(16423u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1384f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, 984f)), -1092f)))), -2044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(~vec4<u32>(44115u, 10565u, 81099u, global3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2205f)))), Struct_1(_wgslsmith_f_op_f32(1027f * -603f), ~vec3<u32>(4294967295u, u_input.a, global4[_wgslsmith_index_u32(1u, 10u)]), vec4<u32>(0u, global3.x, global4[_wgslsmith_index_u32(5721u, 10u)], 1u) >> (vec4<u32>(global4[_wgslsmith_index_u32(1u, 10u)], 57694u, 1u, 4095u) % vec4<u32>(32u))), func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), Struct_1(-613f, vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec4<u32>(4294967295u, global3.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20627u, 10u)], 10u)], 93893u)), global3.x)))));
    let var_1 = ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(37784u, 10u)], 36114u), vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(0u, 10u)])))) & select(abs(~vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 10u)], 32998u)) & global3.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(26440u, global4[_wgslsmith_index_u32(global3.x, 10u)]), u_input.a & 14776u), ~vec2<u32>(49814u, 27480u)), all(vec4<bool>(true, true, var_0.x > var_0.x, true)));
    var var_2 = global3.xz & vec2<u32>(global3.x, u_input.a);
    let var_3 = global2[_wgslsmith_index_u32(abs(u_input.a) ^ 5170u, 6u)];
    global0 = false;
    let var_4 = func_1(!select(vec2<bool>(any(vec4<bool>(true, true, false, false)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, min(_wgslsmith_dot_vec3_i32(vec3<i32>(18411i, -1i, -2147483647i), vec3<i32>(14524i, -23267i, 17353i)), -2106i << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_3.c.x, 10u)], 10u)] % 32u)) < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-3850i, -8093i, 0i, 26478i))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_mult_vec3_u32(var_3.c.zyy, _wgslsmith_mod_vec3_u32(var_3.c.zyw, ~var_3.b)), ~(~var_3.c & vec4<u32>(var_3.c.x, 26929u, 37451u, 61199u))), ~(var_3.b.x << (abs(firstLeadingBit(u_input.a)) % 32u)));
    global1 = true;
    let var_5 = 4294967295u;
    var_2 = ~_wgslsmith_sub_vec2_u32(~var_4.a.xy, select(~(~var_3.c.yx), ~(var_3.c.ww << (global3.zx % vec2<u32>(32u))), any(vec3<bool>(false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1122f, _wgslsmith_f_op_f32(max(var_0.x, -749f)))), 18231i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(round(-1729f))) + var_3.a)), var_0.zz);
}

