struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<Struct_4, 10>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = -max(arg_1.x, (_wgslsmith_div_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]) | 1i) & global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xzx), u_input.c.x), 24u)]);
    var var_1 = _wgslsmith_f_op_f32(floor(global2.x));
    global0 = array<i32, 24>();
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    var_2 = Struct_4(!arg_2.b.b.x);
    return u_input.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    global0 = array<i32, 24>();
    let var_0 = u_input.a.x;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(u_input.c.x, max(~u_input.c.x, 18385u)), abs(u_input.c.x) >> (~(~4294967295u) % 32u)), 10u)];
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(min(_wgslsmith_sub_vec3_u32(u_input.c.wyz | u_input.c.zyy, u_input.c.xwz), ~vec3<u32>(u_input.c.x, 0u, 47799u)), reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.c.x), vec3<u32>(1u, 0u, u_input.c.x) | vec3<u32>(u_input.c.x, 0u, u_input.c.x)))), select(u_input.c.zwy, vec3<u32>(~6181u, u_input.c.x, ~func_3(arg_1.b, u_input.a, Struct_3(vec3<f32>(-626f, arg_0.x, 1000f), Struct_1(arg_1.b.x, vec4<bool>(var_1.a, false, var_1.a, true), u_input.b)))), true));
    var var_3 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(361f - _wgslsmith_f_op_f32(-global2.x)), -932f);
    return -516f;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(82678u, 10u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 702f)))))));
    var var_2 = global1[_wgslsmith_index_u32(~firstLeadingBit(1u), 10u)];
    var_2 = global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(14488u, _wgslsmith_sub_u32(select(u_input.c.x << (u_input.c.x % 32u), ~4294967295u, true), ~min(0u, u_input.c.x)))), 10u)];
    var var_3 = global2.zww;
    return Struct_1(true, !(!select(vec4<bool>(var_2.a, var_2.a, false, var_0.a), !vec4<bool>(var_2.a, true, false, true), any(arg_1.yz))), u_input.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> bool {
    global1 = array<Struct_4, 10>();
    var var_0 = ~max(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, firstTrailingBit(u_input.c.x)), vec2<u32>(u_input.c.x >> (u_input.c.x % 32u), u_input.c.x)), u_input.c.zz);
    global1 = array<Struct_4, 10>();
    var var_1 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(max(4294967295u, u_input.c.x), _wgslsmith_mod_u32(var_0.x, u_input.c.x), 27498u, 4294967295u)), ~vec4<u32>(17284u, 87976u >> (0u % 32u), ~var_0.x, var_0.x & 34058u)) & ~(~_wgslsmith_div_u32(~var_0.x, 1u));
    return _wgslsmith_f_op_f32(f32(-1f) * -463f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + global2.x), -296f);
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = false;
    var_0 = any(vec4<bool>(true, all(vec2<bool>(true, true)) == any(vec2<bool>(true, true)), func_5(func_4(_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0, 184f, global2.x), Struct_1(true, vec4<bool>(false, false, false, false), u_input.b))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), Struct_4(global2.x == -1673f), -55761i, Struct_3(vec3<f32>(-560f, -1164f, -1788f), Struct_1(true, vec4<bool>(true, false, false, false), 1i))), _wgslsmith_f_op_f32(-arg_0) < global2.x));
    global0 = array<i32, 24>();
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(260f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), (2147483647i ^ u_input.b) > global0[_wgslsmith_index_u32(u_input.c.x, 24u)])))), -1000f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-514f * global2.x)), 907f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -1000f))), global2.x, 337f, global2.x);
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global2.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2.x + -462f), -1000f, global2.x, -1159f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1000f, 2196f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1658f, global2.x) - vec4<f32>(global2.x, 892f, 659f, 175f)))), true != select(false, true, false))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 997f)) + global2.yy))));
    let var_1 = Struct_3(global2.yxz, Struct_1(_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(0u, 24u)], -31314i) != ~(-1i), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(-(~47559i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(70542u, 24u)], 1i) | _wgslsmith_clamp_i32(-1i, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.a.xx)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(212f)), _wgslsmith_f_op_f32(f32(-1f) * -764f)), func_4(global2.x, !var_1.b.b.xyz).b.xx)), var_1.a, -(-4184i & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(28981u & u_input.c.x, reverseBits(1u)), 24u)]), ~_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 41761u, u_input.c.x)), u_input.c ^ u_input.c));
}

