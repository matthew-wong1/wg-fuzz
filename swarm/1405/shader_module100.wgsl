struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: i32 = -38671i;

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(2153f + arg_1.x)), arg_1.x);
    var var_1 = _wgslsmith_div_u32(1u, 32630u >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c, 27357u), vec2<u32>(1u, arg_0.c.x), vec2<bool>(false, true)), ~arg_0.c) % 32u)) & 4234u;
    var_0 = _wgslsmith_f_op_f32(arg_0.a.x * arg_1.x);
    let var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0.b, _wgslsmith_mult_u32(u_input.c | 7968u, ~arg_0.c.x), max(~9700u, arg_0.c.x & arg_0.b)), ~vec4<u32>(arg_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.b, 4294967295u), vec3<u32>(41514u, arg_0.c.x, arg_0.b)), countOneBits(8714u), reverseBits(u_input.c)))), 32u)];
    var_0 = _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(402f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))))));
    return arg_0.d;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 1116f) * _wgslsmith_div_f32(1421f, 1275f))))) - _wgslsmith_div_vec2_f32(arg_0.a.wz, _wgslsmith_f_op_vec2_f32(-arg_0.a.wz)));
    let var_1 = ~vec2<i32>(67297i, 0i);
    var var_2 = 321f;
    global1 = _wgslsmith_mod_i32(u_input.a.x << (10102u % 32u), u_input.d);
    let var_3 = func_3(arg_0, _wgslsmith_f_op_vec3_f32(-arg_0.a.xzw));
    return !vec3<bool>(11814u < arg_0.c.x, !select(all(vec2<bool>(true, false)), false, false), false);
}

fn func_1() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, min(107201u, firstTrailingBit(u_input.c)), ~u_input.c), 15u)];
    var var_1 = func_2(global2[_wgslsmith_index_u32(abs(1u), 15u)]);
    var var_2 = ~_wgslsmith_div_i32(select(-19744i, _wgslsmith_add_i32(var_0.d.x, -48923i), var_1.x) ^ -14857i, _wgslsmith_mod_i32(16587i, -3334i));
    var var_3 = abs(var_0.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 375f) * _wgslsmith_f_op_f32(288f + 1066f)) - var_0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1065f, var_0.a.x))) * vec2<f32>(var_0.a.x, -544f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))));
    return -611f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.zyw, vec3<i32>(u_input.b.x, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.b.x, u_input.d), vec4<i32>(u_input.b.x, u_input.d, 740i, 28523i)))) | 1i, min(2147483647i, u_input.a.x >> (26216u % 32u)));
    let var_0 = u_input.c != (countOneBits(~u_input.c) & 14791u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -780f), 1f), -831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1286f)) - _wgslsmith_f_op_f32(-1000f * -501f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(988f))), 663f, 1f, _wgslsmith_f_op_f32(468f * -197f))), 54997u, vec2<u32>(4294967295u, 1u) & ~firstLeadingBit(vec2<u32>(29390u, 1u) & vec2<u32>(1257u, u_input.c)), ~vec3<i32>(~(-40258i), u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.a, u_input.b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(29764i, -2147483647i, -1i)) >> (u_input.c % 32u), var_1.d.x, u_input.b.x)), countOneBits(vec4<i32>(var_1.d.x, reverseBits(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(var_1.d.x, var_1.d.x, 0i))), ~var_1.d.x, _wgslsmith_mod_i32(68729i >> (u_input.c % 32u), u_input.b.x))));
}

