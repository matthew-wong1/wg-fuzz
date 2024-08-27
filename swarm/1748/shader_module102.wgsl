struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = max(8698i, u_input.a);
    var var_1 = Struct_4(Struct_2(select(vec4<i32>(firstTrailingBit(arg_1.b.x), _wgslsmith_mod_i32(-3804i, arg_1.b.x), arg_1.b.x, -14412i), ~select(vec4<i32>(13779i, -6435i, var_0, 51825i), vec4<i32>(arg_0.b.x, -2147483647i, var_0, u_input.a), arg_0.a), true)));
    var_1 = Struct_4(var_1.a);
    let var_2 = arg_1.a | !(!any(vec4<bool>(true, arg_0.a, arg_2, true)));
    var_1 = Struct_4(Struct_2(vec4<i32>(~(~var_0), (arg_0.b.x ^ -16583i) | ~arg_0.b.x, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a.x, var_0, -2147483647i, u_input.a), vec4<i32>(u_input.a, 1i, 4565i, var_0)))));
    return max(-(~vec4<i32>(u_input.a, 37323i, var_1.a.a.x, var_0) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, 48228u, 11144u), vec4<u32>(1u, 4294967295u, u_input.b.x, 24998u)) % vec4<u32>(32u))), vec4<i32>(1i << (reverseBits(_wgslsmith_mod_u32(0u, u_input.b.x)) % 32u), abs(-1i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, ~var_1.a.a.x), (arg_0.b.x | arg_0.b.x) & -28421i, arg_0.b.x), ~arg_0.b.x << (firstTrailingBit(1u) % 32u)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.b.x), u_input.b.x, u_input.b.x), ~(countOneBits(vec3<u32>(1u, u_input.b.x, 1u)) >> (vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b)) % vec3<u32>(32u))));
    var var_1 = false;
    var var_2 = Struct_2(firstLeadingBit(select(func_3(Struct_1(false, vec3<i32>(20978i, 2507i, 2147483647i), vec3<u32>(27208u, 0u, u_input.b.x), var_0.x), Struct_1(false, vec3<i32>(u_input.a, u_input.a, 45487i), vec3<u32>(0u, u_input.b.x, 17579u), 8801u), true), _wgslsmith_mod_vec4_i32(vec4<i32>(38810i, u_input.a, 1i, 37631i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a) | vec4<i32>(1i, u_input.a, 0i, -16241i)), any(vec2<bool>(false, true)) | any(vec3<bool>(true, true, false)))));
    var_2 = Struct_2(abs(select(vec4<i32>(u_input.a, var_2.a.x, 6348i, u_input.a) ^ vec4<i32>(38502i, 19707i, -9287i, var_2.a.x), vec4<i32>(-2147483647i >> (1u % 32u), ~2147483647i, _wgslsmith_dot_vec3_i32(var_2.a.xxx, var_2.a.zyw), u_input.a), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, false, true), true))));
    let var_3 = Struct_4(Struct_2(_wgslsmith_sub_vec4_i32(var_2.a, var_2.a)));
    return Struct_2(vec4<i32>(_wgslsmith_mod_i32(2147483647i, max(max(u_input.a, var_3.a.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(6301i, u_input.a, -41215i), var_3.a.a.zxz))), var_3.a.a.x, ~23295i << ((_wgslsmith_dot_vec3_u32(var_0, var_0) & 0u) % 32u), -42454i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f - -452f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(433f * 1196f))))));
    let var_1 = var_0;
    let var_2 = any(vec2<bool>(true, true));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, -1786f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, -1562f)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(778f, var_0)), -216f)));
    return max(~_wgslsmith_add_u32(81538u, u_input.b.x << (~u_input.b.x % 32u)), 1u);
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<u32>(4294967295u, func_4(func_2(), Struct_3(-35900i), -1i));
    var var_1 = vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), !(abs(var_0.x) > select(~1u, u_input.b.x, true)));
    var_1 = select(select(vec2<bool>(var_1.x && all(vec2<bool>(var_1.x, true)), !var_1.x), !select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_1.x, false))), !vec2<bool>(false, var_1.x)), !(!select(select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(false, true)), vec2<bool>(false, var_1.x), select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), var_1.x))), false);
    var_1 = select(!(!vec2<bool>(true, var_1.x)), vec2<bool>(true, -firstTrailingBit(1i) < ~u_input.a), vec2<bool>(var_1.x, all(!(!vec2<bool>(var_1.x, var_1.x)))));
    var_1 = select(vec2<bool>(any(vec4<bool>(all(vec2<bool>(true, var_1.x)), true, true, true)), true), select(select(!(!vec2<bool>(var_1.x, true)), select(!vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, var_1.x), true), !(!vec2<bool>(var_1.x, true))), !select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x)), vec2<bool>(true, true), !vec2<bool>(false, var_1.x)), !(!(true & var_1.x))), vec2<bool>(false, false == all(vec2<bool>(var_1.x, true))));
    return Struct_3(-2147483647i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = 45424u;
    var_0 = 1u;
    var_0 = 55342u;
    var_0 = ~13873u;
    let var_1 = ~(~min(~(~vec4<u32>(u_input.b.x, arg_1.c.x, 1u, 57132u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d, u_input.b.x, 13437u, 457u), vec4<u32>(arg_1.c.x, u_input.b.x, u_input.b.x, u_input.b.x)) | (vec4<u32>(4294967295u, 25933u, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.b.x, 9313u, 0u, 56855u))));
    return max(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 15045u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(69324u, var_1.x, arg_1.d), u_input.b.x)), _wgslsmith_mod_vec4_u32(var_1, var_1)), ~var_1);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_4) -> StorageBuffer {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f + -231f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(105f, -352f))))) != _wgslsmith_f_op_f32(sign(1740f));
    var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(true, firstTrailingBit(arg_3.a.a.xyw), _wgslsmith_clamp_vec3_u32(vec3<u32>(~(12377u ^ arg_0.x), arg_2.x, u_input.b.x), abs(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_2.x), arg_0.ywx)), ~vec3<u32>(15087u, ~arg_2.x, 33524u)), 15620u);
    var var_2 = Struct_3(u_input.a);
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(abs(-950f))), _wgslsmith_f_op_f32(select(-691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), !(arg_2.x == arg_0.x))))), _wgslsmith_clamp_vec2_u32((_wgslsmith_div_vec2_u32(var_1.c.yy, vec2<u32>(arg_2.x, 72516u)) & (u_input.b & vec2<u32>(5401u, 0u))) << (vec2<u32>(arg_0.x, ~1u) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(~u_input.b, vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.x, u_input.b.x), vec2<u32>(0u, arg_2.x))), u_input.b), arg_0.x, abs(-var_1.b.xy), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1089f + -1075f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(max(-198f, -1437f))))), -952f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(min(~func_5(-vec3<i32>(2147483647i, u_input.a, 0i), Struct_1(false, vec3<i32>(u_input.a, 0i, 20668i), vec3<u32>(u_input.b.x, 50385u, u_input.b.x), 4294967295u), func_1()), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, ~1u), ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(32838u, 30084u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) | (u_input.b.x >> (49792u % 32u)), ~4294967295u)), Struct_4(func_2()), vec2<u32>(~15300u, firstTrailingBit(1u)), Struct_4(func_2()));
}

