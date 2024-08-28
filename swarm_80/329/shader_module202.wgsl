struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = global0[_wgslsmith_index_u32(48749u, 7u)];
    var_0 = ~_wgslsmith_clamp_u32(firstLeadingBit(~select(28093u, 31919u, var_1.c.x)), _wgslsmith_add_u32(~arg_1.b.x, 1u), arg_1.b.x);
    global1 = any(select(!(!var_1.c), !vec4<bool>(true, -1i >= u_input.a, -2147483647i < u_input.a, var_1.b | var_1.b), !vec4<bool>(true, !var_1.b, u_input.a == -1i, select(var_1.a, false, var_1.a))));
    var var_2 = arg_1.c.x;
    return _wgslsmith_mult_i32(u_input.a, ~(_wgslsmith_add_i32(arg_0, -30810i) ^ 2147483647i));
}

fn func_2() -> Struct_1 {
    var var_0 = 4294967295u;
    global0 = array<Struct_1, 7>();
    global1 = false;
    let var_1 = abs(vec4<i32>(func_3(firstTrailingBit(u_input.a), Struct_5(-918f, abs(vec2<u32>(40514u, 87141u)), vec2<f32>(-499f, -510f))), u_input.a | 1361i, u_input.a, -9340i));
    let var_2 = Struct_4(!vec4<bool>(!any(vec3<bool>(false, false, false)), false, true & any(vec3<bool>(true, false, true)), true), -268f, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-850f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-986f + -873f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(202f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1222f * 1139f), 847f, 641f) - vec3<f32>(-340f, _wgslsmith_f_op_f32(-2144f + -476f), _wgslsmith_f_op_f32(f32(-1f) * -1407f)))), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, 40642u) >> (_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(45325u, 26755u, 1u)) % 32u), ~firstTrailingBit(~24842u)), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-314f, -118f)), _wgslsmith_f_op_f32(f32(-1f) * -234f)))), 78877u));
    return Struct_1(true, false, select(select(vec4<bool>(var_2.c.x <= 2262f, 657f != var_2.b, false, !var_2.a.x), select(select(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<bool>(false, true, true, var_2.a.x), vec4<bool>(false, var_2.a.x, true, true)), select(vec4<bool>(true, var_2.a.x, true, false), vec4<bool>(false, var_2.a.x, false, var_2.a.x), true), vec4<bool>(true, true, true, true)), var_2.a.x), var_2.a, vec4<bool>(false, u_input.a > ~0i, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = !select(arg_0.c, select(!select(arg_0.c, arg_0.c, vec4<bool>(arg_0.c.x, true, false, false)), !arg_0.c, firstTrailingBit(4294967295u) >= ~0u), arg_0.c.x);
    let var_1 = vec2<i32>(-abs(arg_1), _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_3.x, i32(-1i) * -29444i), -1i));
    let var_2 = !vec2<bool>(false, true | (true && all(vec2<bool>(var_0.x, true))));
    return min(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, arg_3.x), vec3<i32>(var_1.x, arg_3.x, u_input.a))), (arg_1 ^ 7291i) ^ u_input.a, 48217i), vec3<i32>(_wgslsmith_mult_i32(1i | u_input.a, _wgslsmith_mult_i32(16322i, arg_1)), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-5295i, 1i, 2147483647i), select(vec3<i32>(16295i, var_1.x, -56236i), vec3<i32>(u_input.a, -2147483647i, arg_3.x), arg_2.x)))) | ~((vec3<i32>(-1i) * -vec3<i32>(var_1.x, -2147483647i, 34984i)) >> (~vec3<u32>(0u, 45494u, 64514u) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1388f))))));
    global1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1168f - 439f)) + _wgslsmith_f_op_f32(-519f * _wgslsmith_f_op_f32(var_0 + var_0))) <= var_0);
    let var_1 = Struct_4(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(510f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(var_0, -918f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 287f, var_0), vec3<f32>(-979f, 138f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-635f, 270f, -284f) * vec3<f32>(-2516f, var_0, -204f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-209f, -546f, var_0))))))), firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 80696u, 37795u, 1u), vec4<u32>(59566u, 4855u, 50673u, 27367u)), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(vec4<u32>(4294967295u, 20738u, 39335u, 45021u)))), Struct_3(-603f, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(14503u, 0u), countOneBits(1u))));
    var var_2 = firstLeadingBit(max(arg_0.zz, vec2<i32>(arg_0.x, -1i) >> (firstTrailingBit(vec2<u32>(var_1.e.b, var_1.d)) % vec2<u32>(32u))));
    let var_3 = countOneBits(var_1.e.b);
    return Struct_2(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_add_i32(abs(u_input.a), _wgslsmith_add_i32(arg_0.x, var_2.x))), -2147483647i), var_1.a.x, max(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_1.x, var_2.x, -42400i), vec4<i32>(u_input.a, -65634i, var_2.x, var_2.x), vec4<i32>(1i, var_2.x, -77484i, u_input.a)) | -max(vec4<i32>(var_2.x, 42940i, arg_1.x, arg_1.x), vec4<i32>(u_input.a, var_2.x, 42817i, u_input.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 58384i, u_input.a, 1i), abs(vec4<i32>(-1i, u_input.a, arg_1.x, arg_0.x))), 33863i, var_2.x, _wgslsmith_clamp_i32(abs(8031i), var_2.x, -21420i))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3, ~42268u) & max(firstLeadingBit(60228u), var_3), 7u)]);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 7>();
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(-10051i, _wgslsmith_mult_i32(-76485i, u_input.a), abs(-64690i)), -(-u_input.a & 1i) << (1u % 32u));
    let var_1 = 1u;
    let var_2 = 4294967295u;
    return func_5(abs(func_4(func_2(), -2147483647i, !func_2().c.wyy, min(select(vec2<i32>(u_input.a, u_input.a), var_0, false), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(33505i, var_0.x), var_0)))), var_0);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_5) -> bool {
    let var_0 = arg_1.b.x;
    global0 = array<Struct_1, 7>();
    let var_1 = arg_3;
    let var_2 = func_5(vec3<i32>(~(~(-7568i)), u_input.a, -1i), ~(~vec2<i32>(2147483647i, ~arg_2.c.x))).d.c.zxw;
    var var_3 = ~(~vec2<u32>(0u, 4294967295u) >> (arg_1.b % vec2<u32>(32u)));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    var var_0 = func_6(reverseBits(~(~vec2<u32>(12722u, 84350u)) | ~select(vec2<u32>(60834u, 1u), vec2<u32>(36737u, 23570u), false)), Struct_5(1133f, ~vec2<u32>(1u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(226f, 1245f) * vec2<f32>(1773f, -1739f)))), func_1(), Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-596f - -258f))))), vec2<u32>(4294967295u, max(0u, ~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1059f, 268f))))));
    var var_1 = !func_2().c.yxz;
    global0 = array<Struct_1, 7>();
    var_1 = vec3<bool>(u_input.a >= -1i, true, var_1.x);
    global0 = array<Struct_1, 7>();
    var var_2 = Struct_3(-833f, countOneBits(~(~firstLeadingBit(0u))));
    var var_3 = _wgslsmith_div_u32(~var_2.b, var_2.b >> (var_2.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(trunc(var_2.a))));
}

