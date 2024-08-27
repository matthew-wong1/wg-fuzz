struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<bool>, 16>;

var<private> global2: vec2<bool>;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(vec3<u32>(~1u, 1u, 28834u), -219f);
    var var_1 = vec2<i32>(-47246i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 35846i), _wgslsmith_add_vec2_i32(select(vec2<i32>(21443i, 4927i), vec2<i32>(1i, u_input.c), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, u_input.c))))) ^ ~(~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.c, u_input.c)), -vec2<i32>(78140i, 1i)));
    var var_2 = !vec4<bool>(false, arg_0.x, !(307f == _wgslsmith_f_op_f32(global0.x + arg_1.b)), true && (false & global2.x));
    var_1 = select(-vec2<i32>(13957i, -2147483647i), -_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_1.x, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(var_1.x, 21776i))), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(var_1.x, 0i)) >> (firstLeadingBit(var_0.a.xz) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(-vec2<i32>(19280i, u_input.c), vec2<i32>(u_input.c, u_input.c))), true);
    global3 = any(!select(vec3<bool>(true, all(vec2<bool>(global2.x, var_2.x)), any(vec4<bool>(true, false, false, false))), select(vec3<bool>(false, true, global2.x), vec3<bool>(var_2.x, global2.x, arg_0.x), vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, true))));
    return var_0.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = max(abs(u_input.a.x), u_input.a.x);
    let var_1 = -1053f;
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global0.x, -642f) * vec3<f32>(464f, 695f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 746f, -1312f))))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1, 159f)), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), Struct_2(vec3<u32>(u_input.a.x, u_input.d.x, 0u), var_1))))), -421f, var_1))));
    global2 = arg_0;
    var var_2 = !vec3<bool>(true, !arg_0.x && all(select(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], vec2<bool>(global2.x, global2.x), true)), -(~(-8599i)) >= _wgslsmith_dot_vec4_i32(~vec4<i32>(11934i, u_input.c, arg_2, 31153i), -vec4<i32>(arg_2, -2147483647i, u_input.c, -11280i)));
    return _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(-global0.x)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(21118u, 16u)], global0.x, -33655i))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(func_2(!select(global1[_wgslsmith_index_u32(~u_input.a.x, 16u)], global1[_wgslsmith_index_u32(~u_input.b.x, 16u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -(u_input.c ^ ~36862i))), _wgslsmith_f_op_f32(-global0.x));
    let var_0 = Struct_2(_wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(~u_input.a.x, ~42171u, 1u) | vec3<u32>(_wgslsmith_sub_u32(arg_0, 1u), max(u_input.d.x, u_input.b.x), countOneBits(u_input.d.x))), global0.x);
    let var_1 = Struct_1(countOneBits(-vec2<i32>(u_input.c, u_input.c) ^ reverseBits(vec2<i32>(-10738i, u_input.c))), !global2.x);
    global3 = global2.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~_wgslsmith_mult_u32(_wgslsmith_add_u32(78170u, u_input.d.x), 0u)));
    var var_1 = -_wgslsmith_sub_i32(~_wgslsmith_sub_i32(35644i, 1i), u_input.c) | -(~1i);
    let var_2 = global2.x;
    let var_3 = var_0.a;
    var var_4 = Struct_2(abs(select(~var_0.a, countOneBits(select(u_input.a, var_3, vec3<bool>(global2.x, false, global2.x))), !all(global1[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1265f));
    let var_5 = _wgslsmith_div_u32(_wgslsmith_div_u32(var_3.x, abs(~_wgslsmith_clamp_u32(var_3.x, 49144u, var_3.x))), u_input.d.x);
    var var_6 = global2.x;
    let var_7 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1928f, var_0.b, 1318f, var_0.b)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, global0.x, 960f, 488f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1639f, -1134f, global0.x)))))), _wgslsmith_mult_vec2_u32(var_4.a.xx, vec2<u32>(var_5, 4294967295u)), countOneBits(2147483647i));
}

