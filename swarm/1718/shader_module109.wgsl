struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(189f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1309f - -501f), _wgslsmith_div_f32(-1739f, -533f))), 158f));
    var var_1 = ~_wgslsmith_sub_i32(-2147483647i, 12425i >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, 81354u), u_input.a) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -530f))), -477f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1436f, 336f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(213f, -730f)))) - vec2<f32>(690f, 1000f)));
    var var_3 = any(vec3<bool>(true, true & all(select(arg_0.xyw, arg_0.xzw, vec3<bool>(true, true, arg_0.x))), true));
    let var_4 = Struct_1(true, u_input.b.wx, ~1u, firstLeadingBit(max(0i << (u_input.b.x % 32u), -18613i)) << (20433u % 32u), arg_0.zyy);
    return min(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_4.d | 22904i, -25049i, -2147483647i), vec3<i32>(-2147483647i, ~(-2147483647i), ~var_4.d)), var_4.d);
}

fn func_2() -> vec2<u32> {
    let var_0 = vec2<i32>(abs(~0i), -9627i) ^ vec2<i32>(func_3(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)) >> (0u % 32u), ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(-34119i, 13212i, 2147483647i, 48431i), vec4<i32>(6241i, 0i, -40497i, -30161i)), 1i));
    let var_1 = Struct_2(Struct_1(false, (vec2<u32>(4294967295u, u_input.a) | u_input.b.yz) >> (vec2<u32>(u_input.b.x, ~1u) % vec2<u32>(32u)), u_input.a, -2147483647i, !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), 2021f)), 347f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-808f, 2152f) - _wgslsmith_f_op_f32(f32(-1f) * -365f))))), 4294967295u, ~vec3<u32>(6892u >> ((1u << (u_input.b.x % 32u)) % 32u), ~u_input.a ^ abs(0u), _wgslsmith_div_u32(23928u, reverseBits(u_input.a))), -404f);
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.e))) - _wgslsmith_f_op_f32(f32(-1f) * -1463f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x * 774f))), _wgslsmith_div_f32(var_1.e, 127f)), -934f, var_1.e));
    return firstTrailingBit(~vec2<u32>(~25485u, 38286u)) & vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.a.b & vec2<u32>(var_1.a.b.x, u_input.a), _wgslsmith_add_vec2_u32(var_1.a.b, var_1.d.yx)) >> (u_input.a % 32u), var_1.d.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(arg_0, 473f) == -235f;
    let var_2 = select(vec2<i32>(~arg_1.d, 10557i), ~vec2<i32>(arg_1.d, arg_1.d ^ arg_1.d), !var_1) << (min(vec2<u32>(var_0.x, 0u), ~_wgslsmith_div_vec2_u32(~u_input.b.yw, vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u));
    var var_3 = Struct_1(var_1, ~firstLeadingBit(max(vec2<u32>(31694u, 21027u), vec2<u32>(var_0.x, var_0.x))) ^ arg_1.b, ~9465u, var_2.x, vec3<bool>(_wgslsmith_f_op_f32(abs(arg_0)) > arg_0, arg_1.a, false));
    var var_4 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1161f, arg_0, arg_0), vec4<f32>(arg_0, -1000f, -1000f, 746f))))), var_3.c | ~(~2389u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(90941u, 1u), var_0)), ~_wgslsmith_mod_vec3_u32(u_input.b.xzy, ~vec3<u32>(u_input.b.x, u_input.a, 4294967295u) | u_input.b.zzy), arg_0);
    return abs(reverseBits(_wgslsmith_clamp_u32(var_3.c, var_3.c, ~0u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(false, u_input.b.ww, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 13241u) & ~vec3<u32>(0u, arg_1, 31935u), firstLeadingBit(~vec3<u32>(4294967295u, 11192u, 30354u))), 2147483647i, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, -1179f, arg_0.x, 313f), vec4<f32>(arg_0.x, arg_0.x, -1780f, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(641f, arg_0.x, arg_0.x, 1924f), vec4<f32>(793f, -282f, 1121f, 932f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-904f, arg_0.x, arg_0.x, 2724f), vec4<f32>(arg_0.x, 2006f, -307f, arg_0.x)))))))), _wgslsmith_clamp_u32(1u, 54243u, 1u), u_input.b.yyy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(min(arg_0.x, -863f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))))));
    var var_1 = ~u_input.a;
    let var_2 = -(vec2<i32>(var_0.a.d, var_0.a.d) ^ ~vec2<i32>(var_0.a.d, -20788i));
    var_0 = Struct_2(Struct_1(true, vec2<u32>(arg_1, ~_wgslsmith_clamp_u32(4904u, var_0.d.x, u_input.a)), u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(var_2.x, -36474i), var_2.x), 0i, ~reverseBits(var_0.a.d)), !var_0.a.e), _wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, arg_0.x, var_0.b.x, -831f) + vec4<f32>(157f, -636f, -457f, var_0.e))) + var_0.b)), arg_1, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~var_0.d, var_0.d), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, arg_1), 1u, abs(u_input.a)) >> (select(firstLeadingBit(vec3<u32>(arg_1, 4294967295u, 0u)), ~u_input.b.yzy, vec3<bool>(true, var_0.a.e.x, false)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(var_0.b.x)));
    var_0 = Struct_2(Struct_1(var_0.a.e.x, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, var_0.d.x), vec2<u32>(18512u, 32516u)), ~vec2<u32>(var_0.c, arg_1)), ~u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.d >> (arg_1 % 32u), max(var_2.x, var_2.x), _wgslsmith_add_i32(var_2.x, var_0.a.d)), vec3<i32>(1i, var_0.a.d ^ -1861i, ~var_2.x)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a.a, false, var_0.a.e.x), var_0.a.e, false), !var_0.a.a), !(!var_0.a.e), !(true || var_0.a.a))), var_0.b, _wgslsmith_dot_vec2_u32(~select(u_input.b.zx, _wgslsmith_mod_vec2_u32(var_0.d.yy, var_0.a.b), all(vec2<bool>(var_0.a.e.x, false))), var_0.a.b), ~firstTrailingBit((vec3<u32>(var_0.d.x, 5258u, 42144u) >> (var_0.d % vec3<u32>(32u))) << ((var_0.d | var_0.d) % vec3<u32>(32u))), var_0.e);
    return _wgslsmith_dot_vec2_u32(max(~var_0.a.b, vec2<u32>(20166u, arg_1)), u_input.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.a, u_input.b.x, ~74077u, firstTrailingBit(0u));
    var_0 = vec4<u32>(0u, firstLeadingBit(u_input.a), u_input.a, abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(5729u), var_0.x), u_input.a)));
    var var_1 = abs(countOneBits((vec2<i32>(-1i, 1i) << ((vec2<u32>(0u, 39824u) | u_input.b.yy) % vec2<u32>(32u))) << (min(vec2<u32>(1u, 4294967295u), var_0.xy) % vec2<u32>(32u))));
    var var_2 = Struct_1(false, vec2<u32>(firstTrailingBit(~u_input.a), _wgslsmith_mult_u32(1u, var_0.x)), u_input.b.x, ~(~_wgslsmith_clamp_i32(abs(var_1.x), 1i, ~(-37076i))), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, var_0.x > 13651u), true));
    var_1 = firstTrailingBit(vec2<i32>(var_1.x << (30296u % 32u), 2147483647i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1327f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.x), u_input.b.x, vec3<u32>(_wgslsmith_add_u32(var_2.c, ~25771u) | _wgslsmith_dot_vec4_u32(u_input.b << (u_input.b % vec4<u32>(32u)), select(u_input.b, u_input.b, vec4<bool>(var_2.a, true, var_2.e.x, false))), 4326u, max(~u_input.a, func_4(vec3<f32>(-656f, 1434f, -1521f), func_1(var_3, Struct_1(false, var_0.zz, var_2.b.x, var_1.x, vec3<bool>(true, true, true)))))));
}

