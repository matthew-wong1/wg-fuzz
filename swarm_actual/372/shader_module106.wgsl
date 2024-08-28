struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = reverseBits(u_input.b);
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(697f, 1000f)), -565f)), -321f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2170f, 860f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1472f, -1316f, -1011f, -588f) - vec4<f32>(1207f, -326f, -1826f, 452f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1109f, 619f, 504f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, -2690f, 190f, 1139f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-895f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f + -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(884f * -724f))), (u_input.a & u_input.a) > u_input.a))));
    let var_1 = Struct_3(~_wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(4294967295u, u_input.c.x)), reverseBits(u_input.d.x)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))));
    var var_2 = u_input.c.xx;
    return ~(~((var_1.a ^ ~44034u) << (~(4093u | var_1.a) % 32u)));
}

fn func_2() -> Struct_2 {
    global0 = func_3();
    var var_0 = _wgslsmith_div_i32(u_input.a, u_input.a);
    var var_1 = Struct_3(~33207u);
    global0 = func_3();
    let var_2 = reverseBits(vec2<u32>(min(_wgslsmith_add_u32(21937u, var_1.a), var_1.a) & var_1.a, ~_wgslsmith_dot_vec2_u32(u_input.d << (vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, var_1.a) >> (u_input.c.yy % vec2<u32>(32u)))));
    return Struct_2(vec4<f32>(-557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-1635f + 1889f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1929f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f - -550f) + _wgslsmith_f_op_f32(trunc(934f))) - _wgslsmith_f_op_f32(trunc(2088f)))), _wgslsmith_f_op_f32(f32(-1f) * -714f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global0 = u_input.b;
    var var_0 = abs(1u);
    var var_1 = _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(198f, arg_0.a.x)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1259f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b + arg_0.b), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.b), true))) + _wgslsmith_f_op_f32(round(507f)));
    global0 = ~select(u_input.b, ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, 45614u), _wgslsmith_clamp_u32(1u, u_input.b, u_input.d.x)), true);
    var var_2 = arg_0;
    return func_2();
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(func_2(), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(1i, u_input.a, 0i)) | _wgslsmith_add_vec3_i32(vec3<i32>(-12430i, u_input.a, 33832i), -vec3<i32>(2147483647i, 13327i, u_input.a))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-237f, 863f, 172f, -234f), var_0.a))))), 895f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), _wgslsmith_f_op_f32(f32(-1f) * -3259f), _wgslsmith_f_op_f32(170f - _wgslsmith_div_f32(var_0.b, var_0.a.x)), var_0.b) - _wgslsmith_f_op_vec4_f32(-var_0.a)), 603f);
    let var_2 = ~(~vec4<u32>(16659u, u_input.b, 0u, _wgslsmith_dot_vec2_u32(reverseBits(u_input.c.xy), u_input.c.zx)));
    let var_3 = min(~(~var_2.x), 1u);
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(var_0.a - var_1.a)))))), var_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(28286u, 33733u, 34020u, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(25613u, 1u, u_input.b, 434u), vec4<u32>(11059u, 0u, u_input.c.x, u_input.b))), ~vec4<u32>(u_input.c.x, 44433u, ~7258u, ~u_input.c.x));
    let var_2 = vec4<i32>(arg_2.b.x >> (_wgslsmith_div_u32(~(~2944u), u_input.d.x) % 32u), -23899i, arg_1.b.x, firstTrailingBit(-abs(var_0.b.x) | 1i));
    let var_3 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(52289i, -(~2147483647i), select(-2147483647i, arg_1.b.x, var_0.a.x), 0i), _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 13863i, -37462i, var_0.b.x), var_2), ~(~var_2)), var_0.a.x), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(var_2 >> (vec4<u32>(u_input.b, var_1.x, u_input.b, u_input.d.x) % vec4<u32>(32u)), min(var_2, var_2)));
    let var_4 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(~var_1.yxz, ~vec3<u32>(4456u, var_1.x, var_1.x)), vec3<u32>(_wgslsmith_div_u32(var_1.x, 21612u) & ~105058u, 41683u, var_1.x), !vec3<bool>(select(arg_2.a.x, true, var_0.a.x), arg_1.a.x, true)), vec3<u32>(1u, 0u, min(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_1.x, u_input.d.x, 1u))), _wgslsmith_mod_u32(var_1.x, var_1.x) & 107345u)));
    return func_4(arg_0, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 2147483647i, -81495i) ^ arg_2.b, arg_1.b) << (var_4 % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.x;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -680f))));
    let var_1 = reverseBits(vec4<i32>(max(u_input.a, ~38961i), _wgslsmith_clamp_i32(firstTrailingBit(abs(u_input.a)), -1i, 0i), 0i, -1i));
    let var_2 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2811f * var_0)));
    let var_3 = func_5(func_1(), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), var_1.wxw), Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), _wgslsmith_mod_vec3_i32(var_1.xyw, -(var_1.xww | vec3<i32>(u_input.a, 50675i, -2147483647i)))), -192f);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a.zww - vec3<f32>(-226f, 775f, 1084f))), func_5(Struct_2(var_3.a, var_2), Struct_1(vec2<bool>(true, true), var_1.wyx), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, var_1.x, var_1.x)), var_2).a.xxx, any(vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(~7218i));
}

