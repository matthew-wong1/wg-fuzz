struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_div_u32(0u | u_input.c, 0u);
    let var_1 = Struct_4(~vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, countOneBits(u_input.a)), ~_wgslsmith_mult_u32(u_input.a, u_input.c), abs(0u), ~_wgslsmith_sub_u32(u_input.a, 10590u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(63387u, 4294967295u, u_input.a), vec3<u32>(max(u_input.c, u_input.a), ~u_input.c, _wgslsmith_add_u32(0u, u_input.c))) << (u_input.a % 32u), Struct_2(vec2<i32>(firstLeadingBit(u_input.b.x << (97685u % 32u)), u_input.b.x), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, false, true))));
    let var_2 = Struct_4(vec4<u32>(1u, reverseBits(_wgslsmith_div_u32(~var_1.a.x, 19904u)), ~(~reverseBits(69181u)), 1u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, ~4294967295u), ~u_input.a), Struct_2(u_input.b.zx, Struct_1(var_1.c.c.a), Struct_1(!(!vec4<bool>(var_1.c.c.a.x, var_1.c.b.a.x, false, var_1.c.b.a.x)))));
    let var_3 = 10020u;
    var var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2759f - 1225f) * _wgslsmith_f_op_f32(min(-1000f, 429f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(134f + -538f))), -219f, _wgslsmith_f_op_f32(-1230f - _wgslsmith_f_op_f32(round(-306f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1058f, 1983f, -584f, -1100f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -326f, 1000f, 683f))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_5(arg_0.e.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1099f)), _wgslsmith_f_op_vec4_f32(func_3())));
    let var_1 = arg_0.e;
    let var_2 = any(select(select(select(vec3<bool>(arg_0.e.a.x, var_1.a.x, false), !vec3<bool>(var_0.a.x, true, true), arg_0.a.a.wzz), select(select(vec3<bool>(false, true, arg_0.a.a.x), var_1.a.xxx, arg_0.e.a.xwz), !vec3<bool>(arg_0.e.a.x, var_1.a.x, var_0.a.x), true), !(!arg_0.e.a.wzx)), select(select(var_0.a.xyy, var_1.a.xxy, vec3<bool>(var_1.a.x, var_1.a.x, false)), var_1.a.ywz, !vec3<bool>(var_1.a.x, var_0.a.x, var_1.a.x)), select(var_0.a.zwx, vec3<bool>(!arg_0.e.a.x, all(vec4<bool>(var_1.a.x, var_0.a.x, true, true)), false), any(!vec2<bool>(var_1.a.x, false)))));
    var var_3 = Struct_2(-u_input.b.yz | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-39449i, -16944i, -10611i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)) >> (25144u % 32u), ~_wgslsmith_mult_i32(u_input.b.x, -24688i)), arg_0.a, Struct_1(vec4<bool>(!var_0.a.x, any(!arg_0.a.a.zz), var_2, !var_2)));
    var_3 = Struct_2(min(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(27802i, 0i)), u_input.b.xz ^ _wgslsmith_div_vec2_i32(vec2<i32>(var_3.a.x, var_3.a.x), var_3.a)), max(_wgslsmith_sub_vec2_i32(select(u_input.b.yx, vec2<i32>(-19684i, 1897i), true), u_input.b.yy), vec2<i32>(u_input.b.x, 38258i) & vec2<i32>(26430i, u_input.b.x))), arg_0.a, var_3.c);
    return u_input.b.x;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    var var_0 = ~(vec3<u32>(_wgslsmith_div_u32(select(u_input.c, 11632u, arg_2.c.b.a.x), u_input.a), _wgslsmith_mod_u32(26682u, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(56816u, arg_2.b, 1u, u_input.c) | vec4<u32>(arg_2.a.x, 12212u, arg_2.b, 1u), vec4<u32>(0u, u_input.c, arg_2.a.x, 53406u))) >> (arg_2.a.yzx % vec3<u32>(32u)));
    var var_1 = arg_2.a.yw;
    var var_2 = _wgslsmith_div_f32(arg_0, -380f);
    let var_3 = -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(arg_2.c.a, arg_2.c.a), arg_2.c.a.x) >> (vec3<u32>(_wgslsmith_mod_u32(var_1.x, var_1.x), var_1.x, _wgslsmith_mod_u32(4294967295u, u_input.a)) % vec3<u32>(32u)), vec3<i32>(countOneBits(1i) ^ ~arg_2.c.a.x, -2147483647i, ~2147483647i));
    var var_4 = _wgslsmith_div_vec3_i32(select(var_3, _wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, var_3) & u_input.b, arg_2.c.b.a.x), -_wgslsmith_mult_vec3_i32(var_3, max(vec3<i32>(17532i, -2147483647i, arg_3), u_input.b) | countOneBits(u_input.b)));
    return arg_2.c.c;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_5 {
    var var_0 = -1i;
    var var_1 = Struct_5(vec4<bool>(arg_1.b.a.x, arg_3.x < firstLeadingBit(_wgslsmith_div_i32(-2147483647i, 3632i)), _wgslsmith_dot_vec2_u32(~arg_2.xz, _wgslsmith_add_vec2_u32(arg_2.yz, vec2<u32>(arg_2.x, arg_2.x))) == abs(~u_input.a), true), vec4<f32>(-324f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * -923f), _wgslsmith_f_op_f32(-arg_0))) * arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_0)), 1f))));
    return Struct_5(var_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(778f, -1227f))), _wgslsmith_f_op_f32(f32(-1f) * -202f), 1002f, var_1.b.x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(var_1.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(125f, -1142f, 1247f, -280f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, arg_0, 1063f, var_1.b.x))))));
}

