struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(0u, 42334u, 0u), vec2<i32>(2147483647i, 28413i)), Struct_1(vec3<u32>(4294967295u, 0u, 53769u), vec2<i32>(-1i, 1i)), Struct_1(vec3<u32>(86709u, 0u, 23436u), vec2<i32>(6489i, 55912i)), Struct_1(vec3<u32>(37857u, 13430u, 0u), vec2<i32>(2147483647i, 50673i)), Struct_1(vec3<u32>(4294967295u, 27432u, 0u), vec2<i32>(2147483647i, -47046i)), Struct_1(vec3<u32>(25790u, 4294967295u, 16933u), vec2<i32>(-43574i, 5851i)), Struct_1(vec3<u32>(1u, 1u, 57485u), vec2<i32>(-1441i, 28083i)), Struct_1(vec3<u32>(20639u, 6869u, 4294967295u), vec2<i32>(2147483647i, -1i)), Struct_1(vec3<u32>(1u, 41103u, 1u), vec2<i32>(1i, 19221i)), Struct_1(vec3<u32>(1u, 4294967295u, 70188u), vec2<i32>(-14606i, 24969i)), Struct_1(vec3<u32>(138995u, 56793u, 25302u), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<u32>(13054u, 126545u, 0u), vec2<i32>(1i, 1i)), Struct_1(vec3<u32>(27805u, 10760u, 4294967295u), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec3<u32>(44808u, 46501u, 1u), vec2<i32>(i32(-2147483648), 2147483647i)));

var<private> global1: f32 = -339f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 14>();
    var var_0 = global0[_wgslsmith_index_u32(71315u, 14u)];
    let var_1 = 1978f;
    let var_2 = Struct_1(var_0.a, u_input.a.zy);
    var var_3 = abs(var_0.a.x >> (_wgslsmith_dot_vec2_u32(var_2.a.yy >> ((var_2.a.xy ^ var_0.a.yy) % vec2<u32>(32u)), ~vec2<u32>(var_2.a.x, 0u)) % 32u));
    return 616f;
}

fn func_2() -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))))) + -1937f);
    global0 = array<Struct_1, 14>();
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 24885u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(62301u, 97045u, 15706u), vec3<u32>(33697u, 47769u, 40370u)), ~1u), 1u, 70552u), max(~(-vec2<i32>(2147483647i, u_input.a.x) ^ (u_input.a.xz ^ vec2<i32>(34400i, 1i))), max(~vec2<i32>(u_input.a.x, u_input.a.x) & (vec2<i32>(-70983i, u_input.a.x) << (vec2<u32>(35595u, 77890u) % vec2<u32>(32u))), -u_input.a.zy)));
    let var_1 = -var_0.b;
    global0 = array<Struct_1, 14>();
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, ~(10625u & var_0.a.x)), abs(~var_0.a.x) ^ abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 1u, 6697u), vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 1u)))), var_0.a.zx, vec2<u32>(1u, ~0u));
}

fn func_1(arg_0: vec3<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -439f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(-265f + -1000f))))));
    let var_0 = !(!(!select(!vec4<bool>(arg_0.x, false, true, arg_0.x), !vec4<bool>(true, false, arg_0.x, false), arg_0.x && arg_0.x)));
    let var_1 = var_0.zw;
    let var_2 = 4294967295u;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1033f)), -1580f));
    return vec3<u32>(~var_2, _wgslsmith_dot_vec2_u32(func_2(), vec2<u32>(abs(~7835u), abs(var_2))), 4294967295u);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = 1i;
    var var_1 = func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(true, false))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))).yy;
    let var_2 = abs(vec4<u32>(arg_1.a.x, ~firstTrailingBit(87882u), ~(~arg_1.a.x), ~arg_1.a.x)) ^ firstLeadingBit(~(vec4<u32>(var_1.x, 1u, 4294967295u, 21304u) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, 8896u, 58354u), vec4<u32>(var_1.x, arg_1.a.x, arg_1.a.x, 1u))));
    var_1 = ~vec2<u32>(reverseBits(12106u) << (_wgslsmith_sub_u32(var_2.x, _wgslsmith_div_u32(var_1.x, 6128u)) % 32u), 44249u);
    let var_3 = arg_1;
    return select(firstTrailingBit(arg_2.x), ~max(0i, -2147483647i), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(var_0.x, Struct_1(func_1(vec3<bool>(false, true, false)), u_input.a.zy), u_input.a), u_input.a.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, 6849i)), u_input.a.xx) & -(i32(-1i) * -9685i)));
}

