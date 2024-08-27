struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    let var_1 = Struct_1(any(select(arg_1, !vec3<bool>(false, var_0.a, arg_2.a), false)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, 644f, var_0.b.x, arg_2.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-195f, 1770f, var_0.b.x, -497f), arg_2.b))) + arg_2.b), arg_2.b)));
    var_0 = Struct_1(arg_0 >= _wgslsmith_sub_i32(arg_0, firstTrailingBit(firstTrailingBit(u_input.c))), vec4<f32>(var_1.b.x, -2287f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-663f * _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1350f)), any(arg_1) != var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1288f, var_0.b.x))));
    var var_2 = _wgslsmith_mult_vec2_i32(~firstLeadingBit(-(~vec2<i32>(u_input.c, u_input.c))), -countOneBits(~_wgslsmith_div_vec2_i32(vec2<i32>(-6447i, u_input.c), vec2<i32>(u_input.c, 1i))));
    var_0 = Struct_1(any(!select(!arg_1, select(arg_1, arg_1, true), select(arg_1, arg_1, vec3<bool>(arg_2.a, false, false)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(-987f, -636f, -781f, -1025f))) * vec4<f32>(var_1.b.x, arg_2.b.x, 1000f, var_1.b.x)), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2.b.x)), _wgslsmith_f_op_f32(abs(arg_2.b.x)))), -251f, -454f))));
    return arg_1.xx;
}

fn func_2() -> bool {
    let var_0 = firstLeadingBit(firstTrailingBit(vec2<u32>(max(u_input.b.x, u_input.b.x), abs(~u_input.a.x))));
    var var_1 = all(!(!func_3(u_input.c, vec3<bool>(false, true, false), Struct_1(false, vec4<f32>(843f, -1631f, -276f, 1321f)))));
    var var_2 = vec4<bool>(!(true & (all(vec3<bool>(false, true, false)) & true)), false, false && ((all(vec4<bool>(false, false, true, false)) && func_3(u_input.c, vec3<bool>(true, false, true), Struct_1(true, vec4<f32>(309f, 558f, 873f, 1000f))).x) & true), select(!all(vec4<bool>(true, false, true, true)), func_3(u_input.c, vec3<bool>(true, true, true), Struct_1(true, vec4<f32>(1005f, 967f, 455f, 313f))).x, true) | !(!all(vec3<bool>(false, false, false))));
    var var_3 = vec2<i32>(countOneBits(abs(select(0i | u_input.c, -u_input.c, var_2.x))), 14248i);
    let var_4 = vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c, 1i, u_input.c), var_3.x, _wgslsmith_mod_i32(23487i, u_input.c)), ~u_input.c), _wgslsmith_mod_i32(firstTrailingBit(max(abs(u_input.c), u_input.c | u_input.c)), u_input.c));
    return func_3(~(((var_4.x | var_3.x) >> (0u % 32u)) << (select(1u, 1u, true) % 32u)), !vec3<bool>(var_2.x, false, any(!vec4<bool>(false, var_2.x, false, var_2.x))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(173f)), _wgslsmith_div_f32(228f, 1397f), _wgslsmith_f_op_f32(ceil(139f)), _wgslsmith_f_op_f32(step(640f, 353f)))))).x;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(!(!any(vec2<bool>(true, true))), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = u_input.c;
    let var_2 = Struct_2(func_2(), var_0, var_0, !select(vec4<bool>(true, true, func_3(var_1, vec3<bool>(var_0.a, false, var_0.a), var_0).x, 0i != u_input.c), vec4<bool>(true, var_0.a || var_0.a, any(vec2<bool>(true, var_0.a)), true), var_0.a), -vec2<i32>(-1i, ~u_input.c));
    let var_3 = var_2;
    let var_4 = Struct_1(false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-399f, var_2.b.b.x, var_0.b.x, var_3.b.b.x), var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b.x, -950f, var_3.c.b.x, 614f) + var_2.c.b), !select(var_2.d, var_2.d, all(vec2<bool>(var_2.a, var_3.d.x))))));
    return Struct_2(var_3.d.x, var_3.c, Struct_1(var_2.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(245f, var_4.b.x, var_4.b.x, 1432f), vec4<f32>(508f, 140f, 431f, -1831f), var_0.a))))), select(var_3.d, !(!var_2.d), !vec4<bool>(28457u > u_input.b.x, !var_3.b.a, any(var_3.d.xz), var_3.a)), vec2<i32>(-69976i, var_3.e.x << (1u % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_1().b;
    var var_1 = func_1().c;
    var var_2 = 26529u;
    let var_3 = Struct_1(true, arg_1.c.b);
    let var_4 = u_input.d;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-574f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-404f, -476f)) + -510f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-478f))), _wgslsmith_f_op_f32(sign(-858f)))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f)), var_0.x, 305f, -395f))));
    var_1 = func_4(vec3<bool>(all(select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, false), true), vec2<bool>(var_1.a, false), select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, true), true))), !(var_1.a != (var_1.a & false)), !(!all(vec3<bool>(true, var_1.a, false)))), func_1(), true, Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_0.x, 1000f)) + _wgslsmith_f_op_vec4_f32(abs(var_1.b))) - var_1.b)));
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(-410f, var_1.b.x), 1235f), var_1.b))));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.x)));
    var var_4 = !vec4<bool>(var_1.a, false, u_input.c <= (i32(-1i) * -2147483647i), !all(!vec3<bool>(false, var_2.a, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(f32(-1f) * -802f));
}

