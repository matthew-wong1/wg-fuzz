struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(select(~vec2<u32>(4679u, 46601u), select(_wgslsmith_sub_vec2_u32(vec2<u32>(80239u, 38787u), vec2<u32>(27272u, 0u)), select(vec2<u32>(0u, 28874u), vec2<u32>(11305u, 14029u), vec2<bool>(true, true)), true), true) << (vec2<u32>(_wgslsmith_div_u32(countOneBits(0u), firstLeadingBit(1u)), abs(firstTrailingBit(15211u))) % vec2<u32>(32u)), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), abs(-u_input.a));
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(1u, var_0.a.x, var_0.a.x), 0u), var_0.a), var_0.b, var_0.c);
    let var_1 = !vec3<bool>(var_0.b.x, var_0.b.x, any(select(var_0.b, select(var_0.b, var_0.b, var_0.b.x), !var_0.b)));
    let var_2 = ~max(u_input.a, var_0.c);
    var var_3 = _wgslsmith_div_u32(4149u, select(var_0.a.x, ~80409u, var_0.b.x));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(var_0.a), var_0.a, var_0.a), ~(~vec2<u32>(85376u, 0u ^ var_0.a.x)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(~arg_0, func_3());
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(countOneBits(33799u), firstLeadingBit(33392u), min(arg_0, arg_0))), vec3<u32>(arg_0, 1u, 0u)), _wgslsmith_add_vec3_u32(select(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_0, arg_0, 0u)), vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(4294967295u, 4294967295u, arg_0) ^ vec3<u32>(arg_0, arg_0, 40561u)), select(countOneBits(vec3<u32>(arg_0, 0u, arg_0)), ~vec3<u32>(0u, 8379u, 5362u), !vec3<bool>(arg_2.x, true, false)), arg_2.x), ~(select(vec3<u32>(78024u, 0u, arg_0), vec3<u32>(arg_0, 1u, 23353u), vec3<bool>(true, true, false)) << (firstLeadingBit(vec3<u32>(arg_0, 1u, arg_0)) % vec3<u32>(32u)))));
    var_0 = var_1.x;
    var var_2 = 642f;
    let var_3 = Struct_1(var_1.zz, select(vec3<bool>(false, select(true, any(arg_2), any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), any(arg_2)), !select(!vec3<bool>(arg_2.x, false, arg_2.x), select(vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, false, false)), false), (min(5497u, arg_0) <= ~arg_0) && true), max(select(min(2147483647i, u_input.a), ~33978i, arg_2.x) >> (_wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec3_u32(var_1, var_1)) % 32u), 1i));
    return Struct_1(var_3.a, !var_3.b, 2147483647i);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(~28580u, _wgslsmith_f_op_f32(select(-770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)), arg_2.b.x)), select(select(!(!arg_2.b.xz), arg_2.b.xx, u_input.a < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, arg_2.c), vec2<i32>(arg_2.c, -2147483647i))), !(!arg_2.b.yz), !select(true, false, false) || arg_0.b.a));
    var var_1 = Struct_2(vec2<i32>(u_input.a, u_input.a), func_2(~(~7612u), arg_0.a.x, select(!(!arg_2.b.yy), arg_2.b.zz, true)), func_2(arg_2.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1307f, _wgslsmith_f_op_f32(arg_0.c - arg_0.b.b.x), var_0.b.x)))), !vec2<bool>(arg_0.b.a, func_2(arg_2.a.x, arg_0.c, var_0.b.yz).b.x)), Struct_1(vec2<u32>(arg_2.a.x >> (0u % 32u), ~28431u), var_0.b, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2685i, 1i, -30391i), vec3<i32>(var_0.c, 1i, 1i)), 39582i, arg_2.c)));
    let var_2 = var_0.b.x;
    let var_3 = Struct_2(countOneBits(firstTrailingBit(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, -10515i), var_1.a))), Struct_1(arg_2.a, var_1.b.b, ~27483i), var_0, Struct_1(~(~var_1.c.a), var_0.b, _wgslsmith_div_i32(64842i, abs(var_0.c))));
    var var_4 = var_3;
    return func_2(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)), vec2<bool>(!var_0.b.x, !var_1.c.b.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, arg_0.x, 1404f, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(598f, -866f, -954f, arg_0.x), vec4<f32>(arg_0.x, 795f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -385f, arg_0.x, 1278f))))), arg_2)) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(645f, -2323f)), _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1621f), _wgslsmith_f_op_f32(-740f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(584f - -758f)))));
    let var_1 = !func_4(Struct_4(vec3<f32>(1577f, _wgslsmith_f_op_f32(arg_0.x * -308f), _wgslsmith_f_op_f32(f32(-1f) * -246f)), Struct_3(true, vec3<f32>(var_0.x, arg_0.x, -1938f)), _wgslsmith_f_op_f32(-var_0.x)), ~arg_1.c.a.x, func_2(arg_1.d.a.x, var_0.x, select(select(arg_1.c.b.zz, vec2<bool>(arg_2, true), vec2<bool>(arg_1.c.b.x, false)), func_2(0u, -1398f, arg_1.d.b.zx).b.yx, arg_1.d.b.xz))).b.xz;
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(~arg_1.b.a, ~arg_1.b.a, arg_1.d.a) & (~arg_1.d.a | ~(vec2<u32>(arg_1.d.a.x, 0u) ^ arg_1.d.a)), func_2(reverseBits(_wgslsmith_mod_u32(~arg_1.c.a.x, 4294967295u)), _wgslsmith_f_op_f32(exp2(var_0.x)), var_1).b, 1i);
    let var_3 = vec2<u32>(abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~58170u)) & (arg_1.c.a.x >> (32536u % 32u)), ~96093u);
    var_2 = arg_1.c;
    return Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.c.a.x, 13432u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29378u, 1u), vec3<u32>(1u, arg_1.d.a.x, var_2.a.x))) & _wgslsmith_mult_u32(countOneBits(10177u), _wgslsmith_add_u32(37409u, 3370u)), 10312u), vec3<bool>((_wgslsmith_f_op_f32(abs(-1000f)) < arg_0.x) != false, arg_1.d.b.x & true, !(!(!arg_1.b.b.x))), 2147483647i);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_4 {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1072f, 138f, false)), arg_1.x, arg_0.x) + arg_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -460f, _wgslsmith_f_op_f32(-204f + arg_1.x)))))), Struct_2(_wgslsmith_clamp_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(13652i, arg_2), vec2<i32>(arg_2, -49375i)), vec2<i32>(arg_2, ~2147483647i), vec2<i32>(1i, 1i)), func_4(Struct_4(_wgslsmith_div_vec3_f32(arg_0, arg_0), Struct_3(false, vec3<f32>(arg_0.x, arg_0.x, -878f)), _wgslsmith_f_op_f32(-501f * arg_0.x)), _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(5241u, 28989u)), func_2(1u, -442f, select(vec2<bool>(true, false), vec2<bool>(false, false), true))), func_4(Struct_4(arg_0, Struct_3(false, vec3<f32>(arg_0.x, 955f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), abs(_wgslsmith_mod_u32(12366u, 53645u)), func_4(Struct_4(vec3<f32>(arg_1.x, arg_0.x, -164f), Struct_3(false, arg_0), arg_0.x), 24162u, func_2(1u, arg_0.x, vec2<bool>(true, false)))), Struct_1(vec2<u32>(firstTrailingBit(4294967295u), 23614u), vec3<bool>(true, all(vec3<bool>(false, false, false)), false), arg_2 >> (0u % 32u))), false);
    var_0 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(arg_0.x, arg_1.x, arg_1.x))))) - _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(arg_0.x, 450f, 258f), var_0.b.x)))), Struct_3(select(all(vec4<bool>(true, false, false, false)), select(true, true, var_0.b.x), false), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, arg_0.x, arg_0.x)), true))), _wgslsmith_f_op_f32(-arg_0.x)), 0u, Struct_1(~max(~var_0.a, var_0.a | vec2<u32>(53031u, var_0.a.x)), var_0.b, var_0.c));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(abs(arg_1.x))))), Struct_3(true, _wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-190f)))) - 258f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, -468f, _wgslsmith_f_op_f32(min(405f, -1106f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(559f, 191f), vec2<f32>(1190f, 469f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1449f, 1055f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-182f, 531f))))), _wgslsmith_mod_i32((~u_input.a & (-21982i & u_input.a)) | _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, u_input.a), u_input.a), u_input.a & -45011i));
    var var_1 = 4294967295u;
    var_1 = 23023u;
    var_1 = func_3();
    var_1 = 3939u;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(select(1280f, _wgslsmith_f_op_f32(876f * _wgslsmith_f_op_f32(sign(-1112f))), var_0.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f + var_0.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)), 1044f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_2.wxz, vec2<f32>(var_0.a.x, var_2.x), u_input.a).b.b.x - -1355f))));
}

