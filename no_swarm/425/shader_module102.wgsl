struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> u32 {
    global0 = 6759u;
    let var_0 = 19392u;
    global0 = 50693u;
    global0 = ~u_input.a;
    global0 = 4294967295u;
    return ~73452u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    global0 = reverseBits(arg_1.a.d.a);
    let var_0 = ~(~(2147483647i << (u_input.c.x % 32u)));
    global0 = ~(~(~611u));
    var var_1 = arg_0.c;
    let var_2 = true;
    return _wgslsmith_mod_u32(~(~firstTrailingBit(1u)), abs(1u)) ^ _wgslsmith_dot_vec3_u32(u_input.d ^ ~abs(var_1.c), reverseBits(~(~vec3<u32>(35429u, arg_1.a.d.c.x, 12176u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = countOneBits(abs(u_input.b.x & 0i) & _wgslsmith_sub_i32(arg_0.d & arg_0.d, ~arg_2.d)) & ((u_input.b.x ^ 18816i) ^ ~(u_input.b.x ^ 0i));
    let var_1 = ~arg_2.c;
    global0 = ~_wgslsmith_sub_u32(1u | _wgslsmith_sub_u32(countOneBits(var_1.x), var_1.x), select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -471f)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.c.x, 1u, arg_2.c.x), reverseBits(4294967295u)), true));
    var var_2 = _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.d, -8931i, ~(-1i)), vec3<i32>(arg_2.d, arg_0.d, firstTrailingBit(9464i)))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 45604i, arg_0.d, -2147483647i), vec4<i32>(var_0, u_input.b.x, arg_2.d, arg_2.d)), arg_0.d), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-94i, 0i), u_input.b), 0i >> (0u % 32u), abs(-2147483647i)))));
    let var_3 = ~(firstTrailingBit(vec2<u32>(var_1.x, 1u)) >> (~min(~u_input.c.yx, arg_0.c.zx) % vec2<u32>(32u)));
    return Struct_2(arg_2, vec3<i32>(-(~(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(12553i, arg_2.d)), -(~vec2<i32>(arg_0.d, 2147483647i))), 1i), arg_2, Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -936f))), !(!arg_2.b), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(38625u, 4294967295u, 1u), arg_2.c)), var_2.x), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1764f - -968f), _wgslsmith_f_op_f32(select(1890f, 852f, arg_2.b)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, _wgslsmith_f_op_f32(127f - -1088f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(2630f + 454f)))), 1203f));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(Struct_1(9211u, false, countOneBits(_wgslsmith_mult_vec3_u32(arg_0.c.c, u_input.c)), -27544i), _wgslsmith_clamp_vec3_i32(-arg_0.b, ~arg_0.b, -vec3<i32>(u_input.b.x, arg_0.c.d, u_input.b.x)), func_4(func_4(Struct_1(u_input.a, false, vec3<u32>(arg_0.c.c.x, arg_0.a.a, 4294967295u), 32749i), 1u, func_4(arg_0.d, u_input.a, arg_0.d, arg_0.c.b).a, true).a, ~min(arg_0.c.c.x, 15033u), arg_0.d, arg_0.a.b).d, func_4(arg_0.d, firstTrailingBit(0u), func_4(arg_0.a, 1u, arg_0.d, !arg_0.c.b).a, !any(vec4<bool>(false, true, arg_0.c.b, true))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_1, arg_1, arg_0.e.x))))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(~1u, ~arg_0.c.a) ^ 38038u), arg_1, func_4(func_4(arg_0.c, ~(1u >> (arg_0.c.c.x % 32u)), arg_0.c, func_4(arg_0.d, 7885u, arg_0.c, false).a.b && !arg_0.a.b).a, arg_0.c.a & firstLeadingBit(1u), func_4(arg_0.a, arg_0.d.c.x & 4294967295u, func_4(func_4(arg_0.a, u_input.d.x, Struct_1(109766u, arg_0.c.b, u_input.c, arg_0.d.d), false).a, 6993u, arg_0.a, arg_0.d.b & false).a, true).a, arg_0.d.b).a);
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(Struct_1(_wgslsmith_clamp_u32(func_2(941f), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_div_u32(0u, 1u)), !any(vec2<bool>(true, false)), _wgslsmith_sub_vec3_u32(~u_input.d, ~u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(9360i, -11669i), -vec2<i32>(u_input.b.x, 1i))), _wgslsmith_mod_u32(1u | (u_input.c.x ^ u_input.a), u_input.d.x), Struct_1(func_3(Struct_2(Struct_1(12760u, true, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), 2147483647i), vec3<i32>(u_input.b.x, 50933i, u_input.b.x), Struct_1(66237u, true, vec3<u32>(4294967295u, 1u, u_input.a), 68374i), Struct_1(47506u, false, u_input.d, 46377i), vec4<f32>(-1275f, -1558f, 1151f, 383f)), Struct_3(Struct_2(Struct_1(30438u, false, vec3<u32>(12742u, 34194u, 0u), u_input.b.x), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), Struct_1(u_input.a, true, vec3<u32>(50938u, u_input.c.x, 0u), 1i), Struct_1(u_input.d.x, false, u_input.c, 2147483647i), vec4<f32>(-863f, -268f, -114f, -953f)), 4294967295u, -1000f, Struct_1(0u, false, u_input.d, u_input.b.x))), all(vec3<bool>(true, true, false)), reverseBits(vec3<u32>(1495u, 0u, u_input.d.x)) << (vec3<u32>(u_input.d.x, u_input.c.x, 0u) % vec3<u32>(32u)), ~firstTrailingBit(-39801i)), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-func_4(func_4(Struct_1(u_input.a, false, vec3<u32>(u_input.c.x, 4294967295u, u_input.a), 0i), u_input.d.x, Struct_1(29142u, false, u_input.c, u_input.b.x), true).d, _wgslsmith_div_u32(36296u, u_input.d.x), Struct_1(u_input.c.x, true, vec3<u32>(u_input.a, u_input.c.x, 29322u), u_input.b.x), true).e.x))));
    let var_1 = var_0.a.d;
    global0 = var_1.a;
    global0 = ~var_1.a;
    global0 = u_input.d.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(abs(_wgslsmith_dot_vec2_u32(abs(u_input.d.yx), u_input.d.yx)), false, vec3<u32>(u_input.a, 0u & min(u_input.d.x, 1u), _wgslsmith_mult_u32(reverseBits(u_input.c.x), u_input.c.x)), u_input.b.x), vec3<i32>(u_input.b.x, -(~u_input.b.x & 2147483647i), u_input.b.x), func_1(), Struct_1(1u, select(true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, false))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.c.x), firstTrailingBit(u_input.a)), u_input.d.x, u_input.d.x), max(u_input.b.x, -25747i) & (~u_input.b.x ^ _wgslsmith_div_i32(0i, -6834i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, 107f, -155f, -142f)))), vec4<f32>(_wgslsmith_f_op_f32(-658f * -664f), _wgslsmith_f_op_f32(-373f + 1025f), func_5(Struct_2(Struct_1(u_input.a, false, vec3<u32>(0u, 4294967295u, u_input.c.x), 88558i), vec3<i32>(-29554i, 0i, -1i), Struct_1(u_input.c.x, false, u_input.d, u_input.b.x), Struct_1(18098u, false, u_input.d, u_input.b.x), vec4<f32>(-409f, 788f, -388f, -149f)), -1000f).c, _wgslsmith_f_op_f32(-831f + -452f)), select(true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1946f, -1163f, -544f, 349f) + vec4<f32>(-590f, 1056f, 133f, 792f))) + vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = vec3<bool>(var_0.a.b, !any(select(vec2<bool>(var_0.c.b, var_0.c.b), vec2<bool>(true, true), vec2<bool>(true, false))), true && select(true, true, u_input.a < ~4294967295u));
    var var_2 = _wgslsmith_div_vec3_i32(var_0.b, ~(~_wgslsmith_clamp_vec3_i32(min(var_0.b, var_0.b), vec3<i32>(var_0.b.x, var_0.c.d, -1i) & var_0.b, -var_0.b)));
    var var_3 = 246f;
    var var_4 = var_0;
    let var_5 = 4513u << (~var_0.a.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.e.x, var_4.e.x, var_4.e.x) + var_4.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_4.e))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.e.x, var_0.e.x), var_0.e.x)) + _wgslsmith_f_op_f32(-func_4(var_0.d, 1u, Struct_1(var_4.a.c.x, var_0.c.b, var_0.a.c, 0i), var_0.a.b).e.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(var_4.e.x * _wgslsmith_f_op_f32(abs(var_0.e.x))));
}

