struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = reverseBits(countOneBits(61436u)) & _wgslsmith_div_u32(arg_2.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, arg_2.c), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.b.x))));
    var var_1 = arg_2;
    let var_2 = select(vec4<bool>(any(vec2<bool>(true, true)), false, false, true), !select(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), select(true, false, false), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), true), true), vec4<bool>(false, !any(vec3<bool>(false, true, false)), !(arg_0.x > 2147483647i), true));
    return countOneBits(21871u) & _wgslsmith_dot_vec4_u32(min(~abs(vec4<u32>(65873u, var_0, arg_2.b.x, arg_2.b.x)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(arg_2.b.x, 22330u), 1u, abs(var_1.c))), ~max(vec4<u32>(0u, var_0, 4294967295u, 0u) ^ vec4<u32>(4294967295u, 42264u, var_0, 76502u), ~vec4<u32>(arg_2.c, u_input.b.x, 45821u, u_input.b.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> bool {
    var var_0 = Struct_1(2108f, ~((vec2<u32>(u_input.b.x, arg_1.x) & vec2<u32>(16438u, arg_1.x)) | u_input.b.yy), 247u ^ _wgslsmith_clamp_u32(70666u, arg_1.x, ~32190u), vec2<f32>(-381f, -1591f), ~u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(var_0.d.x, 1227f)), vec2<u32>(61691u << (arg_1.x % 32u), arg_1.x), ~_wgslsmith_div_u32(func_3(vec3<i32>(arg_3, 0i, -17282i), vec2<f32>(-366f, var_0.a), Struct_1(var_0.d.x, vec2<u32>(63939u, arg_1.x), u_input.b.x, vec2<f32>(var_0.a, var_0.a), -1i)), ~1u) | ~(~select(4849u, 4294967295u, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d)), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_3, arg_3), -2147483647i));
    var var_2 = var_0.d.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(-120f, _wgslsmith_f_op_f32(-var_1.d.x))), ~(~arg_1.yz), arg_1.x, var_1.d, 46727i);
    let var_4 = 776f;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = Struct_1(arg_1.d.x, _wgslsmith_div_vec2_u32(arg_1.b, vec2<u32>(~u_input.b.x & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_1.c, 4294967295u, 4294967295u), vec4<u32>(0u, 39032u, u_input.b.x, u_input.b.x)), _wgslsmith_add_u32(29458u, 0u) | ~arg_2)), _wgslsmith_div_u32(firstLeadingBit(~_wgslsmith_add_u32(arg_2, 59615u)), 0u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, 260f), vec2<f32>(arg_1.a, 1000f))), vec2<f32>(1551f, _wgslsmith_f_op_f32(-arg_1.d.x))))), _wgslsmith_sub_i32(~1i, 25820i));
    var var_2 = max(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(-7913i, -2147483647i, 19160i), vec3<i32>(arg_1.e, 1754i, u_input.a) ^ vec3<i32>(1i, 4197i, 2147483647i), ~vec3<i32>(-12762i, u_input.a, var_0)) << (u_input.b % vec3<u32>(32u)), ~max(~(-vec3<i32>(71640i, -1i, var_1.e)), select(abs(vec3<i32>(-2147483647i, var_0, 30626i)), vec3<i32>(3479i, var_0, 14791i) >> (u_input.b % vec3<u32>(32u)), vec3<bool>(true, false, false))));
    var_2 = ~(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.e, var_2.x, var_2.x)), _wgslsmith_add_vec3_i32(vec3<i32>(6006i, -18821i, u_input.a), vec3<i32>(var_2.x, 41461i, u_input.a))), select(vec3<i32>(-29231i, var_1.e, -4217i), -vec3<i32>(36248i, var_0, 0i), all(vec2<bool>(false, arg_0.x)))) << (~vec3<u32>(1804u, _wgslsmith_div_u32(16777u, var_1.c), 4294967295u) % vec3<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_sub_vec2_u32(max(select(vec2<u32>(6504u, u_input.b.x), vec2<u32>(40761u, arg_2), false), vec2<u32>(var_1.b.x, 0u)) & ~(arg_1.b ^ vec2<u32>(66211u, arg_2)), ~var_1.b), arg_2, _wgslsmith_f_op_vec2_f32(-var_1.d), var_0);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, -344f)))) + -1230f), ~u_input.b.yy, ~_wgslsmith_clamp_u32(44386u, select(_wgslsmith_div_u32(arg_2, arg_1.b.x), 1u, arg_0.x), u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d, vec2<f32>(arg_1.d.x, arg_1.d.x)) - vec2<f32>(1199f, -1000f)))), arg_1.e << (1u % 32u));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_4(select(vec3<bool>(!any(vec4<bool>(true, true, false, true)), -15390i < u_input.a, false), vec3<bool>(func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec3<u32>(u_input.b.x, arg_0.c, u_input.b.x), vec4<bool>(true, true, true, true), arg_0.e), true, (arg_0.e & arg_0.e) != 0i), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(any(vec4<bool>(true, false, false, false)), false, false), vec3<bool>(true, true, true))), func_4(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true))), arg_0, firstLeadingBit(arg_0.b.x)), min(~countOneBits(u_input.b.x), u_input.b.x)).e;
    var var_1 = 318f;
    let var_2 = select(u_input.b.yz, ~vec2<u32>(firstTrailingBit(~u_input.b.x), ~arg_0.c), true);
    let var_3 = arg_0;
    let var_4 = u_input.b;
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(-2006f * -1730f))))), vec2<u32>(4294967295u, arg_0.c), arg_0.b.x, func_4(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.d.x), -493f), var_4.xx, _wgslsmith_mod_u32(69194u, 1u), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -652f)), -_wgslsmith_sub_i32(-1i, arg_0.e)), ~39946u).d, -13740i);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_5(func_4(!vec3<bool>(all(vec2<bool>(false, true)), func_2(vec4<bool>(arg_0, true, true, true), vec3<u32>(1u, u_input.b.x, 50491u), vec4<bool>(arg_0, true, arg_0, arg_0), 2147483647i), arg_0), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1964f), ~vec2<u32>(0u, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, 374f)), u_input.a), max(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), u_input.b.x)));
    let var_1 = ~(-(var_0.e >> (abs(10404u) % 32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b | (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, var_0.c), var_0.b | var_0.b) ^ u_input.b.zz), var_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3038f) * _wgslsmith_f_op_f32(round(-428f)))), _wgslsmith_f_op_f32(f32(-1f) * -1399f)), ~firstTrailingBit(3758i));
    var var_3 = true;
    var var_4 = 1i & _wgslsmith_mod_i32(-1i ^ ~var_1, var_2.e);
    return Struct_1(-698f, u_input.b.zz, _wgslsmith_mult_u32(4294967295u, func_5(Struct_1(var_2.d.x, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), var_2.b), ~7593u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2678f, var_0.d.x) - var_0.d), 18175i)).c), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), func_4(!vec3<bool>(arg_0, arg_0, arg_0), func_4(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, false, arg_0)), Struct_1(var_0.d.x, vec2<u32>(4560u, u_input.b.x), var_2.b.x, vec2<f32>(var_2.d.x, -518f), u_input.a), var_0.b.x), abs(var_0.b.x)).a), u_input.a);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    var var_0 = arg_1;
    var_0 = all(vec2<bool>(!((-12113i != u_input.a) || arg_2), true));
    var_0 = !(!(u_input.b.x <= 1u));
    var var_1 = 36021u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(-1566f, func_5(func_5(arg_0)).a)), -909f, arg_0.d.x);
    return _wgslsmith_f_op_f32(var_2.x - -1068f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-360f, _wgslsmith_f_op_f32(func_6(func_1(false), all(vec4<bool>(false, false, false, false)), u_input.a > -27162i, abs(u_input.b.zz)))))), ~_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.b.x)), u_input.b.zx >> (reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))), func_4(vec3<bool>(func_2(vec4<bool>(true, false, false, false), u_input.b, vec4<bool>(false, true, true, true), -18014i) || any(vec2<bool>(false, false)), func_2(vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 0u, 31675u)), vec4<bool>(false, true, false, false), func_4(vec3<bool>(false, false, true), Struct_1(1397f, u_input.b.yx, u_input.b.x, vec2<f32>(-1653f, 1004f), 28714i), u_input.b.x).e), true), func_5(func_5(Struct_1(1925f, u_input.b.xx, u_input.b.x, vec2<f32>(-585f, -559f), u_input.a))), u_input.b.x & ~(~u_input.b.x)).b.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(func_5(Struct_1(1166f, vec2<u32>(u_input.b.x, u_input.b.x), 33189u, vec2<f32>(1090f, 2355f), 2147483647i)).d.x, _wgslsmith_div_f32(1179f, _wgslsmith_f_op_f32(sign(218f)))))), _wgslsmith_mod_i32(-2147483647i, u_input.a));
    var var_1 = func_1(true);
    var_1 = func_4(select(vec3<bool>(true, func_2(vec4<bool>(true, true, true, true), ~vec3<u32>(var_1.c, 11668u, u_input.b.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), func_5(Struct_1(var_0.a, vec2<u32>(4294967295u, 4294967295u), 51000u, vec2<f32>(var_0.a, -816f), -1i)).e), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, ~18883u > countOneBits(u_input.b.x), !func_2(vec4<bool>(false, true, true, false), u_input.b, vec4<bool>(false, true, false, true), u_input.a))), func_5(func_4(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), var_0, 0u)), _wgslsmith_clamp_u32(func_3(vec3<i32>(_wgslsmith_add_i32(var_1.e, 0i), -8561i, var_1.e), var_1.d, Struct_1(var_0.a, vec2<u32>(var_0.b.x, var_1.c) >> (var_0.b % vec2<u32>(32u)), min(52843u, 65897u), _wgslsmith_div_vec2_f32(var_1.d, var_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, var_1.e), vec2<i32>(1i, var_0.e)))), var_0.c, var_1.c));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(720f + var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), ~(~_wgslsmith_sub_vec2_u32(var_1.b, vec2<u32>(u_input.b.x, 0u))) << (select(~(var_0.b << (vec2<u32>(5501u, 53055u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.b, u_input.b.xy, vec2<u32>(var_1.b.x, var_1.c)), ~vec2<u32>(var_0.b.x, 0u)), false == (101f == var_0.a)) % vec2<u32>(32u)), var_1.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, _wgslsmith_div_f32(func_4(vec3<bool>(false, false, true), var_0, 83071u).d.x, 168f))), i32(-1i) * -36509i);
    var_1 = Struct_1(_wgslsmith_div_f32(-607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.d.x, var_1.a, false))) + _wgslsmith_f_op_f32(var_1.d.x - var_0.d.x))), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.c, 30552u), u_input.b.xx), ~1u, var_1.d, ~func_1(func_2(vec4<bool>(true, true, true, true), vec3<u32>(var_1.b.x, 110383u, 37674u), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), -var_2.e)).e);
    var_2 = func_4(vec3<bool>(true, true, true), var_0, _wgslsmith_dot_vec2_u32(u_input.b.yz, firstTrailingBit(firstLeadingBit(vec2<u32>(4294967295u, 91043u)))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~var_1.e));
}

