struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_1(~(~(~u_input.a.x >> (~1u % 32u))), vec3<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(min(4294967295u & u_input.a.x, reverseBits(1u)), max(u_input.a.x, 0u << (u_input.a.x % 32u))), (~u_input.a.x >> (u_input.a.x % 32u)) ^ firstLeadingBit(u_input.a.x)));
    let var_1 = Struct_1(~0u, _wgslsmith_clamp_vec3_u32(select(u_input.a.yxz, ~abs(var_0.b), vec3<bool>(true, true, true)), abs(vec3<u32>(77827u, _wgslsmith_clamp_u32(var_0.a, 0u, 15940u), ~4294967295u)), u_input.a.wxz));
    var var_2 = !(!(!vec4<bool>(1u == var_1.a, true, true, arg_0 > -1000f)));
    let var_3 = var_2.x;
    var var_4 = var_0.b.x;
    return ~(var_0.b.x & ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b, vec3<u32>(var_1.b.x, u_input.a.x, 1u)), abs(vec3<u32>(57251u, var_1.a, 45330u))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(u_input.a.xz), vec2<u32>(u_input.a.x, 42732u) << (vec2<u32>(55051u, 0u) % vec2<u32>(32u)), u_input.a.xx), u_input.a.zz), _wgslsmith_dot_vec3_u32(u_input.a.zzz, firstTrailingBit(u_input.a.zyy & u_input.a.wyy))), u_input.a.x, u_input.a.x);
    var_0 = _wgslsmith_div_vec3_u32(u_input.a.xyx, vec3<u32>(~u_input.a.x, ~(~(~14947u)), ~(_wgslsmith_mod_u32(1u, 2556u) >> ((0u >> (var_0.x % 32u)) % 32u))));
    let var_1 = u_input.d << (func_3(1f) % 32u);
    var var_2 = _wgslsmith_div_u32(4294967295u, ~1184u);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f * -1000f)), _wgslsmith_f_op_f32(select(-914f, _wgslsmith_f_op_f32(min(-1434f, -1489f)), false)))));
    return Struct_1(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_div_u32(~u_input.a.x, ~69791u)) >> (var_0.x % 32u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, firstLeadingBit(var_0.x) >> (1u % 32u)), vec3<u32>(0u, ~0u, u_input.a.x)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = (~abs(func_2().a) | u_input.a.x) & 4294967295u;
    var_0 = ~(~0u);
    var var_1 = arg_0.a;
    var var_2 = min(var_1.b.xz, var_1.b.zy | ~(~select(arg_0.a.b.zy, u_input.a.yy, false)));
    let var_3 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1.a > 1452f), vec2<bool>(all(vec3<bool>(false, true, true)), arg_1.a >= _wgslsmith_f_op_f32(sign(1788f))), vec2<bool>(true, true)));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 31117i;
    var var_1 = vec3<u32>(1u >> (firstLeadingBit(~firstTrailingBit(1u)) % 32u), 7314u << (min(u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_mult_u32(0u, u_input.a.x), u_input.a.x)) % 32u), ~_wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 57560u))));
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(0u, ~11757u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, var_1.x), firstTrailingBit(vec2<u32>(var_1.x, 39605u))), ~var_1.x)), u_input.a.zxy);
    var var_2 = true;
    var_2 = !(!any(vec4<bool>(any(vec3<bool>(false, false, true)), false, true, all(vec3<bool>(true, true, false)))));
    var var_3 = abs(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(1u, countOneBits(1u), var_1.x)), vec3<u32>(35429u, var_1.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-572f, -256f))), 1322f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 586f) + 1296f), _wgslsmith_f_op_f32(-294f * -956f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2310f + -551f) * -1084f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f * -419f))))), ~var_3.x, 338f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(func_1(var_0), _wgslsmith_sub_i32(-27920i, u_input.c)), Struct_3(_wgslsmith_f_op_f32(select(-425f, -719f, true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-853f, -1137f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-368f, 485f), vec2<f32>(508f, -434f)))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) && all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), _wgslsmith_mod_i32(firstLeadingBit(~2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(26205i >> (var_1.x % 32u), ~var_0, _wgslsmith_div_i32(var_0, -2147483647i)), select(max(vec3<i32>(78770i, 1i, var_0), vec3<i32>(2147483647i, var_0, u_input.b)), vec3<i32>(u_input.d, var_0, 17366i) >> (u_input.a.zxw % vec3<u32>(32u)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)))));
}

