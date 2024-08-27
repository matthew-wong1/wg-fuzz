struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    return abs(-abs(_wgslsmith_mod_i32(-1i, -46291i))) ^ firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_0.a.d.yy, vec2<i32>(arg_1, -1i)));
}

fn func_2() -> vec2<u32> {
    var var_0 = abs(min(i32(-1i) * -(-39240i ^ u_input.a), u_input.a));
    var_0 = max(_wgslsmith_dot_vec4_i32(countOneBits(~(~vec4<i32>(u_input.a, -2147483647i, -18031i, 16810i))), -vec4<i32>(u_input.a & 1i, ~(-2147483647i), func_3(Struct_5(Struct_4(Struct_1(u_input.a, 48222u, vec2<f32>(-213f, 390f), -212f), Struct_2(vec3<i32>(10108i, -1i, u_input.a), Struct_1(0i, 40761u, vec2<f32>(1593f, 1164f), 2028f), vec3<i32>(u_input.a, 1i, -34267i), Struct_1(6104i, 0u, vec2<f32>(-523f, 402f), -215f)), u_input.a, vec3<i32>(29825i, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(vec3<i32>(u_input.a, u_input.a, 1i), Struct_1(-1i, 0u, vec2<f32>(-582f, 2264f), 1244f), vec3<i32>(u_input.a, u_input.a, -78468i), Struct_1(u_input.a, 0u, vec2<f32>(1607f, -2340f), -236f))), u_input.a, vec2<f32>(1009f, 312f)), firstTrailingBit(u_input.a))), countOneBits(1i));
    let var_1 = Struct_4(Struct_1(_wgslsmith_div_i32(-(~u_input.a), 1i), (select(52708u, 1u, false) ^ ~4294967295u) ^ 34968u, vec2<f32>(_wgslsmith_f_op_f32(822f + _wgslsmith_f_op_f32(1453f - -289f)), -297f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(273f, 888f) * -1000f), 248f)), Struct_2(-(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-21536i, 2147483647i, u_input.a))), Struct_1(~(~(-1i)), ~abs(1u), vec2<f32>(_wgslsmith_f_op_f32(-1820f + 1248f), _wgslsmith_f_op_f32(step(1779f, 434f))), _wgslsmith_f_op_f32(-843f * _wgslsmith_div_f32(662f, -1376f))), -vec3<i32>(u_input.a, ~(-2147483647i), -38872i), Struct_1(2147483647i, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(40962u, 4740u)), max(1u, 17215u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1297f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f - 758f)))), 0i, vec3<i32>(-u_input.a, -1i, abs(u_input.a)));
    let var_2 = Struct_4(Struct_1(-18483i, 0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(770f, -1000f, false)))), _wgslsmith_f_op_f32(select(var_1.b.d.c.x, _wgslsmith_f_op_f32(round(913f)), !all(vec3<bool>(true, false, false))))), var_1.b, reverseBits(-_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), 1i)), var_1.d);
    var var_3 = Struct_5(Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, u_input.a, -22173i, u_input.a), vec4<i32>(1i, -18018i, var_2.b.a.x, -2147483647i)), 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(385f, var_1.a.c.x)))), -1000f), var_1.b, abs(i32(-1i) * -37215i), var_1.b.a), var_1.d, Struct_2(~(vec3<i32>(-1i) * -var_2.d), Struct_1(u_input.a, ~(~var_2.a.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1249f, 358f) - vec2<f32>(949f, var_2.a.d)), var_1.b.b.c), _wgslsmith_f_op_f32(-var_1.a.d)), abs(abs(-vec3<i32>(u_input.a, 1i, u_input.a))), Struct_1(u_input.a, firstTrailingBit(abs(4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.c.x, 258f) - vec2<f32>(var_1.b.d.c.x, -469f))), _wgslsmith_f_op_f32(-var_1.b.d.c.x))));
    return ~(~vec2<u32>(var_1.a.b, 1u));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(572f)) * -1000f))))));
    var var_2 = Struct_1(2147483647i, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-267f, -1000f) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(799f, -905f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1321f, -618f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)));
    let var_3 = 0u;
    var var_4 = firstTrailingBit(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 78838i, -57101i, 1i), vec4<i32>(var_2.a, var_2.a, 46594i, var_2.a)))) | _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_2.a, 21424i, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(39770i, var_2.a, u_input.a, -2147483647i), vec4<i32>(var_2.a, -47341i, u_input.a, var_2.a)), vec4<bool>(true, false, true, true)), firstLeadingBit(vec4<i32>(-1i, 13536i, var_2.a, -7891i)) << (abs(vec4<u32>(1u, 0u, 3063u, 21832u)) % vec4<u32>(32u))), -vec4<i32>(-18259i, 9049i, u_input.a, u_input.a) ^ (~vec4<i32>(0i, -53678i, -40486i, var_2.a) & -vec4<i32>(-2147483647i, u_input.a, var_2.a, 2147483647i)));
    return Struct_3(22012u, _wgslsmith_f_op_f32(var_2.c.x + 369f), Struct_2(_wgslsmith_clamp_vec3_i32(-reverseBits(vec3<i32>(24135i, -2147483647i, -22021i)), select(vec3<i32>(58064i, 57957i, 29681i), var_4.wwz, select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), ~(~vec3<i32>(u_input.a, var_2.a, 1i))), Struct_1(2147483647i, ~var_3, vec2<f32>(801f, _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_div_f32(-340f, var_2.d)), ~var_4.xwy, Struct_1(-29049i, var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(880f, -431f)), var_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f * 414f)), _wgslsmith_dot_vec4_i32(-vec4<i32>(abs(-32682i), u_input.a, u_input.a, 8098i), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-12616i, 0i), 1i << (var_0.x % 32u), -36427i, -var_4.x), ~vec4<i32>(u_input.a, var_4.x, -43613i, 2147483647i) >> (min(vec4<u32>(var_2.b, var_2.b, var_2.b, 4294967295u), vec4<u32>(106987u, var_3, var_3, var_0.x)) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_5(Struct_4(Struct_1(-1i, _wgslsmith_dot_vec3_u32(~vec3<u32>(37310u, arg_1.a, 4294967295u), ~vec3<u32>(1859u, arg_0.b.b, arg_1.c.d.b)), _wgslsmith_f_op_vec2_f32(arg_0.b.c * _wgslsmith_f_op_vec2_f32(-arg_0.d.c)), -249f), func_1().c, 72982i, vec3<i32>(1i, u_input.a, 2147483647i)), ~_wgslsmith_div_vec3_i32(arg_0.a, arg_1.c.a ^ -arg_0.c), func_1().c);
    global0 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(16675u, var_0.a.b.d.b), select(~35849u, ~0u, select(false, false, true))), min(~(~var_0.c.b.b), arg_1.c.b.b)));
    var var_1 = Struct_2(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, var_0.c.d.a, -2147483647i), vec3<i32>(var_0.c.c.x, -207i, 1i)), vec3<i32>(-2147483647i, 2147483647i, var_0.a.a.a)), ~(~(-1i)), ~(-1i))), func_1().c.b, arg_0.c, func_1().c.d);
    var var_2 = false;
    var_1 = arg_1.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(-425f, _wgslsmith_div_f32(var_1.d.d, -1165f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1().b * _wgslsmith_f_op_f32(min(-1069f, var_0.a.b.b.c.x))), _wgslsmith_f_op_f32(max(-573f, 795f)), any(vec2<bool>(true, true))))) * _wgslsmith_f_op_f32(-func_1().b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(-900f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-48328i, -2147483647i, u_input.a)), Struct_1(u_input.a, 2544u, vec2<f32>(1063f, 406f), 1355f), vec3<i32>(u_input.a, u_input.a, 5797i) | vec3<i32>(u_input.a, -2147483647i, 1i), Struct_1(u_input.a, 35434u, vec2<f32>(-755f, -257f), 2149f)), func_1())))));
    var var_1 = all(vec4<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true)), all(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true))), true));
    let var_2 = func_1().c.c;
    global0 = 1u;
    var_1 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true))));
    global0 = abs(1u >> (~func_2().x % 32u));
    var var_3 = 480f;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-215f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -873f)))))));
    let var_4 = ~_wgslsmith_add_i32(~firstLeadingBit(var_2.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-891f)), ~vec2<u32>(1u, ~1u), _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(var_4, reverseBits(var_4)), select(countOneBits(~1i), func_3(Struct_5(Struct_4(Struct_1(1i, 4294967295u, vec2<f32>(-1865f, 1338f), -814f), Struct_2(var_2, Struct_1(-6834i, 0u, vec2<f32>(-325f, 1530f), -853f), vec3<i32>(var_4, 0i, u_input.a), Struct_1(-32996i, 4294967295u, vec2<f32>(269f, 1251f), 676f)), var_4, vec3<i32>(2147483647i, 9396i, u_input.a)), var_2, Struct_2(vec3<i32>(var_4, var_4, 2147483647i), Struct_1(1i, 23561u, vec2<f32>(-682f, -1121f), -578f), vec3<i32>(2147483647i, 39675i, u_input.a), Struct_1(10290i, 0u, vec2<f32>(-327f, 1223f), -699f))), var_4, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1510f, -833f)))), true), var_4), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -362f)), -1842f)));
}

