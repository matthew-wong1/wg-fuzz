struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: u32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_0.b.a.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_div_f32(-776f, _wgslsmith_f_op_f32(abs(arg_2.x))));
    var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_2 = arg_2.x;
    return _wgslsmith_f_op_f32(-2418f * _wgslsmith_f_op_f32(f32(-1f) * -862f));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(355f, -758f)))), -679f)))), -293f);
    let var_1 = Struct_3(Struct_2(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false)))), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -481f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1592f)), -649f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(560f + 623f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1615f, -1599f, var_1.a.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -787f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1787f)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(u_input.c.zz, Struct_3(var_1.a, u_input.c & var_1.b), max(_wgslsmith_div_u32(var_1.b.x, var_1.b.x), abs(var_1.b.x)), -(~(-1i)), Struct_2(all(vec4<bool>(var_2, true, true, var_2)))), firstLeadingBit(vec2<i32>(-18413i, arg_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(202f, 299f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1275f, -700f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, 991f))))), 291f, _wgslsmith_f_op_f32(min(-1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-635f, -391f))) - -1154f))), _wgslsmith_f_op_f32(min(367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -990f))))));
    return var_3.x <= 164f;
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec2<f32>(-1643f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f - 837f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f)))));
    var var_1 = 1i;
    var var_2 = vec3<u32>(u_input.c.x, reverseBits(u_input.c.x) | arg_0.c, 6065u);
    var var_3 = arg_0.e;
    var var_4 = select(vec3<bool>(func_2(-vec3<i32>(arg_0.d, u_input.b.x, u_input.a) >> (vec3<u32>(14761u, u_input.c.x, arg_0.a.x) % vec3<u32>(32u))), true, false), vec3<bool>(var_3.a, 88312u > var_2.x, any(select(!vec2<bool>(var_3.a, arg_0.e.a), select(vec2<bool>(arg_0.b.a.a, true), vec2<bool>(false, true), arg_0.e.a), vec2<bool>(true, true)))), var_3.a);
    return Struct_2(!var_3.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(true);
    var var_1 = min(0u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 51634u), ~u_input.c)));
    var var_2 = Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(max(35019u, 0u), ~29157u)), _wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u), u_input.c.x)), Struct_3(Struct_2(all(vec4<bool>(false, true, false, var_0.a)) || !arg_0.a), u_input.c), ~22357u, -1i, Struct_2(any(!vec2<bool>(true, arg_0.a))));
    let var_3 = vec4<u32>(0u, 23626u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_2.c, var_2.b.b.x, var_2.a.x, u_input.c.x)), vec4<u32>(u_input.c.x, abs(91529u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_2.a.x, 4294967295u, u_input.c.x), vec4<u32>(44936u, u_input.c.x, 18601u, 20827u)), ~u_input.c.x)), ~u_input.c.x << (4294967295u % 32u)), 1u);
    let var_4 = -(abs(u_input.b.x ^ _wgslsmith_add_i32(u_input.a, var_2.d)) ^ _wgslsmith_mod_i32(u_input.a, u_input.a));
    return var_2.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, -801f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(374f, 863f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, arg_0.x, arg_0.x, arg_0.x)))), vec4<f32>(825f, -1979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1403f, -1664f)) + _wgslsmith_f_op_f32(-466f + arg_0.x)))));
    let var_1 = arg_2;
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1619f, var_0.a.x, -214f, var_0.a.x), vec4<f32>(var_0.a.x, -2123f, 711f, -1000f))))))));
    var var_2 = Struct_5(Struct_4(~(~select(arg_2.b.zy, var_1.b.xz, vec2<bool>(false, true))), Struct_3(Struct_2(var_1.a.a), u_input.c), abs(select(1u, ~1u, !arg_2.a.a)), arg_1, func_4(Struct_2(true), Struct_2(var_1.a.a && false)).a), !vec3<bool>(true && var_1.a.a, u_input.c.x < (u_input.c.x >> (79414u % 32u)), ~arg_2.b.x <= firstTrailingBit(arg_2.b.x)), _wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(arg_2.b, vec3<u32>(30861u, u_input.c.x, 54345u)) & (u_input.c.x << (arg_2.b.x % 32u)), _wgslsmith_mult_u32(arg_2.b.x, 12470u) & ~u_input.c.x), ~arg_2.b.x), func_4(Struct_2(!arg_2.a.a), Struct_2(arg_2.a.a)), ~41779u);
    return vec2<u32>(~u_input.c.x, firstTrailingBit(firstTrailingBit(~abs(17474u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(func_5(vec2<f32>(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2076f)), ~1i, func_4(func_1(Struct_4(u_input.c.xx, Struct_3(Struct_2(false), vec3<u32>(4294967295u, 0u, u_input.c.x)), u_input.c.x, 8453i, Struct_2(false))), func_1(Struct_4(u_input.c.yz, Struct_3(Struct_2(false), vec3<u32>(46128u, 0u, u_input.c.x)), 1u, u_input.a, Struct_2(true))))), func_4(func_1(Struct_4(vec2<u32>(u_input.c.x, u_input.c.x), Struct_3(Struct_2(true), u_input.c), u_input.c.x, -35368i, Struct_2(true))), func_1(Struct_4(vec2<u32>(u_input.c.x, 4294967295u), Struct_3(Struct_2(true), vec3<u32>(50660u, 45153u, 1u)), 0u, u_input.a, Struct_2(true)))), u_input.c.x, u_input.a, Struct_2(true)), !vec3<bool>(!all(vec4<bool>(false, true, true, false)), true, func_2(vec3<i32>(-5209i, -2147483647i, u_input.a)) == all(vec2<bool>(true, false))), u_input.c.x, Struct_3(func_4(Struct_2(func_1(Struct_4(vec2<u32>(81821u, 4294967295u), Struct_3(Struct_2(false), u_input.c), u_input.c.x, u_input.b.x, Struct_2(false))).a), func_1(Struct_4(vec2<u32>(1697u, 4294967295u), Struct_3(Struct_2(true), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), u_input.c.x, u_input.a, Struct_2(true)))).a, min(vec3<u32>(u_input.c.x, u_input.c.x, 1u), ~u_input.c) & vec3<u32>(u_input.c.x, 31929u, _wgslsmith_mult_u32(4294967295u, u_input.c.x))), _wgslsmith_clamp_u32(~(~0u), u_input.c.x, max(1u, u_input.c.x & (1u << (u_input.c.x % 32u)))));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, ~(-vec2<i32>(-1i, 2147483647i))), -2147483647i), -11319i);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -639f);
    var var_3 = var_0;
    var_1 = ~u_input.a;
    let var_4 = var_0.a.b.b.xz << (_wgslsmith_clamp_vec2_u32(var_3.d.b.xx, vec2<u32>(countOneBits(76313u), var_3.c) ^ abs(reverseBits(var_3.d.b.yz)), _wgslsmith_div_vec2_u32(u_input.c.zz, var_0.d.b.yz)) % vec2<u32>(32u));
    var var_5 = _wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.c.x, var_0.d.b.x, 0u, u_input.c.x) | vec4<u32>(49412u, _wgslsmith_mult_u32(u_input.c.x, var_3.e), _wgslsmith_mult_u32(u_input.c.x, 1u), _wgslsmith_mult_u32(u_input.c.x, 9916u)), vec4<u32>(1u, var_4.x << (1u % 32u), min(u_input.c.x, var_4.x), ~abs(var_3.d.b.x)), !vec4<bool>(true, var_0.b.x, true, true)), vec4<u32>(~(u_input.c.x | ~var_0.c), u_input.c.x, ~_wgslsmith_mod_u32(1u << (var_0.a.a.x % 32u), var_3.a.b.b.x << (var_4.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.c.x, var_0.d.b.x, var_4.x), ~vec4<u32>(1u, 1u, 55815u, 0u)) | ~(var_4.x | var_4.x)));
    let var_6 = Struct_4(~countOneBits(max(u_input.c.yz, var_5.zz)) << (vec2<u32>(var_3.e, countOneBits(23436u << (0u % 32u))) % vec2<u32>(32u)), Struct_3(func_4(Struct_2(false), Struct_2(true)).a, reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(57975u, 0u, 10182u), abs(var_5.xwx)))), 57905u, 1i, Struct_2(!var_3.a.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, _wgslsmith_f_op_f32(f32(-1f) * -1330f), _wgslsmith_f_op_f32(1132f * _wgslsmith_f_op_f32(floor(-1102f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1002f, var_2, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, var_2)) + -799f)));
}

