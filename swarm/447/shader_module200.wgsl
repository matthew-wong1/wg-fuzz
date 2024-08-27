struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    var var_0 = ~vec2<u32>(min(min(abs(26796u), 1u), _wgslsmith_sub_u32(select(7688u, 1u, false), _wgslsmith_div_u32(89738u, 1u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 55196u, 70859u), true), ~select(vec4<u32>(1u, 12255u, 1u, 0u), vec4<u32>(0u, 50050u, 4511u, 36341u), vec4<bool>(true, false, false, false))));
    var var_1 = _wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(max(-145f, _wgslsmith_f_op_f32(f32(-1f) * -852f))));
    let var_2 = Struct_1(abs(vec3<i32>(u_input.b, 0i, 1i)), ~45601u);
    let var_3 = var_2.b;
    var_0 = reverseBits(min(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(47474u, 9691u), vec2<u32>(var_2.b, var_2.b))), ~abs(~vec2<u32>(var_0.x, var_2.b))));
    return -vec3<i32>(-max(0i, 2882i) << (var_3 % 32u), 0i, -14921i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_1(u_input.a, max(countOneBits(4294967295u), arg_1.b));
    let var_1 = !(!vec2<bool>(all(vec4<bool>(false, arg_3.x, arg_3.x, false)), !any(vec3<bool>(arg_3.x, true, arg_3.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-876f, 1428f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1200f, 950f)))), vec2<f32>(511f, _wgslsmith_f_op_f32(round(1006f))))));
    var_0 = arg_1;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, arg_0), vec2<f32>(var_2.x, -770f)) + vec2<f32>(-1032f, arg_0)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -1720f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 213f), vec2<f32>(arg_0, 115f))), vec2<bool>(true, true))))));
    return vec3<i32>(-var_0.a.x, select(firstLeadingBit(u_input.c), var_0.a.x, var_1.x), select(firstTrailingBit(firstTrailingBit(-u_input.a.x)), max(arg_1.a.x, _wgslsmith_mult_i32(-4610i, arg_1.a.x)), arg_3.x && ((arg_1.a.x ^ var_0.a.x) >= _wgslsmith_mod_i32(var_0.a.x, u_input.c))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(1i, 1i, ~(-u_input.c >> (_wgslsmith_div_u32(52109u, 42537u) % 32u))), _wgslsmith_mod_u32(58973u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(33511u, 23781u)), _wgslsmith_add_vec2_u32(max(vec2<u32>(26727u, 48171u), vec2<u32>(1u, 20461u)), vec2<u32>(0u, 17131u)))));
    var_0 = Struct_1(~var_0.a << (_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1226u, var_0.b), vec3<u32>(4294967295u, ~0u, _wgslsmith_mult_u32(var_0.b, 26370u))) % vec3<u32>(32u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(~var_0.b, _wgslsmith_mod_u32(var_0.b, _wgslsmith_clamp_u32(111907u, 4294967295u, 90563u))), _wgslsmith_div_u32(~(var_0.b & var_0.b), _wgslsmith_mult_u32(var_0.b | 0u, 6118u))));
    var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-252f)) * _wgslsmith_f_op_f32(-1442f - -257f)), Struct_1(min(vec3<i32>(-1159i, -25057i, u_input.a.x), func_3()), 1u), countOneBits(~vec3<u32>(var_0.b, var_0.b, var_0.b)), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(arg_0, false), arg_0)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~(~40207u), ~1u, firstLeadingBit(var_0.b) >> (var_0.b % 32u)), var_0.b));
    let var_1 = 1u;
    var var_2 = _wgslsmith_mod_u32(firstLeadingBit(22836u), 4294967295u);
    return Struct_1(vec3<i32>(abs(-15956i), var_0.a.x, (u_input.a.x >> (abs(var_0.b) % 32u)) >> (var_1 % 32u)), 0u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = func_2(true);
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 2147483647i), var_0.a.yy) >> (var_1.b % 32u)), abs(-40397i), -_wgslsmith_sub_i32(countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(9061i, var_0.a.x, -44897i), vec3<i32>(-11520i, arg_2.a.x, 1i)))), vec3<i32>(0i, u_input.c, var_1.a.x | var_1.a.x));
    var_0 = arg_2;
    var var_3 = arg_2;
    return func_2(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(arg_2.x * 438f)) > arg_2.x, true);
    var var_1 = var_0.x;
    var_1 = false;
    var_0 = vec2<bool>(false, var_0.x);
    var_0 = !(!(!vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mod_u32(1u, firstTrailingBit(~(_wgslsmith_add_u32(19428u, var_0.b) | _wgslsmith_add_u32(0u, 96430u))));
    var var_2 = -(~_wgslsmith_mult_i32(2147483647i, 0i));
    var_2 = ~_wgslsmith_div_i32(_wgslsmith_sub_i32(func_1(vec3<f32>(-1063f, 807f, -1392f), vec3<f32>(368f, -2376f, -777f), Struct_1(vec3<i32>(arg_0.a.x, var_0.a.x, 0i), 21351u)).a.x, func_4(-257f, var_0, arg_2, vec2<bool>(false, true)).x), 35495i) | ~(_wgslsmith_sub_i32(2147483647i & u_input.a.x, _wgslsmith_sub_i32(0i, u_input.c)) | countOneBits(28674i));
    var var_3 = -firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_0.a, u_input.a));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), -827f), -341f, -544f);
    let var_1 = ~func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.yxw, var_0.xyy), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-148f, -329f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_0.yzx, var_0.wwz)))), arg_0).b;
    let var_2 = -(_wgslsmith_mult_vec4_i32(max(vec4<i32>(arg_1, arg_0.a.x, -18925i, -1i), vec4<i32>(-2147483647i, arg_1, 27925i, arg_0.a.x)) | (vec4<i32>(arg_2.a.x, -16090i, u_input.b, -72040i) << (arg_3 % vec4<u32>(32u))), (vec4<i32>(arg_2.a.x, 56428i, 53944i, 52865i) & vec4<i32>(51581i, -52760i, -8416i, arg_2.a.x)) << (abs(arg_3) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_3.x, 4294967295u, arg_0.b, arg_0.b), ~arg_3, vec4<bool>(true, true, true, true)), min(~vec4<u32>(65436u, 5493u, arg_0.b, 0u), abs(vec4<u32>(arg_0.b, 4294967295u, arg_0.b, arg_3.x)))) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, firstLeadingBit(_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(18601i, -43156i, arg_2.a.x)))), vec3<i32>(arg_1, u_input.b, countOneBits(-2147483647i))), arg_0.b);
}

