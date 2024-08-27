struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<u32>(0u, 1u), vec4<i32>(2147483647i, -13869i, 2147483647i, 2147483647i), false, Struct_1(vec2<u32>(48325u, 31302u), -1457f)), Struct_2(vec2<u32>(30159u, 4294967295u), vec4<i32>(i32(-2147483648), -32084i, 13325i, 54221i), true, Struct_1(vec2<u32>(0u, 51160u), -321f)), Struct_2(vec2<u32>(0u, 1u), vec4<i32>(0i, 1i, 24096i, i32(-2147483648)), false, Struct_1(vec2<u32>(83853u, 4294967295u), 1000f)), Struct_2(vec2<u32>(0u, 1u), vec4<i32>(0i, 0i, 51155i, 27934i), true, Struct_1(vec2<u32>(1u, 1u), -872f)), Struct_2(vec2<u32>(108751u, 1u), vec4<i32>(-1i, 2147483647i, 2147483647i, 0i), true, Struct_1(vec2<u32>(0u, 0u), 724f)), Struct_2(vec2<u32>(0u, 1u), vec4<i32>(-12893i, 237i, -59016i, -12336i), false, Struct_1(vec2<u32>(66424u, 92923u), -564f)));

var<private> global1: vec3<i32> = vec3<i32>(1i, -1i, 9636i);

var<private> global2: array<vec3<f32>, 5>;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> vec4<u32> {
    return ~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x)) & (vec4<u32>(0u, u_input.b.x, u_input.b.x, 73072u) ^ vec4<u32>(25589u, 4294967295u, 12084u, u_input.b.x)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x)), firstLeadingBit(vec4<u32>(71587u, u_input.b.x, 5634u, 21594u)))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(905f, -775f), _wgslsmith_f_op_f32(f32(-1f) * -109f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * -148f)))), _wgslsmith_f_op_f32(floor(-629f)));
}

fn func_1(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(-1567f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 16404u, u_input.b.x)), reverseBits(vec3<u32>(123583u, 52315u, u_input.b.x))), ~vec3<u32>(u_input.b.x, 25697u, 2554u)), 1i, _wgslsmith_div_vec4_u32(~abs(vec4<u32>(30147u, u_input.b.x, u_input.b.x, 53859u)), func_2()), vec3<u32>(_wgslsmith_div_u32(4294967295u, ~29681u), 4294967295u, u_input.b.x))));
    var var_1 = u_input.b;
    let var_2 = vec4<u32>(0u, ~reverseBits(25744u), u_input.b.x, 32715u);
    let var_3 = Struct_2(vec2<u32>(abs(~(~var_2.x)), var_1.x), ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2293i, 12871i, global1.x, arg_0.x) | vec4<i32>(global1.x, u_input.a, arg_0.x, arg_0.x), u_input.e | u_input.e, ~u_input.e)), global3[_wgslsmith_index_u32(1u, 1u)], Struct_1(var_2.wz & firstTrailingBit(vec2<u32>(var_2.x, var_1.x)), 1121f));
    return ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, var_3.a), ~var_2.x, 77267u, 47999u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec2<i32>(u_input.c.x, ~firstLeadingBit(-6065i)) & u_input.e.zy);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2303f * -266f)), 1669f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(484f * -157f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-647f, 290f, 1860f, -2025f) - vec4<f32>(-1265f, -392f, 1001f, -1797f)) - vec4<f32>(1f, 1f, 1f, 1f))), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(58365u, 0u, u_input.b.x, u_input.b.x)), func_1(u_input.c))), 1u)])));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * 244f), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = -vec3<i32>(_wgslsmith_clamp_i32(global1.x, _wgslsmith_clamp_i32(i32(-1i) * -63007i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1654i), vec2<i32>(u_input.d, 72758i)), 0i), ~38652i), firstTrailingBit(u_input.a) >> (((u_input.b.x >> (u_input.b.x % 32u)) ^ 45172u) % 32u), _wgslsmith_mod_i32(-2147483647i, 31754i));
    global2 = array<vec3<f32>, 5>();
    var var_4 = func_2().x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(4294967295u), abs(0u), firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x >> (firstLeadingBit(44736u) % 32u), ~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1419f, var_2.x) + _wgslsmith_f_op_vec2_f32(min(var_2.zx, vec2<f32>(-507f, var_2.x)))))));
}

