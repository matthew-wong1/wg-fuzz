struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~4294967295u, 9291u, reverseBits(~u_input.b)), firstTrailingBit(~90643u))), 4u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(round(422f)), _wgslsmith_f_op_f32(-arg_0.c))))));
    let var_2 = -u_input.a;
    global0 = array<Struct_1, 4>();
    var var_3 = var_0.b.yx;
    return var_3.x;
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-123f, 717f)))), 1039f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-113f, -167f)), _wgslsmith_f_op_f32(step(941f, -1585f)))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(130f * _wgslsmith_f_op_f32(f32(-1f) * -1098f))))));
    global0 = array<Struct_1, 4>();
    return ~(~31034u & (_wgslsmith_div_u32(19647u, u_input.b) >> (~u_input.b % 32u))) | _wgslsmith_clamp_u32(44750u, ~1u, ~firstLeadingBit(u_input.b << (0u % 32u)));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_1(u_input.a, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~45358u, _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, 86978u), vec4<u32>(50697u, u_input.b ^ 26221u, ~55116u, func_2(Struct_2(vec4<f32>(168f, -905f, -204f, -1163f), false, -369f, vec2<i32>(0i, u_input.a)))))));
    var var_1 = Struct_1(var_0.a, vec4<u32>(0u, 38449u >> (func_3(vec4<bool>(true, true, true, false)) % 32u), 4294967295u, _wgslsmith_div_u32(countOneBits(firstTrailingBit(u_input.b)), 3116u)));
    var_0 = Struct_1(~(-(~(var_0.a & -21596i))), abs(~(~max(vec4<u32>(var_0.b.x, 15440u, u_input.b, u_input.b), var_1.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(-788f)), _wgslsmith_f_op_f32(step(-730f, -437f)), 1f, _wgslsmith_f_op_f32(1396f + 640f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(447f, -1881f, -395f, -1778f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, -146f, -1137f, -696f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-980f, -879f, 640f, -1000f))))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-943f)), -1047f)) - vec2<f32>(-1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-328f, -1099f), vec2<f32>(382f, -715f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(511f, -1126f), vec2<f32>(-332f, 2099f), vec2<bool>(true, true)))))));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), countOneBits(47280u));
    global0 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + 406f), var_0.x, 1i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 35604i)))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1535f, 849f), _wgslsmith_f_op_f32(f32(-1f) * -194f), 318f))))), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), vec2<i32>(15976i, ~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(15091i, 2147483647i, 40533i), ~u_input.a, max(0i, u_input.a))));
    var var_4 = -vec2<i32>(reverseBits(-80499i), abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d.x, var_3.d.x, -1i), vec3<i32>(-1i, u_input.a, var_3.d.x))));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 808f, 2495f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.x, -1564f, -1718f))), vec3<f32>(_wgslsmith_div_f32(1705f, var_0.x), var_0.x, _wgslsmith_f_op_f32(var_3.c * var_5.c)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_5.a.zyz) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f) * var_5.a.xzx), var_3.a.wxx, vec3<bool>(true, var_3.b, var_3.b))))), u_input.a & _wgslsmith_sub_i32(-2147483647i, ~var_3.d.x));
}

