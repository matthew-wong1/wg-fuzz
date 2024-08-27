struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 1u, 6080u, 4294967295u, 18060u, 1u, 26959u, 28462u, 0u, 0u, 0u, 1u, 1u, 52353u, 18606u, 13235u, 1u, 45247u, 0u, 27474u, 4294967295u, 35634u, 15232u, 1u, 19119u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    return _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mod_u32(u_input.a.x, 1u));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_2(-u_input.b);
    var var_1 = Struct_2(~4654i);
    var_1 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, -2147483647i, 0i), vec4<i32>(1i, u_input.b, var_1.a, -11099i))), (vec2<i32>(var_0.a, var_0.a) ^ vec2<i32>(2147483647i, var_0.a)) | vec2<i32>(-1i, var_1.a))));
    var var_2 = _wgslsmith_f_op_f32(min(-1025f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1765f, -1167f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, 235f)), _wgslsmith_div_f32(2224f, 1692f)))))));
    let var_3 = !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(733f * -720f), _wgslsmith_f_op_f32(max(552f, -1462f)))))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(259f + 582f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(step(734f, 1000f))))));
    return reverseBits(firstLeadingBit(vec3<i32>(~firstTrailingBit(2147483647i), var_0.a, -u_input.b)));
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_0 = ((~func_3(-13933i) | vec3<i32>(~u_input.b, max(u_input.b, -17394i), u_input.b)) >> (vec3<u32>(~(~4294967295u), ~(~39710u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.a.x)) % vec3<u32>(32u))) ^ (~(-max(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(29397i, u_input.b, 18911i))) | _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(u_input.b), -u_input.b, firstLeadingBit(u_input.b)), vec3<i32>(func_3(440i).x, 2147483647i, select(u_input.b, -55633i, false))));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    return Struct_2(-1i << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 50467u, 4294967295u) << (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33666u, 26u)], 26u)]) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 4294967295u, 0u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(226u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], 0u, u_input.a.x))), vec4<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 26u)], 26u)], 5944u << (u_input.a.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 18854u), u_input.a), 26u)], u_input.a.x)), 26u)] % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_0 = !vec2<bool>(any(vec2<bool>(select(true, true, true), true)), func_3(max(32636i, arg_0.a)).x < 2147483647i);
    global0 = array<u32, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1472f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1793f - -258f) + -2211f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(f32(-1f) * -665f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(952f, 647f) + -885f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_1(-vec3<i32>(u_input.b, -1679i, -23180i)), 26u)], 26u)]) >> (~37303u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-774f + -1379f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-298f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), func_2())))));
}

