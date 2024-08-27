struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-354f, 382f, -357f, -678f), vec4<f32>(-525f, 233f, -834f, 853f), vec4<f32>(1064f, -1595f, -276f, 2091f), vec4<f32>(583f, -121f, 228f, -718f));

var<private> global1: array<f32, 24>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    global0 = array<vec4<f32>, 4>();
    global1 = array<f32, 24>();
    var var_0 = vec2<bool>(any(vec4<bool>(false, any(vec4<bool>(true, false, false, false)), true, true)) & !(all(vec3<bool>(false, false, false)) || true), select(false, select(true, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), any(vec2<bool>(false, false)) || true));
    global1 = array<f32, 24>();
    var var_1 = -u_input.e.zxz;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 24u)] - -1921f)) - global1[_wgslsmith_index_u32(7755u, 24u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zwz, vec3<u32>(4294967295u, arg_0, arg_0)) >> (~(~0u) % 32u), 24u)])));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_sub_u32(13769u, 1u);
    var var_1 = arg_2;
    var var_2 = Struct_2(u_input.b.yxy, !(!arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b.x, u_input.e.zy))))));
    var var_3 = Struct_1(arg_1, vec4<i32>(u_input.a.x, 1i, u_input.e.x, _wgslsmith_mult_i32(~13067i, 2147483647i & u_input.e.x) >> (~(var_0 ^ 1u) % 32u)), select(vec4<bool>(arg_3.x, true, any(select(vec4<bool>(arg_3.x, true, true, true), vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(true, true, var_2.b.x, arg_3.x))), true), vec4<bool>(any(select(vec4<bool>(true, false, false, arg_3.x), vec4<bool>(false, var_2.b.x, false, arg_3.x), vec4<bool>(false, false, arg_1.x, true))), all(arg_1.yy), select(var_2.b.x, var_2.b.x, var_2.b.x) != (arg_1.x && false), any(vec3<bool>(arg_1.x, false, false))), true), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-866f, -230f)))), -1179f));
    var var_4 = !(!arg_1);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_2.x, -977f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~17359u), 24u)], var_2.c))));
}

fn func_1() -> bool {
    return global1[_wgslsmith_index_u32(u_input.d.x << (0u % 32u), 24u)] <= _wgslsmith_f_op_f32(func_2(~4375u, select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 4u)] * vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 359f, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(u_input.c, 24u)])), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 4u)])))), !vec2<bool>(true, all(vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 75876u;
    global0 = array<vec4<f32>, 4>();
    var var_1 = Struct_2(~(_wgslsmith_mod_vec3_u32(u_input.b.zxx, ~u_input.b.xxy) << (countOneBits(~u_input.b.zwz) % vec3<u32>(32u))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-943f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]))))));
    var var_2 = true;
    let var_3 = func_1();
    var var_4 = vec2<i32>(_wgslsmith_clamp_i32(abs(-6344i), u_input.a.x, (firstTrailingBit(u_input.a.x) | max(1i, 2147483647i)) >> (reverseBits(select(var_1.a.x, u_input.d.x, var_1.b.x)) % 32u)), 5313i);
    var var_5 = Struct_2(u_input.b.ywy, !var_1.b, -1092f);
    let var_6 = ~select(reverseBits(_wgslsmith_mult_u32(var_5.a.x, 26542u)), 18768u, true) ^ u_input.d.x;
    let var_7 = u_input.e.xz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.c, var_5.a.xy, vec4<i32>(_wgslsmith_add_i32(483i, ~var_7.x), var_7.x, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(9384i, _wgslsmith_dot_vec4_i32(u_input.e, u_input.e), min(12472i, -7538i), 43637i & var_4.x)), -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.c, -422f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1609f, 492f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, _wgslsmith_f_op_f32(f32(-1f) * -2762f)))));
}

