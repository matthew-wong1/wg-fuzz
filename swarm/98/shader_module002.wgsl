struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(40440i, min(~u_input.b.x, ~(-1i)), 48259i), u_input.b), 1i);
    let var_1 = Struct_5(u_input.a, !vec4<bool>(true, true, select(true, true, true), false));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.a - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1159f + var_2.a)), -600f) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a, -983f), _wgslsmith_f_op_f32(max(var_2.a, var_2.a)))), _wgslsmith_f_op_f32(abs(1494f)), 1826f)), Struct_1(var_2.a), Struct_2(_wgslsmith_f_op_f32(trunc(-779f)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), ~4294967295u), ~firstTrailingBit(4294967295u), firstTrailingBit(3299u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * var_2.a))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 75191u, 4294967295u, 1u)))), firstTrailingBit(_wgslsmith_mod_vec3_i32(var_1.a.zwz, ~(~vec3<i32>(var_0.x, var_1.a.x, var_0.x)))));
    let var_4 = Struct_1(var_3.a.x);
    return ~50763u;
}

fn func_2() -> vec2<f32> {
    var var_0 = ~1u >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(18317u, ~24459u, func_3(), 5960u), vec4<u32>(~75325u, 1u, 1u, 0u)), countOneBits(vec4<u32>(4294967295u, 1u, max(26580u, 1u), ~0u))) % 32u);
    var_0 = _wgslsmith_clamp_u32(4294967295u, select(1u, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, 1u), ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(14462u, 1u), vec2<u32>(31610u, 0u)) >> (~0u % 32u)), false), ~37795u);
    var var_1 = u_input.a.ww;
    var var_2 = select(vec4<bool>(false, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), -572f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2390f - -1037f), _wgslsmith_f_op_f32(977f * 1295f), true))), vec4<bool>(!(~(-10036i) < u_input.a.x), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))), false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), all(vec3<bool>(true, false, true)) == (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 55838u), vec4<u32>(47575u, 1u, 4294967295u, 1u)) >= _wgslsmith_mod_u32(20819u, 76912u)), false & any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), true, -24241i < ~var_1.x)));
    var_0 = 0u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(263f * -705f) + _wgslsmith_f_op_f32(-1509f * 1049f)), 473f))));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2310f * -982f) + _wgslsmith_f_op_f32(-886f - -476f)), 832f)));
    let var_1 = ~(u_input.b.x >> (1u % 32u));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1538f) + vec2<f32>(-1000f, 865f)) - _wgslsmith_f_op_vec2_f32(func_2()))) + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)))));
    let var_2 = ~(~29867u);
    var var_3 = -2147483647i;
    return Struct_4(vec3<bool>(true & any(vec3<bool>(true, true, true)), false, _wgslsmith_sub_u32(var_2 << (20745u % 32u), var_2) == 0u), false);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    var var_0 = countOneBits(vec3<u32>(1u, _wgslsmith_mult_u32(func_3(), 0u), ~(~firstLeadingBit(18397u))));
    var var_1 = func_1();
    let var_2 = vec4<u32>(countOneBits(~var_0.x), firstTrailingBit(~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, var_0.x)))), var_0.x >> (var_0.x % 32u), var_0.x);
    let var_3 = var_1.a.x;
    var_1 = func_1();
    return Struct_2(_wgslsmith_f_op_f32(sign(arg_2)), countOneBits(vec3<u32>(719u, 82649u, var_2.x << (var_0.x % 32u))), Struct_1(arg_0.x), 10638u);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = arg_1;
    var var_1 = Struct_5(vec4<i32>(-1i) * -u_input.a, vec4<bool>(true, all(vec3<bool>(all(vec2<bool>(false, false)), true, true)), all(vec2<bool>(true, true)) & true, any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, false, true), all(vec4<bool>(true, true, true, false))))));
    var_1 = Struct_5(u_input.a, vec4<bool>(_wgslsmith_f_op_f32(arg_1.a.x + -268f) > -277f, !var_1.b.x, false, var_1.b.x));
    var_0 = Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_f32(arg_1.c.a + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.c.a * var_0.c.a))))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.a, 965f) - arg_1.a.zz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, 681f)))), Struct_4(var_1.b.yzw, true), _wgslsmith_f_op_f32(abs(var_0.a.x))), -_wgslsmith_add_vec3_i32(min(vec3<i32>(27530i, var_0.d.x, u_input.a.x), vec3<i32>(var_1.a.x, var_0.d.x, var_1.a.x)) & ~var_1.a.wyw, arg_1.d));
    var var_2 = _wgslsmith_add_u32(var_0.c.d, 1u);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_5(u_input.b.x, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1975f, -1341f, 271f)), Struct_1(_wgslsmith_div_f32(-706f, 1563f)), func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(468f, -395f))), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -676f)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(1i, u_input.a.x, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -8163i, -5466i), u_input.b)))), select(vec4<bool>(select(any(vec3<bool>(false, true, true)), true, false), true, true, true), vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))), true));
    var var_1 = !var_0.b.xwz;
    let var_2 = Struct_5(countOneBits(func_5(u_input.a.x, Struct_3(vec3<f32>(-397f, -1000f, -602f), Struct_1(-471f), func_4(vec2<f32>(-1481f, -1740f), Struct_4(var_0.b.ywx, var_0.b.x), -518f), -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)))), vec4<bool>(true, (i32(-1i) * -1i) <= var_0.a.x, !func_1().a.x, var_0.b.x | var_1.x));
    var_1 = var_2.b.zzz;
    var_1 = !vec3<bool>(all(select(!var_1.yz, vec2<bool>(var_1.x, false), func_1().a.xz)), all(vec4<bool>(true, all(vec3<bool>(var_2.b.x, var_0.b.x, true)), true, !var_2.b.x)), var_0.b.x);
    var var_3 = -1i;
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1388f, 202f), _wgslsmith_f_op_f32(891f * -1511f), _wgslsmith_f_op_f32(941f * 1226f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(func_2()).x), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(746f, 1221f), vec2<f32>(976f, -2411f), var_2.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2843f, 280f)))), Struct_4(vec3<bool>(true, var_0.b.x && true, true), false), 693f), u_input.a.wxy);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a) ^ var_2.a);
}

