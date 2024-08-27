struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: array<f32, 31> = array<f32, 31>(1044f, 1524f, -704f, 587f, 886f, 360f, -413f, 942f, -613f, -1651f, -742f, -709f, -1163f, -114f, -522f, -324f, 983f, -2390f, -946f, -474f, 707f, -145f, -1471f, 155f, -329f, 309f, -696f, -1000f, 1824f, -463f, 1541f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec2<f32> {
    let var_0 = ~vec3<u32>(1u, u_input.b, ~(~u_input.c.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, -147f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0)))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-757f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] - 388f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1610f, 119f), vec2<f32>(-563f, global1[_wgslsmith_index_u32(4294967295u, 31u)]), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, -279f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, 143f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-678f, min(vec2<i32>(2147483647i, 11456i), vec2<i32>(-2147483647i, -1i)))))));
    global0 = array<vec2<u32>, 18>();
    let var_1 = max(_wgslsmith_mod_vec4_u32(max(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 12073u, u_input.b, u_input.c.x), vec4<u32>(4294967295u, 1u, 4294967295u, 30377u)), vec4<u32>(16120u, u_input.c.x, 15753u, 0u) << (vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.b, u_input.c.x, 1u, 4294967295u))), vec4<u32>(u_input.b, ~u_input.b, ~0u, ~1u)), min(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 0u, 1u, u_input.c.x), ~vec4<u32>(u_input.b, 0u, 1u, u_input.b)), ~(~vec4<u32>(75075u, u_input.b, u_input.c.x, u_input.c.x)))), vec4<u32>(_wgslsmith_mod_u32(4514u, abs(countOneBits(u_input.b))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(20217u, u_input.c.x, 42372u, u_input.c.x)), countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 28941u))), 0u, u_input.c.x));
    var var_2 = _wgslsmith_mult_i32(max(countOneBits(u_input.a), firstLeadingBit(-u_input.a & -15043i)), u_input.a);
    var_2 = u_input.a ^ -36380i;
    return any(!(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.c.x, 31u)] <= -1998f)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-139f, -1925f), vec2<f32>(915f, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(19924u, 31u)])), 861f), vec2<bool>(arg_0.x | false, true)))));
    global0 = array<vec2<u32>, 18>();
    var var_1 = select(!(!(!(!vec4<bool>(true, false, arg_0.x, arg_0.x)))), select(!(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), !select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, true, false))), false), false != arg_0.x);
    let var_2 = vec4<f32>(-148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 31u)] - _wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(abs(38477u), 31u)]))))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.ww, vec2<u32>(arg_2.x, 58930u)), 31u)])), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_2.x, 31u)])), max(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a)))).x))), global1[_wgslsmith_index_u32(abs(u_input.c.x) & u_input.b, 31u)]);
    global1 = array<f32, 31>();
    return Struct_3(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(arg_1, arg_2.x)), Struct_1(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(11255u, 318u, 0u), vec3<u32>(arg_1, arg_2.x, arg_2.x)) <= ~11840u, false != (true && arg_0.x), true, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], vec2<u32>(arg_2.x, 1u)) < _wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(u_input.c.yz, vec2<u32>(25331u, arg_1), false), vec2<u32>(1u, 1u) | global0[_wgslsmith_index_u32(30785u, 18u)]), abs(u_input.b))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(!select(vec2<bool>(func_2(), true), vec2<bool>(any(vec3<bool>(true, false, false)), true), true), ~(~(abs(44446u) ^ u_input.c.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(max(abs(vec4<u32>(4294967295u, u_input.c.x, 53569u, 1u)), vec4<u32>(19086u, u_input.b, u_input.b, u_input.c.x)), vec4<u32>(11449u, ~4294967295u, ~u_input.b, 13249u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 5321u, u_input.b), vec4<u32>(40966u, 1u, u_input.c.x, u_input.b)) & max(vec4<u32>(1u, u_input.b, u_input.b, u_input.c.x), vec4<u32>(0u, u_input.b, 0u, 4294967295u)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b, u_input.b, 35276u, 2380u)), select(vec4<u32>(0u, u_input.c.x, 31821u, u_input.c.x), vec4<u32>(u_input.b, 41517u, 14573u, u_input.c.x), false), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 35660u, u_input.b), vec4<u32>(1u, 4294967295u, u_input.c.x, 34265u))), ~vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 5548u))));
    var var_1 = true;
    global0 = array<vec2<u32>, 18>();
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.b.b, ~u_input.c.x), min(13808u >> (reverseBits(var_0.b.b) % 32u), abs(var_0.a) | u_input.b) & 45408u);
    var_1 = false;
    return Struct_1(var_0.b.a, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-970f - global1[_wgslsmith_index_u32(u_input.c.x, 31u)]);
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    let var_1 = Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(5406u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)])) * vec4<f32>(_wgslsmith_f_op_f32(abs(239f)), -885f, _wgslsmith_f_op_f32(sign(var_0)), -1000f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-983f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], var_0, var_0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1947f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 1409f, -1000f))), any(vec3<bool>(false, true, false))))))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -countOneBits(~var_1.a));
}

