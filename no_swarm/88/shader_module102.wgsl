struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(0u, 9353u, 1u, 1971u), vec4<u32>(18268u, 0u, 55868u, 26087u), vec4<u32>(40795u, 7593u, 4294967295u, 0u), vec4<u32>(39934u, 4294967295u, 29443u, 21600u), vec4<u32>(4294967295u, 29149u, 15950u, 1u), vec4<u32>(16667u, 27967u, 6577u, 47307u), vec4<u32>(2461u, 32909u, 4294967295u, 1u), vec4<u32>(0u, 36505u, 0u, 50655u), vec4<u32>(1u, 80112u, 55502u, 1u), vec4<u32>(25056u, 4294967295u, 12334u, 34577u), vec4<u32>(65424u, 8151u, 1u, 23360u), vec4<u32>(74029u, 0u, 4294967295u, 0u), vec4<u32>(0u, 54867u, 44195u, 98023u), vec4<u32>(1u, 53406u, 4294967295u, 1u), vec4<u32>(0u, 1u, 15822u, 4294967295u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(46057u, 59993u, 4294967295u, 23518u), vec4<u32>(10540u, 3580u, 24212u, 1u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 118105u), vec4<u32>(35503u, 29488u, 41538u, 10947u), vec4<u32>(3186u, 29362u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 70542u, 40397u), vec4<u32>(50564u, 2649u, 1u, 4294967295u), vec4<u32>(4294967295u, 95517u, 4294967295u, 0u), vec4<u32>(4294967295u, 71355u, 4294967295u, 62607u), vec4<u32>(28606u, 1u, 4294967295u, 48503u));

var<private> global2: Struct_1 = Struct_1(false);

var<private> global3: array<vec3<bool>, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(539f * -346f)))) * -1000f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(146f * arg_1.x), 1f);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-1564f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -102f))));
    var var_1 = ~vec3<u32>(87272u, u_input.e.x, 0u);
    let var_2 = -914f;
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(u_input.b.zx, vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -1000f)) + _wgslsmith_f_op_f32(957f - var_0))), countOneBits(-56815i), Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, var_1.x, 4294967295u, arg_1))) >= ~(~65681u))));
    var var_4 = Struct_1(false);
    return vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(96442i, u_input.b.x, u_input.d.x), u_input.b.ywx ^ u_input.b.xzy, vec3<i32>(1i, 2147483647i, u_input.b.x) ^ vec3<i32>(u_input.b.x, u_input.b.x, -1i)), u_input.b.wxw ^ ~u_input.d.wwz), 2147483647i), 563i);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    global0 = Struct_1(false);
    global2 = Struct_1(true);
    global0 = Struct_1(!any(vec4<bool>(global2.a, true, true, global2.a)) | (~_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.yy) <= ~u_input.a.x));
    let var_0 = !(!select(vec4<bool>(!global2.a, any(vec4<bool>(false, global0.a, global2.a, global0.a)), global0.a, u_input.c >= u_input.a.x), vec4<bool>(false, any(vec2<bool>(global0.a, global0.a)), true, false), !vec4<bool>(true, false, true, global0.a)));
    global2 = Struct_1(!all(var_0.wxz));
    return Struct_1(var_0.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var_0 = func_4(func_2(arg_1, u_input.e.x, -1000f), _wgslsmith_div_f32(108f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091f - 273f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1369f, 418f) - -979f)))));
    global3 = array<vec3<bool>, 30>();
    var var_1 = u_input.d;
    global3 = array<vec3<bool>, 30>();
    return !global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(func_1(-27945i, Struct_1(global2.a)), any(vec4<bool>(all(vec4<bool>(global0.a, global2.a, false, true)), true, global0.a, select(global2.a, false, true))), global0.a));
    let var_1 = u_input.d.x;
    global3 = array<vec3<bool>, 30>();
    var var_2 = func_4(~reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(-53216i, u_input.b.x), vec2<i32>(u_input.d.x, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1031f))) + _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(-8808i, 1i), vec2<f32>(-374f, -1844f), ~(-9306i), func_4(vec2<i32>(u_input.d.x, 14115i), -1000f))).x)));
    let var_3 = any(global3[_wgslsmith_index_u32(45798u, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-346f)))), _wgslsmith_div_i32(max(-15875i, var_1), -2147483647i), -710f, vec4<u32>(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(0u, 35024u, u_input.c), u_input.a.zzy), ~select(u_input.a.yzx, u_input.a.ywy, global3[_wgslsmith_index_u32(u_input.e.x, 30u)])), select(~(~u_input.e.x), u_input.e.x, !var_3 != var_3), ~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 15571u, 14778u), ~vec4<u32>(4294967295u, 1u, u_input.a.x, 4893u)), global1[_wgslsmith_index_u32(max(select(u_input.a.x, u_input.c, false), u_input.a.x), 27u)])));
}

