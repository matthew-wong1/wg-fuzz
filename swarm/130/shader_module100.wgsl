struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_1(u_input.b.yx, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-827f, arg_0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(exp2(arg_0.a.x))))), ~select(4294967295u, ~0u, false));
    var var_1 = ~u_input.b.x;
    var var_2 = 1i;
    let var_3 = reverseBits(_wgslsmith_add_vec3_u32(firstLeadingBit(u_input.b) & u_input.b, ~(~vec3<u32>(var_0.a.x, arg_1, u_input.b.x))) << (reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(46880u, 28254u, u_input.b.x), u_input.b, vec3<u32>(var_0.a.x, 4294967295u, u_input.b.x))) % vec3<u32>(32u)));
    let var_4 = global0.yx;
    return !vec3<bool>(global0.x, !var_0.b, global0.x);
}

fn func_2() -> Struct_1 {
    global0 = !func_3(Struct_2(vec4<f32>(_wgslsmith_div_f32(1317f, -265f), 213f, -137f, -518f)), ~6641u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-793f))) + _wgslsmith_div_f32(-1225f, _wgslsmith_f_op_f32(f32(-1f) * -1510f))));
    global0 = func_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1486f, 288f, -251f, -1210f), vec4<f32>(-792f, -274f, -3137f, 1000f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(256f, -1337f, 961f, -1280f))))), u_input.b.x, -339f);
    return Struct_1(abs(abs(abs(u_input.b.yy)) & (~u_input.b.xz & ~vec2<u32>(u_input.b.x, u_input.b.x))), (min(_wgslsmith_add_u32(62721u, 0u), _wgslsmith_div_u32(u_input.b.x, 17088u)) >= (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u) & 81931u)) & all(!(!global0.yz)), _wgslsmith_f_op_f32(max(1551f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - -2050f))))), reverseBits(firstLeadingBit(~u_input.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_2 {
    var var_0 = func_2();
    global0 = vec3<bool>(select(arg_1 | false, false, select(func_2().b, var_0.a.x < ~u_input.b.x, false)), select(true, _wgslsmith_f_op_f32(trunc(arg_0.c)) >= _wgslsmith_f_op_f32(select(973f, var_0.c, false)), any(global0.yz)) || arg_0.b, false);
    let var_1 = vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_0.c + arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(852f)) * _wgslsmith_f_op_f32(max(var_0.c, -296f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(arg_0.c - -916f))), arg_0.c);
    var var_2 = !var_0.b;
    let var_3 = ~u_input.b;
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(364f, func_2().c, arg_0.c, var_0.c), vec4<f32>(_wgslsmith_f_op_f32(floor(-522f)), _wgslsmith_f_op_f32(var_0.c + var_1.x), _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c)), var_1.x), !(!vec4<bool>(false, false, var_0.b, true)))), var_1));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1712f, 238f, -175f, -449f), _wgslsmith_f_op_vec4_f32(vec4<f32>(168f, 311f, 229f, 703f) - vec4<f32>(-417f, 1666f, 1411f, -382f))))))), reverseBits(u_input.b.xx & ~firstLeadingBit(vec2<u32>(6432u, 4294967295u))), vec4<i32>(-1i, ~u_input.a, -6015i, _wgslsmith_div_i32(-22545i, 48045i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, 788f, 1034f) * vec3<f32>(822f, 1300f, 617f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(718f, -215f, 1600f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1011f, 2507f, -674f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, 824f, -614f) + vec3<f32>(-113f, -219f, 233f)), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x))))))));
    var_0 = Struct_4(func_4(func_2(), true, u_input.a, _wgslsmith_mult_i32(2147483647i, countOneBits(var_0.c.x >> (arg_0.x % 32u)))), firstLeadingBit(var_0.b), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0.c.x, -2147483647i, 44238i, u_input.a), countOneBits(var_0.c), !vec4<bool>(true, true, global0.x, global0.x)), abs(var_0.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(var_0.d.x, 1000f, var_0.a.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_0.d.x, var_0.a.a.x))), var_0.d, true)))));
    let var_1 = Struct_4(var_0.a, arg_0, _wgslsmith_sub_vec4_i32(var_0.c, var_0.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), var_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x))), _wgslsmith_div_f32(688f, _wgslsmith_f_op_f32(trunc(var_0.a.a.x)))))));
    var var_2 = var_0.a;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(var_0.a.a)));
    return Struct_1(var_1.b, true, var_1.d.x, var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_sub_vec2_u32(u_input.b.xx, ~(~(~vec2<u32>(u_input.b.x, u_input.b.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1446f + var_0.c), _wgslsmith_f_op_f32(floor(-1515f)))), var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(357f, -1306f))), _wgslsmith_f_op_f32(-func_4(Struct_1(u_input.b.zx, global0.x, var_0.c, 38395u), global0.x, u_input.a, u_input.a).a.x))))));
    var_0 = Struct_1(u_input.b.yx, func_3(Struct_2(vec4<f32>(_wgslsmith_div_f32(1000f, 1257f), var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -889f))), ~(~u_input.b.x), var_0.c).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, var_1.x, any(global0.xx))) - -2191f)), ~_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(0u, var_0.d, 34633u)), vec3<u32>(u_input.b.x, 51957u, u_input.b.x), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, global0.x, var_0.b))), vec3<u32>(~0u, _wgslsmith_add_u32(u_input.b.x, var_0.d), 67446u)));
    let var_2 = ~(~31885u);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a << (var_0.a % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(max(select(vec4<i32>(0i, u_input.a, 2147483647i, u_input.a), ~vec4<i32>(0i, 1i, 2147483647i, u_input.a), func_1(u_input.b.zx).b), -(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, 346i, u_input.a, -54423i))), ~countOneBits(abs(vec4<i32>(u_input.a, -2147483647i, 8877i, u_input.a)))), u_input.b.yz, vec4<i32>(countOneBits(-(i32(-1i) * -1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(12336i, 11868i, 8262i, u_input.a) | vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(-675i, -1i, 1i, u_input.a)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, 1i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), reverseBits(vec4<i32>(-2147483647i, 1i, -1i, 2147483647i)))), ~1i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xy, var_0.a), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2, 18271u), vec2<u32>(1u, 0u))) % 32u), u_input.a), select(-(~_wgslsmith_div_vec3_i32(vec3<i32>(28744i, u_input.a, -32398i), vec3<i32>(u_input.a, u_input.a, -44084i))), firstTrailingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec3<i32>(u_input.a, 52777i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, 0i))), vec3<bool>(true, global0.x, func_2().b)));
}

