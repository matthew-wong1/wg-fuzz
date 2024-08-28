struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = arg_3.zy;
    return abs(u_input.d);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> vec4<i32> {
    let var_0 = abs(4294967295u);
    var var_1 = select(countOneBits(~vec3<i32>(arg_1.c.x, 0i << (arg_0 % 32u), 3205i)), select(vec3<i32>(reverseBits(-u_input.d.x), firstTrailingBit(arg_1.d.c), ~(-1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -21770i, u_input.d.x) ^ vec3<i32>(u_input.c.x, u_input.d.x, 2147483647i), vec3<i32>(_wgslsmith_sub_i32(arg_2.x, 0i), 25576i, reverseBits(arg_2.x))), !select(select(vec3<bool>(true, true, arg_3), vec3<bool>(arg_1.d.a, false, arg_1.a.a), vec3<bool>(arg_3, true, arg_1.a.a)), select(vec3<bool>(true, true, arg_1.d.a), vec3<bool>(arg_1.a.a, arg_1.d.a, false), vec3<bool>(arg_3, true, arg_1.d.a)), !vec3<bool>(arg_1.d.a, arg_1.a.a, false))), select(select(select(select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_1.a.a, arg_3, false)), select(vec3<bool>(arg_3, true, false), vec3<bool>(false, true, arg_3), vec3<bool>(arg_1.a.a, true, arg_3)), vec3<bool>(true, true, true)), select(vec3<bool>(false, arg_3, arg_1.a.a), !vec3<bool>(true, arg_1.d.a, arg_3), vec3<bool>(true, true, true)), vec3<bool>(!arg_3, true, false)), select(!select(vec3<bool>(true, arg_1.d.a, true), vec3<bool>(false, false, arg_3), false), select(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.d.a, arg_3, false), vec3<bool>(arg_1.a.a, arg_3, arg_3)), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(false, false, false), arg_1.d.a), true), arg_1.d.a & select(arg_1.d.a, true, true)), select(vec3<bool>(true, arg_3 & arg_1.d.a, true), !select(vec3<bool>(false, false, arg_3), vec3<bool>(false, arg_1.a.a, arg_1.a.a), arg_1.a.a), select(vec3<bool>(true, arg_1.d.a, true), !vec3<bool>(arg_3, true, false), select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(false, false, arg_3), vec3<bool>(arg_3, true, arg_1.d.a))))));
    var var_2 = var_1.x;
    var var_3 = arg_1.d;
    let var_4 = Struct_4(Struct_1(true, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b.x, arg_0), var_3.b.yz), var_3.b.x, u_input.e, abs(1u)) | vec4<u32>(_wgslsmith_mult_u32(1u, 23172u), arg_1.b.x | 0u, max(u_input.e, var_0), u_input.b ^ 1u), arg_2.x), Struct_1(var_3.a, vec4<u32>(12433u, 4294967295u, 4294967295u & var_0, _wgslsmith_mult_u32(39387u, var_3.b.x)), arg_1.a.c), reverseBits(u_input.e), abs(vec4<u32>(0u, ~u_input.e, 73340u, 28981u)));
    return _wgslsmith_mult_vec4_i32(abs(u_input.c), arg_1.c);
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_div_vec4_i32(-u_input.c, func_4(1u, Struct_2(Struct_1(true, vec4<u32>(u_input.a, 4294967295u, 0u, u_input.e) >> (vec4<u32>(u_input.e, 1u, u_input.a, u_input.e) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.c.wz)), reverseBits(~vec3<u32>(0u, u_input.a, u_input.b)), vec4<i32>(-1i) * -u_input.c, Struct_1(true, vec4<u32>(4294967295u, 45289u, 30701u, 1u) << (vec4<u32>(u_input.a, u_input.b, u_input.a, 1u) % vec4<u32>(32u)), _wgslsmith_div_i32(u_input.d.x, u_input.c.x))), min(func_3(Struct_2(Struct_1(var_0.x, vec4<u32>(1u, 4294967295u, u_input.b, 0u), u_input.c.x), vec3<u32>(u_input.a, 37956u, u_input.e), vec4<i32>(-1i, -29327i, -1i, u_input.c.x), Struct_1(false, vec4<u32>(104189u, 4294967295u, 9519u, u_input.a), u_input.c.x)), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), vec2<bool>(false, false), !vec3<bool>(var_0.x, var_0.x, true)), _wgslsmith_add_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), vec2<i32>(u_input.c.x, -2147483647i)))), all(vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, all(vec3<bool>(var_0.x, false, true))))));
    let var_2 = Struct_1(false & !var_0.x, vec4<u32>(abs(4294967295u << (~u_input.a % 32u)), 1u, u_input.e, 80504u), max(func_4(~1u, Struct_2(Struct_1(var_0.x, vec4<u32>(u_input.b, 12692u, 0u, 18206u), var_1.x), abs(vec3<u32>(4294967295u, u_input.b, 13426u)), u_input.c, Struct_1(false, vec4<u32>(60983u, 1u, 21564u, u_input.a), var_1.x)), u_input.d, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) | any(vec3<bool>(var_0.x, false, false))).x, var_1.x));
    let var_3 = vec4<bool>(var_0.x && true, true & !((var_0.x | true) && true), any(vec4<bool>(var_2.a, !(!var_2.a), true, var_2.a)), false);
    let var_4 = u_input.a;
    return Struct_2(var_2, var_2.b.wyz, firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.c, reverseBits(vec4<i32>(20808i, -2147483647i, var_1.x, -18459i))), func_4(var_2.b.x >> (8302u % 32u), Struct_2(var_2, vec3<u32>(72609u, var_4, 11217u), vec4<i32>(33213i, 19425i, 9749i, var_2.c), var_2), vec2<i32>(-40341i, -29591i), all(var_3)))), Struct_1(var_2.a, var_2.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.x, var_1.x, -20286i), var_1.wzw, false), vec3<i32>(-1i, var_1.x, u_input.d.x)), _wgslsmith_div_i32(_wgslsmith_mult_i32(26304i, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_2.c, 11511i), vec3<i32>(var_2.c, u_input.d.x, var_2.c))))));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = Struct_4(arg_1.a, var_0.d, 12468u, vec4<u32>(var_0.a.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(11218u, var_0.a.b.x, 76035u, 1u), vec4<u32>(34340u, arg_1.c, 6516u, var_0.b.x)), _wgslsmith_dot_vec3_u32(~func_2().a.b.yzz, ~(~vec3<u32>(36897u, 4294967295u, 1u))), ~abs(_wgslsmith_div_u32(var_0.d.b.x, arg_1.c))));
    return select(vec3<bool>(var_1.b.a, !arg_1.b.a, all(vec4<bool>(true, true, true, any(vec3<bool>(var_0.d.a, var_0.a.a, arg_1.b.a))))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.b.a, arg_0), vec3<bool>(arg_1.b.a, true, false)), vec3<bool>(!(!var_0.a.a), any(vec3<bool>(true, true, true)), any(vec3<bool>(arg_0, true, var_0.a.a))), arg_1.b.a), !select(vec3<bool>(var_1.b.a, true, arg_0), select(!vec3<bool>(var_0.a.a, true, false), select(vec3<bool>(var_1.b.a, true, var_1.a.a), vec3<bool>(var_1.b.a, false, var_0.a.a), vec3<bool>(true, false, arg_1.a.a)), func_2().d.a), vec3<bool>(arg_0 | false, !var_0.a.a, all(vec2<bool>(arg_0, arg_1.b.a)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = func_2();
    var var_1 = 4294967295u;
    var_1 = ~(~(~1u));
    var var_2 = Struct_3(false, var_0.d.a, vec3<u32>(_wgslsmith_dot_vec2_u32(func_2().a.b.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.a.b.x) | arg_1.xz, vec2<u32>(53776u, u_input.a) | arg_2.b.yy)), ~_wgslsmith_mod_u32(arg_1.x, arg_2.d.b.x), 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-381f, -877f, -286f, -936f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(521f, -164f, 1000f, 3038f), vec4<f32>(203f, -1547f, -804f, -1092f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1791f, 238f, -521f, 1267f)))), vec4<f32>(_wgslsmith_f_op_f32(-1162f - _wgslsmith_f_op_f32(sign(-2076f))), _wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1567f) + _wgslsmith_f_op_f32(748f - -577f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 246f)))));
    return Struct_1(any(!select(arg_0.yz, arg_0.xz, select(vec2<bool>(arg_2.a.a, true), arg_0.zx, vec2<bool>(false, arg_2.d.a)))), vec4<u32>(countOneBits(abs(~arg_1.x)), ~(~(~var_2.c.x)), _wgslsmith_clamp_u32(~(~arg_2.a.b.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 67830u), 4294967295u, 1u), 1u), ~arg_1.x), func_4(~(~4294967295u), func_2(), u_input.c.xw, func_2().a.a).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(286f - 389f), _wgslsmith_f_op_f32(max(-279f, -1424f)))))));
    let var_1 = u_input.c;
    var var_2 = Struct_4(func_5(select(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true), vec3<bool>(true, false, true), select(func_1(true, Struct_4(Struct_1(false, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.e), var_1.x), Struct_1(true, vec4<u32>(u_input.a, 1u, u_input.e, 1u), var_1.x), u_input.a, vec4<u32>(120925u, 1u, 4294967295u, u_input.b))), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), ~vec3<u32>(u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.e), u_input.e & u_input.a), func_2()), func_2().a, ~18331u, vec4<u32>(1u, ~u_input.a, ~(~u_input.a | ~37895u), ~((u_input.a << (u_input.a % 32u)) & u_input.b)));
    let var_3 = _wgslsmith_mod_i32(-2147483647i, ~u_input.c.x) << (max(~1u, func_5(select(!vec3<bool>(var_2.a.a, var_2.b.a, var_2.a.a), select(vec3<bool>(var_2.a.a, var_2.b.a, var_2.a.a), vec3<bool>(true, var_2.b.a, true), vec3<bool>(var_2.a.a, false, var_2.a.a)), true), var_2.a.b.zwz, Struct_2(Struct_1(var_2.b.a, var_2.a.b, var_1.x), var_2.b.b.zxx, vec4<i32>(u_input.c.x, -1i, var_1.x, var_1.x) >> (vec4<u32>(var_2.d.x, var_2.d.x, u_input.a, u_input.a) % vec4<u32>(32u)), func_2().d)).b.x) % 32u);
    let var_4 = !(!select(!(!vec2<bool>(var_2.a.a, var_2.a.a)), vec2<bool>(var_2.a.a, 13861i < var_2.a.c), true));
    var_2 = Struct_4(Struct_1(true, ~var_2.a.b, (var_1.x ^ firstLeadingBit(var_2.a.c)) & -(~var_2.b.c)), Struct_1(var_0 >= _wgslsmith_f_op_f32(f32(-1f) * -807f), vec4<u32>(~1u, abs(0u), firstLeadingBit(u_input.e << (u_input.a % 32u)), ~4294967295u), _wgslsmith_mult_i32(16931i, countOneBits(i32(-1i) * -1i))), ~((~u_input.a & 4294967295u) ^ 1u), var_2.b.b);
    let var_5 = func_5(vec3<bool>(!var_4.x, _wgslsmith_f_op_f32(ceil(var_0)) >= _wgslsmith_f_op_f32(-1f), !(!var_4.x)), ~var_2.d.xwz, func_2());
    var var_6 = ~var_2.b.b.x;
    let var_7 = u_input.d << (var_5.b.yx % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1099f, -795f, 1000f, 1017f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 940f, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -1014f) - vec4<f32>(-447f, -250f, -1010f, -1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(199f, -1000f, 393f, -835f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1185f, -959f, -694f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 1000f, var_0, var_0))), false))))));
}

