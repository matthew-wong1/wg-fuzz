struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 4294967295u, 26292u), vec3<u32>(28167u, 34134u, 1u), vec3<u32>(43517u, 28386u, 4294967295u), vec3<u32>(0u, 9507u, 4294967295u), vec3<u32>(45626u, 4718u, 0u), vec3<u32>(14211u, 46540u, 43631u), vec3<u32>(1u, 0u, 41880u), vec3<u32>(21119u, 88566u, 53870u), vec3<u32>(0u, 32770u, 0u), vec3<u32>(1u, 4294967295u, 55330u));

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: array<u32, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    global2 = array<u32, 23>();
    let var_0 = vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(~u_input.e, 23u)]);
    var var_1 = ~(arg_0.x >> (~(~global2[_wgslsmith_index_u32(u_input.d >> (var_0.x % 32u), 23u)]) % 32u));
    var var_2 = _wgslsmith_clamp_u32(~var_0.x, countOneBits(_wgslsmith_mult_u32(1u, var_0.x & global2[_wgslsmith_index_u32(firstTrailingBit(31u), 23u)])), 1u ^ _wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 23u)], 23u)], 4294967295u, 27479u, 3797u))), ~(~vec4<u32>(4294967295u, 12246u, 66755u, global2[_wgslsmith_index_u32(var_0.x, 23u)]))));
    global2 = array<u32, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2011f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec2<u32>) -> u32 {
    return ~31846u;
}

fn func_2() -> vec2<bool> {
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    global2 = array<u32, 23>();
    global1 = array<bool, 2>();
    var var_0 = -168f;
    return select(vec2<bool>(global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(func_3(Struct_4(true, vec4<i32>(u_input.b.x, -2147483647i, -12550i, 36342i)), vec2<u32>(50245u, 29162u), vec2<u32>(global2[_wgslsmith_index_u32(u_input.d, 23u)], global2[_wgslsmith_index_u32(u_input.d, 23u)])), 4294967295u)), 2u)], global1[_wgslsmith_index_u32(~(~(~76717u)), 2u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(17443u, 23u)] >> (9777u % 32u), global2[_wgslsmith_index_u32(0u, 23u)] & 0u), 2u)]), vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, u_input.e), 2u)], false));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_4(arg_2.x, vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.c, u_input.b.x) | 0i, ~(~arg_3), -88268i) & max(-max(u_input.b, vec4<i32>(9286i, u_input.b.x, u_input.c, arg_3)), abs(vec4<i32>(-1i, 1i, 1i, -51015i))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 754f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(363f, -299f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) - _wgslsmith_f_op_vec2_f32(round(arg_0.xz))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -563f))));
    var var_3 = Struct_1(vec2<f32>(-136f, _wgslsmith_f_op_f32(1815f - 519f)), vec2<f32>(_wgslsmith_f_op_f32(-502f + arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(635f)) - _wgslsmith_f_op_f32(arg_0.x * -1670f))))));
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1.x, -1157f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * -1887f)) * var_1.b.x)), vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1053f, -570f))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(var_1.b.x + arg_0.x)))))));
    return Struct_2(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.c << ((18670u << (firstLeadingBit(_wgslsmith_mod_u32(4294967295u, u_input.d)) % 32u)) % 32u), -_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, -u_input.b.x), -u_input.c ^ -2147483647i));
    global1 = array<bool, 2>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, _wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_div_f32(347f, 816f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(912f)) * _wgslsmith_f_op_f32(-336f + -1166f))), 1095f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b.wxw, Struct_1(vec2<f32>(1764f, 388f), vec2<f32>(1133f, -244f)))) - _wgslsmith_f_op_f32(ceil(1246f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-365f * -108f), _wgslsmith_f_op_f32(1000f + -773f))))), !(!func_2()), ~(-3627i));
    global1 = array<bool, 2>();
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, -325f)) * vec3<f32>(737f, var_1.a, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(floor(1058f))), _wgslsmith_f_op_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f - -1934f)) * _wgslsmith_f_op_f32(-var_1.a))), !select(vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(12140u, 2u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15641u, 23u)], 2u)]), !(!global1[_wgslsmith_index_u32(0u, 2u)])), -abs(countOneBits(_wgslsmith_mult_i32(u_input.b.x, -16994i))));
    var var_3 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(-u_input.b.yw, u_input.b.zy), select(~max(-28221i << (global2[_wgslsmith_index_u32(0u, 23u)] % 32u), min(-33928i, 1807i)), u_input.c, false), u_input.b.x);
    var var_4 = min(-1i, reverseBits(countOneBits(-u_input.b.x & 0i)));
    global0 = array<vec3<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(min(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(48719u, ~1u), 23u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, global2[_wgslsmith_index_u32(1u, 23u)] << (u_input.e % 32u)), global0[_wgslsmith_index_u32(~select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6586u, 23u)], 23u)], 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(48234u, 2u)]), 10u)])), 34124u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(246f, 1149f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a + var_1.a))))));
}