fn func_6(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.c, 1u, 4294967295u, 1u)), vec4<u32>(u_input.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.c, u_input.a), vec4<u32>(19489u, 0u, 11488u, u_input.c))), u_input.c & 4294967295u, ~u_input.a));
    let var_1 = Struct_2(vec2<i32>(28517i, u_input.b.x), func_4(_wgslsmith_f_op_f32(-arg_0.b.x), 1i, Struct_4(abs(vec4<u32>(1u, u_input.c, 4294967295u, 4294967295u)) & (vec4<u32>(var_0.x, 21753u, 0u, u_input.a) >> (vec4<u32>(u_input.c, 25102u, 0u, var_0.x) % vec4<u32>(32u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 34365u, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 59251u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.c), vec4<u32>(79602u, 4294967295u, 67304u, 4294967295u)), u_input.a), Struct_2(~arg_1, func_4(arg_0.b.x, 1i, global0[_wgslsmith_index_u32(41239u, 25u)], 6415i), func_4(arg_0.b.x, -2147483647i, global0[_wgslsmith_index_u32(1u, 25u)], -2670i))), 52494i), func_4(_wgslsmith_f_op_f32(f32(-1f) * -792f), u_input.b.x, Struct_4(select(~vec4<u32>(var_0.x, u_input.a, u_input.c, 64978u), reverseBits(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x)), arg_0.a.x), var_0.x, Struct_2(~vec2<i32>(27471i, arg_1.x), func_4(arg_0.b.x, -2147483647i, Struct_4(vec4<u32>(var_0.x, var_0.x, 25627u, var_0.x), 122622u, Struct_2(vec2<i32>(-2147483647i, arg_2), Struct_1(arg_0.a), Struct_1(arg_0.a))), arg_2), Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), -449i));
    var_0 = abs(select(max(vec4<u32>(0u, 12025u >> (var_0.x % 32u), ~u_input.a, firstLeadingBit(1u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_0.x, 0u, 25862u)), ~vec4<u32>(75785u, 112615u, var_0.x, u_input.a))), abs(vec4<u32>(max(99636u, 4294967295u), select(u_input.c, 20068u, arg_0.a.x), countOneBits(var_0.x), 1u)), true));
    var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.c, 0u), ~(_wgslsmith_clamp_u32(~u_input.c, var_0.x, 26398u) | 4294967295u), u_input.a, _wgslsmith_sub_u32(~var_0.x, max(u_input.c, u_input.a)));
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(9382u, _wgslsmith_sub_u32(4294967295u, 21354u), _wgslsmith_add_u32(~u_input.a, 8424u & var_0.x) ^ 0u), u_input.a, 11545u, var_0.x);
    return func_4(-817f, _wgslsmith_clamp_i32(2147483647i, select(_wgslsmith_mult_i32(1i, -1i) ^ var_1.a.x, firstTrailingBit(~(-1i)), arg_0.a.x), min(~33559i, arg_2 ^ -13938i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c, 16268u, u_input.c, u_input.c) & ~vec4<u32>(47048u, 17160u, var_0.x, 4294967295u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(20255u, 1698u, var_0.x, 0u), vec4<u32>(2016u, 11450u, 41649u, 4294967295u)), ~vec4<u32>(u_input.a, var_0.x, 4294967295u, u_input.c), !var_1.b.a)), 25u)], u_input.b.x);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global0 = array<Struct_4, 25>();
    var var_0 = func_6(func_5(1187f, Struct_2(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b.xy), vec2<i32>(u_input.b.x, 0i), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, true)), func_4(-395f, func_2(Struct_3(Struct_1(vec4<bool>(true, true, true, false)), -935f, 600f, vec4<u32>(u_input.a, 0u, arg_0.x, u_input.c), Struct_1(vec4<bool>(true, true, false, false))), u_input.c, vec4<u32>(u_input.a, u_input.a, u_input.a, arg_0.x)), global0[_wgslsmith_index_u32(~5029u, 25u)], u_input.b.x)), ~countOneBits(~vec4<u32>(u_input.c, arg_0.x, u_input.c, 64521u)), u_input.b.yy), u_input.b.yx, abs(-1i));
    global0 = array<Struct_4, 25>();
    var var_1 = func_4(1f, u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, ~countOneBits(4294967295u)), 25u)], u_input.b.x).a.x;
    var var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1364f)), 368f)), 1034f))), Struct_2(u_input.b.xz, Struct_1(var_0.a), func_4(1f, ~(-2147483647i), Struct_4(vec4<u32>(2457u, 3956u, 4294967295u, u_input.c), 1u, Struct_2(vec2<i32>(-2147483647i, 14581i), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 70825i, u_input.b.x) | vec3<i32>(-2147483647i, 0i, u_input.b.x), -u_input.b))), ~_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(782u, 4294967295u, 63499u, u_input.a), vec4<u32>(17685u, 4294967295u, arg_0.x, u_input.c)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.x, 0u, 79035u), vec4<u32>(arg_0.x, u_input.a, 6800u, 4294967295u))), vec2<i32>(_wgslsmith_sub_i32(countOneBits(u_input.b.x), -u_input.b.x), firstTrailingBit(max(-24688i, -26321i))) & u_input.b.zx).a.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-512f + -1156f), _wgslsmith_div_f32(-475f, -1277f))))))));
}

