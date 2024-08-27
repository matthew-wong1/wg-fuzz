struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    let var_0 = Struct_1(1339f, _wgslsmith_f_op_f32(630f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(2731f, 483f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) - arg_0.x)));
    var var_1 = ~vec4<u32>(arg_2, ~arg_2, ~arg_2, _wgslsmith_clamp_u32(abs(arg_2), arg_2, arg_2));
    var var_2 = global0[_wgslsmith_index_u32(~arg_2, 13u)];
    return var_2.b;
}

fn func_3() -> f32 {
    let var_0 = min(min(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 44175u), 24396u), firstLeadingBit(1u)), ~_wgslsmith_mod_u32(1u, reverseBits(26730u))), ~(~(~max(1984u, 1u))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)) | vec3<u32>(763u, _wgslsmith_div_u32(8334u, var_1), ~19799u), countOneBits(reverseBits(~vec3<u32>(var_0, 4294967295u, 32642u)))), ~_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(27913u, 32206u, var_0), vec3<u32>(var_0, 37325u, var_1)), vec3<u32>(countOneBits(var_1), ~16317u, ~var_0)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1f * 697f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2036f)) + _wgslsmith_f_op_f32(trunc(1574f))), -828f), -883f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1963f)))));
    var_3 = Struct_1(var_3.b, var_3.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c + 1449f), var_3.a)), -1000f, true)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f * _wgslsmith_f_op_f32(f32(-1f) * -2616f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.b), 1785f))))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2060f))))) - 1f);
    let var_1 = arg_0.a;
    global0 = array<Struct_3, 13>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-722f, -1176f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-434f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(-1183f * -460f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-648f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1234f + _wgslsmith_div_f32(945f, 575f)) - -1677f))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -269f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))) * var_2.a), var_2.c, _wgslsmith_f_op_f32(-1732f + _wgslsmith_f_op_f32(1202f * var_2.a)));
    return u_input.a.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_2(arg_0.x, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a.x, arg_1.a)), reverseBits(~arg_0.xz) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1730f + -1428f)), -2095f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -891f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) - 271f), _wgslsmith_f_op_f32(f32(-1f) * -312f), !all(vec4<bool>(true, true, true, false))))));
    var var_2 = global0[_wgslsmith_index_u32(~(~(~0u)), 13u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_1.x + -746f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1661f - var_2.d.x) + _wgslsmith_f_op_f32(var_1.x + var_1.x)) + _wgslsmith_f_op_f32(floor(-827f)))), _wgslsmith_f_op_f32(-var_1.x));
    let var_4 = Struct_1(var_3.c, _wgslsmith_f_op_f32(abs(var_2.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-455f + var_3.c), _wgslsmith_div_f32(-975f, _wgslsmith_f_op_f32(-var_3.a))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))), 1949f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    let var_0 = Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(1u, ~1u), ~func_1(vec2<f32>(1069f, -1320f), vec4<i32>(u_input.a.x, u_input.a.x, 22177i, u_input.a.x), 34671u, Struct_2(u_input.a.x, u_input.a.x))), ~vec3<u32>(1u, 1u, 1u)), 4294967295u, _wgslsmith_mult_vec3_u32(~(abs(vec3<u32>(6699u, 0u, 26533u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), firstTrailingBit(reverseBits(vec3<u32>(80983u, 30372u, 55789u)))), vec3<f32>(_wgslsmith_f_op_f32(func_4(-select(u_input.a, vec3<i32>(u_input.a.x, -24818i, -32838i), vec3<bool>(false, false, true)), Struct_2(func_2(Struct_2(u_input.a.x, u_input.a.x)), ~u_input.a.x), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1540f + _wgslsmith_f_op_f32(-863f + -232f)), _wgslsmith_f_op_f32(f32(-1f) * -112f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - -1894f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) * _wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, false)))), 1120f, 240f));
    var var_2 = 16575u;
    let var_3 = Struct_1(var_1.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(select(2254f, var_0.d.x, true))))));
    let var_4 = Struct_2(u_input.a.x, _wgslsmith_mult_i32(-13092i, u_input.a.x));
    var var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1i, max(reverseBits(abs(2147483647i)) >> (_wgslsmith_sub_u32(~4294967295u, ~var_0.c.x) % 32u), _wgslsmith_mod_i32(firstLeadingBit(-25101i), -6367i)), ~vec4<u32>(_wgslsmith_mod_u32(var_0.a.x, reverseBits(4294967295u)), 6174u, var_0.b, ~(var_0.a.x >> (22495u % 32u))));
}

