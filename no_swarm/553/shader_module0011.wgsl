struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), 1i), -39363i, false, 1u);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global2 = array<Struct_1, 18>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 18u)];
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1631f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -967f))))));
    let var_1 = 0u;
    var var_2 = 36506u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, -1000f))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, global1.x), vec2<f32>(-659f, -1950f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1727f + 724f))) * global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(min(u_input.a, ~(~(~29851u))), 18u)], ~countOneBits(~vec3<u32>(4294967295u, u_input.a, u_input.d)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1397f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -2416f) * _wgslsmith_f_op_f32(-global1.x)) + -1285f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, 1000f, 561f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_0.x, global1.x, arg_0.x, -417f))))));
    let var_1 = _wgslsmith_mod_i32(-5181i, select(reverseBits(2147483647i), 15977i, !(!global3.x) & !global0.c));
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(-6812i, ~2147483647i, firstTrailingBit(-2147483647i));
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_f32(-1000f + 409f);
    return var_4;
}

fn func_4(arg_0: f32) -> vec3<bool> {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_2 = vec3<bool>(false || select(~25181i >= min(1i, u_input.c.x), true, true), !(!(!global0.c)), global3.x);
    let var_3 = 4294967295u;
    var var_4 = global0.a.xzx;
    return vec3<bool>(true, var_4.x != _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_4.x, -2147483647i, -19866i, global0.a.x), u_input.c)), select(-u_input.c, global0.a, select(vec4<bool>(var_2.x, global3.x, var_2.x, false), vec4<bool>(true, global0.c, global0.c, false), true))), any(vec2<bool>(!(u_input.b < 17538u), !(var_2.x && true))));
}

fn func_1(arg_0: i32) -> bool {
    global3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<f32>(global1.x, global1.x, global1.x, 1843f), u_input.c.x)), _wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.x))))));
    var var_0 = vec2<bool>(all(vec4<bool>(!global3.x == global0.c, all(global3.zy), all(!global3.xy), false)), global3.x);
    global0 = Struct_1(vec4<i32>(14084i << (1u % 32u), 2147483647i << (firstTrailingBit(u_input.a >> (global0.d % 32u)) % 32u), -(9492i | arg_0), 1i), ~_wgslsmith_mult_i32(~(-1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 31666u, 0u), vec3<u32>(93120u, 42236u, global0.d)) % 32u), min(~(-10456i), -1i)), global0.d == ~_wgslsmith_sub_u32(~828u, 24932u), 4294967295u ^ select(1u, _wgslsmith_mult_u32(u_input.a, abs(global0.d)), any(vec4<bool>(global3.x, global3.x, false, true)) && (global3.x == true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -280f, 607f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, 1017f, global1.x, 2450f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(699f, global1.x, global1.x, 1400f) * vec4<f32>(-479f, -680f, global1.x, global1.x))))) - vec4<f32>(-1006f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -316f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1.x)))))), _wgslsmith_f_op_f32(global1.x * -740f)));
    let var_2 = var_1;
    return any(!(!select(vec3<bool>(false, false, global3.x), vec3<bool>(true, true, true), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(!func_1(reverseBits(34050i)), all(!vec2<bool>(global3.x, global3.x))), vec2<bool>(global3.x, true), global3.zz);
    global0 = global2[_wgslsmith_index_u32(global0.d | ~23492u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

