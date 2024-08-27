struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(countOneBits(u_input.c) >= _wgslsmith_clamp_i32(1633i >> (_wgslsmith_sub_u32(1u, u_input.e) % 32u), u_input.c | -2147483647i, 25135i), !(true && all(vec3<bool>(false, false, true))) & !(abs(86985u) < ~u_input.e), true);
    var_0 = vec3<bool>(var_0.x | false, var_0.x, var_0.x);
    var var_1 = vec3<bool>(!var_0.x, !any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true)), !(!(countOneBits(u_input.c) > ~(-1i))));
    let var_2 = _wgslsmith_div_vec3_i32(abs(select(-vec3<i32>(-68646i, u_input.c, 22496i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-19323i, u_input.c, u_input.c), vec3<i32>(59102i, -1i, -26342i), vec3<i32>(u_input.c, u_input.c, u_input.c)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, false)), vec3<bool>(true, var_1.x, true)))), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 2147483647i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 9487u, u_input.a.x), vec3<u32>(37243u, u_input.e, u_input.a.x)) % vec3<u32>(32u)), -firstTrailingBit(vec3<i32>(1i, -2147483647i, u_input.c))) & ~max(vec3<i32>(u_input.c, u_input.c, -21565i), vec3<i32>(u_input.c, u_input.c, -8134i) >> (vec3<u32>(0u, u_input.b, u_input.a.x) % vec3<u32>(32u))));
    var_1 = select(select(vec3<bool>(all(vec4<bool>(true, true, var_1.x, true)), var_1.x, any(!vec4<bool>(var_0.x, var_1.x, true, var_0.x))), !vec3<bool>(false, var_0.x, true), true), vec3<bool>(_wgslsmith_div_f32(-1027f, -920f) == _wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(trunc(606f))), -390f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(358f, 316f)))), false), all(vec4<bool>(!var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), false, var_0.x == !var_1.x)));
    return 1101f;
}

fn func_2(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_4(~0u, ~_wgslsmith_mult_vec3_u32(countOneBits(reverseBits(vec3<u32>(35438u, u_input.a.x, u_input.a.x))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 13157u, u_input.d) | vec3<u32>(4294967295u, u_input.d, 68483u), ~vec3<u32>(u_input.e, u_input.e, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(659f))))) + _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(func_3()))));
    var var_3 = ~vec3<u32>(~(~u_input.b), abs(_wgslsmith_dot_vec2_u32(abs(var_1.b.xz), vec2<u32>(u_input.b, u_input.a.x))), 48418u);
    let var_4 = all(vec3<bool>(true, ~u_input.c < reverseBits(reverseBits(-42540i)), !(true || !arg_0.x)));
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, _wgslsmith_add_u32(20u, ~29286u), abs(reverseBits(18375u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, var_3.x, 0u), var_1.b));
}

fn func_1() -> vec4<u32> {
    var var_0 = select(firstLeadingBit(_wgslsmith_sub_vec3_u32(func_2(vec2<bool>(false, false)), ~(~vec3<u32>(u_input.b, u_input.b, u_input.d)))), _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(0u), _wgslsmith_mult_u32(44072u, 1u), u_input.e) << (abs(vec3<u32>(1u, 4294967295u, u_input.a.x) << (vec3<u32>(9382u, u_input.d, 33459u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(u_input.b | u_input.a.x, 4294967295u), ~u_input.b, ~_wgslsmith_mod_u32(1u, u_input.a.x))), !select(vec3<bool>(any(vec2<bool>(false, true)), false, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    return _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.d)), vec4<u32>(60819u, 20623u, u_input.b, 4294967295u))), min(firstTrailingBit(~vec4<u32>(u_input.a.x, 171u, 0u, 0u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.e)), 7121u, var_0.x, ~60452u))) << (abs(vec4<u32>(~(~var_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, 1u, 24685u), ~vec4<u32>(3543u, 0u, u_input.e, u_input.d)), 4294967295u, 26989u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, false, (!select(false, false, true) && any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true))) | false);
    let var_1 = func_1();
    var var_2 = -(firstTrailingBit(u_input.c) >> (var_1.x % 32u));
    var_2 = 45227i;
    var var_3 = Struct_4(22994u, ~vec3<u32>(u_input.e, firstTrailingBit(var_1.x), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(1i, min(var_1 & ~(~var_1), var_1));
}

