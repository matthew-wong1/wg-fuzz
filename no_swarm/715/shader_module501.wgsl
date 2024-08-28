struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: i32;

var<private> global3: array<vec4<bool>, 15>;

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 6>();
    let var_0 = global4.x;
    var var_1 = vec4<u32>(~countOneBits(u_input.c.x), 4294967295u, u_input.c.x, ~4294967295u);
    var var_2 = Struct_1(reverseBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)))), false, ~u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-895f, -1261f, global0[_wgslsmith_index_u32(var_1.x, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -378f, 350f, -1640f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 1314f, -2050f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(622f, 573f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(var_1.x, 16u)], -943f, global0[_wgslsmith_index_u32(0u, 16u)]))))), all(select(vec2<bool>(true, 1u >= u_input.c.x), !vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, any(vec4<bool>(global4.x, false, true, global4.x))))));
    var var_3 = ~vec4<u32>(abs(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_1.x, 6u)], vec4<u32>(43093u, 51850u, var_1.x, 1u))), u_input.c.x, 2307u, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c));
    return 9754u >> (~_wgslsmith_clamp_u32(49256u, 16275u, var_3.x) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = vec3<bool>(arg_0.e.x, false, global4.x);
    global1 = array<vec4<u32>, 6>();
    let var_1 = vec4<u32>(u_input.c.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), ~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 47482u, 21145u, 1u), vec4<u32>(38563u, u_input.c.x, u_input.c.x, 24744u) >> (global1[_wgslsmith_index_u32(4294967295u, 6u)] % vec4<u32>(32u)))), ~func_3(), 0u);
    let var_2 = -2147483647i;
    global1 = array<vec4<u32>, 6>();
    return 473f;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.a, ~u_input.a), vec4<i32>(_wgslsmith_add_i32(arg_2.d, 14081i), 1i, 58471i, -3964i)) & 0i, arg_2.c.x & !arg_2.e.x, u_input.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(177f * _wgslsmith_f_op_f32(f32(-1f) * -505f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]) - _wgslsmith_f_op_f32(299f * -127f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1983f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(arg_1))))))), !(u_input.c.x >= 2114u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -387f);
    return abs(abs(-43554i));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: f32) -> vec2<f32> {
    let var_0 = -912f;
    global1 = array<vec4<u32>, 6>();
    global3 = array<vec4<bool>, 15>();
    global3 = array<vec4<bool>, 15>();
    global2 = func_4(vec2<u32>(reverseBits(min(~0u, u_input.c.x >> (arg_1 % 32u))), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_2, 165f, var_0) * vec4<f32>(var_0, arg_2, 1335f, -2210f)))) - vec4<f32>(-967f, -256f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(u_input.b, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], 0i, vec4<bool>(global4.x, global4.x, true, global4.x)), global4.x, u_input.d.wyw, arg_2)), _wgslsmith_f_op_f32(-var_0)))), Struct_2(-18771i, vec4<bool>(false, false | !global4.x, false, all(vec3<bool>(true, true, true)) | (u_input.c.x >= arg_1)), !select(global3[_wgslsmith_index_u32(~arg_1, 15u)], !global3[_wgslsmith_index_u32(0u, 15u)], var_0 == 640f), u_input.b, vec4<bool>(global4.x, all(select(global3[_wgslsmith_index_u32(arg_1, 15u)], global3[_wgslsmith_index_u32(75497u, 15u)], global4.x)), _wgslsmith_add_i32(49835i, arg_0.x) < arg_0.x, false)));
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(max(0u, u_input.c.x), 16u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 17801u), 16u)]))))), global0[_wgslsmith_index_u32(arg_1, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1492f, global0[_wgslsmith_index_u32(51548u, 16u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(~vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.d.x), 4294967295u, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(77341u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)])))), global4.x)));
    let var_1 = reverseBits(abs(vec2<u32>(68615u, firstTrailingBit(11375u))));
    global0 = array<f32, 16>();
    global3 = array<vec4<bool>, 15>();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1598f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 16u)])), var_0.x) - vec3<f32>(723f, var_0.x, 247f));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1143f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(394f, -177f, var_0.x), vec3<f32>(1206f, -1000f, 1607f)))) + var_2), u_input.b, ~(-_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.wy), vec2<i32>(1i, -17675i))));
}

