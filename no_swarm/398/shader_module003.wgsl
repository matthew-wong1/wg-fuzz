struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec4<bool>, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.c.x;
    let var_1 = global0[_wgslsmith_index_u32(~max(reverseBits(u_input.b) | ~_wgslsmith_div_u32(30945u, arg_1.a), 55465u), 5u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1098f, 716f), _wgslsmith_f_op_f32(f32(-1f) * -591f)) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(1442f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1486f + -1590f) * _wgslsmith_f_op_f32(min(684f, -1695f))), _wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(1387f + 403f))))));
    let var_3 = _wgslsmith_mult_vec2_u32(~arg_1.b.yx, firstTrailingBit(reverseBits(var_1.b.zx)));
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(277f, _wgslsmith_f_op_f32(ceil(-230f))) + var_2.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-474f * _wgslsmith_f_op_f32(f32(-1f) * -1179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-608f + var_2.x)))))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = u_input.c;
    var_0 = u_input.c;
    global0 = array<Struct_1, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1704f + 1000f) * _wgslsmith_f_op_f32(floor(-143f))), -517f)), Struct_1(u_input.b, (vec3<u32>(u_input.b, u_input.b, u_input.b) | (vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, 4294967295u, u_input.b))) << (vec3<u32>(1u, 1u, ~1u) % vec3<u32>(32u)), 79322i), 0i, 1082f);
    global1 = array<vec4<bool>, 20>();
    return _wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(var_0.x, -2147483647i, ~(-1i), -1i), Struct_1(11404u, var_1.b.b ^ vec3<u32>(u_input.b, 1u, var_1.b.b.x), -1i))), -123f), !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(true, false, false)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<bool>, arg_3: f32) -> vec3<u32> {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global1 = array<vec4<bool>, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 38375i, u_input.c.x, 0i), vec4<i32>(u_input.a, u_input.c.x, u_input.a, 53634i))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), -1983f) * vec2<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), 613f), _wgslsmith_f_op_vec2_f32(func_2(-2147483647i))) * vec2<f32>(arg_3, _wgslsmith_f_op_f32(-arg_3))), select(arg_0, true, true)));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), countOneBits(u_input.c));
    return vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, arg_1), u_input.b), _wgslsmith_div_u32(arg_1, 48515u), ~96415u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, -42170i, ~_wgslsmith_sub_i32(-u_input.a, abs(2147483647i))), vec3<i32>(-87858i, abs(u_input.a), firstTrailingBit(-30949i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -u_input.a, -25240i), vec3<i32>(0i, u_input.c.x, u_input.c.x)));
    let var_1 = Struct_1(min(abs(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b), ~vec3<u32>(31845u, 0u, u_input.b))) ^ firstTrailingBit(~_wgslsmith_mult_u32(u_input.b, u_input.b)), ~(reverseBits(func_1(true, 1u, vec4<bool>(true, true, true, false), -939f)) >> (~abs(vec3<u32>(9114u, 0u, u_input.b)) % vec3<u32>(32u))), var_0.x);
    let var_2 = all(vec4<bool>(select(false, any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(var_1.a >= 21474u, all(vec2<bool>(false, true)), true)), true, 2147483647i <= var_0.x, true));
    var_0 = vec3<i32>(var_1.c, var_0.x, 15369i);
    let var_3 = Struct_1(u_input.b, ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 31761u, 46564u, 42838u), abs(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, 41377u, 4184u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, u_input.b, 4294967295u, 4294967295u), vec4<u32>(var_1.b.x, u_input.b, u_input.b, 0u))), var_1.b.x), max(~(~var_1.c) << (~(~u_input.b) % 32u), -4454i));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 119f, -334f) - vec3<f32>(-502f, -1398f, 1139f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -851f, 579f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, -1410f, -1201f)))), true | (var_0.x >= -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, 1532f, 1362f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, -2733f, -2343f))) * vec3<f32>(_wgslsmith_div_f32(-1092f, -1759f), _wgslsmith_f_op_f32(-420f + 228f), -395f))))));
    var var_5 = min(13617i, 0i);
    let var_6 = Struct_2(var_4.xx, var_3, min(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_3.c, var_1.c, var_0.x), vec3<i32>(u_input.c.x, var_3.c, var_0.x), false) | (vec3<i32>(0i, var_1.c, 0i) & vec3<i32>(var_3.c, var_1.c, -24717i)), abs(vec3<i32>(2147483647i, var_1.c, -44434i))), -min(var_1.c, var_1.c)), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(27040i, -45473i, 11041i), vec3<i32>(2147483647i, var_0.x, var_1.c)), var_1.c), _wgslsmith_sub_i32(u_input.a | -38251i, min(var_1.c, -1i)) >> (~firstLeadingBit(var_6.b.a) % 32u), 1i, -(~(~67938i))));
}

