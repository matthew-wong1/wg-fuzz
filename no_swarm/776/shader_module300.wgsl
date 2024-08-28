struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<f32>) -> i32 {
    return 0i;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    let var_0 = all(arg_1.a.wzx);
    var var_1 = true;
    let var_2 = 29684i;
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), -127f, -113f), vec4<i32>(~(-_wgslsmith_sub_i32(63520i, 2147483647i)), 33938i, max(var_2, 2147483647i), -1i), true);
    var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(337f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.a.x - -2582f))))), -vec4<i32>(_wgslsmith_mod_i32(var_3.b.x, ~u_input.e), arg_0.x >> (~0u % 32u), var_3.b.x | abs(var_3.b.x), -max(u_input.d.x, -12756i)), u_input.a.x < firstLeadingBit(1u));
    return vec4<bool>(any(vec3<bool>(all(select(vec4<bool>(var_3.c, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a, arg_1.a)), true, all(select(arg_1.a.xw, vec2<bool>(true, false), vec2<bool>(var_0, true))))), arg_1.a.x, any(select(arg_1.a.zzw, vec3<bool>(var_3.c | arg_1.a.x, true, all(vec2<bool>(var_0, arg_1.a.x))), !arg_1.a.xwz)), -max(_wgslsmith_sub_i32(2147483647i, u_input.e), arg_0.x) >= (-(var_3.b.x ^ -39978i) >> (1u % 32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(1498f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(816f * _wgslsmith_f_op_f32(-142f + -1000f)), -328f), -1770f)));
    let var_1 = select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>((~u_input.c.x >> ((u_input.a.x >> (1u % 32u)) % 32u)) < ~5000u, arg_2 == ~(~arg_0.x), true, true), !(!func_3(arg_0, Struct_1(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), 4294967295u), ~0i)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-658f - -1000f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -785f))), 574f, !(!var_1.x))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1454f * -1036f)), _wgslsmith_f_op_f32(f32(-1f) * -231f), 597f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1067f, 318f, -460f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, 111f, -382f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2425f, -820f, 1072f) - vec3<f32>(481f, -1411f, 893f)))))), firstLeadingBit(-abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 0i, arg_0.x, arg_2), vec4<i32>(-2147483647i, arg_2, arg_0.x, -1i), vec4<i32>(27436i, 2147483647i, -13828i, 2147483647i)))), var_1.x);
    let var_3 = arg_1.zy;
    return Struct_4(var_2, 68446u, ~vec2<i32>(arg_2, -arg_0.x) << (u_input.a.zz % vec2<u32>(32u)), Struct_1(var_1, ~(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(7037u, 1u, u_input.a.x)) ^ 1u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = ~(firstLeadingBit(select(-22898i, 1i, true)) << (min(4294967295u, (u_input.a.x & arg_0.d.b) | 2902u) % 32u));
    var var_1 = var_0;
    let var_2 = vec2<bool>(false, !select(all(arg_0.d.a), true, arg_0.d.a.x));
    var var_3 = arg_0.d.a.x;
    var_1 = -66977i;
    return arg_0.d.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-495f - -1000f), 680f, _wgslsmith_f_op_f32(-741f + -1316f)), vec3<f32>(-1000f, -1195f, -1528f))), ~vec4<i32>(u_input.e, 2147483647i, -1i, -2147483647i), true);
    var var_1 = func_1(1379f, select(!vec4<bool>(true, var_0.c, var_0.c, !var_0.c), vec4<bool>(!var_0.c && true, select(false, 612i != u_input.d.x, true | var_0.c), any(vec4<bool>(var_0.c, var_0.c, true, var_0.c)), false), !vec4<bool>(!var_0.c, any(vec2<bool>(true, true)), false, !var_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(666f - 399f), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * -1133f)) + _wgslsmith_f_op_vec3_f32(ceil(var_0.a))) - var_0.a));
    var_1 = var_0.b.x;
    var var_2 = all(select(!func_4(func_2(vec2<i32>(-2147483647i, var_0.b.x), vec3<bool>(false, false, true), var_0.b.x), func_2(u_input.d, vec3<bool>(var_0.c, false, var_0.c), u_input.e).d.a.xz), !func_2(vec2<i32>(1i, 9325i), !vec3<bool>(true, false, var_0.c), -u_input.b).d.a.zx, func_4(Struct_4(Struct_3(var_0.a, vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, var_0.b.x), false), u_input.c.x, _wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, var_0.b.x)), Struct_1(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), u_input.c.x)), vec2<bool>(all(vec2<bool>(var_0.c, var_0.c)), !var_0.c))));
    let var_3 = Struct_1(func_3(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.d.x, -28421i), -37698i, func_2(u_input.d, vec3<bool>(true, var_0.c, true), u_input.e).a.b.x), var_0.b.x), Struct_1(!func_2(vec2<i32>(-36398i, u_input.e), vec3<bool>(true, false, var_0.c), var_0.b.x).d.a, u_input.c.x), ~func_2(firstTrailingBit(u_input.d), func_3(vec2<i32>(25412i, 2147483647i), Struct_1(vec4<bool>(true, true, var_0.c, false), 1u), -1i).wwy, _wgslsmith_add_i32(-1i, var_0.b.x)).a.b.x), max(_wgslsmith_add_u32(~(0u >> (u_input.a.x % 32u)), ~(~46913u)), ~(u_input.a.x << (4309u % 32u))));
    let var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-var_0.b.xy), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, var_0.b.x), -var_0.b.x, -2147483647i >> (u_input.c.x % 32u)), select(-1i | var_0.b.x, u_input.e, true), var_0.b.x, max(1i, u_input.d.x & var_0.b.x)), var_0.b));
}

