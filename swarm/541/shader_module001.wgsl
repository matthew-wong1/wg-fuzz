struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(36362i, 0i, -45172i, 36434i);

var<private> global1: array<bool, 29> = array<bool, 29>(false, true, false, false, false, true, false, false, true, false, false, true, true, true, false, false, false, true, true, false, true, false, true, true, true, false, false, false, false);

var<private> global2: u32 = 1u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b)));
    let var_1 = arg_2;
    let var_2 = var_1;
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    return global0.wxy;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(~u_input.a.xx, ~_wgslsmith_clamp_vec3_i32(global0.wyy, abs(func_2(true, global1[_wgslsmith_index_u32(arg_0.x, 29u)], Struct_1(-592f, vec3<f32>(432f, 396f, 451f)), 21501u)), global0.xzw), !(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x) ^ ~arg_0.x, 29u)]));
    let var_1 = arg_0.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-362f, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1062f, 251f, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1137f + -343f), 294f, _wgslsmith_f_op_f32(235f + 911f))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = arg_1;
    return _wgslsmith_f_op_f32(floor(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.xz, global0.x);
    let var_1 = select(!(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))), !vec3<bool>(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(66231u, 29u)], 1i, Struct_1(824f, vec3<f32>(1376f, 1423f, var_0.a)), -357f)) >= 429f, true, all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(13805u, 29u)], global1[_wgslsmith_index_u32(61587u, 29u)], true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))), false);
    let var_2 = _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(~(vec4<i32>(global0.x, global0.x, global0.x, 1i) >> (vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), min(-vec4<i32>(global0.x, global0.x, 23573i, global0.x), vec4<i32>(69476i, global0.x, -19394i, 0i) & vec4<i32>(global0.x, -2147483647i, global0.x, 0i))), vec4<i32>(-26984i, -1i, ~func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(2630u, u_input.a.x), 29u)], !global1[_wgslsmith_index_u32(14084u, 29u)], Struct_1(-1668f, var_0.b), ~4294967295u).x, -_wgslsmith_div_i32(1i, -51002i)));
    global0 = select(var_2, var_2, any(select(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(4294967295u, 29u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], true, false), vec4<bool>(var_1.x, false, var_1.x, global1[_wgslsmith_index_u32(8461u, 29u)]), global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))) ^ var_2;
    global0 = vec4<i32>(~global0.x, _wgslsmith_add_i32(-25940i, -firstTrailingBit(_wgslsmith_mod_i32(-20346i, -62513i))), _wgslsmith_dot_vec2_i32(~global0.xw, min(vec2<i32>(global0.x, 0i) ^ ~vec2<i32>(-19337i, global0.x), var_2.zz)), -1i);
    let var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 29u)];
    global0 = ~var_2;
    var_0 = func_1(abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.wx), u_input.a.yz) << (u_input.a.xw % vec2<u32>(32u))), -1i);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-257f, var_0.b.x, -1171f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1057f, var_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.b), vec3<f32>(-2026f, var_0.a, 557f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2044f, -1000f, 1i, vec4<u32>(max(9958u, _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(29199u, u_input.a.x))), 1u, ~u_input.a.x, u_input.a.x | ~(~1u)), u_input.a.x & (6939u | _wgslsmith_mod_u32(~1u, ~u_input.a.x)));
}

