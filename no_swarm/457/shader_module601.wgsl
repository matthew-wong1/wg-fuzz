struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(30133u);

var<private> global1: f32 = 2046f;

var<private> global2: vec3<i32>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, true), 27712i, vec2<u32>(52004u, 7789u));

var<private> global4: array<bool, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_u32(firstTrailingBit(select(select(~0u, abs(1u), !global4[_wgslsmith_index_u32(1u, 3u)]), 0u, any(!vec4<bool>(global3.a.x, global3.a.x, false, false)))), select(firstLeadingBit(0u), _wgslsmith_sub_u32(reverseBits(reverseBits(u_input.a)), ~_wgslsmith_sub_u32(u_input.a, global0.a)), 1u != (43874u & _wgslsmith_clamp_u32(7103u, global3.c.x, 4294967295u))));
    return ~(~firstLeadingBit(~(~vec4<u32>(9161u, 28591u, 22887u, global0.a))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = countOneBits(6273i);
    global0 = Struct_5(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0, 4294967295u, 64199u, 4294967295u) & func_3(vec4<f32>(-2601f, 216f, 1144f, -201f), var_0)), ~abs(vec4<u32>(1u, 4294967295u, 4294967295u, 5651u))));
    return Struct_2(Struct_1(global3.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0, global2.x, 2147483647i, 46116i), vec4<i32>(global2.x, -1i, global2.x, -33442i)) ^ vec4<i32>(-1i, global3.b, 0i, global2.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-27280i, 61615i, global3.b), vec3<i32>(global2.x, var_0, global2.x)), -var_0, global2.x, var_0)), ~(~global3.c & ~vec2<u32>(42158u, global0.a))), Struct_1(global3.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(abs(var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(11240i, -2147483647i, global3.b), vec3<i32>(var_0, global3.b, global2.x))), 1i), reverseBits(select(~global3.c, reverseBits(global3.c), global4[_wgslsmith_index_u32(4294967295u, 3u)] & false))), arg_0 & arg_0);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global1 = 410f;
    let var_0 = ~(~(~(~vec4<u32>(global0.a, arg_0.b.c.x, 1u, global3.c.x) | ~vec4<u32>(global3.c.x, arg_0.a.c.x, arg_0.a.c.x, 0u))));
    var var_1 = Struct_2(func_2(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 52073u, global3.c.x, 41433u)), reverseBits(func_3(vec4<f32>(-373f, 734f, -1000f, -316f), arg_0.a.b)))).b, func_2(global3.c.x).b, _wgslsmith_mod_u32(u_input.a, 0u));
    let var_2 = Struct_4(global2.x, _wgslsmith_add_u32(func_2(_wgslsmith_div_u32(u_input.a & 26562u, var_0.x << (22341u % 32u))).b.c.x, 0u), !(!select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 3u)], false, true, false), vec4<bool>(false, global3.a.x, false, global4[_wgslsmith_index_u32(global0.a, 3u)]), vec4<bool>(false, false, false, global4[_wgslsmith_index_u32(arg_0.b.c.x, 3u)]))));
    var var_3 = Struct_5(32099u);
    return _wgslsmith_sub_u32(abs(var_2.b), var_2.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = true;
    var_0 = global4[_wgslsmith_index_u32(~func_4(func_2(firstLeadingBit(global0.a))), 3u)];
    global2 = (vec3<i32>(-1i) * -(min(vec3<i32>(global2.x, 2147483647i, arg_1), vec3<i32>(global3.b, arg_1, global3.b)) | select(vec3<i32>(global3.b, 2147483647i, 45017i), vec3<i32>(0i, global3.b, arg_1), global4[_wgslsmith_index_u32(4294967295u, 3u)]))) ^ abs(firstTrailingBit(reverseBits(~vec3<i32>(global2.x, 1i, global3.b))));
    var var_1 = func_2(41690u);
    global3 = var_1.a;
    return Struct_1(select(func_2(u_input.a).b.a, vec3<bool>(!(global4[_wgslsmith_index_u32(90012u, 3u)] | true), var_1.c < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 57923u, 24389u), vec3<u32>(0u, 0u, arg_0.x)), global3.a.x), global3.a), -35146i << (func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1576f, -829f, 703f, 1110f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, -1000f, -1174f, -1873f))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, global2.x), _wgslsmith_dot_vec2_i32(global2.zy, global2.xz))).x % 32u), abs(vec2<u32>(~54612u, func_3(vec4<f32>(-1178f, 1447f, -121f, -1219f), -12601i).x) ^ ~vec2<u32>(0u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(select(852f, -1000f, true));
    let var_0 = global2.zz;
    global3 = func_1(global3.c, global3.b);
    let var_1 = ~(~abs(vec4<u32>(2895u, 4294967295u, global3.c.x | u_input.a, 1u)));
    let var_2 = Struct_3(func_2(var_1.x), Struct_2(func_1(var_1.yx, i32(-1i) * -9475i), func_2(_wgslsmith_add_u32(~global3.c.x, ~var_1.x)).b, max(1u, u_input.a)), -1i);
    let var_3 = Struct_1(select(global3.a, vec3<bool>(var_2.b.b.a.x, (global4[_wgslsmith_index_u32(1u, 3u)] || global4[_wgslsmith_index_u32(global3.c.x, 3u)]) || true, var_2.b.a.a.x), !var_2.b.b.a.x), -1i >> (~max(var_2.b.c, ~u_input.a) % 32u), global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-499f, -747f), _wgslsmith_f_op_f32(abs(-418f)), any(vec4<bool>(var_3.a.x, false, var_2.b.a.a.x, global4[_wgslsmith_index_u32(var_2.a.a.c.x, 3u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f * -1674f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(3091f)))) - -1000f), 62833u, var_3.b, var_2.c);
}

