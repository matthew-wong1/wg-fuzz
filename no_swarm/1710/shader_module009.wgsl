struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(vec3<u32>(abs(4354u), min(121863u, u_input.b.x), ~33669u)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i) | u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1745f), vec2<f32>(arg_3, arg_0), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_3)))), u_input.b.x), 1019f, _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c.x), u_input.c.x, firstLeadingBit(-8004i), 62225i) ^ abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -3568i)), vec4<i32>(~u_input.c.x | (u_input.c.x | 47840i), u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) ^ vec3<i32>(u_input.c.x, 8533i, u_input.c.x), -vec3<i32>(-2147483647i, u_input.c.x, -7196i)), -13620i)), _wgslsmith_dot_vec2_u32(arg_2.xx, ~vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 46009u, u_input.a, u_input.b.x), vec4<u32>(arg_2.x, 0u, u_input.a, 1u)))), Struct_1(vec3<u32>(countOneBits(select(u_input.b.x, 14066u, arg_1)), u_input.a, arg_2.x)));
    let var_1 = var_0;
    var var_2 = select(!select(select(!vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(true, true, false, arg_1), vec4<bool>(true, true, false, false), false), vec4<bool>(arg_1, false, false, arg_1)), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1), !vec4<bool>(arg_1, false, false, false)), !vec4<bool>(arg_1, true, true, arg_1)), select(!select(vec4<bool>(arg_1, false, false, true), select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, true, arg_1, arg_1), true)), !vec4<bool>(all(vec2<bool>(arg_1, true)), var_0.c.x <= var_1.c.x, true, arg_1), !select(!vec4<bool>(arg_1, true, false, arg_1), !vec4<bool>(arg_1, true, false, false), 0u >= var_0.e.a.x)), select(select(!vec4<bool>(true, arg_1, true, arg_1), !vec4<bool>(true, true, arg_1, true), !select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1)), !select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true)), !vec4<bool>(arg_1, false, arg_1, false), true), !vec4<bool>(true, false, false, var_0.d <= 63974u)));
    var var_3 = _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(var_0.a.a.a.x << (u_input.b.x % 32u), var_0.d, _wgslsmith_div_u32(arg_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(55929u, var_1.d, u_input.a, 30339u), vec4<u32>(1u, var_0.d, 0u, 0u)))));
    let var_4 = u_input.c.x;
    return -651f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = vec2<bool>(any(select(vec4<bool>(true, false, false || arg_1.c, !arg_2), !vec4<bool>(true, true, arg_1.c, arg_1.c), vec4<bool>(true, arg_1.c, true, arg_1.c))), any(select(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_1.c, true), vec2<bool>(false, arg_1.c)), !select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, true), arg_1.c), !select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_1.c), false))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(arg_1.d | vec4<u32>(4294967295u, arg_1.e.x, arg_1.d.x, 0u)), abs(~arg_1.d)), u_input.b.x | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.a.a.x, 21888u, u_input.a), vec3<u32>(65776u, 18879u, arg_1.e.x)), select(vec3<u32>(0u, 6755u, u_input.a), vec3<u32>(arg_1.d.x, 1u, arg_1.b), true))) << (vec2<u32>(u_input.b.x, arg_3.a.a.x) % vec2<u32>(32u));
    let var_2 = arg_2;
    var_1 = arg_3.a.a.xy;
    var_0 = !vec2<bool>(!all(select(vec3<bool>(true, true, arg_2), vec3<bool>(var_2, true, arg_2), true)), all(!vec4<bool>(arg_1.c, var_0.x, true, arg_2)));
    return arg_3.c;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, abs(0i), ~(-1i), max(-1i, -60408i)), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 1i, -49301i, u_input.c.x), select(vec4<i32>(u_input.c.x, -84547i, u_input.c.x, 162i), vec4<i32>(u_input.c.x, 1i, -2147483647i, u_input.c.x), vec4<bool>(false, true, false, true))));
    var var_1 = Struct_3(Struct_2(Struct_1(~(~vec3<u32>(0u, 42189u, u_input.a))), u_input.c, _wgslsmith_f_op_vec2_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3(884f, true, vec3<u32>(28336u, 0u, 1u), 1754f)), _wgslsmith_div_f32(-159f, 264f), 1298f), Struct_5(var_0.x, u_input.a, true, countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 34511u)), vec2<u32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u))), true, Struct_2(Struct_1(vec3<u32>(u_input.b.x, 53297u, u_input.a)), -u_input.c, vec2<f32>(-2347f, 1000f), ~u_input.a))), 1u), -853f, _wgslsmith_mod_vec4_i32(var_0, var_0), 1u, Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~28103u, abs(4294967295u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), min(~vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), select(vec3<u32>(u_input.a, u_input.a, 61641u), vec3<u32>(94134u, u_input.b.x, u_input.a), true)))));
    var_1 = Struct_3(Struct_2(var_1.e, ~u_input.c << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.a.c, _wgslsmith_f_op_vec2_f32(exp2(var_1.a.c)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(317f, var_1.a.c.x) + vec2<f32>(var_1.a.c.x, -1537f))))), countOneBits(select(4294967295u ^ u_input.b.x, var_1.d, true))), _wgslsmith_f_op_f32(min(-629f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 1687f), _wgslsmith_f_op_f32(floor(var_1.a.c.x)), true)))))), var_0, ~(~u_input.b.x), Struct_1(_wgslsmith_mod_vec3_u32(var_1.e.a, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u), var_1.a.a.a) << (var_1.a.a.a % vec3<u32>(32u)))));
    var var_2 = vec3<i32>(min(_wgslsmith_add_i32(~(-2147483647i), var_0.x), u_input.c.x) >> (1u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~min(u_input.c, var_0.yx), var_0.wx >> (abs(vec2<u32>(41236u, var_1.a.a.a.x)) % vec2<u32>(32u))), var_1.c.yx), reverseBits(0i));
    var_1 = Struct_3(var_1.a, -228f, abs(-var_1.c), _wgslsmith_mod_u32(u_input.a, ~(~24409u)), Struct_1(~vec3<u32>(select(var_1.a.a.a.x, u_input.b.x, true), abs(56392u), _wgslsmith_div_u32(u_input.a, var_1.e.a.x))));
    return ~_wgslsmith_div_i32(~0i, reverseBits(u_input.c.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-abs(u_input.c), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.x, u_input.c.x), vec2<i32>(arg_1.b.x, u_input.c.x)), arg_1.b)), countOneBits(_wgslsmith_sub_vec2_i32(select(arg_1.b, vec2<i32>(-29047i, 0i), vec2<bool>(arg_0.x, true)), vec2<i32>(arg_1.b.x, 2396i)))), func_2(), u_input.c.x, 0i);
    var var_1 = arg_1.a;
    var_0 = ~_wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.c.x, u_input.c.x, -1i, var_0.x) >> (~vec4<u32>(0u, 36479u, 19797u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, -1i, arg_1.b.x, var_0.x)) | vec4<i32>(2147483647i, arg_1.b.x, var_0.x, var_0.x), vec4<i32>(u_input.c.x ^ arg_1.b.x, arg_1.b.x, -u_input.c.x, u_input.c.x << (45431u % 32u))));
    var var_2 = max(arg_1.a.a, var_1.a);
    let var_3 = Struct_4(_wgslsmith_add_u32(~countOneBits(67287u << (var_1.a.x % 32u)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(42793u, 4294967295u, 0u, 1u)), max(abs(vec4<u32>(var_1.a.x, 46933u, 4294967295u, var_2.x)), vec4<u32>(142457u, u_input.b.x, 14152u, var_2.x) | vec4<u32>(14698u, 14344u, 4294967295u, var_2.x)))), arg_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(sign(949f))) * vec2<f32>(_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x), _wgslsmith_div_f32(arg_1.c.x, arg_1.c.x)))), Struct_3(arg_1, -985f, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(10652i, arg_1.b.x, 2147483647i, arg_1.b.x), ~vec4<i32>(arg_1.b.x, arg_1.b.x, 1i, arg_1.b.x))), 1u, Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_1.a.x, u_input.a), vec3<u32>(var_2.x, 126u, var_2.x)), vec3<u32>(0u, 4818u, var_1.a.x), all(vec2<bool>(true, true))))), _wgslsmith_mod_i32(arg_1.b.x, _wgslsmith_sub_i32(-12805i, ~(-1i))));
    return ~(~(~(~985u)) ^ _wgslsmith_dot_vec3_u32(arg_1.a.a, vec3<u32>(var_3.a, var_2.x, ~var_2.x)));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(34887u, arg_2.x, arg_2.x, u_input.b.x) >> (select(vec4<u32>(74770u, u_input.a, 0u, 48179u), vec4<u32>(arg_2.x, 4294967295u, 38560u, arg_2.x), vec4<bool>(arg_1.x, true, arg_1.x, false)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(6858u, u_input.a), 14552u, u_input.a, arg_2.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(15724u, 0u, 4294967295u, 0u) >> (vec4<u32>(arg_2.x, arg_2.x, 20312u, 7096u) % vec4<u32>(32u)), vec4<u32>(arg_2.x, arg_2.x, 54327u, 1u) << (vec4<u32>(u_input.a, u_input.b.x, u_input.a, arg_2.x) % vec4<u32>(32u))), ~vec4<u32>(~12838u, 73678u, 4294967295u >> (u_input.b.x % 32u), 11677u)));
    let var_1 = Struct_4(_wgslsmith_add_u32(u_input.b.x, ~17612u), var_0.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 694f) + vec2<f32>(arg_0, arg_3)), select(arg_1.yx, arg_1.xz, vec2<bool>(arg_1.x, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, arg_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_3)), arg_1.x)), arg_1.xx)))), Struct_3(Struct_2(Struct_1(~arg_2), _wgslsmith_mod_vec2_i32(u_input.c, -vec2<i32>(-14289i, u_input.c.x)), vec2<f32>(_wgslsmith_f_op_f32(max(-241f, arg_0)), _wgslsmith_f_op_f32(select(182f, 1533f, arg_1.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 26922u, arg_2.x), vec4<u32>(arg_2.x, u_input.b.x, 80195u, var_0.x))), _wgslsmith_f_op_f32(trunc(-180f)), vec4<i32>(select(-35371i, -1651i, false), select(-2147483647i, u_input.c.x, false), u_input.c.x, 1i) >> (vec4<u32>(u_input.a, max(15564u, arg_2.x), ~arg_2.x, 1u) % vec4<u32>(32u)), 0u, Struct_1(arg_2)), _wgslsmith_mult_i32(select(u_input.c.x, -4383i, false), 42647i));
    let var_2 = 1648f;
    let var_3 = abs(-vec2<i32>(1i, 0i));
    let var_4 = var_1.d.a;
    return Struct_2(var_4.a, vec2<i32>(select(-2147483647i, _wgslsmith_div_i32(-16900i, -54764i), all(vec2<bool>(true, false))) >> (~0u % 32u), u_input.c.x), vec2<f32>(1f, 1f), _wgslsmith_mod_u32(~var_0.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(19482i, ~u_input.b.x, true, ~(~(~vec4<u32>(u_input.a, 27970u, 18884u, u_input.b.x))), vec2<u32>(0u, max(26979u, _wgslsmith_mult_u32(u_input.b.x, min(4294967295u, 4294967295u)))));
    var var_1 = Struct_3(func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1869f * -762f)))), !(!(!vec3<bool>(var_0.c, false, true))), ~vec3<u32>(u_input.a | 34247u, func_1(vec4<bool>(var_0.c, false, var_0.c, false), Struct_2(Struct_1(vec3<u32>(3495u, var_0.e.x, u_input.a)), u_input.c, vec2<f32>(694f, -780f), u_input.a)), ~4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(442f - 1290f), _wgslsmith_f_op_f32(max(335f, -994f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f - -1000f) + 235f))), 1160f, -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x) ^ vec2<i32>(58573i, 2147483647i), min(vec2<i32>(2147483647i, -1i), vec2<i32>(1i, u_input.c.x))), 8455i, _wgslsmith_mult_i32(2147483647i, -1i), u_input.c.x ^ -6052i), ~reverseBits(u_input.a), Struct_1(var_0.d.xyz));
    let var_2 = u_input.a;
    var_1 = Struct_3(var_1.a, 1549f, var_1.c, abs(var_0.d.x | abs(u_input.a)), var_1.a.a);
    var var_3 = var_0.d.x;
    let var_4 = ~var_1.c.x;
    let var_5 = min(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(38624u, var_1.e.a.x, 20967u, 1u), ~select(var_0.d, vec4<u32>(var_1.a.d, var_1.a.d, 0u, 0u), var_0.c)), var_0.d), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)), var_1.a.c.x)), -50361i);
}