fn func_8(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = -45405i;
    var var_2 = ~(-(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, 1i, var_1, var_0.a.x), vec4<i32>(-10306i, arg_0.a.x, 2147483647i, 0i)) | 33498i)) <= -2147483647i;
    var var_3 = func_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-254f + 1895f), _wgslsmith_f_op_f32(select(-683f, -462f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1929f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f + 952f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2254f) + _wgslsmith_div_f32(563f, -194f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1023f, -901f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) - _wgslsmith_f_op_f32(431f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_5(Struct_1(vec3<i32>(_wgslsmith_mult_i32(var_1, u_input.b), _wgslsmith_add_i32(-2147483647i, arg_0.a.x), 53521i), _wgslsmith_sub_u32(_wgslsmith_div_u32(211u, 30672u), _wgslsmith_div_u32(4294967295u, var_0.b))), func_7(func_2(true), 2147483647i | countOneBits(var_0.a.x), Struct_1(~vec3<i32>(var_1, var_0.a.x, -18571i), ~arg_0.b), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, arg_0.b, var_0.b, arg_0.b), vec4<u32>(83826u, 4294967295u, 20050u, var_0.b)), ~arg_0.b, min(0u, 1u), ~11859u)).a.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-922f, -1097f)), _wgslsmith_f_op_f32(713f - -1000f), -839f)))));
    return StorageBuffer(_wgslsmith_f_op_f32(-1801f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - 620f)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_3.b, arg_0.b), vec3<u32>(22372u, 1u, arg_0.b), vec3<u32>(4294967295u, 2118u, var_0.b)), vec3<u32>(4294967295u, 45955u, 54629u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 24281u, var_3.b), vec3<u32>(var_0.b, var_0.b, var_3.b) & vec3<u32>(17215u, var_0.b, 0u))), vec3<u32>(4294967295u, ~(~var_3.b), 1u | (2749u >> (var_3.b % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 64421i;
    var var_1 = -961f;
    let x = u_input.a;
    s_output = func_8(func_7(func_6(func_5(func_1(vec3<f32>(789f, -398f, 463f), vec3<f32>(1626f, -783f, -2231f), Struct_1(u_input.a, 11934u)), firstLeadingBit(u_input.c), _wgslsmith_div_vec3_f32(vec3<f32>(-462f, -1639f, 489f), vec3<f32>(-2099f, -149f, -1347f))), !any(vec2<bool>(true, true)), abs(vec3<u32>(28367u, 1u, 12252u))), 2147483647i, Struct_1(u_input.a, abs(62543u)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(60930u, 4294967295u, 25631u, 99395u), vec4<u32>(58284u, 38311u, 4294967295u, 0u), vec4<u32>(4294967295u, 11457u, 36280u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), !(((var_0 & var_0) == -1i) || false));
}

