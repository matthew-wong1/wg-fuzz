struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-316f, -502f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(-1i);
    let var_1 = _wgslsmith_clamp_i32(-1i, -(i32(-1i) * -(~(-22314i))), abs(reverseBits(_wgslsmith_mult_i32(u_input.c.x, -9085i)) ^ reverseBits(_wgslsmith_mod_i32(-23517i, var_0.a))));
    let var_2 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 448f))), vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), -1000f), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, all(vec3<bool>(false, true, true)), true)))));
    var var_3 = vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1090f)))), _wgslsmith_f_op_f32(-617f * _wgslsmith_f_op_f32(round(-791f))));
    return _wgslsmith_f_op_f32(max(-1063f, 1000f));
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(func_3())));
    let var_0 = vec4<bool>(true, all(vec4<bool>(true, true, (u_input.c.x | -96913i) > 68488i, true)), !(!(true != any(vec3<bool>(false, false, true)))), true);
    var var_1 = var_0;
    let var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -1177f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-770f)), 230f))))));
    return _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.b, -586i) | firstTrailingBit(vec4<i32>(0i, u_input.b, -2147483647i, 6291i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, -1i), vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.b), vec4<i32>(1i, u_input.d, -1i, -27998i)), vec4<i32>(u_input.b, -2147483647i, u_input.c.x, u_input.b) << (vec4<u32>(81437u, 44580u, 71802u, u_input.a.x) % vec4<u32>(32u)))), vec4<i32>(24367i, -u_input.c.x, -countOneBits(-u_input.d), u_input.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_3())), vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0.x)), !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))))));
    let var_0 = select(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, true))), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(u_input.e.x == u_input.e.x, true, false), true)), true);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x - 1679f), _wgslsmith_f_op_f32(trunc(global0.x)));
    var var_1 = Struct_1(arg_1.a);
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<f32> {
    global0 = vec2<f32>(global0.x, _wgslsmith_div_f32(global0.x, -1000f));
    var var_0 = Struct_1(~_wgslsmith_clamp_i32(~firstTrailingBit(u_input.b), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.b), 2147483647i));
    var_0 = func_4(vec4<i32>(-1i) * -(func_2() & _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, u_input.d, 6810i, arg_0.a), vec4<i32>(arg_0.a, -15912i, u_input.b, arg_0.a))), arg_0);
    var_0 = func_4(-_wgslsmith_mult_vec4_i32(vec4<i32>(max(u_input.b, -23092i), func_2().x, _wgslsmith_mult_i32(-9289i, arg_0.a), _wgslsmith_div_i32(2147483647i, arg_0.a)), abs(vec4<i32>(var_0.a, u_input.d, 6333i, arg_0.a))), Struct_1(-func_4(firstTrailingBit(vec4<i32>(var_0.a, arg_0.a, 1i, arg_0.a)), Struct_1(var_0.a)).a));
    var_0 = arg_0;
    return vec2<f32>(-578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 24086i;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1355f, global0.x), vec2<f32>(880f, -918f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1046f) - vec2<f32>(global0.x, global0.x)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-553f, 107f) * vec2<f32>(global0.x, -1526f))))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-430f, global0.x), vec2<f32>(global0.x, -1269f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + _wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_0), u_input.e)))))));
    let var_1 = func_4(vec4<i32>(~(~var_0), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0, var_0, var_0, u_input.d)), countOneBits(vec4<i32>(-45013i, 0i, -1i, 1i) | vec4<i32>(u_input.b, -24241i, -28631i, -10579i))), var_0, 32971i), Struct_1(u_input.d));
    let var_2 = vec4<u32>(~24827u, select(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x), firstLeadingBit(firstTrailingBit(u_input.a.x))), u_input.e.x, all(vec3<bool>(true, true, true))), ~u_input.a.x | _wgslsmith_div_u32(_wgslsmith_sub_u32(64355u, firstTrailingBit(4294967295u)), u_input.a.x ^ ~15216u), abs(0u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(416f, 600f) + vec2<f32>(1000f, -177f)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_vec2_f32(func_1(var_1, u_input.a)).x))));
    var var_3 = u_input.d;
    var_3 = -1i;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_2.x, 1u), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -55904i, 0i, abs(var_0)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.d, -4223i, -12622i), vec4<i32>(-13675i, -1i, var_0, -2147483647i)), vec4<i32>(1i, u_input.c.x, 40508i, 2147483647i), select(vec4<bool>(true, false, var_4, var_4), vec4<bool>(var_4, var_4, var_4, true), vec4<bool>(false, var_4, false, false))), vec4<i32>(-1i, var_1.a, -5023i, var_0) | -vec4<i32>(u_input.c.x, -12070i, u_input.d, var_0)));
}

