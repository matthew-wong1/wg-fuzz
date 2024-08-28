struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 1u, 66009u, 64605u, 0u, 4294967295u, 0u, 46510u, 89768u, 0u, 56137u, 0u, 65771u, 48178u, 99555u, 4294967295u, 0u, 77451u, 40566u, 47918u, 13479u, 4294967295u, 49853u);

var<private> global2: vec4<bool>;

var<private> global3: array<bool, 16>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1247f - 218f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(155f)))))), !(_wgslsmith_sub_i32(u_input.d, i32(-1i) * -37869i) == u_input.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1000f), -894f)), -1157f), _wgslsmith_sub_u32(1u ^ _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)]), 23u)], select(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global3[_wgslsmith_index_u32(139955u, 16u)])), _wgslsmith_dot_vec3_u32(u_input.b, abs(~vec3<u32>(u_input.b.x, 1u, 4294967295u)))), Struct_2(0u, false, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, -38707i), vec4<i32>(u_input.d, -5004i, -13722i, -107816i)), vec4<i32>(1i, u_input.d, u_input.d, 3689i)), vec2<bool>(any(select(vec3<bool>(false, global3[_wgslsmith_index_u32(75021u, 16u)], global2.x), arg_0.yyz, arg_0.x)), _wgslsmith_mod_u32(21373u, u_input.a) >= global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 33800u), 23u)])));
    global1 = array<u32, 23>();
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(-801f, _wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)))), 986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(687f, _wgslsmith_f_op_f32(var_0.a.x - -1108f)))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = -755f;
    var_0 = _wgslsmith_f_op_f32(-1f);
    global1 = array<u32, 23>();
    global3 = array<bool, 16>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1273f);
    return -485f;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 79381u, global1[_wgslsmith_index_u32(31717u, 23u)]), vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), 13922u, u_input.c.x, ~1u)), vec4<u32>(u_input.b.x, ~47736u, u_input.c.x, 16453u)) >> ((_wgslsmith_div_u32(countOneBits(global1[_wgslsmith_index_u32(u_input.c.x, 23u)]) << (~0u % 32u), 1u | _wgslsmith_mult_u32(1u, u_input.a)) & global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~u_input.c, min(u_input.c, vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 21732u))), 23u)]) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_2(!select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], arg_0, arg_0, arg_0), vec4<bool>(true, global2.x, global2.x, arg_0), false), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 16u)], arg_0, false, global2.x), arg_0), vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 23u)], 16u)]), false)));
    var var_2 = select(vec2<i32>(47182i, ~1i), vec2<i32>(max(u_input.d, countOneBits(35943i)), -_wgslsmith_add_i32(-19113i, ~u_input.d)), !select(global2.zy, global2.zw, !select(vec2<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23134u, 23u)], 16u)], true), global2.zx, global2.wz)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(arg_0, global2.x, global2.x, false)))))))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(1u, Struct_2(global1[_wgslsmith_index_u32(60045u, 23u)], true, vec3<i32>(var_2.x, 24231i, var_2.x), vec4<i32>(u_input.d, 1i, 1i, u_input.d), global2.wz), _wgslsmith_add_i32(u_input.d, u_input.d))), _wgslsmith_f_op_f32(-var_1.x))), var_1.x));
    var var_3 = var_2.x;
    return vec4<bool>(global2.x, !(var_1.x >= _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(671f)))), any(vec3<bool>(true, global2.x, false)), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(!(!global2.x));
    var var_0 = Struct_3(_wgslsmith_dot_vec3_i32(max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 49436u, 0u), u_input.b), 19u)], select(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], vec3<i32>(u_input.d, u_input.d, u_input.d), global2.yxz)) >> ((~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)]) & (u_input.b >> (u_input.b % vec3<u32>(32u)))) % vec3<u32>(32u)), ~(-vec3<i32>(u_input.d, 0i, -14112i)) ^ -abs(global0[_wgslsmith_index_u32(u_input.b.x, 19u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 23u)], Struct_2(global1[_wgslsmith_index_u32(0u, 23u)], false, vec3<i32>(-2147483647i, -2147483647i, u_input.d), vec4<i32>(30666i, u_input.d, u_input.d, u_input.d), vec2<bool>(true, global2.x)), u_input.d))), -907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f + 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global3[_wgslsmith_index_u32(4294967295u, 16u)])))).x), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.d, u_input.d, u_input.d, -6147i) << (vec4<u32>(6030u, 76618u, 1u, 11885u) % vec4<u32>(32u))));
    global0 = array<vec3<i32>, 19>();
    global2 = !(!select(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], false, global2.x, true), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 16u)], true, true, false), false), vec4<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 77968u), 23u)], 16u)], true, !global2.x), !select(vec4<bool>(true, true, true, global2.x), vec4<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 16u)], global2.x), vec4<bool>(true, true, false, true))));
    global2 = !(!vec4<bool>(global2.x, select(global2.x, true, false) && true, all(!vec3<bool>(global2.x, false, global3[_wgslsmith_index_u32(u_input.a, 16u)])), !global2.x));
    global0 = array<vec3<i32>, 19>();
    var_0 = Struct_3(-(_wgslsmith_div_i32(u_input.d, firstTrailingBit(u_input.d)) & _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 1i, var_0.d.x), vec3<i32>(-42797i, 1i, 18633i)))), var_0.b, var_0.b.x, max(-(select(vec4<i32>(u_input.d, 52757i, var_0.a, 0i), vec4<i32>(37497i, u_input.d, 0i, u_input.d), vec4<bool>(global2.x, global2.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70977u, 23u)], 23u)], 16u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5981u, 23u)], 16u)])) & vec4<i32>(0i, var_0.d.x, var_0.a, var_0.a)), min(var_0.d, var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(~(vec3<u32>(1u, u_input.b.x, 4294967295u) ^ vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), ~vec3<u32>(47114u, 0u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~10841u, 23u)], max(u_input.b.x, 7648u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.c.x, 23u)], 23u)]), vec3<u32>(~u_input.a, 86892u, 0u))), max(firstLeadingBit(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(u_input.d, var_0.d.x, var_0.a))), var_0.d.x << (~(~global1[_wgslsmith_index_u32(4294967295u, 23u)]) % 32u)));
}

