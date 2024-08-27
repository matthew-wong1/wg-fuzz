struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<f32>(468f, 1836f, 1970f, 1200f)), Struct_3(vec4<f32>(-655f, 2436f, -1000f, -781f)), Struct_3(vec4<f32>(711f, -103f, -1743f, -775f)), Struct_3(vec4<f32>(561f, 1558f, 1152f, 182f)), Struct_3(vec4<f32>(-800f, 922f, -1593f, 645f)), Struct_3(vec4<f32>(458f, 869f, 487f, -2383f)), Struct_3(vec4<f32>(115f, 493f, 580f, 1073f)), Struct_3(vec4<f32>(-644f, -903f, 1032f, -2026f)), Struct_3(vec4<f32>(-594f, -748f, 1171f, -341f)), Struct_3(vec4<f32>(-154f, 420f, 1000f, -1554f)), Struct_3(vec4<f32>(376f, -2380f, 1931f, -558f)), Struct_3(vec4<f32>(-1000f, 186f, 579f, -1645f)), Struct_3(vec4<f32>(-1207f, -1395f, 1402f, -166f)), Struct_3(vec4<f32>(-1000f, 109f, -341f, 467f)), Struct_3(vec4<f32>(129f, 573f, -1069f, -1570f)), Struct_3(vec4<f32>(2126f, 1387f, -874f, 629f)), Struct_3(vec4<f32>(1639f, 245f, -1000f, -1397f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> i32 {
    return u_input.b;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    return ~abs(-2147483647i);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global0 = array<Struct_3, 17>();
    let var_0 = vec4<i32>(-1i, -_wgslsmith_dot_vec2_i32(arg_3.e.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d, arg_0.d), _wgslsmith_clamp_vec2_i32(arg_0.b.yw, vec2<i32>(arg_0.d, u_input.a.x), vec2<i32>(arg_3.e.x, u_input.a.x)))), ~func_3(-vec2<i32>(-31771i, 53878i)) >> ((u_input.c << (0u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xy, arg_3.e.zx), _wgslsmith_mult_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(u_input.b, arg_3.e.x))), -vec2<i32>(arg_0.b.x, arg_0.d) ^ vec2<i32>(2147483647i, arg_0.d))));
    var var_1 = select(vec3<bool>(true, arg_3.d, !arg_3.d), vec3<bool>(false, arg_3.d, false & all(!vec3<bool>(arg_3.d, true, true))), !arg_3.d);
    let var_2 = arg_2.a.x;
    return _wgslsmith_f_op_f32(-arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(reverseBits(~min(7938i, -2147483647i)) & _wgslsmith_mult_i32(min(_wgslsmith_mult_i32(u_input.b, -1i), func_1()), -(~u_input.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1684f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(u_input.c, u_input.e.x, 7654u), u_input.a, vec2<f32>(-688f, -260f), -2147483647i, vec4<u32>(u_input.d, 4294967295u, u_input.c, u_input.c)), 224f, Struct_3(vec4<f32>(-1722f, -398f, 1643f, 524f)), Struct_4(-656f, -515f, Struct_3(vec4<f32>(1000f, 647f, -1118f, 315f)), true, u_input.a.zyx)))), -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(561f, 995f, -463f), vec3<f32>(1277f, -1518f, 212f)))))));
    let var_2 = u_input.a;
    global0 = array<Struct_3, 17>();
    var var_3 = vec2<f32>(689f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f * 283f))), -2222f));
    let var_4 = ~(~abs(~vec3<u32>(1u, 4294967295u, u_input.d)));
    var var_5 = Struct_2(select(~vec3<u32>(var_4.x, 4294967295u, var_4.x), ~vec3<u32>(14184u, var_4.x, 4294967295u) & var_4, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), countOneBits(u_input.a), var_1.zy, 37465i, ~min(vec4<u32>(abs(0u), ~0u, 93768u, var_4.x), vec4<u32>(abs(18239u), 1u ^ u_input.d, ~u_input.e.x, ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.x), -2341f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(max(vec3<u32>(var_5.a.x, 0u, 103040u), vec3<u32>(4294967295u, u_input.d, var_5.a.x)), var_5.b, var_1.yx, 53617i, var_5.e), -507f, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_1.x, var_5.c.x, var_1.x))), Struct_4(var_3.x, _wgslsmith_f_op_f32(var_1.x - -1712f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(2049u, var_5.e.x), 17u)], select(true, true, true), u_input.a.wyx))))), firstLeadingBit(_wgslsmith_div_vec2_u32(select(vec2<u32>(2406u, 70565u), vec2<u32>(var_4.x, var_5.e.x), false) | select(vec2<u32>(0u, var_4.x), vec2<u32>(var_4.x, var_4.x), vec2<bool>(true, true)), var_4.zz)), select(vec3<u32>(reverseBits(13130u), 38225u, u_input.e.x), ~_wgslsmith_div_vec3_u32(~var_4, vec3<u32>(11823u, 1743u, 0u)), select((1u ^ u_input.d) != 0u, true, true)));
}

