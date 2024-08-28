struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<u32, 5> = array<u32, 5>(4294967295u, 67694u, 2398u, 0u, 58848u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: f32) -> vec2<u32> {
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    var var_0 = -_wgslsmith_sub_i32(u_input.a.x, arg_2.x);
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return _wgslsmith_mod_vec2_u32(u_input.e.yx >> (vec2<u32>(39289u, u_input.e.x) % vec2<u32>(32u)), vec2<u32>(u_input.e.x, global1[_wgslsmith_index_u32(4294967295u, 5u)]));
}

fn func_3(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_1(true);
    let var_1 = u_input.c.wz;
    global1 = array<u32, 5>();
    return Struct_3(Struct_1(true), Struct_1(!var_0.a), countOneBits(u_input.d), _wgslsmith_f_op_f32(select(1435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(987f * 786f))), !any(select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(false, var_0.a, true, false), var_0.a)))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(true | !any(vec3<bool>(false, true, false)));
    var var_1 = any(select(!(!vec3<bool>(var_0.a, var_0.a, true)), !vec3<bool>(true, false, var_0.a), select(select(vec3<bool>(true, var_0.a, var_0.a), select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), !vec3<bool>(var_0.a, false, true)), select(vec3<bool>(var_0.a, var_0.a, true), select(vec3<bool>(var_0.a, true, true), vec3<bool>(false, false, var_0.a), true), !vec3<bool>(var_0.a, true, false)), true)));
    var var_2 = 0i;
    let var_3 = _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(reverseBits(firstTrailingBit(30241u)), 5u)], ~global1[_wgslsmith_index_u32(~(~u_input.e.x), 5u)], ~4294967295u);
    global0 = array<Struct_1, 26>();
    return func_3(vec2<i32>(1i >> (_wgslsmith_dot_vec2_u32(func_2(global0[_wgslsmith_index_u32(1u, 26u)], vec3<i32>(-1i, -1i, u_input.a.x), u_input.b, 2337f), vec2<u32>(var_3, 0u)) % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, -20961i), u_input.b.x)));
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = vec4<i32>(-(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 37578i, u_input.a.x, -6175i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(805i, u_input.a.x, u_input.b.x, arg_0.c), vec4<i32>(0i, 0i, u_input.a.x, -14982i), vec4<i32>(0i, u_input.d, 0i, 52784i)))), _wgslsmith_div_i32(arg_0.c, ~(-1i)), _wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(-2147483647i, -1i, -1i) ^ u_input.b) << ((1u << (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.e.x >> (15127u % 32u), 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)] | 1u) % 32u)) % 32u), arg_0.c | u_input.a.x);
    var var_1 = 1u;
    let var_2 = arg_0.c;
    global0 = array<Struct_1, 26>();
    let var_3 = Struct_2(arg_0.a, _wgslsmith_sub_i32(arg_0.c, ~var_0.x) & 0i);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(219f)) + 1189f), -706f, _wgslsmith_f_op_f32(758f - 804f), _wgslsmith_div_f32(-2178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(354f))))));
    var var_1 = ~func_4(func_1());
    var var_2 = (u_input.d | ~u_input.d) < u_input.a.x;
    var var_3 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x & u_input.c.x, 31410u, u_input.e.x), select(vec3<u32>(u_input.c.x, 1u, global1[_wgslsmith_index_u32(23u, 5u)]), _wgslsmith_add_vec3_u32(u_input.c.zwy, vec3<u32>(1u, 11206u, u_input.c.x)), vec3<bool>(true, true, true))), vec3<u32>(min(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c.x), ~10509u), ~(~u_input.e.x), abs(global1[_wgslsmith_index_u32(55845u, 5u)]))));
    var var_4 = u_input.c.xx;
    var_1 = ~func_4(Struct_3(global0[_wgslsmith_index_u32(var_3.x, 26u)], func_3(firstLeadingBit(u_input.a)).b, u_input.a.x, var_0.x));
    var_4 = min(countOneBits(countOneBits(_wgslsmith_sub_vec2_u32(abs(var_3.xz), ~vec2<u32>(var_4.x, 21314u)))), u_input.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-153f, -1000f)), _wgslsmith_f_op_f32(var_0.x * 1593f), _wgslsmith_f_op_f32(max(var_0.x, 320f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(311f * var_0.x)))))), ~117829u, 0i);
}

