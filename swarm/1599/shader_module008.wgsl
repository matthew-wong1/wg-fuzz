struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_0.e;
    var var_1 = select(select(vec3<bool>(u_input.a.x < ~arg_2, all(vec3<bool>(true, arg_0.e.e.x, false)), any(vec4<bool>(true, false, arg_0.d.x, true))), select(var_0.e, vec3<bool>(true, true, true), !arg_0.e.a.x), false), vec3<bool>(!all(arg_0.e.e) | true, var_0.d, 1u < var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.c, -1000f, true))))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1483f))))));
    var var_2 = Struct_3(vec4<bool>(!all(vec3<bool>(true, var_1.x, true)), !(!(arg_2 >= u_input.e)), var_1.x | any(select(vec4<bool>(arg_0.a, false, false, true), vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, arg_0.e.a.x))), !(arg_0.e.c < arg_1)), var_0, _wgslsmith_sub_vec3_i32(countOneBits(~(-vec3<i32>(u_input.c.x, u_input.c.x, 966i))), u_input.c), vec4<i32>(firstLeadingBit(-63104i), 49870i, u_input.e, 4389i), min(u_input.a.yx, max(u_input.a.xz, vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(1i, 2147483647i, u_input.a.x))))));
    let var_3 = Struct_1(vec2<bool>(var_0.a.x && var_1.x, !all(var_2.b.e)), firstTrailingBit(arg_0.c.x), _wgslsmith_f_op_f32(arg_0.e.c * -476f), !all(select(var_2.a.yy, var_2.a.xz, var_2.a.xw)), select(!vec3<bool>(all(var_2.a.zx), arg_0.a, true), select(!(!arg_0.d), arg_0.d, !var_0.e), vec3<bool>(var_2.b.a.x, any(var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1308f) > _wgslsmith_f_op_f32(floor(-744f)))));
    var var_4 = u_input.c.yz;
    return !vec2<bool>(true && all(select(var_2.a, var_2.a, var_2.a)), _wgslsmith_mod_u32(46651u, 134610u) < arg_0.b.x);
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = false;
    let var_1 = func_3(Struct_2(all(vec4<bool>(!var_0, var_0, var_0, !var_0)), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.d, u_input.b.x, u_input.b.x), vec4<u32>(76187u, u_input.d, u_input.b.x, u_input.b.x), vec4<bool>(false, false, var_0, var_0)), ~vec4<u32>(u_input.d, 25647u, 16191u, 1u)), countOneBits(vec2<u32>(~15795u, abs(u_input.d))), select(select(vec3<bool>(var_0, true, false), !vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, false, var_0))), vec3<bool>(!var_0, true, var_0), false), Struct_1(vec2<bool>(var_0, false), ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1984f - 600f)), false, select(!vec3<bool>(var_0, var_0, var_0), !vec3<bool>(false, var_0, var_0), var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(473f)) - _wgslsmith_f_op_f32(trunc(422f))) + -161f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1722f, -546f)))))))), arg_0);
    let var_2 = ~max(select(vec4<i32>(-9768i, u_input.a.x, arg_0, u_input.e) | abs(vec4<i32>(-8210i, 54992i, u_input.a.x, 2147483647i)), -abs(vec4<i32>(-1i, u_input.a.x, -1i, arg_0)), !(var_0 && var_0)), vec4<i32>(select(_wgslsmith_mult_i32(arg_0, arg_0), 28536i, var_1.x || var_0), -(2147483647i << (0u % 32u)), arg_0, u_input.a.x));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)) + -1064f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1385f, 219f)), _wgslsmith_f_op_f32(f32(-1f) * -1122f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1183f - -1000f), _wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-343f)))))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(!select(vec4<bool>(func_3(Struct_2(false, vec4<u32>(arg_3.x, 57379u, 32493u, arg_3.x), u_input.b, vec3<bool>(true, true, true), Struct_1(vec2<bool>(true, true), u_input.d, arg_1.x, true, vec3<bool>(true, false, true))), -2427f, 10090i).x, true, false, false), vec4<bool>(select(false, true, true), any(vec3<bool>(false, true, true)), 1009f >= arg_1.x, true), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(true, true), firstTrailingBit(u_input.d & 8926u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-483f, 533f) * _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(arg_1.x * arg_0)), func_3(Struct_2(true, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, 44454u), vec4<u32>(u_input.b.x, u_input.b.x, arg_3.x, arg_3.x)), arg_3, vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, false), arg_3.x, 324f, false, vec3<bool>(true, true, true))), arg_1.x, arg_2).x, select(vec3<bool>(12447u >= arg_3.x, arg_1.x <= -382f, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))))), vec3<i32>(10030i, countOneBits(_wgslsmith_mult_i32(u_input.a.x, -71276i)), arg_2), abs(abs(abs(~vec4<i32>(-2147483647i, arg_2, -27149i, u_input.a.x)))), u_input.a.xz);
    var var_1 = ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(max(arg_2, arg_2) | _wgslsmith_dot_vec3_i32(vec3<i32>(-309i, 40422i, 0i), vec3<i32>(var_0.c.x, -2147483647i, u_input.c.x)), -(i32(-1i) * -2147483647i)), arg_2, 2579i);
    var_1 = ~(~arg_2);
    let var_2 = vec4<u32>(~(~(select(var_0.b.b, u_input.d, false) & ~u_input.d)), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, 1u)), u_input.b.x), max(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 30015u, 0u, arg_3.x)), ~vec4<u32>(arg_3.x, 4294967295u, u_input.b.x, 1u)) | 1u, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(51290u, u_input.b.x, 1u, 1u) | vec4<u32>(arg_3.x, firstLeadingBit(var_0.b.b), var_0.b.b, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b, 2576u, var_0.b.b, u_input.b.x) >> (abs(vec4<u32>(u_input.d, arg_3.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u)), ~(~vec4<u32>(arg_3.x, arg_3.x, var_0.b.b, u_input.d)))));
    var_1 = -1i;
    return Struct_2(false, vec4<u32>(var_0.b.b, countOneBits(47161u), 1u, _wgslsmith_clamp_u32(arg_3.x | arg_3.x, _wgslsmith_dot_vec4_u32(var_2, abs(var_2)), 83499u)), ~(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_3, vec2<u32>(1u, 4294967295u), var_2.yx), arg_3) << (vec2<u32>(19930u, u_input.d) % vec2<u32>(32u))), vec3<bool>(var_0.a.x, all(func_3(Struct_2(false, var_2, var_2.zw, var_0.a.ywy, Struct_1(var_0.b.e.xx, 1u, arg_1.x, false, vec3<bool>(var_0.b.d, var_0.b.e.x, true))), arg_0, var_0.e.x)) || func_3(Struct_2(var_0.a.x, vec4<u32>(4294967295u, u_input.b.x, 1u, 2316u), vec2<u32>(u_input.d, 640u), vec3<bool>(true, var_0.a.x, false), var_0.b), -276f, -2147483647i).x, !var_0.a.x), var_0.b);
}

