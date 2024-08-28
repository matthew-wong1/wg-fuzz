struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(false, -128f, vec2<bool>(true, true));

var<private> global2: f32 = 1519f;

var<private> global3: array<u32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global3 = array<u32, 13>();
    var var_0 = arg_2.a;
    let var_1 = global1.c;
    var var_2 = _wgslsmith_clamp_i32(~45912i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, i32(-1i) * -1i, ~(-2147483647i)), max(vec3<i32>(arg_1, 1i, u_input.a.x), vec3<i32>(55068i, 8170i, u_input.c)))), u_input.c);
    var var_3 = arg_2;
    return -377f;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = vec2<i32>(u_input.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), u_input.a), u_input.c, u_input.c), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, -26730i, u_input.a.x, u_input.c)), vec4<i32>(u_input.a.x, u_input.a.x, 16648i, -978i))), u_input.a.x, u_input.a.x));
    let var_1 = true;
    var var_2 = -481f;
    let var_3 = arg_3;
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1029f, 697f, var_3.b, -311f), vec4<f32>(global1.b, 1000f, 1573f, var_3.b)))), vec4<f32>(_wgslsmith_f_op_f32(-125f - arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -288f), arg_0.b, var_3.b)))));
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    let var_0 = -vec2<i32>(-2147483647i >> (~(~1u) % 32u), u_input.c);
    var var_1 = vec4<bool>((all(vec3<bool>(arg_0.a, global1.a, true)) && global1.c.x) | true, arg_0.a || false, false, false);
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_1)), _wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b, 32373u), -2147483647i, Struct_1(true, 946f, vec2<bool>(true, true))))) + _wgslsmith_f_op_f32(func_2(max(vec3<u32>(u_input.b, 0u, global3[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<u32>(u_input.b, 0u, global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_div_i32(-63744i, -2147483647i), arg_0)))));
    global1 = Struct_1(!all(arg_0.c), arg_0.b, !vec2<bool>(arg_0.a, !arg_0.a));
    return StorageBuffer(func_3(Struct_1(all(!var_1.xzw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(941f + -725f), _wgslsmith_f_op_f32(var_3.x + global1.b))), vec2<bool>(arg_0.c.x, global1.b <= 667f)), select(arg_0.c, !var_1.yx, !vec2<bool>(false, global1.a)), !vec2<bool>(true, var_1.x & var_1.x), Struct_1((global3[_wgslsmith_index_u32(u_input.b, 13u)] < 1u) && (-1372f != var_3.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(var_3.x - var_3.x))), !var_1.wy)), select(~select(vec3<i32>(var_2, var_2, -31125i), vec3<i32>(2147483647i, var_0.x, -1i), false) | select(-vec3<i32>(-3606i, var_0.x, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, var_0.x), vec3<i32>(2147483647i, u_input.c, var_0.x)), var_1.x), -(~select(vec3<i32>(var_0.x, -2147483647i, -1i), vec3<i32>(u_input.c, u_input.c, var_0.x), arg_0.c.x)), any(select(select(vec3<bool>(var_1.x, false, true), var_1.xyx, global1.c.x), select(var_1.wzw, vec3<bool>(arg_0.a, arg_0.a, var_1.x), vec3<bool>(arg_0.a, global1.a, arg_0.c.x)), select(var_1.xzx, var_1.wyw, arg_0.a)))), vec3<i32>(var_0.x, var_2, var_2), u_input.b, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b) > ~(~global3[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1811f * 721f))))), global1.c), _wgslsmith_f_op_f32(987f + _wgslsmith_f_op_f32(ceil(global1.b))));
}

