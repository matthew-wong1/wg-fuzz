struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec2<bool> {
    let var_0 = select(arg_1.e, arg_0, any(!vec4<bool>(arg_0.x, true, true, global0.x)) | !global0.x);
    global0 = select(var_0, arg_1.e, vec4<bool>(select(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(floor(arg_1.c.x)), true), !var_0.x, !arg_0.x, true));
    global0 = arg_0;
    var var_1 = arg_1;
    var var_2 = ~reverseBits(_wgslsmith_add_vec4_i32(firstLeadingBit(firstLeadingBit(u_input.a)), ~(u_input.a & vec4<i32>(1i, 1i, 8097i, u_input.b))));
    return select(select(!vec2<bool>(!var_1.e.x, true), arg_0.yz, !any(select(vec2<bool>(global0.x, false), vec2<bool>(arg_0.x, global0.x), vec2<bool>(global0.x, var_0.x)))), select(global0.xx, vec2<bool>(true, all(global0.xy)), global0.x), any(arg_1.e.xxw));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(8142i, -(~abs(arg_3.x))), arg_1.b, _wgslsmith_f_op_vec3_f32(round(arg_1.c)), -_wgslsmith_clamp_vec2_i32(arg_1.d, _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, -1i)), min(vec2<i32>(arg_3.x, 47471i), vec2<i32>(arg_1.a, arg_3.x))), select(u_input.a.xy, arg_1.d, func_3(vec4<bool>(global0.x, false, arg_1.e.x, false), Struct_1(-13829i, arg_2, arg_1.c, vec2<i32>(2147483647i, arg_3.x), arg_1.e), vec2<i32>(u_input.b, arg_3.x), 52889i))), vec4<bool>(!(!(!global0.x)), all(vec4<bool>(true, true, arg_1.e.x, global0.x)), true, true));
    let var_1 = Struct_1(u_input.b, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-788f, _wgslsmith_f_op_f32(trunc(102f)), -982f)))), _wgslsmith_sub_vec2_i32(-countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(9009i, arg_3.x), arg_1.d)), vec2<i32>(var_0.d.x, var_0.a)), !var_0.e);
    var var_2 = ~vec3<u32>(~(var_1.b ^ var_1.b) | (4294967295u << (~var_0.b % 32u)), 17288u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, var_1.b, 8632u) | vec3<u32>(4294967295u, 1u, 17034u), ~vec3<u32>(var_1.b, arg_1.b, var_0.b)), countOneBits(arg_2) & abs(0u)));
    global0 = vec4<bool>(true, arg_1.e.x, !(!any(select(var_0.e, vec4<bool>(true, true, true, false), var_1.e.x))), arg_1.c.x > -377f);
    let var_3 = var_0.e.x;
    return Struct_1(1i, _wgslsmith_mod_u32(min(_wgslsmith_div_u32(var_2.x, 0u), countOneBits(~var_2.x)), var_0.b), vec3<f32>(arg_0.x, -1108f, arg_0.x), ~(-arg_3), vec4<bool>(all(select(!var_0.e, select(vec4<bool>(var_1.e.x, arg_1.e.x, true, var_3), var_1.e, vec4<bool>(global0.x, true, var_3, false)), !var_3)), !arg_1.e.x, true, all(!arg_1.e)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = select(arg_2.e, !func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1143f, -975f), vec2<f32>(arg_0.c.x, arg_1.c.x))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1200f, arg_2.c.x)))), arg_2, 1u, arg_0.d).e, all(!func_3(select(vec4<bool>(true, global0.x, arg_1.e.x, false), arg_0.e, arg_1.e.x), arg_1, ~arg_2.d, -u_input.b)));
    global0 = select(arg_0.e, vec4<bool>(func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x - arg_0.c.x), arg_2.c.x), Struct_1(~0i, arg_0.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c.x, arg_0.c.x, -1792f), vec3<f32>(-988f, arg_0.c.x, -2355f))), -vec2<i32>(arg_3.d.x, -5654i), !vec4<bool>(true, true, false, global0.x)), arg_0.b, ~vec2<i32>(arg_0.a, -62103i)).e.x, !all(vec2<bool>(arg_3.e.x, false)), false, global0.x), !arg_0.e);
    var var_0 = arg_1.c;
    global0 = arg_3.e;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.yx))) + _wgslsmith_f_op_vec2_f32(arg_2.c.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, 343f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_3.c.x) + var_0.xy))), arg_0.c.xx, arg_3.e.x))), func_2(_wgslsmith_f_op_vec2_f32(-func_2(arg_3.c.zx, Struct_1(arg_0.a, arg_1.b, arg_3.c, vec2<i32>(arg_0.a, 2147483647i), vec4<bool>(true, arg_0.e.x, false, global0.x)), ~4294967295u, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 1533i), arg_1.d)).c.yy), arg_0, ~20047u, vec2<i32>(arg_2.d.x << (_wgslsmith_sub_u32(36157u, arg_1.b) % 32u), func_2(vec2<f32>(arg_1.c.x, -1090f), Struct_1(arg_2.d.x, arg_1.b, arg_1.c, arg_0.d, vec4<bool>(false, true, true, arg_2.e.x)), 1u, arg_1.d | arg_0.d).a)), abs(select(~13357u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b, arg_2.b, arg_3.b, arg_0.b), vec4<u32>(arg_2.b, arg_3.b, 1u, 5262u)), ~vec4<u32>(arg_0.b, arg_1.b, 6090u, arg_3.b)), (arg_0.e.x & true) | (48894i > arg_0.d.x))), arg_2.d);
    return global0.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = !(!vec4<bool>(_wgslsmith_div_f32(arg_0, arg_0) > arg_0, true, func_4(func_2(vec2<f32>(arg_1, arg_0), Struct_1(-4477i, 1u, vec3<f32>(arg_1, arg_0, 188f), vec2<i32>(-17341i, 10029i), vec4<bool>(true, global0.x, true, global0.x)), 4294967295u, u_input.a.yz), Struct_1(-53245i, 20973u, vec3<f32>(arg_1, arg_0, 869f), arg_2.yz, vec4<bool>(global0.x, global0.x, true, true)), func_2(vec2<f32>(arg_1, -659f), Struct_1(-1i, 1u, vec3<f32>(-194f, arg_1, arg_1), u_input.a.zw, vec4<bool>(true, global0.x, true, global0.x)), 4294967295u, vec2<i32>(-26990i, arg_2.x)), Struct_1(-2281i, 4294967295u, vec3<f32>(arg_1, -466f, -1990f), vec2<i32>(-9174i, 52332i), vec4<bool>(global0.x, global0.x, false, global0.x))), global0.x));
    global0 = !select(!select(!vec4<bool>(false, true, global0.x, true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, true)), any(global0.yy)), !vec4<bool>(any(vec4<bool>(false, true, true, false)), func_4(Struct_1(0i, 0u, vec3<f32>(arg_0, 321f, -372f), arg_2.zx, vec4<bool>(global0.x, global0.x, false, global0.x)), Struct_1(-1i, 1u, vec3<f32>(arg_1, 693f, 1754f), arg_2.yx, vec4<bool>(global0.x, false, global0.x, false)), Struct_1(-1i, 26762u, vec3<f32>(arg_1, arg_1, arg_1), vec2<i32>(2147483647i, arg_2.x), vec4<bool>(true, global0.x, false, global0.x)), Struct_1(arg_2.x, 40172u, vec3<f32>(arg_1, arg_0, -515f), u_input.a.wz, vec4<bool>(false, true, global0.x, true))), all(vec2<bool>(false, false)), any(vec4<bool>(false, global0.x, global0.x, global0.x))), select(!vec4<bool>(false, global0.x, false, true), select(!vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(false, global0.x, false, true), false), all(vec4<bool>(global0.x, true, global0.x, global0.x))));
    let var_0 = vec4<i32>(arg_2.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(23866i, -3864i), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17359i, u_input.a.x, 9280i, 15432i), u_input.a), _wgslsmith_mult_i32(arg_2.x, 1i))), u_input.a.x, _wgslsmith_sub_i32(arg_2.x, u_input.b));
    global0 = !(!(!(!vec4<bool>(false, global0.x, global0.x, global0.x))));
    let var_1 = Struct_1(u_input.b | u_input.b, 72077u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -432f, 315f) * vec3<f32>(-768f, -927f, -849f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, arg_0)))), (u_input.a.yy & -(~var_0.xz)) | -vec2<i32>(min(7001i, 0i), select(var_0.x, arg_2.x, global0.x)), select(!(!(!vec4<bool>(global0.x, global0.x, true, global0.x))), vec4<bool>(16201i <= _wgslsmith_div_i32(var_0.x, 20853i), true, false, true), !vec4<bool>(true, arg_0 != 1388f, false, false)));
    return func_2(var_1.c.yz, Struct_1(12403i, ~var_1.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c), var_1.c)))), -func_2(vec2<f32>(arg_0, var_1.c.x), var_1, firstLeadingBit(var_1.b), u_input.a.wx).d, vec4<bool>(all(vec2<bool>(false, global0.x)) | any(vec4<bool>(global0.x, true, global0.x, global0.x)), var_1.c.x != func_2(var_1.c.yy, var_1, var_1.b, u_input.a.ww).c.x, false, true)), 51850u, var_1.d).c;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_f_op_f32(select(484f, -1011f, arg_2.x)))))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.c.yy, vec2<f32>(arg_1.c.x, arg_1.c.x))), arg_1, ~(~arg_1.b), max(~vec2<i32>(u_input.a.x, -26826i), u_input.a.yx)), _wgslsmith_div_u32(max(0u, arg_1.b) & ~arg_1.b, ~arg_1.b >> (~37123u % 32u)) | 1u, ~(-vec2<i32>(~43962i, ~arg_1.d.x))).d.x;
    let var_1 = arg_1.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x - var_1) * -220f) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(step(-1137f, -817f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1782f)) - arg_1.c.x))));
    var var_3 = func_2(vec2<f32>(var_1, var_1), Struct_1(countOneBits(max(arg_1.a, arg_1.a)) >> (arg_1.b % 32u), arg_1.b << (_wgslsmith_add_u32(_wgslsmith_mod_u32(2207u, 1u), arg_1.b << (7952u % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(max(1285f, 564f)), _wgslsmith_div_f32(arg_1.c.x, var_1))), select(arg_1.d, _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x)), ~u_input.a.zz), 19063i == arg_1.a), arg_1.e), arg_1.b, vec2<i32>(u_input.a.x, (i32(-1i) * -2147483647i) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 23617i), vec3<i32>(u_input.b, var_0, -2147483647i)) | 1i)));
    let var_4 = arg_1.c;
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.b;
    var_0 = abs(_wgslsmith_sub_u32(select(~arg_0.b, ~arg_0.b, func_4(Struct_1(u_input.a.x, 1u, arg_3.c, vec2<i32>(arg_1, -8008i), vec4<bool>(false, global0.x, arg_0.e.x, true)), arg_0, Struct_1(0i, 40037u, arg_3.c, arg_3.d, vec4<bool>(true, true, true, true)), arg_0)) ^ 6626u, arg_3.b));
    let var_1 = ~(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b, 1u, 0u, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, 99187u, 13645u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_0.c.yz - arg_0.c.zy);
    var var_3 = firstTrailingBit(~(~(~vec3<u32>(0u, 71961u, 0u) << (~var_1.wxy % vec3<u32>(32u)))));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-920f, _wgslsmith_f_op_f32(-var_2.x)))), arg_0, ~abs((var_1.x & arg_3.b) ^ 1u), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -34368i, 6596i, 2147483647i) | u_input.a, vec4<i32>(u_input.b, arg_3.d.x, u_input.b, arg_0.a)), ~_wgslsmith_dot_vec2_i32(arg_0.d, arg_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(global0.x, Struct_1(~(43026i << (0u % 32u)), 2640u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(-559f, -1055f, vec3<i32>(-13196i, u_input.a.x, u_input.b)))), u_input.a.zx, !vec4<bool>(true, true, global0.x, global0.x)), global0.yx), -56159i, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), Struct_1(-reverseBits(u_input.b), ~func_2(vec2<f32>(668f, -184f), Struct_1(u_input.a.x, 1u, vec3<f32>(-374f, -578f, -124f), vec2<i32>(1i, u_input.b), vec4<bool>(global0.x, false, false, global0.x)), 0u, vec2<i32>(u_input.a.x, u_input.b)).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1728f, -784f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1160f, -326f, 1400f) - vec3<f32>(-419f, 500f, -330f))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -21304i), vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(11124u, 4294967295u) % vec2<u32>(32u))), vec4<bool>(!global0.x, all(global0.wwz), func_4(Struct_1(u_input.a.x, 0u, vec3<f32>(153f, 1000f, 1089f), u_input.a.yy, vec4<bool>(global0.x, global0.x, true, true)), Struct_1(u_input.a.x, 1u, vec3<f32>(131f, -297f, -756f), vec2<i32>(0i, -2511i), vec4<bool>(true, true, global0.x, global0.x)), Struct_1(u_input.a.x, 1u, vec3<f32>(184f, -365f, -173f), u_input.a.xw, vec4<bool>(true, false, true, false)), Struct_1(u_input.a.x, 0u, vec3<f32>(1887f, -2348f, 1240f), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, false))), func_5(false, Struct_1(u_input.b, 11831u, vec3<f32>(560f, 466f, 983f), u_input.a.xz, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec2<bool>(global0.x, true)).e.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(6038u, 4294967295u) & select(vec2<u32>(28039u, 1u), vec2<u32>(25458u, 0u), global0.zx), vec2<u32>(func_2(vec2<f32>(-629f, -179f), Struct_1(u_input.b, 31839u, vec3<f32>(1177f, 331f, 709f), vec2<i32>(-1i, u_input.b), vec4<bool>(global0.x, true, global0.x, false)), 4294967295u, vec2<i32>(12090i, 21324i)).b, reverseBits(12915u))), u_input.a.yz).c.x, Struct_1(max(func_5(all(vec2<bool>(false, global0.x)), Struct_1(-11127i, 24733u, vec3<f32>(1387f, -813f, 489f), vec2<i32>(u_input.b, u_input.a.x), vec4<bool>(global0.x, false, global0.x, false)), vec2<bool>(global0.x, global0.x)).d.x, u_input.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 5928u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(func_5(true, Struct_1(u_input.a.x, 0u, vec3<f32>(-1000f, -479f, -1388f), vec2<i32>(0i, 2147483647i), vec4<bool>(false, global0.x, global0.x, false)), vec2<bool>(false, false)).c, vec3<f32>(1f, 1f, 1f))))), ~vec2<i32>(13757i, 1355i), vec4<bool>(!global0.x, func_4(Struct_1(u_input.b, 1u, vec3<f32>(-1350f, -320f, -1154f), u_input.a.wx, vec4<bool>(global0.x, global0.x, true, true)), Struct_1(u_input.a.x, 0u, vec3<f32>(-224f, -801f, -1778f), u_input.a.zx, vec4<bool>(global0.x, global0.x, global0.x, true)), Struct_1(0i, 0u, vec3<f32>(1003f, -430f, 147f), vec2<i32>(2147483647i, -26096i), vec4<bool>(true, global0.x, true, false)), func_2(vec2<f32>(159f, -1519f), Struct_1(14916i, 9295u, vec3<f32>(-521f, -559f, -853f), u_input.a.yy, vec4<bool>(true, false, true, false)), 4294967295u, vec2<i32>(12277i, 1i))), true != global0.x, !global0.x)));
    var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_6(Struct_1(u_input.a.x, 4294967295u, vec3<f32>(var_0.c.x, -541f, var_0.c.x), vec2<i32>(-5605i, var_0.a), var_0.e), u_input.a.x, 1345f, Struct_1(var_0.a, var_0.b, var_0.c, u_input.a.yw, vec4<bool>(false, true, var_0.e.x, false))).c.x)) >= 2016f, func_5(true, Struct_1(~countOneBits(1i), func_5(!var_0.e.x, Struct_1(0i, var_0.b, var_0.c, vec2<i32>(u_input.b, -33478i), var_0.e), !vec2<bool>(global0.x, true)).b, _wgslsmith_f_op_vec3_f32(min(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, -1849f, -500f)))), vec2<i32>(abs(-1i), var_0.d.x), func_2(vec2<f32>(var_0.c.x, -635f), func_5(false, Struct_1(u_input.b, 44948u, var_0.c, var_0.d, vec4<bool>(false, var_0.e.x, global0.x, true)), var_0.e.yy), min(var_0.b, var_0.b), vec2<i32>(-13002i, 8306i)).e), !(!select(var_0.e.ww, vec2<bool>(true, true), vec2<bool>(false, false)))), global0.yz);
    global0 = vec4<bool>(all(!var_0.e.wwx), global0.x, !global0.x || var_0.e.x, false);
    let var_1 = vec3<u32>(8868u, 13786u, 9029u);
    global0 = !(!var_0.e);
    let var_2 = _wgslsmith_add_i32(-var_0.d.x, var_0.a) ^ _wgslsmith_dot_vec3_i32(-(~vec3<i32>(12762i, var_0.a, u_input.b)), _wgslsmith_sub_vec3_i32(u_input.a.zzx, abs(u_input.a.yyy)));
    var_0 = Struct_1(94854i, ~var_0.b, var_0.c, vec2<i32>(2147483647i, var_0.a), vec4<bool>(var_0.e.x, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.a.zzx, select(~u_input.a.wyw, vec3<i32>(u_input.b, 6810i, 2147483647i), vec3<bool>(true, true, true)) >> (var_1 % vec3<u32>(32u))), ~(u_input.a.yxx & min(~u_input.a.xxz, _wgslsmith_div_vec3_i32(vec3<i32>(var_2, var_0.a, -2147483647i), vec3<i32>(0i, var_2, -1i)))));
}