fn func_7(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_3(func_4(2599f, u_input.b.x ^ u_input.b.x, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u >> (u_input.a % 32u), u_input.a), 25u)], -1i), arg_0.x, 343f, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, arg_2.x, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 34076u, 1u, u_input.c), vec4<u32>(arg_2.x, 31554u, 99487u, 0u)) << (~vec4<u32>(4294967295u, 80065u, arg_2.x, arg_2.x) % vec4<u32>(32u))), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 1u), vec4<u32>(0u, 10886u, arg_2.x, 77987u)) & (vec4<u32>(arg_2.x, 29646u, u_input.c, 55559u) >> (vec4<u32>(1u, u_input.c, arg_2.x, 1u) % vec4<u32>(32u))))), func_6(func_5(481f, Struct_2(firstLeadingBit(vec2<i32>(u_input.b.x, -37095i)), func_4(-309f, -2147483647i, Struct_4(vec4<u32>(9038u, u_input.a, arg_2.x, arg_2.x), 4294967295u, Struct_2(vec2<i32>(0i, -2219i), Struct_1(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false)), Struct_1(vec4<bool>(arg_3.x, arg_1, false, arg_1)))), 48472i), func_4(arg_0.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 25u)], 2147483647i)), vec4<u32>(~u_input.a, arg_2.x, _wgslsmith_div_u32(93613u, 6233u), arg_2.x), _wgslsmith_sub_vec2_i32(u_input.b.xz, u_input.b.zy << (arg_2.xx % vec2<u32>(32u)))), vec2<i32>(0i, max(u_input.b.x, -3644i) & u_input.b.x), min(u_input.b.x, -1i)));
    var var_1 = var_0.e.a.x;
    global0 = array<Struct_4, 25>();
    var var_2 = 73288u;
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.d.x << ((_wgslsmith_add_u32(var_0.d.x, 14850u) & var_0.d.x) % 32u), countOneBits(~arg_2.x), _wgslsmith_add_u32(~abs(0u), firstTrailingBit(_wgslsmith_div_u32(arg_2.x, 22079u)))), ~var_0.d.wxx);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f), 1730f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 25>();
    let var_0 = vec3<f32>(313f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_7(vec3<f32>(-1077f, _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, u_input.a, u_input.c))), 1802f), false, _wgslsmith_add_vec3_u32(abs(vec3<u32>(22631u, u_input.a, u_input.c)), ~vec3<u32>(28328u, 0u, 51374u)), func_6(Struct_5(vec4<bool>(true, true, true, true), vec4<f32>(218f, 983f, -909f, 838f)), -u_input.b.yz, ~u_input.b.x).a.xzw)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_f_op_f32(func_5(-764f, Struct_2(vec2<i32>(u_input.b.x, -41065i), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, false, true))), vec4<u32>(52492u, 0u, u_input.c, 3438u), select(vec2<i32>(-17335i, -46799i), u_input.b.zx, false)).b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(951f - 474f))), !((91638u >> (u_input.a % 32u)) != ~u_input.a))));
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    var var_1 = Struct_1(vec4<bool>(true, false, true, all(func_5(-600f, Struct_2(u_input.b.yz, Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, false))), ~vec4<u32>(u_input.c, 1u, 27105u, u_input.a), ~vec2<i32>(-1i, 0i)).a.wxy)));
    global0 = array<Struct_4, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-896f, var_0.x) - var_0.x), func_5(-1000f, Struct_2(u_input.b.zz, Struct_1(var_1.a), Struct_1(var_1.a)), ~vec4<u32>(0u, 23942u, u_input.c, u_input.a), vec2<i32>(u_input.b.x, -49483i)).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c << (countOneBits(4294967295u) % 32u), -(vec4<i32>(_wgslsmith_mod_i32(1i, -44836i), u_input.b.x, 1i, u_input.b.x >> (u_input.a % 32u)) & _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(73869i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-1545i, u_input.b.x, u_input.b.x, 37472i)), vec4<i32>(-1i, -1i, u_input.b.x, 2147483647i))), _wgslsmith_mult_u32(u_input.c, ~(~u_input.c)) ^ ~(~u_input.a), 1u);
}

