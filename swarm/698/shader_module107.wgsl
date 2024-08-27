struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<i32, 4> = array<i32, 4>(5132i, 0i, i32(-2147483648), 139i);

var<private> global2: bool = true;

var<private> global3: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(1i, -1i, 2147483647i, 15845i), vec4<i32>(1950i, -1i, i32(-2147483648), 40596i), vec4<i32>(2147483647i, -19893i, 1i, -56326i), vec4<i32>(-40944i, -1i, 31717i, 1i), vec4<i32>(0i, -14304i, -1i, -24665i), vec4<i32>(0i, 0i, -22822i, -1i), vec4<i32>(0i, -3590i, 78994i, 14992i), vec4<i32>(-1i, 0i, 42466i, -37701i), vec4<i32>(0i, -35599i, -1i, -32349i), vec4<i32>(0i, 1i, 8722i, 2147483647i), vec4<i32>(-59238i, 16559i, 0i, -1i), vec4<i32>(-3064i, 4865i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 4134i, 28226i, 0i), vec4<i32>(2147483647i, -18837i, -1i, 7088i), vec4<i32>(-1i, 0i, 3182i, 0i), vec4<i32>(19869i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 1i, 703i), vec4<i32>(1i, -15632i, -5866i, 23425i), vec4<i32>(1i, 1i, 2147483647i, 0i), vec4<i32>(26770i, -1i, 24245i, 15536i), vec4<i32>(-59163i, 0i, i32(-2147483648), -1i), vec4<i32>(-1i, 5088i, -8910i, -15371i), vec4<i32>(49617i, 0i, 1i, -8143i));

var<private> global4: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = countOneBits(-vec3<i32>(i32(-1i) * -u_input.a, -abs(global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), -1i));
    global3 = array<vec4<i32>, 23>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1311f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(959f + 338f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-975f + 901f))))), select(~(~u_input.c) | (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, 521u, u_input.b), vec4<u32>(u_input.b, 30366u, u_input.c.x, 58156u)) ^ u_input.c), vec4<u32>(21062u, ~(0u << (1u % 32u)), _wgslsmith_mult_u32(countOneBits(50678u), 19802u), u_input.b), !vec4<bool>(global0.x, global0.x, global0.x, !global0.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1701f)))) + _wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-462f, 1000f)), -554f)) * _wgslsmith_f_op_f32(f32(-1f) * -1439f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(769f + -158f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1110f)) + _wgslsmith_f_op_f32(1000f * -1000f)))))));
    let var_2 = 4294967295u;
    var var_3 = 0i;
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.b.x, 56025u, 4294967295u, 46275u), ~vec4<u32>(0u, var_1.b.x, 16277u, u_input.c.x)), ~max(vec4<u32>(u_input.c.x, 68850u, 0u, var_2), u_input.c)), 86765u);
}

fn func_2() -> Struct_2 {
    global0 = !vec4<bool>(false, u_input.c.x <= _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), u_input.b, ~1u), ~u_input.c.x >= 52466u, false);
    global2 = min(-3918i, ~2147483647i) != (1i >> (_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 44992u), vec4<u32>(4294967295u, u_input.b, u_input.c.x, 1u))), u_input.c) % 32u));
    global1 = array<i32, 4>();
    var var_0 = Struct_2(vec4<u32>(0u, func_3(), 515u, u_input.b), max(reverseBits(vec2<u32>(~u_input.b, u_input.c.x)), ~u_input.c.ww), _wgslsmith_div_vec3_f32(vec3<f32>(404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f + -446f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(929f * 512f), _wgslsmith_f_op_f32(f32(-1f) * -1446f), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))));
    global4 = _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(1u, var_0.b.x, var_0.a.x, 1u));
    return Struct_2((~(~vec4<u32>(1u, 96544u, u_input.c.x, var_0.b.x)) | (~var_0.a | u_input.c)) ^ ~u_input.c, firstTrailingBit(firstLeadingBit(~(~u_input.c.xy))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(var_0.c.x, var_0.c.x, 481f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)))), vec3<bool>(true || global0.x, true, global0.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(arg_0.a.c.yx, select(vec4<u32>(0u, select(68780u, 42950u, global0.x), 0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.a.b.x, 65327u), ~u_input.b)), countOneBits(select(u_input.c, arg_0.a.a, vec4<bool>(global0.x, true, global0.x, global0.x))) & ~u_input.c, !select(vec4<bool>(false, true, true, false), !vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(true, false, global0.x, true), vec4<bool>(true, true, global0.x, global0.x), false))), vec2<f32>(-2247f, arg_0.a.c.x), 1820f);
    global0 = vec4<bool>(true, !global0.x, global0.x, global0.x && all(select(vec4<bool>(false, true, global0.x, false), !vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(~vec4<u32>(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, u_input.c.x, var_0.b.x, 30808u), abs(u_input.c)), arg_0.a.b.x, u_input.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_0.a.a.x, select(var_0.b.x, arg_1, global0.x) & 0u), vec2<u32>(var_0.b.x, ~(var_0.b.x & var_0.b.x)), ~u_input.c.wz), arg_0.a.c);
    var var_2 = var_0.b.xy;
    global2 = true;
    return var_1;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    return func_4(Struct_4(func_2()), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(20096u, 23u)];
    var var_1 = func_1(u_input.a, 2147483647i, vec4<bool>(global0.x, false, true, global0.x));
    global4 = 1u;
    var var_2 = global0.x;
    let var_3 = ~vec3<i32>(var_0.x, ~(_wgslsmith_dot_vec2_i32(var_0.wz, vec2<i32>(9922i, 2147483647i)) ^ abs(var_0.x)), ~(-37316i | _wgslsmith_mult_i32(1i, var_0.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(383f, _wgslsmith_f_op_f32(floor(238f)), _wgslsmith_f_op_f32(abs(1415f)), 177f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.x, -2256f, 1000f, var_1.c.x))))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(279f, var_1.c.x, 216f, -1310f) + vec4<f32>(1159f, var_1.c.x, 1036f, var_1.c.x)) - vec4<f32>(-1615f, var_1.c.x, -1000f, var_1.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, 308f, var_1.c.x))))));
    global4 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2147483647i, _wgslsmith_dot_vec3_i32(reverseBits(select(select(var_0.zzw, var_3, true), var_0.wyz, global0.xxy)), vec3<i32>(-52163i, global1[_wgslsmith_index_u32(~(~64301u), 4u)], _wgslsmith_clamp_i32(var_0.x | global1[_wgslsmith_index_u32(4294967295u, 4u)], -global1[_wgslsmith_index_u32(u_input.c.x, 4u)], var_0.x))));
}

