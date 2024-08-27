struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

var<private> global2: Struct_1;

var<private> global3: vec4<u32> = vec4<u32>(53986u, 4294967295u, 3451u, 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> vec2<bool> {
    global3 = vec4<u32>(u_input.a, ~global3.x | ~(~_wgslsmith_mult_u32(global3.x, 4294967295u)), 101841u, global2.b);
    let var_0 = vec3<u32>(18262u, 29791u, 30622u);
    global0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), -1163f))));
    global1 = global3.x;
    return arg_0.xz;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = vec2<i32>(arg_0.c.x, -11057i);
    global3 = vec4<u32>(2126u, 37759u, 1u, reverseBits(~100402u));
    var var_1 = u_input.c;
    let var_2 = any(select(!select(vec2<bool>(true, global2.a), !vec2<bool>(arg_1, false), true), !(!vec2<bool>(true, global2.a)), func_2(select(vec4<bool>(true, true, arg_1, arg_0.a), select(vec4<bool>(global2.a, false, arg_1, arg_1), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), arg_1), all(vec3<bool>(arg_1, false, global2.a))), arg_1)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f * 255f)))))));
}

fn func_3() -> vec3<f32> {
    let var_0 = global2.c.x;
    global2 = Struct_1(!(!(global2.a | !global2.a)), ~_wgslsmith_sub_u32(abs(~24690u), global2.b), global2.c);
    var var_1 = ~(~(-countOneBits(vec4<i32>(1i, global2.c.x, -17441i, -9023i)) << (~(~vec4<u32>(56909u, global3.x, 17376u, u_input.a)) % vec4<u32>(32u))));
    global2 = Struct_1(false, min(select(u_input.d ^ u_input.c.x, 1u, true), ~(~4294967295u)) >> (global3.x % 32u), -(-var_1.zy << (global3.xz % vec2<u32>(32u))));
    var var_2 = ~24592u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-875f, 425f, -822f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1290f, 478f, -1607f)))), vec3<f32>(_wgslsmith_f_op_f32(-1202f * _wgslsmith_f_op_f32(func_1(Struct_1(true, 1u, var_1.wx), global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), -1145f), vec3<bool>(select(global2.a, global2.a, !global2.a), all(vec2<bool>(global2.a, false)), !global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(194f, 945f)), _wgslsmith_f_op_f32(f32(-1f) * -900f), _wgslsmith_f_op_f32(func_1(Struct_1(false, u_input.a, vec2<i32>(0i, 2147483647i)), global2.a))) - vec3<f32>(-717f, -578f, 803f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-303f, -1818f, 484f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xx);
    global0 = abs(4294967295u ^ reverseBits(~global3.x));
    var var_2 = !(!select(!vec4<bool>(global2.a, true, global2.a, global2.a), select(select(vec4<bool>(true, true, global2.a, global2.a), vec4<bool>(global2.a, global2.a, false, true), global2.a), !vec4<bool>(true, true, global2.a, global2.a), false), all(vec3<bool>(true, true, true))));
    var_2 = !(!vec4<bool>(true, global2.a, false, any(var_2.wwx)));
    let var_3 = Struct_1(global2.a, min(~106830u, 1u), vec2<i32>(max(max(-2147483647i, -global2.c.x), -34457i), 2147483647i));
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec3_u32(select(global3.xxz ^ ~vec3<u32>(1u, 36282u, 37041u), abs(vec3<u32>(69843u, u_input.d, global2.b)), vec3<bool>(any(vec3<bool>(var_2.x, true, var_3.a)), true, true)), vec3<u32>(_wgslsmith_clamp_u32(global3.x, _wgslsmith_mod_u32(1u, u_input.b.x), global2.b ^ 33703u), _wgslsmith_div_u32(16372u, u_input.d), ~(~16660u))));
    let var_5 = global2.c;
    var var_6 = ~(~min(var_4, global2.b) << (1284u % 32u)) >= max(~(var_3.b ^ global2.b) ^ min(~var_4, global2.b), ~(36992u >> (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_3.b);
}

