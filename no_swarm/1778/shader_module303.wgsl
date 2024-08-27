struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(abs(arg_1.a | vec3<i32>(-41518i, _wgslsmith_mod_i32(u_input.c.x, -9814i), abs(u_input.c.x))), !arg_0.d.b, u_input.b.xzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -746f), _wgslsmith_f_op_f32(select(arg_1.d, arg_1.d, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d, arg_1.d))))));
    var var_1 = Struct_3(Struct_1(arg_0.d.a, false, ~var_0.c, arg_1.d));
    var var_2 = arg_0.b.yzx;
    return arg_0.d.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = !vec2<bool>(((arg_0.c.x & u_input.b.x) << (~u_input.a.x % 32u)) >= u_input.b.x, false);
    var_0 = vec2<bool>(true, true && ((1i << (_wgslsmith_mod_u32(0u, arg_2.x) % 32u)) < _wgslsmith_dot_vec4_i32(vec4<i32>(-13652i, u_input.c.x, arg_1.x, arg_1.x), min(vec4<i32>(1i, -2147483647i, arg_0.a.x, -2147483647i), vec4<i32>(2147483647i, arg_0.a.x, 52700i, arg_0.a.x)))));
    var_0 = !vec2<bool>(any(select(vec4<bool>(false, true, var_0.x, arg_0.b), select(vec4<bool>(false, arg_0.b, var_0.x, true), vec4<bool>(arg_0.b, var_0.x, arg_0.b, false), vec4<bool>(arg_0.b, true, arg_0.b, false)), var_0.x)), true);
    var_0 = select(select(select(vec2<bool>(!var_0.x, -42254i > arg_1.x), !select(vec2<bool>(false, true), vec2<bool>(true, true), var_0.x), ~0u == (arg_2.x | 1u)), !(!vec2<bool>(arg_0.b, var_0.x)), false & !var_0.x), !select(!(!vec2<bool>(var_0.x, arg_0.b)), vec2<bool>(false, !arg_0.b), !select(vec2<bool>(true, arg_0.b), vec2<bool>(false, true), var_0.x)), vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -1152f), _wgslsmith_f_op_f32(-arg_0.d))) != _wgslsmith_f_op_f32(f32(-1f) * -2398f), any(vec4<bool>(false != arg_0.b, true, var_0.x || arg_0.b, true))));
    var var_1 = arg_2;
    return vec3<bool>(true, false, arg_0.b);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(!select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), 1u > u_input.b.x), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(func_3(Struct_1(u_input.c, true, u_input.a.yyx, 646f), u_input.c.zz, vec3<u32>(4294967295u, 30868u, 0u)), vec3<bool>(false, true, true), all(vec4<bool>(false, true, true, false))), any(vec3<bool>(true, true, true)) & true), true), Struct_1(vec3<i32>(u_input.c.x, 1i, 12266i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(17424u, 4294967295u, 0u), ~u_input.b.yyx) % vec3<u32>(32u)), true, u_input.a.zzx << (u_input.a.xwy % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(533f, _wgslsmith_f_op_f32(-146f * _wgslsmith_div_f32(1791f, -755f))))), select(_wgslsmith_div_u32(22800u, 48819u), 71644u, !any(vec2<bool>(true, false))) & u_input.b.x);
    var_0 = Struct_2(vec2<bool>(all(select(select(vec3<bool>(var_0.b.x, var_0.c.b, var_0.b.x), var_0.b, vec3<bool>(var_0.c.b, false, false)), vec3<bool>(var_0.a.x, true, false), any(vec2<bool>(false, var_0.c.b)))), all(select(vec4<bool>(false, false, false, var_0.b.x), select(vec4<bool>(true, false, var_0.a.x, var_0.b.x), vec4<bool>(var_0.c.b, var_0.c.b, true, false), true), select(vec4<bool>(false, var_0.c.b, var_0.a.x, false), vec4<bool>(false, false, false, false), var_0.a.x)))), !var_0.b, var_0.c, var_0.c.c.x >> (1u % 32u));
    var var_1 = Struct_3(Struct_1(var_0.c.a, var_0.c.b && true, ~select(u_input.b.xyz, ~vec3<u32>(4294967295u, 1u, 58091u), false), 818f));
    var_0 = Struct_2(vec2<bool>(var_0.b.x, var_1.a.b), vec3<bool>(false, true, any(!func_3(Struct_1(vec3<i32>(var_1.a.a.x, 1i, -1i), var_0.c.b, vec3<u32>(2003u, var_1.a.c.x, 1u), 164f), vec2<i32>(2147483647i, -30105i), u_input.b.xwz).xz)), var_1.a, 52935u);
    var_0 = Struct_2(vec2<bool>(false, true), !vec3<bool>(var_0.b.x, var_0.a.x, all(vec2<bool>(var_0.c.b, var_0.a.x)) == var_0.b.x), var_1.a, ~var_0.c.c.x);
    return Struct_1(firstLeadingBit(vec3<i32>(abs(-1i), var_1.a.a.x, _wgslsmith_mod_i32(u_input.c.x, 2147483647i)) & _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.c.x, -19619i)), var_0.c.a)), firstTrailingBit(-28180i ^ (var_0.c.a.x >> (0u % 32u))) <= u_input.c.x, ~var_0.c.c, var_0.c.d);
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_2(vec2<bool>(arg_0.d.b, arg_0.d.b), func_3(arg_0.d, u_input.c.xx, vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(0u, 0u, 38096u, u_input.b.x))), 32478u, ~(~arg_0.d.c.x))), Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(arg_0.d.a, vec3<i32>(-2763i, -1i, arg_0.c), arg_0.d.a)), arg_0.d.a), true, abs(min(arg_0.d.c, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.d.c.x, u_input.b.x, 0u), vec3<u32>(1u, u_input.b.x, arg_0.d.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1051f), -946f))))), ~0u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.d)));
    let var_2 = any(var_0.b);
    var_1 = _wgslsmith_f_op_f32(sign(-2079f));
    let var_3 = Struct_1(~(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(var_0.c.a, vec3<i32>(var_0.c.a.x, u_input.c.x, -8707i))), any(vec2<bool>(false, true)), ~(~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.b.zwz, var_0.c.c), ~u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.d), _wgslsmith_f_op_f32(-1000f * -1487f), func_2().b)) - 646f), arg_0.d.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a.x < 24994u)), any(vec3<bool>(true, u_input.c.x <= -9045i, false))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(false, true, true))), Struct_1(-vec3<i32>(-50460i, abs(u_input.c.x), ~77825i), _wgslsmith_mult_u32(u_input.a.x, func_1(Struct_4(u_input.c.zz, vec4<f32>(-399f, -1016f, 1000f, -1595f), u_input.c.x, Struct_1(vec3<i32>(-23573i, u_input.c.x, u_input.c.x), true, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), 292f)), Struct_1(vec3<i32>(u_input.c.x, -1i, u_input.c.x), false, u_input.b.zyy, 426f))) <= ~1u, ~vec3<u32>(u_input.a.x, 53556u, 44824u), _wgslsmith_f_op_f32(func_4(Struct_4(firstTrailingBit(u_input.c.zx), vec4<f32>(1f, 1f, 1f, 1f), 0i, func_2())))), u_input.b.x);
    var_0 = Struct_2(select(vec2<bool>(!var_0.a.x, true), !vec2<bool>(all(vec4<bool>(var_0.a.x, var_0.b.x, false, var_0.a.x)), var_0.c.b), var_0.a), !select(var_0.b, var_0.b, any(!vec3<bool>(true, var_0.a.x, var_0.c.b))), func_2(), 1u);
    var_0 = Struct_2(!select(var_0.b.zz, select(vec2<bool>(var_0.b.x, var_0.c.b), vec2<bool>(true, true), var_0.c.b && var_0.a.x), vec2<bool>(var_0.a.x, any(var_0.b))), vec3<bool>(var_0.c.b, true, !(~0u > (u_input.b.x << (4294967295u % 32u)))), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, firstLeadingBit(var_0.c.a)), ~u_input.c), !(!(false && var_0.c.b)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x) >> (var_0.c.c % vec3<u32>(32u)), vec3<u32>(43848u, 4294967295u, var_0.c.c.x) ^ vec3<u32>(82147u, u_input.a.x, 79137u)), -338f), ~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.b.x & u_input.a.x, ~var_0.d), reverseBits(0u)));
    var_0 = Struct_2(vec2<bool>(!any(select(vec4<bool>(var_0.c.b, true, var_0.a.x, var_0.c.b), vec4<bool>(false, var_0.c.b, false, false), vec4<bool>(var_0.b.x, false, true, true))), u_input.b.x < _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(var_0.d, 0u))), vec3<bool>(true, true, var_0.b.x), var_0.c, select(~(~u_input.b.x), _wgslsmith_sub_u32(1u, u_input.a.x), false) & 43218u);
    var_0 = Struct_2(var_0.b.xz, !func_3(func_2(), var_0.c.a.yy, ~_wgslsmith_div_vec3_u32(u_input.b.zxw, var_0.c.c)), Struct_1(vec3<i32>(-1i) * -u_input.c, any(!(!vec2<bool>(false, var_0.a.x))), vec3<u32>(_wgslsmith_div_u32(~15921u, 44006u), u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 36139u)), var_0.c.d), firstLeadingBit(~u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f));
    var_0 = Struct_2(func_3(var_0.c, -vec2<i32>(~u_input.c.x, -14469i), _wgslsmith_div_vec3_u32(u_input.a.wzz, vec3<u32>(countOneBits(1u), reverseBits(var_0.d), reverseBits(u_input.a.x)))).zy, !(!(!(!var_0.b))), Struct_1(vec3<i32>(max(u_input.c.x, -1i) ^ _wgslsmith_mod_i32(-26120i, var_0.c.a.x), -_wgslsmith_sub_i32(-35580i, -501i), u_input.c.x), select(!(!var_0.c.b), var_0.a.x, var_0.c.b), u_input.b.xwz, var_0.c.d), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1512f, var_0.c.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(579f, var_0.c.d))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.d, _wgslsmith_f_op_f32(trunc(var_0.c.d))))))), ~(~_wgslsmith_mult_u32(~6473u, min(var_0.d, var_0.c.c.x))), 6255i);
}

