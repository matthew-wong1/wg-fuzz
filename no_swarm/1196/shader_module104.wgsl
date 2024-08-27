struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<u32> {
    return vec2<u32>(select(1u, u_input.d, true), firstTrailingBit(~(~u_input.d)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_4(-2147483647i, arg_0.b, arg_0.c, all(select(vec2<bool>(true, true), select(!vec2<bool>(true, arg_0.c.a), !vec2<bool>(arg_0.b.a, false), !vec2<bool>(arg_0.d, true)), !any(vec4<bool>(arg_0.c.a, arg_0.c.a, true, false)))));
    var var_1 = ~(-8063i);
    var_1 = _wgslsmith_dot_vec2_i32(reverseBits(~_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(arg_0.a, -1i)), firstLeadingBit(vec2<i32>(61197i, arg_2.b.a)))), abs(-(~u_input.a.xz)));
    return countOneBits(-5129i);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global0 = -func_3(Struct_4(firstLeadingBit(u_input.c) >> (4277u % 32u), Struct_3(true), Struct_3(false), any(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(23426i, abs(_wgslsmith_div_i32(-16883i, -18475i))), Struct_2((u_input.d > u_input.d) && true, Struct_1(u_input.a.x), abs(~0u)));
    let var_0 = Struct_2(all(!vec3<bool>(any(vec3<bool>(false, false, true)), true, select(true, true, false))), Struct_1(-(u_input.a.x & min(u_input.a.x, arg_0.a))), countOneBits(~(~u_input.d)));
    let var_1 = Struct_2(-7013i > ~(i32(-1i) * -var_0.b.a), Struct_1(1864i), abs(var_0.c));
    global0 = min(var_1.b.a, min(~var_1.b.a, _wgslsmith_clamp_i32(~1i, -var_1.b.a, (i32(-1i) * -1i) << (countOneBits(u_input.d) % 32u))));
    var var_2 = !(_wgslsmith_f_op_f32(-1279f - 1f) >= _wgslsmith_f_op_f32(step(-718f, 766f)));
    return Struct_3(var_1.a);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> vec2<f32> {
    global0 = _wgslsmith_dot_vec4_i32(~(~_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(-2147483647i, u_input.c, -6286i, 15205i), vec4<i32>(arg_3, 11990i, arg_3, -34916i))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3, arg_3, arg_2.a, -arg_3), abs(vec4<i32>(arg_2.a << (49728u % 32u), arg_3, u_input.c ^ arg_2.a, u_input.c))));
    global0 = arg_2.a;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(700f * 126f) + _wgslsmith_f_op_f32(floor(-2118f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-456f, -2142f, arg_0))) - _wgslsmith_f_op_f32(ceil(-780f)))), 120f, _wgslsmith_f_op_f32(floor(-251f)), 802f);
    var var_1 = -2185f;
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(446f, _wgslsmith_f_op_f32(round(-205f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(func_1() >> (vec2<u32>(1u, ~1u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), 250f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-280f, 249f), vec2<f32>(-684f, 140f))) * vec2<f32>(915f, 1875f)) * vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(func_4(!all(vec4<bool>(false, true, true, true)), true, Struct_4(-2147483647i, Struct_3(false), func_2(Struct_1(u_input.b.x)), true), -1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -481f))), firstTrailingBit(u_input.b | vec4<i32>(0i, abs(2147483647i), i32(-1i) * -32440i, _wgslsmith_sub_i32(u_input.b.x, -1i))));
}

