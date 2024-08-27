struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) + -1537f) - -250f), -172f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -678f) + vec2<f32>(1168f, -808f))))));
    var var_1 = Struct_3(Struct_2(u_input.d.x, _wgslsmith_f_op_f32(-var_0.x), Struct_1(all(vec4<bool>(true, true, true, true)), 0u), !(!all(vec4<bool>(true, false, false, false)))), global0[_wgslsmith_index_u32(max(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d.yzz, vec3<u32>(1u, u_input.d.x, arg_0), vec3<u32>(arg_0, arg_0, 1u)) | ~vec3<u32>(1u, u_input.d.x, 61174u), u_input.d.zxw)), 16u)]);
    let var_2 = var_1.a.c.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1349f, var_0.x, var_1.a.b))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.b, var_1.b.b, var_1.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, 495f, 1000f) + vec3<f32>(-548f, var_1.a.b, -841f)), select(vec3<bool>(false, var_1.a.d, var_1.a.d), vec3<bool>(true, true, var_1.a.c.a), var_1.a.c.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.b, var_0.x, -1326f), vec3<f32>(var_0.x, var_1.b.b, var_1.b.b))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.b, var_0.x, -700f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-629f, var_0.x, 1000f), vec3<f32>(var_0.x, -760f, -1685f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b, var_0.x, var_1.a.b) * vec3<f32>(var_0.x, var_1.a.b, var_0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_1.a.b, 256f, var_1.a.b)))))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.d.x, 16u)];
    return any(!(!select(!vec4<bool>(var_1.b.d, true, var_1.b.c.a, var_1.a.d), vec4<bool>(false, var_1.b.d, var_4.c.a, var_4.c.a), var_3.x <= var_1.a.b)));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_4(Struct_3(Struct_2(23743u, 683f, Struct_1(func_3(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.d.x), vec3<u32>(u_input.d.x, 4579u, 21662u))), true), Struct_2(~(~1u), _wgslsmith_f_op_f32(floor(-694f)), Struct_1(false, abs(u_input.d.x)), false)), true, _wgslsmith_f_op_f32(f32(-1f) * -223f));
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - -137f), _wgslsmith_f_op_f32(var_0.a.b.b * -273f))), -616f, var_0.c, _wgslsmith_f_op_f32(sign(-465f)))));
    return global0[_wgslsmith_index_u32(u_input.d.x, 16u)];
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.b - 337f) - var_0.c)) + arg_2)));
    return arg_3.a.b.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: u32) -> Struct_2 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(311f, 639f)), _wgslsmith_f_op_f32(f32(-1f) * -247f)));
    var var_1 = func_4(8693i, Struct_3(func_2(), global0[_wgslsmith_index_u32(arg_2, 16u)]), -191f, Struct_4(Struct_3(func_2(), func_2()), false, 353f));
    let var_2 = Struct_3(Struct_2(arg_2, _wgslsmith_f_op_f32(ceil(1584f)), func_4(min(u_input.c, 36296i), Struct_3(func_2(), Struct_2(var_1.b, -725f, Struct_1(false, u_input.d.x), false)), -1000f, Struct_4(Struct_3(Struct_2(37443u, 258f, Struct_1(false, 48525u), true), Struct_2(12884u, 1294f, Struct_1(true, 1u), false)), !var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -889f))), false), Struct_2(func_2().a, 1570f, Struct_1(!arg_1 && true, 0u), !(!any(arg_0.yz))));
    return var_2.a;
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    var var_0 = min(u_input.d.x, arg_0.a) >= countOneBits(u_input.d.x << (countOneBits(func_1(vec3<bool>(arg_0.d, arg_0.c.a, true), true, 0u, arg_0.c.b).a) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, arg_0.b)) - _wgslsmith_f_op_f32(-arg_0.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1384f, arg_0.b, -1017f) * vec4<f32>(1854f, arg_0.b, 1319f, arg_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(812f, arg_0.b, -2514f, arg_0.b))))));
    let var_2 = arg_0;
    return firstLeadingBit(firstLeadingBit(countOneBits(_wgslsmith_add_u32(~arg_0.a, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    let var_0 = ~(~u_input.d.x);
    let var_1 = ~vec4<i32>(max(~(-1i), u_input.b.x), firstLeadingBit(~(-2147483647i) | -u_input.a), abs(-13364i) << (func_5(func_1(vec3<bool>(true, false, false), false, var_0, var_0)) % 32u), u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(285f, -519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f * -541f)), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(393f, 428f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(575f, -2928f, 694f, 647f), vec4<f32>(1000f, 1000f, 2227f, 261f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, -2553f, 1339f, 237f))))));
    let var_3 = u_input.c;
    let var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i >> (abs(0u) % 32u), (i32(-1i) * -11905i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_3), vec2<i32>(-1i, var_3))), countOneBits((u_input.b.zw >> (vec2<u32>(var_0, 25797u) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(var_1.wz, vec2<i32>(var_3, var_1.x)))), _wgslsmith_mult_i32(~(-_wgslsmith_add_i32(var_3, -1i)), -2148i), 52207i);
    var var_5 = 1f;
    let var_6 = _wgslsmith_f_op_f32(ceil(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_0, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, var_0)), u_input.d), 0u, ~(u_input.d.x | 390u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, var_2.x, var_6))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xy)));
}

