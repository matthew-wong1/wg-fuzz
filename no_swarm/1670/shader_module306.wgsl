struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_3(!select(vec2<bool>(any(vec2<bool>(false, false)), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), countOneBits(abs(~(~0u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-112f * 278f))) * _wgslsmith_f_op_f32(min(-409f, 589f))), -172f));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 22997i, ~u_input.a & 29307i), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(max(u_input.a, 1i), countOneBits(u_input.a)), 1i | -u_input.a, 1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i | u_input.a, u_input.a, -36144i, ~(-2147483647i)), firstTrailingBit(vec4<i32>(0i, u_input.a, -47189i, 0i) | vec4<i32>(u_input.a, u_input.a, 20918i, u_input.a)))));
    var var_2 = vec4<bool>(false, !(!any(var_0.a)), var_0.a.x, !any(vec3<bool>(true, var_0.a.x, var_0.a.x)) | true);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, var_0.c.x, var_0.c.x) + vec3<f32>(-252f, var_0.c.x, -1259f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.x, 257f, var_0.c.x)))) - vec3<f32>(-2278f, _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-292f, -300f, var_0.c.x), vec3<f32>(var_0.c.x, -230f, var_0.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-982f + 887f), _wgslsmith_f_op_f32(-var_0.c.x), -1505f)), var_0.a.x)));
    var_1 = max(u_input.a, abs(-u_input.a));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xy - vec2<f32>(-609f, var_3.x))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_3(!arg_0, _wgslsmith_add_u32(~(37154u << (arg_1.a.b % 32u)), 1u), _wgslsmith_f_op_vec2_f32(func_3()));
    var var_1 = var_0.a.x;
    var_1 = !arg_1.b.a.x;
    var_1 = true;
    var_1 = arg_0.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -827f, arg_2) - vec3<f32>(-2453f, arg_2, 1793f)))), _wgslsmith_add_u32(arg_1.b.b, var_0.b), arg_1.a.c, arg_1.b.a, all(select(select(vec4<bool>(var_0.a.x, arg_1.a.d.x, false, arg_1.a.c.x), vec4<bool>(false, var_0.a.x, true, var_0.a.x), var_0.a.x), select(select(vec4<bool>(arg_1.b.a.x, arg_1.a.d.x, arg_1.a.e, arg_0.x), vec4<bool>(arg_0.x, arg_1.a.c.x, false, true), vec4<bool>(false, true, true, true)), !vec4<bool>(true, var_0.a.x, false, true), var_0.a.x), arg_0.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.a.d;
    return func_2(vec2<bool>(var_0.x, true), Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.a.x, arg_0.a.a.x, arg_0.d.a.x) + vec3<f32>(arg_0.c, 149f, arg_0.c)), 12125u, arg_0.d.c, var_0, u_input.a >= 2485i), Struct_3(vec2<bool>(true, true | arg_0.d.d.x), 20603u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.a.yz * arg_0.d.a.yy) + arg_0.d.a.zx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.a.x) + _wgslsmith_div_f32(1006f, arg_0.a.a.x)) * _wgslsmith_f_op_f32(sign(arg_0.c)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a, ~max(u_input.a, arg_1)), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(4355i, u_input.a), vec2<i32>(1i, -10459i)), -1i)));
    let var_1 = !select(select(!select(arg_0.c.yy, arg_3.c.a.c.yy, vec2<bool>(arg_2.c.d.d.x, true)), !(!vec2<bool>(arg_0.d.x, false)), func_2(vec2<bool>(true, arg_0.e), Struct_5(arg_0, Struct_3(vec2<bool>(true, false), arg_3.b, vec2<f32>(arg_2.c.d.a.x, arg_3.c.a.a.x))), _wgslsmith_f_op_vec2_f32(func_3()).x).c.xz), !arg_0.c.xx, ~(0u >> (arg_0.b % 32u)) < 16046u);
    let var_2 = Struct_3(var_1, ~1u, _wgslsmith_f_op_vec2_f32(-arg_2.c.a.a.xy));
    var var_3 = -_wgslsmith_mod_i32(~(-(~(-2147483647i))), _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(arg_1, u_input.a)), var_0.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_2.c.d.a)))));
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: bool) -> Struct_3 {
    var var_0 = func_5(func_4(Struct_2(Struct_1(vec3<f32>(arg_1, arg_1, arg_1), arg_2.x >> (4294967295u % 32u), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, arg_3, true)), vec2<bool>(arg_3, true), !arg_3), ~abs(arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(721f + 1294f), _wgslsmith_f_op_f32(ceil(-454f))), func_2(!vec2<bool>(false, arg_3), Struct_5(Struct_1(vec3<f32>(arg_1, -481f, arg_1), 20012u, vec3<bool>(arg_3, arg_3, arg_3), vec2<bool>(arg_3, arg_3), arg_3), Struct_3(vec2<bool>(arg_3, arg_3), arg_2.x, vec2<f32>(arg_1, 223f))), arg_1)), firstLeadingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -13283i), vec3<i32>(u_input.a, u_input.a, -63464i)), vec3<i32>(-1i, u_input.a, u_input.a), vec3<bool>(arg_3, arg_3, arg_3)))), u_input.a, Struct_4(1u, ~(max(1u, arg_0.x) ^ arg_0.x), Struct_2(func_4(Struct_2(Struct_1(vec3<f32>(arg_1, arg_1, 285f), arg_2.x, vec3<bool>(arg_3, arg_3, false), vec2<bool>(true, arg_3), arg_3), arg_2.yx, 344f, Struct_1(vec3<f32>(-172f, arg_1, arg_1), 0u, vec3<bool>(arg_3, false, false), vec2<bool>(arg_3, arg_3), arg_3)), select(vec3<i32>(-53518i, -2147483647i, 0i), vec3<i32>(-26487i, -53905i, -15538i), vec3<bool>(true, arg_3, arg_3))), arg_2.zx << (arg_0 % vec2<u32>(32u)), -1475f, func_4(Struct_2(Struct_1(vec3<f32>(-1000f, arg_1, arg_1), 1u, vec3<bool>(arg_3, arg_3, true), vec2<bool>(true, arg_3), true), arg_2.zy, arg_1, Struct_1(vec3<f32>(arg_1, arg_1, arg_1), 51296u, vec3<bool>(false, true, false), vec2<bool>(true, arg_3), false)), vec3<i32>(u_input.a, u_input.a, -11765i))), !(!(arg_3 && true))), Struct_4(~(~arg_0.x), 4294967295u, Struct_2(Struct_1(vec3<f32>(1762f, 106f, arg_1), arg_2.x, select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, arg_3), vec3<bool>(false, false, false)), !vec2<bool>(arg_3, true), arg_3 | arg_3), ~max(arg_2.wx, arg_0), arg_1, func_2(vec2<bool>(true, true), Struct_5(Struct_1(vec3<f32>(-164f, arg_1, -355f), 1u, vec3<bool>(false, arg_3, false), vec2<bool>(arg_3, arg_3), true), Struct_3(vec2<bool>(true, arg_3), 1u, vec2<f32>(-536f, -524f))), _wgslsmith_f_op_f32(ceil(arg_1)))), true));
    let var_1 = Struct_4(_wgslsmith_add_u32(4294967295u, arg_2.x), ~arg_2.x | 4849u, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -931f, arg_1) * vec3<f32>(arg_1, 2058f, 790f))), ~_wgslsmith_add_u32(22790u, arg_0.x), vec3<bool>(false, false, true), vec2<bool>(arg_3 & arg_3, true), all(vec4<bool>(true, arg_3, true, arg_3)) | arg_3), vec2<u32>(firstTrailingBit(firstTrailingBit(1u)), 1u), arg_1, Struct_1(vec3<f32>(423f, _wgslsmith_f_op_f32(-arg_1), 502f), ~func_2(vec2<bool>(true, false), Struct_5(Struct_1(vec3<f32>(arg_1, -1026f, arg_1), 0u, vec3<bool>(false, true, false), vec2<bool>(arg_3, false), true), Struct_3(vec2<bool>(arg_3, true), 28418u, vec2<f32>(1000f, 1001f))), -381f).b, vec3<bool>(arg_3, true, false || arg_3), vec2<bool>(all(vec3<bool>(arg_3, arg_3, false)), true), arg_3)), all(!(!(!vec4<bool>(arg_3, false, arg_3, true)))));
    var_0 = firstLeadingBit(func_5(var_1.c.d, -68547i, var_1, var_1));
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(var_1.c.d.a));
    return Struct_3(select(func_2(!(!vec2<bool>(arg_3, true)), Struct_5(func_4(Struct_2(Struct_1(var_1.c.a.a, 16370u, var_1.c.a.c, var_1.c.d.d, false), arg_2.zx, 984f, var_1.c.a), vec3<i32>(-59278i, 1i, 1i)), Struct_3(vec2<bool>(arg_3, true), 0u, var_1.c.a.a.zz)), -1642f).d, select(vec2<bool>(true, all(var_1.c.a.c)), var_1.c.d.c.xx, arg_3), vec2<bool>(true, any(var_1.c.d.d))), _wgslsmith_sub_u32(var_1.a, arg_2.x), vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(982f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(1u, 1u), -1182f, _wgslsmith_add_vec4_u32((firstTrailingBit(vec4<u32>(1u, 50354u, 4294967295u, 52884u)) ^ ~vec4<u32>(47464u, 19901u, 23538u, 62830u)) << (~countOneBits(vec4<u32>(17842u, 55417u, 0u, 11033u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(1u, 0u, 2732u, 36881u)), vec4<u32>(1u, 1u, 1u, 1u))), (any(vec3<bool>(true, false, true)) | true) && false);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, var_0.c.x, var_0.c.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1585f, 841f, var_0.c.x) * vec3<f32>(1233f, var_0.c.x, -2344f))) - vec3<f32>(_wgslsmith_div_f32(var_0.c.x, -1000f), -427f, _wgslsmith_f_op_f32(-var_0.c.x))), func_2(select(var_0.a, !vec2<bool>(var_0.a.x, var_0.a.x), func_1(vec2<u32>(var_0.b, var_0.b), -1502f, vec4<u32>(1u, var_0.b, var_0.b, var_0.b), var_0.a.x).a.x), Struct_5(func_2(vec2<bool>(true, true), Struct_5(Struct_1(vec3<f32>(var_0.c.x, var_0.c.x, -790f), 4294967295u, vec3<bool>(true, var_0.a.x, var_0.a.x), vec2<bool>(false, var_0.a.x), var_0.a.x), var_0), var_0.c.x), func_1(vec2<u32>(var_0.b, 4294967295u), 965f, vec4<u32>(1u, 1u, var_0.b, 9104u), var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, var_0.c.x) + -530f)).b, vec3<bool>(var_0.a.x, var_0.a.x, true), vec2<bool>(var_0.a.x, true), any(var_0.a)), max(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, 34027u))) >> (vec2<u32>(57141u & var_0.b, ~0u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, var_0.b)) >> (select(vec2<u32>(1u, var_0.b), vec2<u32>(80714u, var_0.b), true) % vec2<u32>(32u)), vec2<u32>(func_1(vec2<u32>(var_0.b, 9755u), 1480f, vec4<u32>(var_0.b, 54904u, var_0.b, 77525u), false).b, ~73940u))), 2448f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1060f, 2004f, -135f) + vec3<f32>(139f, var_0.c.x, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1000f, var_0.c.x) * vec3<f32>(var_0.c.x, var_0.c.x, 1168f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2654f, var_0.c.x, var_0.c.x))), !vec3<bool>(false, false, var_0.a.x)))), var_0.b, !vec3<bool>(false, var_0.a.x, false & var_0.a.x), func_1(vec2<u32>(abs(var_0.b), abs(15044u)), var_0.c.x, ~vec4<u32>(4294967295u, 1u, var_0.b, var_0.b), true).a, !((var_0.b | var_0.b) > _wgslsmith_mult_u32(var_0.b, var_0.b))));
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.d.a)) + vec3<f32>(var_0.c.x, -778f, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1172f, 140f) - _wgslsmith_f_op_vec3_f32(-var_1.d.a))), _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(var_1.b)), vec2<u32>(25404u, _wgslsmith_sub_u32(49328u, 0u))), func_4(var_1, ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 16347i, 0i), vec3<i32>(1i, u_input.a, -1822i))).c, vec2<bool>(func_1(vec2<u32>(var_0.b, var_1.b.x), 651f, ~vec4<u32>(var_0.b, var_1.a.b, 13305u, 12535u), var_1.d.a.x < var_1.d.a.x).a.x, var_1.d.c.x), var_1.a.e), Struct_3(var_0.a, 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(790f, _wgslsmith_f_op_f32(sign(var_1.c))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.d.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(391f, var_1.d.a.x, var_0.c.x), var_2.a.a, vec3<bool>(true, var_1.d.c.x, false))))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 1000f))), 507f, _wgslsmith_f_op_f32(-var_1.a.a.x))));
    var var_5 = u_input.a;
    let var_6 = Struct_4(4294967295u, ~(~(~0u)) ^ _wgslsmith_clamp_u32(var_1.a.b, 0u, var_0.b), var_1, true);
    var var_7 = 1u | _wgslsmith_clamp_u32(~var_6.a, 0u, abs(func_4(Struct_2(Struct_1(vec3<f32>(-506f, 146f, -238f), var_6.b, var_1.a.c, vec2<bool>(false, false), var_2.a.d.x), vec2<u32>(1u, 19379u), -876f, var_6.c.d), vec3<i32>(u_input.a, 119i, -2147483647i) >> (vec3<u32>(var_6.b, 1u, 0u) % vec3<u32>(32u))).b));
    let x = u_input.a;
    s_output = StorageBuffer(-495i, _wgslsmith_f_op_f32(-2346f - _wgslsmith_f_op_f32(exp2(var_1.d.a.x))));
}

