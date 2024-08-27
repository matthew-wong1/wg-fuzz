struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    var var_0 = 1f;
    var var_1 = ~(-select(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, 6197i), vec3<i32>(arg_0.a.a.x, -4130i, u_input.b.x)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b.x), vec3<i32>(20851i, arg_0.a.c.x, 1i)), vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, -2147483647i), arg_1), arg_0.a.b.x));
    var var_2 = true;
    let var_3 = Struct_4(Struct_1(select(vec4<i32>(arg_0.a.c.x, arg_0.a.c.x, u_input.a, var_1.x) | ~vec4<i32>(var_1.x, u_input.b.x, -66789i, -5496i), arg_0.a.a << (~vec4<u32>(u_input.c.x, 2217u, u_input.d.x, 0u) % vec4<u32>(32u)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(false, false, arg_0.a.b.x, true)), vec4<bool>(false, arg_1.x, arg_0.a.b.x, false), true)), select(!select(vec3<bool>(arg_1.x, true, false), vec3<bool>(true, arg_1.x, arg_0.a.b.x), vec3<bool>(true, arg_1.x, false)), !vec3<bool>(arg_1.x, arg_1.x, false), arg_0.a.b.x), vec2<i32>(104780i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, -2147483647i, var_1.x), vec3<i32>(-1i, u_input.a, -15913i)), reverseBits(arg_0.a.a.xxy)))), arg_0);
    var var_4 = !vec2<bool>(var_3.b.a.b.x, select(true, true, true));
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<bool>(false, func_3(Struct_2(Struct_1(-vec4<i32>(-12148i, u_input.a, -1i, u_input.a), vec3<bool>(true, arg_0.b.x, true), ~u_input.b)), select(!select(vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(arg_0.b.x, arg_0.b.x, false)), vec3<bool>(!arg_0.b.x, true, !arg_0.b.x), select(!vec3<bool>(false, arg_0.b.x, false), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, false)), !vec3<bool>(true, false, arg_0.b.x)))), true, arg_0.b.x);
    var var_1 = Struct_1(min(max(firstTrailingBit(vec4<i32>(u_input.b.x, 0i, 0i, arg_2)), abs(vec4<i32>(arg_2, 1i, u_input.a, arg_2))) >> (vec4<u32>(~74870u, _wgslsmith_clamp_u32(u_input.c.x, 55090u, arg_0.a.x), ~arg_0.a.x, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)) % vec4<u32>(32u)), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 37979i, u_input.b.x, u_input.a)), firstLeadingBit(vec4<i32>(u_input.b.x, arg_2, arg_2, u_input.b.x))), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -31253i), vec2<i32>(8250i, 0i)) | arg_2)), select(vec3<bool>(true, true, true), vec3<bool>(func_3(Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, -17927i, 1i), vec3<bool>(true, true, var_0.x), u_input.b)), var_0.xzx), arg_1.x <= _wgslsmith_div_f32(-1799f, 1000f), true), true), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b));
    var var_2 = arg_0;
    var var_3 = abs(arg_2);
    var var_4 = Struct_4(Struct_1(vec4<i32>(min(~arg_2, arg_2), -(i32(-1i) * -69164i), -countOneBits(9152i), _wgslsmith_div_i32(u_input.b.x, -2147483647i)), select(vec3<bool>(all(arg_0.b), all(var_1.b), true), select(vec3<bool>(true, var_2.b.x, false), vec3<bool>(var_0.x, var_2.b.x, true), select(false, false, var_0.x)), arg_0.b.x), vec2<i32>(var_1.c.x, _wgslsmith_mod_i32(-4397i, max(-1i, var_1.a.x)))), Struct_2(Struct_1(~var_1.a, select(!var_0.xxx, select(vec3<bool>(true, var_1.b.x, false), vec3<bool>(arg_0.b.x, arg_0.b.x, false), false), var_0.wzy), vec2<i32>(1i, 1i))));
    return Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 21109i, var_4.a.c.x, var_1.a.x), var_4.a.a) >> (~(~firstTrailingBit(vec4<u32>(8700u, var_2.a.x, 51890u, 17362u))) % vec4<u32>(32u)), select(select(select(!var_0.xxz, var_4.a.b, true), vec3<bool>(false, true, false), ~u_input.a >= -1i), select(var_0.yxx, vec3<bool>(any(vec4<bool>(arg_0.b.x, var_0.x, arg_0.b.x, var_1.b.x)), all(vec2<bool>(arg_0.b.x, arg_0.b.x)), !var_0.x), var_1.b), select(func_3(Struct_2(var_4.a), var_0.wyz), false, false)), vec2<i32>(abs(var_4.b.a.a.x), arg_2));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2719f, -905f)) * _wgslsmith_f_op_f32(round(674f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1647f) + _wgslsmith_f_op_f32(f32(-1f) * -1325f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1219f, -1050f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-371f, -538f, var_0.x, var_0.x) - vec4<f32>(-480f, 1576f, 763f, -1000f)))))));
    let var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, 0u) | u_input.d.x, ~select(u_input.c.x, arg_3.a.x, arg_1.a.b.x) | ~0u, 1u));
    let var_2 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(~u_input.b), vec2<i32>(arg_1.a.c.x, 1i)), u_input.b);
    let var_3 = arg_1;
    return func_2(arg_3, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-415f)), var_0.x)), -765f), u_input.a <= -(~u_input.b.x))), -2147483647i);
}

