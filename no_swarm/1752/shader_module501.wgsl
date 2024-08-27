struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(~firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.d, u_input.c, u_input.c))), Struct_1(u_input.a & vec3<i32>(u_input.a.x, -37841i, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, ~(-1i)), -min(u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(reverseBits(u_input.a), u_input.a << (vec3<u32>(u_input.b.x, u_input.d, 0u) % vec3<u32>(32u))))), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, min(-11000i, u_input.a.x), 1i), vec3<i32>(u_input.a.x, u_input.a.x, -u_input.a.x)), min(0i, 2147483647i), u_input.a, u_input.a));
    let var_1 = Struct_1(vec3<i32>(~_wgslsmith_add_i32(-var_0.b.c.x, u_input.a.x), u_input.a.x, countOneBits(23759i)), -2147483647i, _wgslsmith_div_vec3_i32(~abs(-vec3<i32>(-2147483647i, 2147483647i, u_input.a.x)), vec3<i32>(select(-var_0.a.b.a.x, 58255i, false), -1056i, -31507i)), firstTrailingBit(u_input.a));
    var var_2 = var_1;
    var_2 = var_0.b;
    var_2 = Struct_1(vec3<i32>(firstTrailingBit(2147483647i), var_0.b.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(9862i | var_0.b.d.x, _wgslsmith_mod_i32(u_input.a.x, 1i), 37475i), vec3<i32>(23788i, firstLeadingBit(var_2.a.x), u_input.a.x))), 1i, vec3<i32>(62039i, -1i, var_0.a.b.a.x & var_2.a.x), vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, u_input.a.x, var_1.b, 69794i), vec4<i32>(var_2.a.x, u_input.a.x, -35935i, u_input.a.x)), max(0i, u_input.a.x)), vec4<i32>(select(var_0.b.d.x, -2147483647i, true), i32(-1i) * -14722i, -var_2.a.x, -4333i)), var_1.b));
    return select(select(vec3<bool>(false, any(vec2<bool>(true, true)), false), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), all(vec2<bool>(true, true))), vec3<bool>(true, false, true)), !vec3<bool>(all(vec3<bool>(true, true, true)), true, 21964u < u_input.b.x)), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), vec3<bool>(any(vec4<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true, false)), false, true));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> vec2<bool> {
    var var_0 = all(select(func_3(), select(!(!vec3<bool>(arg_1, arg_0.x, true)), !vec3<bool>(true, arg_0.x, false), true), true));
    var_0 = false;
    var var_1 = Struct_2(vec3<u32>(u_input.d, _wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(u_input.d, 14434u)), min(_wgslsmith_add_u32(u_input.c, 1u), u_input.d | u_input.e.x), 1u), ~(~0u)), Struct_1(firstLeadingBit(u_input.a), -36255i, vec3<i32>(firstTrailingBit(~(-35040i)), -29970i, firstLeadingBit(u_input.a.x)), vec3<i32>(u_input.a.x, 0i, ~_wgslsmith_add_i32(29052i, -24579i))));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(459f + -1760f), -210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-751f)) * _wgslsmith_f_op_f32(f32(-1f) * -1095f)))));
    return select(select(arg_0, vec2<bool>(false | arg_1, arg_1), vec2<bool>(all(arg_0), !arg_1 || !arg_1)), vec2<bool>(false, false), vec2<bool>(_wgslsmith_f_op_f32(sign(-347f)) >= _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x - var_2.x)), false || all(select(arg_0, arg_0, false))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    let var_0 = all(select(vec4<bool>(all(vec3<bool>(true, true, true)), true, any(func_2(vec2<bool>(false, false), true)), func_3().x), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), arg_1 == arg_1)), false));
    var var_1 = Struct_2(min(_wgslsmith_add_vec3_u32(min(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, u_input.e.yyy), u_input.e.yzz), select(vec3<u32>(arg_1, u_input.e.x, arg_1), vec3<u32>(25976u, 4294967295u, u_input.c) | u_input.b, func_3())), vec3<u32>(arg_1, reverseBits(4294967295u), 77311u)), Struct_1(abs(u_input.a), 2147483647i, countOneBits(firstTrailingBit(u_input.a)), vec3<i32>(abs(2147483647i), u_input.a.x, arg_0)));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(2147483647i), -1i, _wgslsmith_add_i32(~1i, _wgslsmith_clamp_i32(24246i, arg_0, arg_0))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -u_input.a, u_input.a)), (-u_input.a.x << (firstTrailingBit(~15666u) % 32u)) & u_input.a.x);
    var_1 = Struct_2(firstLeadingBit(_wgslsmith_add_vec3_u32(max(vec3<u32>(44411u, 1u, u_input.b.x), vec3<u32>(arg_1, arg_1, 35994u)) | vec3<u32>(arg_1, var_1.a.x, var_1.a.x), select(vec3<u32>(u_input.d, 4294967295u, 4294967295u) | vec3<u32>(arg_1, arg_1, 36594u), var_1.a, false))), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(1i & var_1.b.d.x, var_2, 0i), countOneBits(-vec3<i32>(arg_0, -2147483647i, var_2))), _wgslsmith_add_i32(arg_0, -2147483647i) ^ arg_0, vec3<i32>(14735i, -25351i, -1i), vec3<i32>(abs(-2147483647i), (var_2 >> (3780u % 32u)) | abs(var_1.b.c.x), u_input.a.x)));
    let var_3 = Struct_2(select(abs(~vec3<u32>(var_1.a.x, 4294967295u, 12624u)), u_input.b, vec3<bool>(true, false, true)) & select(_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.c, 28765u, 38982u), vec3<u32>(arg_1, var_1.a.x, 88462u)), u_input.b), ~min(vec3<u32>(4294967295u, arg_1, 4294967295u), u_input.b), !vec3<bool>(var_0, true, var_0)), var_1.b);
    return Struct_2(select(~(~var_3.a), vec3<u32>(u_input.d & 13896u, 1u, ~var_3.a.x), vec3<bool>(var_0, !var_0, !var_0)) ^ var_3.a, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(-2147483647i, max(-23043i >> (select(11455u, u_input.c, true) % 32u), u_input.a.x), !(!(u_input.a.x < u_input.a.x))), u_input.b.x);
    var var_1 = ~(~(~var_0.a.x));
    let var_2 = (var_0.b.b & func_1(30103i, ~1u).b.d.x) < ~_wgslsmith_mult_i32(abs(i32(-1i) * -1i), select(36520i >> (var_0.a.x % 32u), _wgslsmith_mult_i32(u_input.a.x, var_0.b.c.x), u_input.e.x <= var_0.a.x));
    let var_3 = vec3<bool>(var_2, !var_2, var_2);
    var var_4 = _wgslsmith_mult_u32(u_input.c & 4294967295u, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-43377i, var_0.b.d.x, func_1(_wgslsmith_add_i32(0i, -var_0.b.d.x), 875u).b.a.x, ~1i), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), var_0.b.d.zz, var_0.b.d.zx);
}

