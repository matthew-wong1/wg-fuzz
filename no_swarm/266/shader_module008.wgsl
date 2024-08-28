struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    global0 = !any(vec2<bool>(true, true));
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) && !any(vec3<bool>(true, all(vec3<bool>(false, true, false)), true));
    let var_0 = true;
    global0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.d & vec4<u32>(0u, 1u, 19498u, 4294967295u), ~vec4<u32>(u_input.d.x, 1u, 0u, u_input.b)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, arg_0, u_input.b, u_input.c)), 0u | arg_0), _wgslsmith_clamp_u32(arg_0, arg_0 << (arg_0 % 32u), 62415u), ~u_input.d.x, ~max(arg_0, arg_0))) == (max(~arg_0, _wgslsmith_dot_vec3_u32(u_input.d.yyx, ~u_input.d.xww)) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 120625u), u_input.d.zz), arg_0) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -350f, true)) + _wgslsmith_f_op_f32(1000f - -704f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f + -967f)), _wgslsmith_div_f32(557f, _wgslsmith_div_f32(474f, -553f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1752f, -173f, -1570f, 181f))))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1287f), var_1.x), var_1.xwz, var_0)) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -803f) - _wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_f32(-529f * _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), any(vec3<bool>(var_0, false, false)))))));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec4<bool> {
    let var_0 = true;
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.d.x) << (~84434u % 32u), ~u_input.b), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, 4294967295u, 0u, 5123u)), firstTrailingBit(u_input.c), 26971u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1837f, 863f)), _wgslsmith_f_op_vec3_f32(func_3(4294967295u)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(333f, -907f, -402f)), vec3<f32>(1000f, -1966f, 252f), vec3<bool>(true, var_0, true)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(981f, 1697f, -1042f), vec3<f32>(-557f, -1935f, -602f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1125f, 589f, 120f), vec3<f32>(-1020f, -501f, 419f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-969f, -2066f, 508f))))))) - vec3<f32>(970f, 1f, -679f));
    let var_3 = select(u_input.a.xw, vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -11948i), u_input.a.zw), 1i) & vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, 1i), u_input.a.wwx), _wgslsmith_mod_vec3_i32(u_input.a.zzy, u_input.a.xwy)), abs(1i)), var_1.x > var_1.x);
    var var_4 = min(~((_wgslsmith_clamp_u32(1u, var_1.x, 0u) | ~u_input.b) | u_input.b), u_input.d.x);
    return select(select(vec4<bool>(!var_0, true, true, false), !(!(!vec4<bool>(var_0, true, arg_0, var_0))), true), select(!select(vec4<bool>(false, false, false, var_0), select(vec4<bool>(true, false, var_0, arg_0), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, true, false, arg_0)), all(vec2<bool>(true, false))), vec4<bool>(!var_0, arg_0, arg_0 && var_0, true), select(!select(vec4<bool>(arg_0, var_0, arg_0, true), vec4<bool>(false, true, arg_0, arg_0), true), vec4<bool>(true, any(vec3<bool>(arg_0, true, false)), false, false), !select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, var_0, true, arg_0), vec4<bool>(false, arg_0, arg_0, true)))), true);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    global0 = any(!vec3<bool>(!all(vec4<bool>(arg_1.x, true, arg_1.x, arg_3)), arg_1.x, any(select(arg_1.yz, vec2<bool>(arg_3, false), arg_1.ww))));
    global0 = arg_3 && all(!(!arg_1.xyw));
    let var_0 = select(arg_1.zxw, vec3<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(4294967295u, arg_0, 1u, 18581u)), vec4<u32>(arg_0, 6152u, arg_0, 72166u)) >= _wgslsmith_clamp_u32(firstTrailingBit(18524u), _wgslsmith_div_u32(33620u, arg_0), _wgslsmith_dot_vec3_u32(u_input.d.yzw, u_input.d.yzy)), arg_3, false), select(arg_1.ywx, select(vec3<bool>(!arg_1.x, true, arg_3), arg_1.xwx, arg_1.yxw), arg_1.yxz));
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_i32(u_input.a.zy, vec2<i32>(39123i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-19673i, arg_2.b, arg_2.b, 1i)), u_input.a)), countOneBits(_wgslsmith_clamp_vec2_i32(u_input.a.wy, abs(vec2<i32>(u_input.a.x, 1i)), vec2<i32>(0i, 2147483647i)))), select(arg_1.x, arg_1.x, arg_3 & true) && any(arg_1), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 793f, 896f))), u_input.d.zwx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), arg_2.a, 784f)));
    global0 = var_0.x;
    return Struct_2(_wgslsmith_add_vec2_i32(~vec2<i32>(abs(u_input.a.x), 2147483647i), _wgslsmith_sub_vec2_i32(reverseBits(firstLeadingBit(u_input.a.xx)), _wgslsmith_div_vec2_i32(var_1.a, -vec2<i32>(u_input.a.x, 2147483647i)))), !any(vec4<bool>(-25828i == u_input.a.x, var_0.x, arg_3, arg_3)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.c.c, vec3<f32>(arg_2.a, var_1.c.c.x, -334f)), _wgslsmith_f_op_vec3_f32(func_3(1u)), vec3<bool>(var_1.b, var_0.x, var_1.b)))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_0, arg_0), 4294967295u, _wgslsmith_add_u32(6238u, arg_0)), var_1.c.b >> (~vec3<u32>(u_input.d.x, arg_0, arg_0) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(693f, arg_2.a, 642f) + var_1.c.c)))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = func_4(12055u, !select(!func_2(arg_0.b, arg_1), !(!vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b)), true), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -234f), -1i), !(arg_0.c.a.x < arg_0.c.c.x));
    let var_1 = _wgslsmith_mult_u32(u_input.b, 4294967295u);
    let var_2 = vec4<u32>(arg_0.c.b.x, 37093u, arg_0.c.b.x, 0u | arg_0.c.b.x);
    var var_3 = -_wgslsmith_mult_vec3_i32(~(~(-vec3<i32>(arg_1, 55492i, -14874i))), vec3<i32>(0i, _wgslsmith_sub_i32(func_4(52029u, vec4<bool>(true, var_0.b, var_0.b, arg_0.b), Struct_3(-225f, -1i), true).a.x, arg_0.a.x), _wgslsmith_dot_vec2_i32(var_0.a, abs(vec2<i32>(arg_1, -2147483647i)))));
    let var_4 = Struct_3(arg_2, _wgslsmith_div_i32(-u_input.a.x, select(~arg_0.a.x, var_0.a.x, func_2(true, 2147483647i).x)) << (func_4(1u | (0u & var_1), select(!vec4<bool>(true, arg_0.b, true, arg_0.b), vec4<bool>(true, var_0.b, true, var_0.b), u_input.a.x >= var_0.a.x), Struct_3(_wgslsmith_f_op_vec3_f32(func_3(17323u)).x, min(2147483647i, u_input.a.x)), arg_0.b).c.b.x % 32u));
    return ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.c.b.x, u_input.d.x, var_0.c.b.x, 1u), ~vec4<u32>(4294967295u, arg_0.c.b.x, 0u, arg_0.c.b.x)), vec4<u32>(var_0.c.b.x >> (17740u % 32u), 0u, min(var_2.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.x), var_2.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (~1u | (func_1(Struct_2(u_input.a.zx, true, Struct_1(vec3<f32>(736f, 1711f, 190f), u_input.d.zyz, vec3<f32>(172f, -531f, -579f))), -33398i, _wgslsmith_f_op_f32(max(382f, -1419f))) | _wgslsmith_mod_u32(reverseBits(113926u), ~1u))) >= abs(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(62624u, 16177u, u_input.c, 77346u)) | u_input.d.x);
    let var_0 = Struct_2(vec2<i32>(u_input.a.x, -(min(u_input.a.x, u_input.a.x) | abs(-58699i))), true, func_4(~(~56017u), !(!func_2(false, u_input.a.x)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f + 617f)), countOneBits(~u_input.a.x)), select(false, false, false)).c);
    var var_1 = Struct_2(u_input.a.xx, var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(func_4(73444u, !vec4<bool>(false, var_0.b, var_0.b, false), Struct_3(815f, -82794i), true).c.c + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.c.x, 1333f, -1311f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-668f, 518f, var_0.c.a.x) - var_0.c.c)))), ~(~select(u_input.d.ywx, var_0.c.b, var_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.a.x, 106f, -311f), var_0.c.c)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1094f, var_0.c.a.x, -491f), var_0.c.c), vec3<f32>(-1000f, var_0.c.c.x, var_0.c.a.x)))));
    global0 = !select(var_1.b, false && all(vec3<bool>(false, false, false)), true);
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d.x), ~u_input.d, vec3<u32>(var_0.c.b.x, _wgslsmith_sub_u32(~512u, var_1.c.b.x), 1u), -(~abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, 1i, 1i), u_input.a.yyw))), firstLeadingBit(u_input.b) | u_input.d.x);
}

