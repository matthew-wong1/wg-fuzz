struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1187f, vec2<u32>(70730u, 71400u));

var<private> global1: i32 = -39224i;

var<private> global2: array<vec2<f32>, 7>;

var<private> global3: array<Struct_1, 13>;

var<private> global4: array<vec2<f32>, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    global2 = array<vec2<f32>, 7>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-536f)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, select(vec2<u32>(global0.b.x, 4294967295u), global0.b << (u_input.a % vec2<u32>(32u)), select(arg_0.zy, arg_0.ww, arg_0.x)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, global0.b.x), global0.b))), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(4294967295u, u_input.a.x), max(global0.b, vec2<u32>(15523u, 0u))), vec2<u32>(1u, ~43214u), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(global0.b.x, u_input.b)), _wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(37719u, global0.b.x), global0.b), vec2<u32>(4294967295u, 1u))), global0.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(49937u, global0.b.x)) << (4294967295u % 32u)), 7u)]));
    global2 = array<vec2<f32>, 7>();
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b.x, var_0.b.x), vec3<u32>(u_input.b, 0u, var_0.b.x)), 31652u), global0.b.x, min(global0.b.x, abs(_wgslsmith_mult_u32(0u, ~1u))));
    return 4094u;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(~(global0.b.x >> (global0.b.x % 32u))), 13u)];
    global3 = array<Struct_1, 13>();
    var var_1 = global3[_wgslsmith_index_u32(0u | abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.b.x, global0.b.x, global0.b.x, 1u) ^ vec4<u32>(0u, 0u, global0.b.x, global0.b.x), firstLeadingBit(vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, var_0.b.x))), vec4<u32>(0u, 1u, abs(global0.b.x), 36175u))), 13u)];
    var var_2 = reverseBits(~_wgslsmith_div_vec4_u32(~(vec4<u32>(global0.b.x, 19570u, u_input.a.x, var_1.b.x) & vec4<u32>(var_1.b.x, 7275u, u_input.b, 0u)), vec4<u32>(~4294967295u, func_3(vec4<bool>(false, false, false, false), global0.a), 0u, 1u)));
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.x, firstTrailingBit(~global0.b.x), 0u), 13u)];
    return vec4<bool>(-742f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1920f - 1550f))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0 > arg_0), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(true, false, select(false, false, true)))), any(vec4<bool>(true, false, true, true)), false);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a * -1449f), -532f, _wgslsmith_f_op_f32(step(1567f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), global0.a))));
    global0 = Struct_1(var_0.x, ~vec2<u32>(0u, ~global0.b.x | (4294967295u >> (0u % 32u))));
    let var_1 = any(!func_2(firstTrailingBit(24212i)));
    var var_2 = !(!select(!(!vec3<bool>(true, var_1, var_1)), vec3<bool>(!var_1, var_1 & var_1, var_1), vec3<bool>(true, var_1 || var_1, all(vec4<bool>(true, false, true, var_1)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(ceil(-1337f)))), all(!func_2(-20722i)))), global0.b);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_0.xxx, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(343f, global0.a, -972f))), true)))), abs(0i), var_0.zyw, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

