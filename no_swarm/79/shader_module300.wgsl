struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, true, false, true, false, true, true, false, true, false, true, false, false, true, true, true, true, true, true, false, true, true, false, false);

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(949f, 387f), vec2<f32>(450f, 1844f), vec2<f32>(329f, 1000f), vec2<f32>(157f, -217f), vec2<f32>(-1557f, 388f), vec2<f32>(1708f, 424f), vec2<f32>(1023f, 581f), vec2<f32>(954f, 937f));

var<private> global3: i32;

var<private> global4: array<Struct_4, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-430f, -1000f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~(~arg_0), 8u)]) - _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 8u)])));
    global2 = array<vec2<f32>, 8>();
    let var_1 = i32(-1i) * -54982i;
    global2 = array<vec2<f32>, 8>();
    var_0 = global2[_wgslsmith_index_u32(1u, 8u)];
    return -919f;
}

fn func_2() -> f32 {
    var var_0 = -356f;
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f * -219f))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-816f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(4294967295u, vec3<i32>(-20285i, 2147483647i, -50534i), 18077i))), true)));
    var var_2 = Struct_4(~vec2<i32>(-(~2147483647i), 2147483647i), -1000f, Struct_3(_wgslsmith_f_op_f32(385f + _wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(897f - -686f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1056f, -1547f) + global2[_wgslsmith_index_u32(~7963u, 8u)]))), ~2147483647i >> (_wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, 20814u, u_input.a.x, 9870u))), u_input.c) % 32u));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.b.x, var_2.c.a) * var_2.b), _wgslsmith_f_op_f32(-var_2.b)))));
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(firstLeadingBit(59457i), 29449i, var_2.a.x, firstTrailingBit(0i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(var_2.d, var_2.d, 18918i, -1i), abs(vec4<i32>(1i, var_2.d, -8314i, var_2.a.x))), vec4<i32>(var_2.d, var_2.d, -2147483647i, reverseBits(0i)))), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_2.d, var_2.d, var_2.d), vec4<i32>(var_2.d, -2147483647i, var_2.d, var_2.d)));
    return 1f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1807f, 1015f) * _wgslsmith_f_op_f32(round(501f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))))));
    var var_1 = Struct_1(false, 1i, vec4<u32>(u_input.c, ~(~53266u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, u_input.c, 5323u, u_input.c), vec4<u32>(63904u, 4294967295u, u_input.b, u_input.b), vec4<bool>(false, global1[_wgslsmith_index_u32(62946u, 25u)], true, global1[_wgslsmith_index_u32(1u, 25u)])), u_input.a), _wgslsmith_add_u32(1u, ~(~61980u))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-121f)), _wgslsmith_f_op_f32(f32(-1f) * -405f), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-775f, _wgslsmith_f_op_f32(-507f + 1517f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(275f, -627f) * global2[_wgslsmith_index_u32(u_input.c, 8u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, 252f)))));
    global1 = array<bool, 25>();
    var var_3 = global4[_wgslsmith_index_u32(36718u, 30u)];
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = Struct_1(true, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25177i, 16799i, -2147483647i, 2147483647i), vec4<i32>(-8723i, -1i, -1i, 1i))), 1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, 0i, 1i), i32(-1i) * -45258i, -2147483647i) & _wgslsmith_div_i32(2147483647i, 2147483647i)), firstTrailingBit(vec4<u32>(~0u, firstLeadingBit(u_input.b), 0u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.b, 46843u, 88909u)))) | u_input.a);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-667f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2084f))), _wgslsmith_f_op_f32(abs(1f)))));
    let var_3 = var_1;
    var var_4 = global4[_wgslsmith_index_u32(47878u, 30u)];
    let var_5 = var_3.a;
    let var_6 = ~(~vec4<i32>(~_wgslsmith_div_i32(-2147483647i, var_3.b), firstLeadingBit(var_3.b), max(var_4.d, -1i) | 1i, 17495i));
    var var_7 = firstLeadingBit(min(vec4<i32>(min(26838i, var_6.x), -max(-34501i, 31763i), 2147483647i, var_4.d), select(~var_6, vec4<i32>(var_4.a.x, var_6.x, var_1.b, -52155i), vec4<bool>(false, true, var_5, var_3.a)) >> (vec4<u32>(abs(1u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 140641u), var_3.c.xw), 4294967295u) % vec4<u32>(32u))));
    var var_8 = Struct_4(~(_wgslsmith_mod_vec2_i32(countOneBits(var_4.a), select(vec2<i32>(-3817i, -17136i), vec2<i32>(var_6.x, -2147483647i), vec2<bool>(false, var_1.a))) >> (vec2<u32>(~107906u, ~var_1.c.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(sign(-437f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)))), var_4.c, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.c.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-874f + var_2), var_8.b))), abs(~firstTrailingBit(vec3<u32>(var_1.c.x, u_input.a.x, 50666u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1080f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(var_2, -802f)))), 1621f);
}

