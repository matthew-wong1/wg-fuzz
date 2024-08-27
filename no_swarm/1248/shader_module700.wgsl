struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_2(Struct_1(0i, vec4<f32>(744f, 489f, 562f, -2047f), i32(-2147483648), 1458f), 0u), 1i, 518f), Struct_3(Struct_2(Struct_1(0i, vec4<f32>(-1615f, 343f, -1098f, -1097f), -41788i, 1000f), 21531u), -1i, -655f), Struct_3(Struct_2(Struct_1(-29573i, vec4<f32>(-305f, -918f, -533f, -852f), -1i, -177f), 62315u), 79460i, -1000f), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec4<f32>(-1373f, 883f, 1364f, -666f), 1i, 1679f), 0u), i32(-2147483648), -1109f), Struct_3(Struct_2(Struct_1(12212i, vec4<f32>(-374f, -306f, -1721f, 503f), 15127i, 683f), 29823u), 34222i, 1758f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(vec3<i32>(i32(-1i) * -arg_0.a.c, -2147483647i, arg_0.a.a));
    var var_1 = Struct_4(~vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wyz, countOneBits(var_0.a)), -(~u_input.c), _wgslsmith_clamp_i32(var_0.a.x, 57375i, -48941i)));
    let var_2 = arg_0.a;
    var var_3 = select(vec4<bool>(true, false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), true), vec4<bool>(true, true, true, true), false);
    return global0[_wgslsmith_index_u32(4294967295u, 5u)];
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    let var_0 = -u_input.b;
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    let var_1 = vec3<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.a.a.a, var_0.x) ^ 2147483647i, countOneBits(_wgslsmith_mult_i32(-10164i, arg_0.b))), 2147483647i), ~(-5812i));
    return func_2(func_2(Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1680f, arg_0.a.a.d, arg_0.a.a.b.x, -1265f)), _wgslsmith_mult_i32(2147483647i, arg_0.a.a.c), _wgslsmith_f_op_f32(-arg_0.c)), 51655u)).a).a.a;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(~arg_0.a.zx, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, arg_2.x) & _wgslsmith_sub_i32(arg_0.a.x, u_input.c), arg_2.x >> (1u % 32u)), arg_2.x));
    var var_1 = Struct_2(func_3(func_2(Struct_2(Struct_1(arg_2.x, vec4<f32>(674f, 534f, 1648f, 577f), u_input.d, 817f), 0u))), 0u);
    var_1 = func_2(Struct_2(func_2(func_2(func_2(Struct_2(var_1.a, 14073u)).a).a).a.a, ~(~(~var_1.b)))).a;
    var var_2 = -10653i;
    global0 = array<Struct_3, 5>();
    return func_2(func_2(func_2(func_2(func_2(Struct_2(Struct_1(arg_2.x, vec4<f32>(var_1.a.d, var_1.a.b.x, var_1.a.d, var_1.a.b.x), -2147483647i, var_1.a.b.x), var_1.b)).a).a).a).a).a.a.b.wyw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -386f;
    global0 = array<Struct_3, 5>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f + 1311f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(813f, 162f)))) - _wgslsmith_f_op_f32(-1001f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1005f)), 194f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -461f)))))));
    var var_1 = _wgslsmith_mod_i32(u_input.c, _wgslsmith_clamp_i32(reverseBits(_wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.b.x)), -(u_input.a | _wgslsmith_mod_i32(39881i, u_input.d)), ~1i));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(u_input.b.zzx), true, u_input.b.wxy)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, 881f, -1343f) * vec3<f32>(1000f, 1208f, 167f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2101f, -875f, -1336f))))))), _wgslsmith_f_op_vec3_f32(func_2(func_2(func_2(Struct_2(Struct_1(-58248i, vec4<f32>(-972f, -434f, -188f, 143f), u_input.b.x, 1183f), 24268u)).a).a).a.a.b.yyw + _wgslsmith_f_op_vec3_f32(func_1(Struct_4(_wgslsmith_sub_vec3_i32(u_input.b.wzy, u_input.b.yyz)), all(vec4<bool>(false, false, true, true)), firstLeadingBit(u_input.b.xyy)))));
    var var_3 = func_3(func_2(func_2(func_2(Struct_2(Struct_1(-19866i, vec4<f32>(var_2.x, 1000f, 236f, var_2.x), 34300i, var_2.x), 36987u)).a).a)).d;
    var var_4 = func_2(Struct_2(Struct_1(~_wgslsmith_mod_i32(2147483647i, -5599i), vec4<f32>(330f, -137f, var_2.x, _wgslsmith_f_op_f32(sign(330f))), -_wgslsmith_mult_i32(1i, 1i), var_2.x), 9830u)).a.a;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.c, u_input.d), u_input.b.wy, false), firstTrailingBit(vec2<i32>(u_input.c, u_input.b.x)), ~vec2<i32>(-1i, u_input.a)), vec2<i32>(-11731i, u_input.a)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.c, 0i, var_4.a, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, u_input.a), u_input.b) | reverseBits(u_input.b))));
}

