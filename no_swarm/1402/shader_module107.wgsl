struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(16510i, -1i, 1i, -21i), vec4<i32>(-4124i, i32(-2147483648), 24478i, -31830i), vec4<i32>(-56162i, 32411i, 17699i, 1i), vec4<i32>(2147483647i, 0i, -14575i, -10054i), vec4<i32>(0i, -1i, 0i, 30254i), vec4<i32>(-58092i, i32(-2147483648), 0i, 6074i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-40427i, i32(-2147483648), -63817i, 24137i), vec4<i32>(1i, -8259i, 1112i, 0i), vec4<i32>(2147483647i, -68138i, -46938i, 10276i), vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(-31395i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), 8328i, 14494i, 0i), vec4<i32>(2147483647i, 0i, -65015i, 5572i), vec4<i32>(i32(-2147483648), 0i, -1i, 1549i), vec4<i32>(2147483647i, -36538i, 1i, -1i), vec4<i32>(62990i, 2147483647i, -1i, 54714i), vec4<i32>(18947i, -8378i, -23285i, -1i), vec4<i32>(-33297i, -2171i, 1i, 7025i), vec4<i32>(-18543i, -18175i, 0i, 1i), vec4<i32>(-69290i, -1i, 36673i, -14473i), vec4<i32>(-17795i, 0i, 5752i, -496i), vec4<i32>(44517i, -30987i, 1991i, -22161i), vec4<i32>(1i, -19789i, -19330i, -1i), vec4<i32>(-1i, 0i, 39877i, 2147483647i), vec4<i32>(0i, -1i, 51709i, 7909i), vec4<i32>(22476i, -18136i, 1i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 37268i), vec4<i32>(-83814i, 7382i, -5561i, 28041i), vec4<i32>(2147483647i, 4625i, 1i, 2147483647i));

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global1 = array<vec4<i32>, 30>();
    return reverseBits(min(~global0[_wgslsmith_index_u32(0u, 1u)], abs(-30079i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global1 = array<vec4<i32>, 30>();
    global1 = array<vec4<i32>, 30>();
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 4u)];
    let var_1 = 4294967295u;
    let var_2 = func_3();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1642f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f - 479f) + _wgslsmith_f_op_f32(max(arg_1.b, -1596f))))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = 1i;
    var_0 = -(-27359i & _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(firstTrailingBit(~arg_0), 30u)], abs(vec4<i32>(21863i, arg_1.a, 34874i, arg_1.a))));
    var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(-vec2<i32>(-5672i, u_input.a))) << (countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(8990u, arg_0), vec2<u32>(arg_0, 67026u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(-2373i, global0[_wgslsmith_index_u32(1u, 1u)]) >> (arg_0 % 32u)), 2147483647i));
    let var_1 = arg_1;
    let var_2 = arg_1;
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(1i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-507f, -1035f), _wgslsmith_f_op_f32(func_4(~(~16580u), Struct_1(1i, _wgslsmith_f_op_f32(func_2(vec4<i32>(19357i, u_input.b, 2147483647i, 0i), Struct_1(-33580i, -1000f)))))))));
    global0 = array<i32, 1>();
    let var_1 = vec4<bool>(true, true, false, true);
    global0 = array<i32, 1>();
    var var_2 = 0u;
    return global2[_wgslsmith_index_u32(1u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global1 = array<vec4<i32>, 30>();
    var var_0 = func_1();
    global1 = array<vec4<i32>, 30>();
    global0 = array<i32, 1>();
    global2 = array<Struct_1, 4>();
    let var_1 = Struct_1(6279i, _wgslsmith_f_op_f32(sign(var_0.b)));
    global1 = array<vec4<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(vec4<u32>(1u, 1u, 0u, 1u)) & ~vec4<u32>(59559u, 24010u, 1u, 17945u)) ^ (vec4<u32>(_wgslsmith_sub_u32(195u, 1u), reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(52388u, 4294967295u), vec2<u32>(4294967295u, 15659u)), 1u) >> (~abs(vec4<u32>(9744u, 61925u, 35633u, 33694u)) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(firstLeadingBit(~33785u), ~4294967295u, ~(~26198u), 1u)), 1u)], vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), _wgslsmith_clamp_u32(11579u, 51782u, 1u), ~11719u), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(66752u, 1u, 97480u), vec3<u32>(4294967295u, 4294967295u, 1u)))), abs(28811u), abs(reverseBits(44893u) >> (~4294967295u % 32u))));
}

