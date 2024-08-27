struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> u32 {
    global1 = arg_2;
    global1 = _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(-arg_2)));
    global1 = -984f;
    let var_0 = ~vec4<u32>(~(~(~0u)), ~(~4522u), 28237u, 17309u);
    global1 = -307f;
    return reverseBits(~u_input.a);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(abs(vec4<u32>(64138u, 69164u, u_input.a, 13225u))), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.c.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, u_input.c.x, u_input.c.x, 76807u), vec4<u32>(arg_1.x, 48420u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 53950u, 16703u, u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(71026u, 4294967295u, u_input.c.x, arg_1.x), vec4<u32>(arg_1.x, u_input.a, u_input.c.x, arg_1.x) ^ vec4<u32>(53266u, 4294967295u, 27382u, arg_1.x))) & firstLeadingBit(vec4<u32>(36028u, 0u, 65854u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 0u), arg_1))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 23485u, 4294967295u, 1u) | vec4<u32>(u_input.c.x, 37466u, u_input.c.x, 1u), vec4<u32>(10227u, 43121u, u_input.c.x, u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(20699u, u_input.a, u_input.a, 4928u), vec4<u32>(u_input.a, 5716u, arg_1.x, arg_1.x)) % vec4<u32>(32u))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), arg_0.x);
    global0 = array<Struct_1, 14>();
    var_0 = vec4<u32>(var_0.x & ~firstLeadingBit(1u), u_input.a, ~(~arg_1.x), func_2(Struct_1(firstLeadingBit(u_input.d), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(false, true, false)), u_input.d), u_input.d, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))) - _wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 27923u, arg_1.x, arg_1.x), vec4<u32>(6718u, arg_1.x, var_0.x, arg_1.x), vec4<bool>(true, true, false, false)), vec4<u32>(var_0.x, 95754u, arg_1.x, 51377u)), vec4<u32>(1u, abs(4294967295u), var_0.x, arg_1.x), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(42928u, var_0.x, arg_1.x, var_0.x), vec4<u32>(4294967295u, 53449u, 57362u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(15896u, 32740u, arg_1.x, 0u), vec4<u32>(4294967295u, 29664u, var_0.x, 0u)))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(132717u, 0u, 1u, var_0.x), vec4<u32>(~var_0.x, 3476u, abs(23455u), 1u))) >> (_wgslsmith_div_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 74033u, u_input.c.x, var_0.x), vec4<u32>(116002u, 25429u, 18241u, 51095u))), ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_1.x, 1u, u_input.c.x, var_0.x), vec4<u32>(var_0.x, arg_1.x, u_input.c.x, 66460u)), vec4<u32>(81838u, 27825u, u_input.c.x, var_0.x))) % vec4<u32>(32u));
    return Struct_1(u_input.d, vec2<bool>(any(vec3<bool>(true, true, true)), true), u_input.d);
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 14>();
    let var_0 = u_input.e.x;
    let var_1 = func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(249f, 302f, arg_0) - vec3<f32>(-171f, -1596f, 1650f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1133f, arg_0, -301f) - vec3<f32>(arg_0, arg_0, arg_0))))))), vec3<u32>(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 1u) >> (vec3<u32>(38465u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec3<u32>(u_input.a, u_input.a, u_input.c.x))), 14u)], firstLeadingBit(vec4<i32>(var_0, 0i, -64927i, -3330i)), 1000f, arg_0), _wgslsmith_mod_u32(~19580u, ~(~u_input.c.x)), ~u_input.c.x), -4743i);
    global0 = array<Struct_1, 14>();
    let var_2 = ~_wgslsmith_clamp_u32(countOneBits(~(~u_input.a)), ~(~(~1u)), u_input.a);
    return (select(_wgslsmith_div_u32(~80104u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_2, 69765u), vec3<u32>(45104u, 4294967295u, u_input.a))), ~select(var_2, 4294967295u, true), 83661u != abs(u_input.a)) >> (abs(37427u >> (firstTrailingBit(43857u) % 32u)) % 32u)) | firstLeadingBit(70991u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global1 = 1f;
    let var_0 = any(arg_0.b);
    return global0[_wgslsmith_index_u32(4294967295u, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~abs(vec4<u32>(u_input.a, u_input.a, u_input.c.x, u_input.a)), vec4<u32>(u_input.a, 2788u, u_input.a, 4294967295u) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u))), vec4<u32>(func_1(_wgslsmith_f_op_f32(abs(-1000f)), true), reverseBits(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(21886u, u_input.c.x))), ~min(0u, 0u), firstTrailingBit(u_input.a))), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f + 1000f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-513f)) * -480f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1574f), _wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(491f - 1743f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-442f, _wgslsmith_f_op_f32(-915f * 1000f), _wgslsmith_f_op_f32(-238f - 1390f))))));
    var var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, ~u_input.a), firstLeadingBit(u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(floor(107f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + 179f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(f32(-1f) * -231f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), 1153f)));
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((u_input.c.x << (_wgslsmith_dot_vec2_u32(u_input.c, u_input.c) % 32u)) ^ u_input.c.x, u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) - _wgslsmith_f_op_f32(1587f - -1843f)))), _wgslsmith_f_op_f32(381f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-438f)) * _wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2015f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1044f, -124f, 1478f, 889f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, 965f, -405f, -1172f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1652f, -435f, 2371f, 717f), vec4<f32>(920f, 528f, 1390f, -466f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 2310f, 1464f, 410f), vec4<f32>(1338f, -693f, -390f, -646f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-739f, 227f, -1492f, 505f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, 1521f, 353f, -813f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(744f, -233f, 414f, 600f), vec4<f32>(-369f, 781f, -594f, 433f))))), u_input.d.x);
}

