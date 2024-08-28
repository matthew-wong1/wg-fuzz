struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = 21962i;
    let var_1 = !(!vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), any(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.b.c, _wgslsmith_f_op_f32(arg_0.b.c - 316f))))), _wgslsmith_f_op_f32(f32(-1f) * -1479f), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c) + _wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.c, arg_1.a.x, -441f, arg_2.b.c)))))));
    var_0 = -1i;
    let var_3 = 64080u;
    return -1000f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-900f, -1677f, -844f, -898f), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.d), -20213i, -836f)), Struct_2(vec4<f32>(1141f, 517f, 681f, -1432f), Struct_1(vec3<i32>(2147483647i, u_input.b.x, 48897i), u_input.b.x, 493f)), Struct_2(vec4<f32>(-665f, -419f, 773f, 237f), Struct_1(vec3<i32>(u_input.b.x, -24926i, 2147483647i), 1i, 819f)))) - _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-3041f, 306f, -743f, -1263f), Struct_1(vec3<i32>(1i, 21131i, u_input.d), u_input.b.x, 343f)), Struct_2(vec4<f32>(1566f, -582f, 885f, -189f), Struct_1(vec3<i32>(-2147483647i, u_input.d, 52121i), 1i, -309f)), Struct_2(vec4<f32>(-937f, -173f, 1000f, 392f), Struct_1(vec3<i32>(24497i, -8569i, -8747i), u_input.d, -376f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1173f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1367f)), _wgslsmith_f_op_f32(abs(1147f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1439f + -1373f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1393f, -877f, 935f, 1077f)))))), Struct_1(-(_wgslsmith_div_vec3_i32(vec3<i32>(-23705i, u_input.b.x, 0i), vec3<i32>(0i, 46835i, u_input.b.x)) & firstLeadingBit(vec3<i32>(u_input.b.x, 64047i, u_input.b.x))), ~(-(~u_input.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(583f))))));
    var var_1 = select(vec2<bool>(false, -1131f >= _wgslsmith_f_op_f32(abs(var_0.b.c))), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) && any(vec2<bool>(false, true)), select(true, true, false) || (~u_input.c.x <= select(58587u, 4294967295u, false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 1081f, _wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(-2142f * 996f)) * _wgslsmith_f_op_vec4_f32(-var_0.a)) - var_0.a) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.c, 402f, 1350f, var_0.b.c))), var_0.a, vec4<bool>(false | var_1.x, true, var_1.x, any(vec3<bool>(var_1.x, false, var_1.x))))))));
    let var_3 = u_input.c.x;
    let var_4 = var_3;
    return var_0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.b;
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-10060i, -1i, -6451i, arg_1.b.a.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.b.a.x, arg_0, arg_1.b.a.x, -1i), vec4<i32>(arg_0, -1i, arg_0, -2147483647i)))), ~(~max(vec4<i32>(arg_0, u_input.b.x, 1i, 0i), vec4<i32>(2147483647i, -1i, 2147483647i, u_input.d)) | ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 17656i, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, arg_1.b.a.x, var_0.b))));
    return func_2();
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.a;
    var_0 = firstLeadingBit(select(min(u_input.a, vec3<u32>(u_input.c.x, 1u, 58543u) << (u_input.a % vec3<u32>(32u))), ~u_input.a, vec3<bool>(true, true, true)));
    let var_1 = func_4((-(arg_0 & 0i) & -_wgslsmith_div_i32(2147483647i, arg_0)) | 14469i, Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(arg_1.b.c, arg_1.b.c, arg_1.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1091f))), func_2()));
    var_0 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - arg_1.a.x) * var_1.c);
    return 0u << (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(855f)) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-227f, -1056f) - _wgslsmith_f_op_f32(1071f + -790f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(-1000f + -558f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(868f - 382f) * 372f))), Struct_1(vec3<i32>(~(i32(-1i) * -36751i), -(u_input.b.x ^ u_input.d), u_input.b.x), firstLeadingBit(~abs(u_input.b.x)), -923f));
    var var_1 = var_0;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.c, _wgslsmith_f_op_f32(max(-1547f, _wgslsmith_f_op_f32(var_0.b.c - 727f))), -878f, var_1.a.x))), Struct_1(var_0.b.a, select(~var_1.b.b, ~firstLeadingBit(0i), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.c))))));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(~47740u >> (_wgslsmith_clamp_u32(~1u, ~4294967295u, ~u_input.c.x) % 32u), ~9977u | u_input.a.x), _wgslsmith_sub_u32(func_1(abs(_wgslsmith_sub_i32(0i, -2147483647i)), var_0), 1u));
    var var_3 = Struct_1(~_wgslsmith_sub_vec3_i32(~(-vec3<i32>(-49658i, var_0.b.b, 2147483647i)), _wgslsmith_mod_vec3_i32(var_1.b.a << (vec3<u32>(23890u, 17172u, 77605u) % vec3<u32>(32u)), var_0.b.a)), -59492i, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_3.a.x, -var_1.b.a.yy);
}

