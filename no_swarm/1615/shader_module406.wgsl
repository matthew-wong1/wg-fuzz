struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(575f, -256f, 1546f, 1000f, 656f, -234f, -487f, 1491f, -474f, 854f, 768f, 1075f, 707f, 1534f, 862f, 226f, -1273f, 726f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global0 = array<f32, 18>();
    var var_0 = select(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u), 5489u) | _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.c, 5475u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.c, 27738u)), select(vec3<u32>(u_input.a.x, 4294967295u, 36901u), vec3<u32>(50024u, 4294967295u, u_input.c), true)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.c)) << ((vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) | vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), ~(~(~vec3<u32>(u_input.a.x, u_input.c, u_input.c))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))));
    var_0 = reverseBits(vec3<u32>(4294967295u, 1u, reverseBits(_wgslsmith_clamp_u32(var_0.x, 4294967295u, u_input.c)) | 1u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(876f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1392f)))), false))) <= 502f;
    var var_2 = vec3<i32>(~(-13843i), u_input.b.x, u_input.d.x);
    return true;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 18u)])))));
    return func_3();
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = ~(~countOneBits((vec4<u32>(1u, u_input.a.x, arg_0.a, 30036u) << (vec4<u32>(u_input.c, 0u, 4294967295u, arg_3.x) % vec4<u32>(32u))) << (vec4<u32>(54003u, 4294967295u, arg_3.x, 0u) % vec4<u32>(32u))));
    let var_1 = Struct_1(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global0[_wgslsmith_index_u32(1u, 18u)]) * vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, 528f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, 1984f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], 775f))))))));
    var var_2 = ~var_0;
    var_2 = vec4<u32>(_wgslsmith_mult_u32(~var_0.x, _wgslsmith_clamp_u32(var_2.x, 0u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, u_input.c), var_2.yx)))), _wgslsmith_dot_vec4_u32(~(select(var_0, vec4<u32>(1u, var_2.x, 0u, var_2.x), var_1.a) ^ vec4<u32>(var_0.x, arg_0.a, var_0.x, var_2.x)), ~(~_wgslsmith_add_vec4_u32(var_0, var_0))), 4294967295u, 85533u);
    global0 = array<f32, 18>();
    return select(vec4<i32>(arg_2 | (min(1i, -2147483647i) << ((var_0.x & 35225u) % 32u)), -(i32(-1i) * -arg_2), 19885i, ~firstTrailingBit(-arg_2)), min(vec4<i32>(~4417i, u_input.b.x, arg_2, -14733i), vec4<i32>(u_input.b.x, -u_input.b.x, 2197i, _wgslsmith_div_i32(u_input.d.x, u_input.b.x))) ^ ~firstLeadingBit(-vec4<i32>(705i, 1i, arg_2, arg_2)), !var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(u_input.d.x, u_input.d.x);
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_1 = ~u_input.a ^ u_input.a;
    var var_2 = !(!(false && (0i <= (u_input.d.x & -9128i))));
    var var_3 = func_1(Struct_2(var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), 11502i, vec2<u32>(77893u, u_input.c));
    var_3 = -min(select(vec4<i32>(var_3.x, -1i, var_3.x, -1i) | ~vec4<i32>(-23119i, 0i, var_3.x, u_input.b.x), -vec4<i32>(-2147483647i, -1i, 1i, var_3.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), ~(min(vec4<i32>(var_3.x, var_3.x, 11505i, -59922i), vec4<i32>(var_3.x, 1i, 10279i, var_3.x)) & ~vec4<i32>(-2147483647i, 2147483647i, var_3.x, 1i)));
    var_2 = !all(vec2<bool>(u_input.c <= 39578u, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~(~0u), 18u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(reverseBits(~u_input.c), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)), _wgslsmith_f_op_f32(603f + _wgslsmith_f_op_f32(step(-490f, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(32855u, 18u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-208f, global0[_wgslsmith_index_u32(16651u, 18u)], -567f, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<f32>(-1257f, 542f, 1198f, global0[_wgslsmith_index_u32(var_1.x, 18u)]))))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), max(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(30356u, 1u, 58094u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.c)), ~vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x)), ~_wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.c), u_input.a.x), select(~vec4<u32>(var_1.x, var_1.x, 1u, u_input.a.x), ~select(vec4<u32>(11482u, 0u, 2479u, 61709u), vec4<u32>(39865u, 0u, 21685u, u_input.c), vec4<bool>(false, true, false, true)), !func_3())), -197f);
}

