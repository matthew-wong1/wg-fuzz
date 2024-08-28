struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(14578u, 1148u, 112733u, 1u, 1u, 24413u, 22174u, 16939u, 4294967295u, 4294967295u, 0u, 4294967295u, 0u, 865u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(29579u & arg_0.x, 41346u, ~1u)), ~(0u >> (~abs(global0[_wgslsmith_index_u32(arg_0.x, 14u)]) % 32u)));
    global0 = array<u32, 14>();
    var var_1 = Struct_1(true, 0i, _wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_0.xwx, arg_0.yzz))), arg_0.zyy));
    let var_2 = !(!vec2<bool>(var_1.a, var_1.a));
    return ~arg_0.yxz;
}

fn func_2() -> StorageBuffer {
    let var_0 = firstLeadingBit(-1i);
    global0 = array<u32, 14>();
    var var_1 = -385f;
    let var_2 = Struct_3(~(~(~vec4<i32>(0i, -16839i, -23790i, var_0)) ^ firstTrailingBit(u_input.c ^ vec4<i32>(u_input.c.x, 15804i, var_0, u_input.b))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 23065u, u_input.a, global0[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(47943u, 14u)], 30441u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], global0[_wgslsmith_index_u32(67555u, 14u)])) >> (~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], 4294967295u, 74708u) % vec4<u32>(32u)), vec4<u32>(13943u, 15130u, ~u_input.a, u_input.a | 27915u)), _wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1u, 14u)]), 14u)]), 1u), 7692u), Struct_2(func_3(min(vec4<u32>(u_input.a, 1u, 8874u, 16804u) ^ vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 0u, global0[_wgslsmith_index_u32(32960u, 14u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 31358u, 34591u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(26159u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15161u, 14u)], 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a), vec4<u32>(11265u, global0[_wgslsmith_index_u32(u_input.a, 14u)], 20964u, 0u))), 189f, vec3<bool>(true, true, false)), Struct_1(!any(vec4<bool>(false, true, false, true)), u_input.b, 0u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, -606f)))))), Struct_2(select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 14u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]), vec3<u32>(4294967295u, 30030u, 0u), vec3<bool>(false, true, true)) & _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(false, true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(8435u, global0[_wgslsmith_index_u32(1u, 14u)], 1u), vec3<u32>(1162u, u_input.a, 74482u))), Struct_1(true, 1i, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), ~1u, abs(4294967295u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(644f, 1929f), vec2<f32>(372f, 253f))), vec2<f32>(1f, 1f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(var_2.d.c, _wgslsmith_f_op_vec2_f32(-var_2.c.c)));
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -156f), -608f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.c.x, var_2.c.c.x, -350f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -310f), var_2.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f))), vec3<u32>(0u, 34393u, u_input.a), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1() -> StorageBuffer {
    global0 = array<u32, 14>();
    var var_0 = 7774u;
    var_0 = 45329u;
    var var_1 = Struct_1(false, 1i, 20842u);
    var var_2 = 1981u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    let var_0 = ~u_input.a;
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let x = u_input.a;
    s_output = func_1();
}

