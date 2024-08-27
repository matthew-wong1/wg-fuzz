struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = ~(vec2<u32>(countOneBits(arg_1.a), min(13517u, 39341u)) ^ select(~vec2<u32>(arg_0, arg_1.a), ~vec2<u32>(26955u, 86608u), any(vec3<bool>(true, false, true)))) | ~abs(vec2<u32>(abs(arg_1.a), 48247u));
    var_0 = firstTrailingBit(vec2<u32>(arg_1.a, arg_0));
    var var_1 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(-559f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(505f * 408f)))) > -1521f);
    var_0 = abs(firstTrailingBit(~max(vec2<u32>(50621u, 1u) & vec2<u32>(11625u, var_0.x), vec2<u32>(arg_0, var_0.x))));
    var var_2 = false;
    return !vec2<bool>(select(false, var_1.x, true), false);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(select(_wgslsmith_div_u32(73812u, 1u), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(44473u, 1u, 60019u, 0u), vec4<u32>(12094u, 2694u, 142627u, 1u)) & 1u), false));
    let var_1 = !(!func_3(var_0.a, Struct_1(abs(4294967295u)), min(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, 0i), vec2<i32>(1i, 1i))));
    var var_2 = ~_wgslsmith_sub_u32(var_0.a, var_0.a);
    let var_3 = ~countOneBits(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(-94469i, u_input.a)), vec2<i32>(2147483647i, _wgslsmith_mult_i32(0i, u_input.a))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(8022u, var_0.a), vec2<u32>(var_0.a, var_0.a)) | (vec2<u32>(4294967295u, 38178u) >> (vec2<u32>(15976u, var_0.a) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_0.a, 46875u)), select(vec2<u32>(var_0.a, var_0.a), vec2<u32>(var_0.a, var_0.a) >> (vec2<u32>(1u, 35416u) % vec2<u32>(32u)), vec2<bool>(false, true)))));
    return Struct_2(Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(var_0.a | 72673u, 1u & var_0.a))), Struct_1(var_0.a), ~vec2<u32>(55155u, ~1u), func_3(~(~firstTrailingBit(0u)), Struct_1(firstTrailingBit(var_0.a) >> ((81533u ^ var_0.a) % 32u)), -(~var_3)), !(!(!(!vec3<bool>(true, var_1.x, false)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec3<u32>(5608u, firstTrailingBit(~(~(~arg_0.a.a))), firstLeadingBit(arg_0.a.a ^ _wgslsmith_sub_u32(~arg_0.a.a, arg_0.a.a)));
    let var_1 = -336f;
    var var_2 = func_2().a;
    var var_3 = -2147483647i;
    var_3 = max(_wgslsmith_dot_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(2147483647i, 2147483647i, u_input.a))), countOneBits(vec3<i32>(~(-1i), -u_input.a, i32(-1i) * -17699i))), ~(9303i ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(17959i, u_input.a, -2147483647i), vec3<i32>(u_input.a, 0i, 0i), true), -vec3<i32>(-2147483647i, u_input.a, u_input.a))));
    return arg_0;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_4(func_2());
    return func_4(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~firstLeadingBit(~(~27997u)));
    let var_1 = func_1(var_0.c.x).a;
    var_0 = func_4(Struct_2(Struct_1(max(min(var_1.a, var_1.a), ~var_1.a)), Struct_1(var_0.c.x), _wgslsmith_mult_vec2_u32(~(vec2<u32>(var_0.b.a, 1u) ^ var_0.c), min(countOneBits(var_0.c), _wgslsmith_div_vec2_u32(var_0.c, var_0.c))), !(!func_2().d), var_0.e));
    var_0 = func_4(func_4(func_2()));
    var_0 = Struct_2(func_2().b, var_0.b, ~_wgslsmith_mod_vec2_u32(var_0.c, select(var_0.c, var_0.c, false) ^ ~var_0.c), var_0.d, var_0.e);
    var_0 = Struct_2(var_1, var_0.a, min(var_0.c, _wgslsmith_clamp_vec2_u32(var_0.c, var_0.c, ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, var_0.b.a), vec2<u32>(0u, var_1.a)))), var_0.e.yx, var_0.e);
    var_0 = Struct_2(func_1(~var_1.a).a, func_2().a, func_4(func_4(Struct_2(Struct_1(4294967295u), Struct_1(var_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.c), vec2<bool>(var_0.e.x, var_0.e.x), vec3<bool>(true, true, true)))).c, !func_1(var_1.a).d, !(!var_0.e));
    var_0 = Struct_2(func_4(func_2()).b, var_1, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_1.a, 63447u), 8174u, 1u, min(46683u, var_1.a)), ~(~vec4<u32>(var_0.c.x, 45127u, var_0.a.a, var_0.b.a))), 1u), var_0.d, vec3<bool>(var_0.d.x, _wgslsmith_add_i32(reverseBits(u_input.a), abs(25974i)) >= 34850i, var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, -343f, 1905f, 1058f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(199f, 630f, 508f, 411f), vec4<f32>(1386f, -837f, -761f, -1000f))))), vec4<bool>(false, u_input.a > _wgslsmith_mod_i32(1i, u_input.a), ~var_0.c.x == firstLeadingBit(var_1.a), func_3(~var_1.a, Struct_1(11335u), _wgslsmith_mod_vec2_i32(vec2<i32>(-13279i, 23619i), vec2<i32>(2147483647i, u_input.a))).x))), select(~firstLeadingBit(~vec2<i32>(u_input.a, 0i)), abs(-vec2<i32>(-4367i, 24988i)) ^ (~vec2<i32>(0i, u_input.a) ^ ~vec2<i32>(u_input.a, u_input.a)), !func_4(Struct_2(var_1, var_1, var_0.c, vec2<bool>(var_0.d.x, true), var_0.e)).d), u_input.a, ~(~var_0.b.a));
}

