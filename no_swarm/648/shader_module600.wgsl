struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<Struct_3, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec4<bool> {
    global1 = array<Struct_3, 23>();
    let var_0 = Struct_1(true, u_input.d, -50105i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-809f))))), arg_0.wy << (~min(select(vec2<u32>(u_input.e, 1u), vec2<u32>(13171u, 27819u), true), ~u_input.c.xx) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_sub_u32(arg_1, 0u);
    var_1 = 4294967295u;
    global0 = array<bool, 13>();
    return vec4<bool>(var_0.a, true | !var_0.a, true, var_0.e.x < (_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.xx, var_0.e), 0i & u_input.b) ^ -2147483647i));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_3(true);
    var var_1 = vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], any(vec3<bool>(false, true, false)) || all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true)))), all(func_3(vec4<i32>(_wgslsmith_div_i32(-2844i, u_input.a.x), -50819i, 1i, 37991i), 110390u)), true || global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~43448u, 18995u), 13u)]);
    let var_2 = Struct_1((true && select(true, select(true, var_1.x, false), true)) != (firstLeadingBit(max(70338u, u_input.e)) == u_input.e), _wgslsmith_clamp_vec3_i32(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 1i), u_input.d), -vec3<i32>(u_input.d.x, u_input.d.x, 0i), !var_0.a), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), u_input.d), -select(abs(u_input.a.wzx), vec3<i32>(u_input.a.x, 12825i, u_input.a.x) >> (u_input.c % vec3<u32>(32u)), global0[_wgslsmith_index_u32(65036u, 13u)] | false)), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f - -1471f))))), ~(vec2<i32>(-1i) * -(vec2<i32>(u_input.d.x, u_input.d.x) | u_input.d.yx)));
    let var_3 = u_input.c.x;
    global1 = array<Struct_3, 23>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d)))), _wgslsmith_f_op_f32(var_2.d - -387f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.d)), _wgslsmith_f_op_f32(-var_2.d))))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = abs(select(vec2<u32>(min(u_input.c.x, 0u), 86287u), vec2<u32>(max(u_input.e, 4294967295u), u_input.c.x | 7332u), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true))) | vec2<u32>(~1818u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.e, u_input.c.x, 1u, 4294967295u)), vec4<u32>(u_input.c.x, 1u, 1u, 41198u) | vec4<u32>(0u, u_input.e, u_input.e, u_input.e))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2()))))));
    var var_2 = var_1.xz;
    let var_3 = Struct_3(false);
    var var_4 = Struct_3(false);
    return !select(!(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], var_4.a, global0[_wgslsmith_index_u32(u_input.c.x, 13u)]), vec4<bool>(var_4.a, var_3.a, false, global0[_wgslsmith_index_u32(u_input.e, 13u)]), vec4<bool>(true, var_4.a, true, var_4.a))), vec4<bool>(true, all(vec3<bool>(var_3.a, var_3.a, var_3.a)), var_4.a, any(vec2<bool>(var_3.a, false))), vec4<bool>(all(func_3(u_input.a, var_0.x).xz), var_3.a == (global0[_wgslsmith_index_u32(u_input.c.x, 13u)] != var_4.a), ~4294967295u > _wgslsmith_mod_u32(u_input.c.x, var_0.x), select(false, any(vec2<bool>(true, var_4.a)), true)));
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = !(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(-24476i, -13559i, u_input.a.x, 55i), u_input.a), -1i) > ((i32(-1i) * -60452i) | select(0i, ~(-1i), !arg_0.x)));
    let var_1 = Struct_1(false, vec3<i32>(u_input.a.x & 2147483647i, u_input.a.x, -2147483647i), ~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1144f - _wgslsmith_f_op_f32(-875f + -634f)) * _wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(589f + 1048f))) - -999f), u_input.d.xx);
    global0 = array<bool, 13>();
    var var_2 = ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.c.x, ~1u, 4294967295u, _wgslsmith_mod_u32(0u, u_input.e))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 10568u, 0u) >> (vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.c.x) % vec4<u32>(32u))));
    var var_3 = var_2.x;
    return StorageBuffer(var_1.d, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_3(true);
    let x = u_input.a;
    s_output = func_4(!select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], var_1.a)), !(!vec4<bool>(global0[_wgslsmith_index_u32(21960u, 13u)], var_1.a, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)])), !func_1(747f)));
}

