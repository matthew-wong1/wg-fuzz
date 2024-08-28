struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
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

var<private> global0: array<i32, 2> = array<i32, 2>(i32(-2147483648), 1i);

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: array<f32, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = u_input.d.x;
    var var_1 = any(vec4<bool>(true, true, true, true));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1166f, global2[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -154f)))))), global2[_wgslsmith_index_u32(36203u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)]);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 537f, var_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], var_2.x, var_2.x) - vec3<f32>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(27946u, 9u)])))), vec2<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), -1000f)));
    var var_4 = 1f;
    return vec3<bool>(((any(vec4<bool>(true, true, true, true)) & true) != any(vec4<bool>(true, true, true, true))) & any(vec2<bool>(true, 2164f <= var_3.a.a.x)), true, all(select(select(select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.a.x, 1u)], false), !global1[_wgslsmith_index_u32(u_input.a.x, 1u)], any(vec2<bool>(true, false))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x) << (reverseBits(0u) % 32u), 1u)], select(vec2<bool>(false, false), vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.a.x, 1u)]))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_mult_u32(8669u, ~(~_wgslsmith_mod_u32(1u, 12363u)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1020f, _wgslsmith_f_op_f32(192f - -871f), global2[_wgslsmith_index_u32(3528u, 9u)]))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(46485u, 9u)], 237f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], -1365f), false)), vec2<f32>(-1221f, 346f), var_0.yx))))));
    var var_3 = func_3(_wgslsmith_mod_i32(38285i, -2630i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1 << (var_1 % 32u), ~61874u), min(u_input.a & vec3<u32>(4294967295u, u_input.a.x, 56327u), vec3<u32>(0u, 12529u, var_1))) % 32u));
    global0 = array<i32, 2>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, -1516f, var_2.a.b.x) * vec3<f32>(-1739f, global2[_wgslsmith_index_u32(abs(18427u), 9u)], _wgslsmith_f_op_f32(sign(-1258f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], var_2.a.a.x)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = array<vec2<bool>, 1>();
    let var_0 = func_2();
    global2 = array<f32, 9>();
    var var_1 = func_3(~(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1i) ^ countOneBits(_wgslsmith_mod_i32(u_input.d.x, 4745i))));
    global0 = array<i32, 2>();
    return Struct_2(arg_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = func_1(arg_0);
    global1 = array<vec2<bool>, 1>();
    var var_1 = abs(select(38845u, _wgslsmith_dot_vec4_u32(vec4<u32>(~11960u, ~4294967295u, 1u, u_input.a.x), ~max(vec4<u32>(5143u, 1u, arg_2, arg_2), vec4<u32>(94062u, 1u, u_input.a.x, 37060u))), select(true, true, true)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(max(u_input.a.x ^ u_input.a.x, 4294967295u) > 37671u, !(any(vec4<bool>(true, true, true, true)) & false), any(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), 1u)]));
    global0 = array<i32, 2>();
    let var_1 = -1738i;
    let var_2 = 22418i;
    var var_3 = func_4(func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 882f, -1520f), vec3<f32>(-371f, 1107f, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]) * vec2<f32>(977f, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]))))), ~vec2<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(-u_input.c, vec3<i32>(-16605i, u_input.c.x, -2147483647i))), u_input.a.x);
    let var_4 = abs(vec2<u32>(firstTrailingBit(7768u), _wgslsmith_add_u32(reverseBits(75541u), u_input.a.x)) | abs(~u_input.a.xx | vec2<u32>(1u, 4294967295u)));
    var var_5 = func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_4), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, var_4.x), var_4))), 2u)]);
    var var_6 = u_input.c >> (~select(max(reverseBits(u_input.a), u_input.a), (vec3<u32>(1u, 0u, 73818u) ^ vec3<u32>(var_4.x, 14627u, var_4.x)) ^ vec3<u32>(1u, u_input.a.x, 39838u), vec3<bool>(var_5.x, u_input.a.x < 34705u, false)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(16656u);
}

