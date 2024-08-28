struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(16745u, 0u, 0u, 124058u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 27683u, 4294967295u, 6952u), vec4<u32>(1u, 72032u, 10989u, 1u), vec4<u32>(33202u, 26260u, 4294967295u, 117513u), vec4<u32>(86370u, 11332u, 4294967295u, 0u), vec4<u32>(0u, 0u, 1u, 62592u), vec4<u32>(0u, 33321u, 2900u, 31356u), vec4<u32>(2448u, 0u, 8964u, 4294967295u), vec4<u32>(1u, 4294967295u, 25746u, 64126u), vec4<u32>(34701u, 1u, 21492u, 39536u), vec4<u32>(57927u, 4294967295u, 4294967295u, 72103u), vec4<u32>(0u, 14132u, 50444u, 0u), vec4<u32>(12990u, 4294967295u, 4294967295u, 8902u), vec4<u32>(42839u, 75734u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 12278u), vec4<u32>(4294967295u, 35593u, 36789u, 74662u), vec4<u32>(662u, 0u, 4294967295u, 25917u), vec4<u32>(25251u, 4294967295u, 0u, 25150u), vec4<u32>(37911u, 918u, 8467u, 1u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(55512u, 4949u, 125943u, 0u), vec4<u32>(4294967295u, 1u, 73002u, 0u));

var<private> global2: array<Struct_1, 1>;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-global0.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-450f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.x, var_0, false)) * _wgslsmith_f_op_f32(exp2(var_0))), -1133f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -616f, -109f, 885f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(211f, 2576f, var_0, global0.e)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 109f, var_0, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.e, var_0, global0.e, 2211f), vec4<f32>(global0.e, arg_1.e, -818f, -896f)))))))));
    let var_2 = ~vec2<i32>(_wgslsmith_div_i32(-firstTrailingBit(global0.b.x), arg_1.b.x), _wgslsmith_mod_i32(select(0i, -global0.b.x, true), _wgslsmith_add_i32(reverseBits(15900i), arg_1.b.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, global0.e) - _wgslsmith_f_op_vec2_f32(-global0.a))))), _wgslsmith_add_vec4_i32(abs(min(~global0.b, vec4<i32>(-16409i, var_2.x, -23462i, global0.b.x))), -arg_1.b), arg_1.c, 1u << (abs(~arg_0) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2058f * _wgslsmith_f_op_f32(min(-1280f, _wgslsmith_f_op_f32(global0.e + var_0)))) + global0.a.x));
    global3 = _wgslsmith_mult_i32(14884i, 38016i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) + var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-915f, arg_1.a.a.x) + global0.a))))))), ~vec4<i32>(global0.b.x, 1i, -143i, -17095i), !any(vec2<bool>(global0.a.x < 716f, false)), 15680u, -540f);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b.x), vec2<i32>(min(min(-1i, i32(-1i) * -25223i), min(i32(-1i) * -2769i, arg_1.a.b.x)), ~u_input.d));
    var_1 = 0i;
    var_1 = var_0.b.x;
    var_1 = 1i << (max(_wgslsmith_clamp_u32(global0.d, reverseBits(2722u), max(30484u, 4294967295u)) & 0u, firstLeadingBit(~u_input.e.x)) % 32u);
    return arg_1.a.b.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = func_4(arg_0, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(684f, global0.e), vec2<f32>(378f, 917f), true))), abs(vec4<i32>(global0.b.x, u_input.d, global0.b.x, global0.b.x) & u_input.c), global0.c, u_input.b & ~0u, _wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0.d, Struct_1(vec2<f32>(global0.e, -872f), global0.b, arg_0, 104765u, global0.e))), global0.e)));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.a.x)))))))));
    global2 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-521f))));
    var var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.e.xz ^ vec2<u32>(29518u, global0.d), u_input.e.xx), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.a.d, var_1.a.d), global1[_wgslsmith_index_u32(var_1.a.d, 23u)] << (global1[_wgslsmith_index_u32(12375u, 23u)] % vec4<u32>(32u))), 60448u) & reverseBits(~(~u_input.e.zx)));
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, var_1.a.d), 1u)];
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2(arg_0);
    var var_1 = ~reverseBits(~4294967295u & min(var_0.d << (1u % 32u), global0.d));
    var_1 = 33420u;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(28892u, 1u, 1u)), _wgslsmith_add_vec3_u32(u_input.e, select(vec3<u32>(u_input.b, u_input.e.x, 1u) << (u_input.e % vec3<u32>(32u)), ~u_input.e, all(vec3<bool>(true, arg_0, global0.c))))), ~(~1u));
    global3 = global0.b.x;
    return Struct_2(var_0, _wgslsmith_f_op_f32(floor(global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.c);
    global3 = firstTrailingBit(-2147483647i);
    global1 = array<vec4<u32>, 23>();
    global2 = array<Struct_1, 1>();
    let var_1 = Struct_2(func_1(true & any(vec3<bool>(true, true, true))).a, _wgslsmith_f_op_f32(round(func_1(false).a.a.x)));
    global3 = var_1.a.b.x;
    global3 = u_input.c.x & ~_wgslsmith_div_i32(max(1i, _wgslsmith_sub_i32(var_0.a.b.x, -4453i)), _wgslsmith_mult_i32(var_1.a.b.x & 34578i, 57295i));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(countOneBits(vec3<i32>(6410i, -1i, var_1.a.b.x)) ^ vec3<i32>(-7060i, -20601i, global0.b.x))));
}

