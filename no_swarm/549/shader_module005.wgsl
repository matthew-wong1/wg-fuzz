struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<vec4<f32>, 32>;

var<private> global2: f32 = -1000f;

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: bool) -> bool {
    global0 = array<vec2<bool>, 28>();
    let var_0 = vec3<i32>(-1i) * -u_input.a;
    let var_1 = !(_wgslsmith_div_f32(603f, _wgslsmith_f_op_f32(f32(-1f) * -1350f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(547f * -423f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(696f + global3.c) * global3.c)));
    let var_2 = Struct_1(vec3<bool>(1113f >= _wgslsmith_f_op_f32(abs(global3.c)), any(!select(vec4<bool>(arg_1, arg_0, true, var_1), vec4<bool>(arg_1, false, true, true), true)), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(u_input.c, vec2<u32>(u_input.b.x, 1u)), abs(u_input.c)), 28u)])), !(!(!arg_1)), -275f);
    let var_3 = Struct_1(select(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b.x), u_input.c.x), abs(u_input.c.x)), 29u)], vec3<bool>(!global3.b, true || !var_1, _wgslsmith_f_op_f32(-global3.c) != global3.c), true), var_1, _wgslsmith_f_op_f32(-237f * var_2.c));
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    let var_0 = any(vec3<bool>(func_2(arg_2.x, true), true, false));
    global1 = array<vec4<f32>, 32>();
    var var_1 = -222i;
    let var_2 = arg_1;
    let var_3 = -abs(-47245i);
    return -(var_3 ^ (min(min(25250i, u_input.a.x), 20970i) & min(-1308i, -1i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = vec2<u32>(u_input.b.x, 4294967295u);
    global1 = array<vec4<f32>, 32>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 39843i), u_input.a.xx) ^ ~_wgslsmith_mod_i32((arg_2.x << (var_0.x % 32u)) << (~u_input.c.x % 32u), 1i);
    var var_2 = abs(firstTrailingBit(vec4<u32>(~27860u, ~(~u_input.c.x), _wgslsmith_add_u32(select(var_0.x, u_input.c.x, true), ~u_input.b.x), 18548u)));
    let var_3 = arg_3;
    return vec2<i32>(1i, select(50364i, var_1 >> (1u % 32u), false)) ^ select(arg_2.wy, arg_2.yy, var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(17501i, ~(i32(-1i) * -53788i)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c, global3.c))), Struct_1(select(vec3<bool>(false, global3.a.x, true), vec3<bool>(true, false, global3.b), vec3<bool>(global3.a.x, global3.b, global3.b)), false, _wgslsmith_f_op_f32(round(1000f))), global0[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_mult_u32(~4294967295u, 1u))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(var_0.x, -2147483647i, -256i, var_0.x)), ~countOneBits(vec4<i32>(-2147483647i, var_0.x, var_0.x, u_input.a.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.zy), vec2<i32>(1034i, u_input.a.x)), firstLeadingBit(-13426i), countOneBits(firstTrailingBit(10349i)), 42120i)), 1i);
    let var_2 = select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(2874f)), _wgslsmith_div_f32(global3.c, -889f), _wgslsmith_f_op_f32(f32(-1f) * -1287f))), Struct_1(global3.a, global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-428f, -1000f))), vec4<i32>(1i, 1i | abs(var_1), var_1, max(-2147483647i, -22506i & var_0.x)), Struct_1(!vec3<bool>(true, global3.a.x, global3.b), global3.b, -970f)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -(~2147483647i)), (vec2<i32>(var_0.x, 29130i) ^ var_0.zz) >> (u_input.b.xy % vec2<u32>(32u))), global0[_wgslsmith_index_u32(u_input.c.x, 28u)]);
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.c)), 1177f), global3.c));
    var var_3 = 0u <= u_input.c.x;
    var var_4 = Struct_1(global3.a, !all(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x)), _wgslsmith_mult_u32(u_input.c.x, u_input.b.x)), 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-186f + -1422f)) + global3.c));
    var var_5 = Struct_1(select(!vec3<bool>(all(vec3<bool>(true, true, global3.a.x)), global3.a.x, var_4.a.x | false), vec3<bool>(var_4.a.x, (global3.c < 940f) && true, ~0u != select(u_input.b.x, u_input.b.x, var_4.a.x)), !global4[_wgslsmith_index_u32((13879u >> (u_input.b.x % 32u)) >> (u_input.b.x % 32u), 29u)]), true || var_4.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(sign(global3.c)))), var_4.c)));
    var var_6 = var_5.b | any(select(select(!vec4<bool>(true, true, global3.a.x, true), !vec4<bool>(true, var_5.b, false, true), true), vec4<bool>(-25053i != u_input.a.x, 55024i <= var_1, false, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(0i | firstTrailingBit(var_2.x), 0i) | var_0.x, _wgslsmith_mod_u32(u_input.c.x, abs(1u)));
}

