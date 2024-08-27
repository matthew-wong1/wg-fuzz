struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(1450f), Struct_3(-554f), Struct_3(1135f), Struct_3(1167f), Struct_3(-1025f), Struct_3(937f), Struct_3(-545f), Struct_3(-569f), Struct_3(-539f), Struct_3(-301f), Struct_3(675f), Struct_3(1953f), Struct_3(529f));

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 12> = array<f32, 12>(-584f, -286f, 1533f, 1511f, -1013f, 1445f, -675f, -576f, -1000f, -1157f, 1758f, 615f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = array<Struct_3, 13>();
    var var_0 = true;
    global0 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32((firstTrailingBit(1u) ^ (u_input.b | u_input.b)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 0u), ~vec3<u32>(0u, 37316u, 0u)) % 32u), 12u)]))));
    var var_2 = true;
    return var_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 12u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 12u)])), -993f)));
}

fn func_2() -> u32 {
    let var_0 = select(vec4<bool>(true, any(vec2<bool>(true, true)), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, false, false), false)), !all(vec4<bool>(true, true, true, true))), vec4<bool>(func_3(), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true, !any(vec2<bool>(true, true))), all(vec4<bool>(true, true & (u_input.d.x > -1i), all(vec4<bool>(true, false, false, false)), true)));
    global0 = array<Struct_3, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]) - vec3<f32>(967f, 638f, 1502f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 12u)])), global2[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_f_op_f32(abs(542f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1131f, global2[_wgslsmith_index_u32(u_input.b, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]))))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(549f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b), 12u)])), select(vec3<bool>(true, var_0.x, true), select(!vec3<bool>(var_0.x, false, true), select(var_0.ywz, var_0.ywy, vec3<bool>(false, false, var_0.x)), select(var_0.yzz, vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, true, var_0.x))), all(vec2<bool>(false, var_0.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-685f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~0u, 12u)] - _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(13841u, 12u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 12u)]) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 12u)] - global2[_wgslsmith_index_u32(u_input.c, 12u)])))))));
    var var_2 = 1u;
    let var_3 = abs((-u_input.d >> (firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 85775u), vec2<u32>(u_input.b, 30833u))) % vec2<u32>(32u))) & -vec2<i32>(reverseBits(u_input.a), global1.x << (u_input.b % 32u)));
    return 4294967295u;
}

fn func_1() -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(41090u, 13u)];
    let var_1 = vec4<u32>(func_2(), 8498u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b ^ max(u_input.c, 4294967295u), 35969u), _wgslsmith_clamp_u32(func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)) ^ max(u_input.b, 0u), ~(~0u))), ~(~((u_input.b >> (u_input.c % 32u)) | u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 1708f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1337f - 156f)))) * _wgslsmith_f_op_f32(round(1041f)));
    let var_3 = vec2<i32>(~(-firstLeadingBit(_wgslsmith_mult_i32(16099i, -1i))), _wgslsmith_mult_i32(34227i, 1i));
    var var_4 = select(select(vec3<bool>(_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(0u, 1u, var_1.x, var_1.x)) < firstLeadingBit(var_1.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), all(vec2<bool>(true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, -2147483647i < u_input.d.x), !any(vec2<bool>(false, true))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))), !vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1586f) > _wgslsmith_f_op_f32(-var_0.a), !select(true, true, false)), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.a > 3204f, false, any(vec4<bool>(false, false, false, false))))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 12u)] * global2[_wgslsmith_index_u32(u_input.b, 12u)]))) + 1549f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = select(0u, _wgslsmith_mult_u32(0u << (0u % 32u), select(u_input.c, ~14421u, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), u_input.a != 7283i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))));
    global0 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1071f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1409f - global2[_wgslsmith_index_u32(u_input.c, 12u)]) - _wgslsmith_f_op_f32(round(1000f))) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 12u)]))));
}