fn func_1() -> u32 {
    var var_0 = false;
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, 232f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-890f, 1036f)))))) + _wgslsmith_f_op_f32(712f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1i))))), vec3<f32>(-1000f, 261f, -1000f), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1909i, u_input.c.x, 4484i, -1i), vec4<i32>(u_input.a.x, u_input.e, 26745i, 16979i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, -5769i) << (vec4<u32>(13741u, u_input.d, u_input.d, u_input.b.x) % vec4<u32>(32u))), u_input.a.x), u_input.b);
    var var_2 = vec2<f32>(var_1.e.c, 665f);
    var var_3 = Struct_2(false, var_1.b, vec2<u32>(select(~70496u, 1u, true) ^ min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, u_input.d, var_1.b.x, 0u), vec4<u32>(23512u, 47937u, 39571u, 4294967295u)), u_input.b.x >> (4294967295u % 32u)), ~_wgslsmith_add_u32(~u_input.d, 0u)), vec3<bool>(false, all(vec4<bool>(true, true, all(vec4<bool>(var_1.a, var_1.d.x, true, false)), true)), !(!var_1.a)), Struct_1(var_1.e.a, ~38069u, -177f, all(!(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.d.x))), select(select(select(vec3<bool>(var_1.e.e.x, true, false), vec3<bool>(var_1.e.a.x, var_1.a, true), var_1.e.e.x), var_1.e.e, vec3<bool>(false, var_1.e.a.x, var_1.d.x)), !select(vec3<bool>(true, var_1.d.x, var_1.a), vec3<bool>(false, var_1.e.d, false), var_1.e.e), !(!vec3<bool>(var_1.d.x, false, false)))));
    let var_4 = vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-450f)) * -441f)) <= _wgslsmith_f_op_f32(f32(-1f) * -143f), true);
    return _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(0u, u_input.d))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, ~vec4<u32>(1u, countOneBits(u_input.b.x), func_1(), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14961u, 6625u, 79445u), vec4<u32>(42870u, u_input.b.x, u_input.b.x, u_input.d))) & _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.b.x, u_input.d), vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 23902u, u_input.b.x, u_input.d), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.d)) % vec4<u32>(32u)), abs(vec4<u32>(1u, 10402u, u_input.d, 0u))), ~(~vec2<u32>(u_input.d, ~39460u)), vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), true)), all(vec4<bool>(true, false, false, false)) && func_4(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, 256f, -1915f) + vec3<f32>(1087f, 1319f, 2358f)), -16043i, u_input.b).a, true), Struct_1(vec2<bool>(false, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), min(u_input.d, firstTrailingBit(1u)), 399f, !select(false, false, true) != false, select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), any(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true)));
    var_0 = func_4(-2606f, vec3<f32>(-752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1362f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.e.c, var_0.e.c), -1167f))), min(9632i, -9867i), firstLeadingBit(~u_input.b >> (vec2<u32>(0u, _wgslsmith_mult_u32(u_input.b.x, var_0.e.b)) % vec2<u32>(32u))));
    var var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(var_0.a, all(func_4(var_0.e.c, vec3<f32>(var_0.e.c, 567f, 287f), -21306i, vec2<u32>(38892u, 36871u)).e.a)), all(var_0.e.a)), 4294967295u, var_0.e.c, var_0.d.x && true, !select(!vec3<bool>(true, var_0.e.a.x, true), func_4(-145f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(842f, var_0.e.c, 883f))), u_input.e << (u_input.d % 32u), vec2<u32>(39586u, u_input.b.x)).e.e, true));
    let var_2 = false;
    var var_3 = Struct_5(-351f, Struct_3(select(vec4<bool>(-550f <= var_0.e.c, true, any(var_1.e), true), select(vec4<bool>(var_1.d, true, true, true), !vec4<bool>(true, true, false, var_1.a.x), true), all(var_0.e.e.yx)), var_0.e, _wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) << (abs(var_0.b.xxw) % vec3<u32>(32u)), u_input.c), ~vec4<i32>(abs(43290i), 23182i, select(9141i, 9818i, var_2), _wgslsmith_mult_i32(4945i, u_input.e)), u_input.a.zy));
    var var_4 = var_0.e.b << (1u % 32u);
    var var_5 = ~_wgslsmith_sub_u32(reverseBits(~_wgslsmith_div_u32(var_3.b.b.b, var_3.b.b.b)), ~var_3.b.b.b);
    var_3 = Struct_5(_wgslsmith_f_op_f32(func_2(1i)), var_3.b);
    var var_6 = vec4<bool>(false, !(-16374i <= ~var_3.b.d.x), !(!var_0.d.x), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xzx, u_input.a.x, _wgslsmith_div_i32(~(_wgslsmith_dot_vec4_i32(var_3.b.d, vec4<i32>(-25111i, var_3.b.c.x, 2147483647i, 17786i)) >> (var_1.b % 32u)), 2147483647i << (_wgslsmith_mult_u32(27430u ^ var_0.c.x, var_0.e.b >> (96003u % 32u)) % 32u)));
}

