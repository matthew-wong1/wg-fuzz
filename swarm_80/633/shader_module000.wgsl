struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(1180f, -1000f), vec2<f32>(733f, -377f), vec2<f32>(260f, 625f), vec2<f32>(610f, -1000f), vec2<f32>(2041f, 758f), vec2<f32>(-870f, 1070f), vec2<f32>(-393f, -296f), vec2<f32>(1049f, 264f), vec2<f32>(-238f, 510f), vec2<f32>(-793f, -958f), vec2<f32>(165f, -1329f));

var<private> global3: array<vec3<u32>, 25>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global2 = array<vec2<f32>, 11>();
    let var_0 = !(!(!select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, false), !global0.x)));
    global3 = array<vec3<u32>, 25>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1197f);
    global1 = vec2<u32>(_wgslsmith_add_u32(global1.x, 10092u), _wgslsmith_dot_vec3_u32(u_input.a | ~vec3<u32>(1u, 0u, global1.x), ~vec3<u32>(u_input.a.x, global1.x, 56709u)) | 38838u);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(961f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1350f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-1593f * _wgslsmith_f_op_f32(f32(-1f) * -1691f)))))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global3 = array<vec3<u32>, 25>();
    let var_0 = !(!global0.x);
    var var_1 = _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(arg_0.c.x, 16830i, -reverseBits(-1i)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(606f, -832f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(192f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = 979f;
    return !vec4<bool>(false, arg_0.e.x, u_input.a.x != 592u, global0.x);
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<f32>, 11>();
    global1 = reverseBits(~vec2<u32>(9404u, 0u));
    let var_0 = Struct_1(select(false, all(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, false), vec4<bool>(false, global0.x, global0.x, false))), false), !select(func_2(Struct_1(global0.x, vec4<bool>(true, global0.x, false, false), vec2<i32>(0i, -1i), 1u, vec4<bool>(global0.x, global0.x, false, true))), vec4<bool>(any(vec4<bool>(true, global0.x, false, global0.x)), true, !global0.x, false), vec4<bool>(select(global0.x, true, true), global0.x, global0.x, !global0.x)), ~(~vec2<i32>(firstTrailingBit(-37598i), _wgslsmith_add_i32(-33093i, 36185i))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 33744u, u_input.a.x), vec3<u32>(46824u, 4294967295u, 0u)), 0u)), select(~_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(global1.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, global1.x, global1.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 10996u, 23014u), vec3<u32>(23894u, u_input.a.x, 4294967295u)), (u_input.a.x == 4294967295u) | global0.x)), !func_2(Struct_1(global0.x, select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, false, false), global0.x), vec2<i32>(-2147483647i, -1i), u_input.a.x ^ 10429u, !vec4<bool>(false, global0.x, global0.x, global0.x))));
    let var_1 = select(vec3<bool>(any(global0.xy), _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zz) >= ~(~0u), false), var_0.e.yzw, select(any(vec3<bool>(true, true, true)), !global0.x, false & select(!global0.x, all(var_0.b.xw), !global0.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -223f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(382f, 329f)))));
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = global1.x;
    let var_1 = ~arg_2.c;
    let var_2 = Struct_1(!all(arg_3.b), arg_2.e, vec2<i32>(abs(-888i), ~arg_3.c.x), global1.x, select(select(arg_3.b, !arg_2.b, any(!arg_2.b.zwx)), !arg_3.b, !arg_3.b));
    global1 = countOneBits(reverseBits(u_input.a.xy));
    return -16209i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(~vec2<u32>(~(global1.x << (global1.x % 32u)), 24005u), reverseBits(vec2<u32>(~(~u_input.a.x), u_input.a.x ^ ~u_input.a.x)), select(global0.x, true, !global0.x));
    let var_0 = true;
    var var_1 = min(min(1u, 1u), u_input.a.x);
    global3 = array<vec3<u32>, 25>();
    var_1 = 4294967295u;
    var var_2 = countOneBits(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-247f, 314f) * vec2<f32>(-998f, 355f)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(max(global1.x, 24313u), 11u)]), !global0.xy)), true, Struct_1(!var_0 & true, vec4<bool>(global0.x, var_0, !global0.x, true), ~(~vec2<i32>(1i, 2147483647i)), abs(global1.x) << (0u % 32u), vec4<bool>(true, true, true, true)), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.yx & abs(u_input.a.zx), u_input.a.yx, !vec2<bool>(all(vec3<bool>(global0.x, global0.x, true)), true)), vec2<i32>(-abs(select(-9127i, 0i, true)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, -524f) - global2[_wgslsmith_index_u32(0u, 11u)]) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(684f, 357f), vec2<f32>(215f, 654f), false))), true, Struct_1(!global0.x, vec4<bool>(false, var_0, var_0, true), ~vec2<i32>(2147483647i, 28581i), global1.x & global1.x, !vec4<bool>(var_0, true, var_0, true)), func_1())), ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4416i, -1i, -1i, -41632i), vec4<i32>(0i, -64679i, 37092i, 0i)) | _wgslsmith_div_i32(-2147483647i, -7858i), -46303i));
}

