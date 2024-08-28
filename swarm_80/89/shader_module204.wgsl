struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(27175i, i32(-2147483648), 2147483647i), vec3<i32>(34725i, 0i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -33716i, -38700i), vec3<i32>(12543i, -25285i, 38003i), vec3<i32>(8135i, 2147483647i, 2147483647i), vec3<i32>(-1i, -31520i, i32(-2147483648)), vec3<i32>(-5771i, i32(-2147483648), 0i), vec3<i32>(33070i, 39532i, -24193i), vec3<i32>(2147483647i, -15538i, -1i), vec3<i32>(-5249i, -1i, 9106i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(20679i, -44166i, -44035i));

var<private> global3: Struct_4;

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global4 = vec4<i32>(-_wgslsmith_add_i32(~(~global4.x), ~0i), _wgslsmith_dot_vec3_i32(u_input.e.yyz & max(~vec3<i32>(0i, global4.x, u_input.e.x), vec3<i32>(global3.a.a.b, 9506i, global4.x)), firstTrailingBit(countOneBits(global2[_wgslsmith_index_u32(global3.a.a.a.x, 13u)]))), countOneBits(global4.x), global4.x);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-610f, 411f) + _wgslsmith_f_op_f32(-554f * -1317f)), -233f, !global3.a.a.c.b)), 1f) + _wgslsmith_f_op_f32(trunc(1609f)));
    let var_1 = true;
    var var_2 = vec3<f32>(-110f, _wgslsmith_f_op_f32(f32(-1f) * -148f), 206f);
    let var_3 = select(!select(vec2<bool>(false, 36138u > arg_0), select(!global3.a.a.c.c.xw, vec2<bool>(false, var_1), global3.a.a.c.c.xx), true), select(global3.a.a.c.c.wx, global3.a.a.c.c.yx, all(select(!vec4<bool>(true, global3.a.a.c.b, var_1, var_1), select(global3.a.a.c.c, global3.a.a.c.c, global3.a.a.c.c.x), vec4<bool>(false, global3.a.a.c.c.x, global3.a.a.c.c.x, true)))), select(vec2<bool>(all(select(global3.a.a.c.c.yxw, global3.a.a.c.c.yww, false)), true || var_1), !vec2<bool>(any(global3.a.a.c.c.xx), false), global3.a.a.c.c.zw));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2238f * 1874f));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(615f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f))), 686f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(4467u)), -308f)));
    return global3.a.a.c.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = u_input.a.x > ~(countOneBits(u_input.a.x) >> (u_input.a.x % 32u));
    global0 = array<Struct_3, 25>();
    var var_1 = Struct_1(-select(-vec3<i32>(4173i, global4.x, 42343i), global2[_wgslsmith_index_u32(abs(u_input.a.x), 13u)], var_0), global3.a.a.c.b, !select(select(vec4<bool>(global3.a.a.c.c.x, global3.a.a.c.b, var_0, var_0), vec4<bool>(true, global3.a.a.c.b, global3.a.a.c.c.x, arg_2.x), arg_2.x && var_0), global3.a.a.c.c, !func_2(global3.a.a.c, 1u, Struct_4(Struct_3(Struct_2(arg_0, u_input.c.x, Struct_1(vec3<i32>(global4.x, global3.a.a.b, -42726i), false, vec4<bool>(false, true, global3.a.a.c.c.x, false), vec2<i32>(global3.a.a.c.d.x, -1i))))), u_input.a.x)), -max(reverseBits(_wgslsmith_clamp_vec2_i32(global4.zw, u_input.d, vec2<i32>(1853i, 2147483647i))), global4.xz));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(447f + arg_1)));
    var_1 = global3.a.a.c;
    return var_1.c.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(global3.a.a.c.a.x, _wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(2147483647i), u_input.b >> (1u % 32u)), -max(global4.x, global4.x)), 5547i);
    let var_1 = u_input.e.xyy;
    let var_2 = global4.x;
    global0 = array<Struct_3, 25>();
    global1 = ~(-_wgslsmith_clamp_i32(firstLeadingBit(-u_input.b), -1i, select(1i, _wgslsmith_add_i32(global3.a.a.c.a.x, -2147483647i), global3.a.a.c.c.x)));
    var var_3 = func_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(16809u, 0u, global3.a.a.a.x), ~vec3<u32>(u_input.a.x, 4294967295u, global3.a.a.a.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, global3.a.a.a.x), global3.a.a.a.x)) ^ vec2<u32>(select(firstTrailingBit(u_input.a.x), abs(20653u), !global3.a.a.c.b), _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(4294967295u, global3.a.a.a.x))), _wgslsmith_f_op_f32(487f - _wgslsmith_f_op_f32(floor(-326f))), !(!vec2<bool>(all(vec3<bool>(false, false, global3.a.a.c.b)), global3.a.a.c.c.x)));
    var_3 = global3.a.a.c.c.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(530f, -1067f, func_2(global3.a.a.c, _wgslsmith_clamp_u32(~1u, global3.a.a.a.x, u_input.a.x), Struct_4(Struct_3(Struct_2(vec2<u32>(0u, 1u), var_1.x, global3.a.a.c))), ~(~global3.a.a.a.x)).x)), ~vec4<u32>(~abs(70979u), abs(~0u), global3.a.a.a.x, global3.a.a.a.x), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f * -2909f)), 323f, func_2(global3.a.a.c, 1u, Struct_4(Struct_3(global3.a.a)), 12901u | global3.a.a.a.x).x))), select(vec3<u32>(global3.a.a.a.x, u_input.a.x, 69151u), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33024u, 1u, u_input.a.x, 0u), vec4<u32>(global3.a.a.a.x, global3.a.a.a.x, u_input.a.x, 25302u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 10795u, global3.a.a.a.x, u_input.a.x), vec4<u32>(22618u, 114263u, 0u, 95197u)), 1u), ~max(vec3<u32>(33660u, 1u, 31384u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), !all(global3.a.a.c.c.xwz)), vec3<bool>(!global3.a.a.c.c.x | true, 706f <= _wgslsmith_f_op_f32(round(337f)), !(-28372i != var_1.x))));
}