fn func_1() -> f32 {
    var var_0 = Struct_4(func_4(Struct_2(func_2(Struct_3(u_input.c, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-312f, 762f))), _wgslsmith_mult_i32(u_input.b.x, -62993i))), Struct_2(Struct_1(-vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec3<bool>(true, true, true), u_input.b)), vec4<bool>(!any(vec2<bool>(true, true)), func_2(Struct_3(u_input.d.yy, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, 2310f)), 15102i).b.x, true, false), Struct_3(~abs(vec2<u32>(283u, u_input.c.x)), vec2<bool>(u_input.d.x <= 14168u, any(vec3<bool>(false, true, false))))), Struct_2(Struct_1(func_2(Struct_3(u_input.d.xz, vec2<bool>(true, false)), vec2<f32>(-411f, -516f), u_input.b.x).a >> (~vec4<u32>(44374u, u_input.c.x, 0u, u_input.d.x) % vec4<u32>(32u)), vec3<bool>(false, any(vec3<bool>(false, false, false)), all(vec2<bool>(false, false))), vec2<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, 12i)))));
    var_0 = Struct_4(var_0.b.a, Struct_2(Struct_1(vec4<i32>(var_0.b.a.a.x ^ -20143i, func_4(var_0.b, var_0.b, vec4<bool>(false, var_0.b.a.b.x, var_0.b.a.b.x, var_0.b.a.b.x), Struct_3(vec2<u32>(u_input.d.x, 23745u), vec2<bool>(true, true))).c.x, 1i, _wgslsmith_dot_vec3_i32(var_0.a.a.wwy, vec3<i32>(-1i, var_0.b.a.a.x, -2147483647i))), select(!var_0.a.b, vec3<bool>(true, false, var_0.a.b.x), vec3<bool>(false, var_0.b.a.b.x, var_0.b.a.b.x)), countOneBits(vec2<i32>(2893i, 32956i)))));
    var var_1 = u_input.d.x;
    let var_2 = Struct_4(Struct_1(vec4<i32>(-select(0i, -1i, true), select(u_input.b.x, 2147483647i, var_0.a.b.x), u_input.b.x, _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), vec3<bool>(!all(vec4<bool>(false, true, var_0.a.b.x, var_0.a.b.x)), false, !(!var_0.b.a.b.x)), _wgslsmith_mult_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(select(vec2<i32>(0i, var_0.b.a.c.x), vec2<i32>(var_0.b.a.c.x, 1i), vec2<bool>(var_0.b.a.b.x, var_0.b.a.b.x)), _wgslsmith_div_vec2_i32(var_0.a.a.zz, var_0.a.c)))), Struct_2(var_0.a));
    var var_3 = vec3<i32>(-1i) * -var_0.a.a.zwy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(trunc(-694f))) - _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(floor(1542f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(836f, -688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(floor(-112f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) + -1000f)));
    let var_2 = 14546i;
    var var_3 = vec3<f32>(-811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)))) * var_0.x), -614f);
    let var_4 = min(-_wgslsmith_mult_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, var_2, u_input.a), vec4<i32>(var_2, u_input.a, var_2, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 33113i, u_input.a, -1i) >> (vec4<u32>(8343u, u_input.d.x, 0u, 82017u) % vec4<u32>(32u)), vec4<i32>(0i, u_input.b.x, var_2, var_2) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x))), -(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(2147483647i, -5992i, var_2, -13467i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, 1i), -_wgslsmith_dot_vec4_i32(var_4, vec4<i32>(0i, 719i, -12563i, -1i)) >> (~(u_input.c.x << (11326u % 32u)) % 32u)), 58062u);
}

