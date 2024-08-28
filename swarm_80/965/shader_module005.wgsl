struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = u_input.d;
    let var_1 = !arg_0.x;
    var var_2 = Struct_5(arg_0.yy, _wgslsmith_sub_i32(-16927i, u_input.a.x), !arg_0.yxy, vec3<i32>(-(~arg_1.b), ~arg_1.b, ~(-45390i) >> (u_input.b.x % 32u)));
    var_2 = Struct_5(select(vec2<bool>(true, !(true != arg_0.x)), select(arg_0.yy, select(vec2<bool>(true, var_1), vec2<bool>(var_2.a.x, true), !var_2.c.xz), false), var_1), select(-_wgslsmith_div_i32(countOneBits(-2147483647i), arg_1.b), u_input.c.x, true), arg_0.wxw, var_2.d);
    let var_3 = Struct_5(vec2<bool>(!all(select(arg_0.xx, var_2.a, vec2<bool>(var_2.c.x, var_1))), select(true, true, var_1)), ~(u_input.a.x & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-46855i, var_2.d.x, 57720i), vec3<i32>(-18215i, arg_1.b, u_input.c.x)), firstTrailingBit(-50959i))), vec3<bool>(any(select(select(var_2.a, arg_0.yz, arg_0.x), vec2<bool>(true, arg_0.x), true)), true, true), select(vec3<i32>(var_2.d.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_1.b, arg_1.b, u_input.a.x)), var_2.d), countOneBits(arg_1.b)), select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_1.b, var_2.b), vec4<i32>(-1i, -8569i, arg_1.b, 21383i)), var_2.d.x, var_2.b), -vec3<i32>(u_input.a.x, var_2.b, u_input.c.x), true), vec3<bool>(var_1, true, arg_0.x)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1272f, -398f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1048f, -281f))), 550f), 1f));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-714f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x) + _wgslsmith_f_op_f32(abs(-1095f))))))));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_0 * -1532f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_1.a)))));
    var var_2 = select(~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, firstTrailingBit(1u)), ~(~38513u), u_input.b.x), ~max(vec3<u32>(u_input.d, _wgslsmith_mult_u32(u_input.d, 61243u), 0u), vec3<u32>(u_input.d, ~u_input.d, ~u_input.b.x)), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(false, true, false)), u_input.c.x > 0i)), false));
    let var_3 = Struct_5(vec2<bool>(!(!(-25518i <= u_input.a.x)), true), (_wgslsmith_sub_i32(abs(-1i), u_input.a.x) << (~(~16293u) % 32u)) ^ -1181i, vec3<bool>(false, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), false), u_input.a);
    return -920f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_add_i32(0i, u_input.a.x) & u_input.a.x;
    var_0 = -2147483647i;
    var_0 = 46083i;
    var_0 = -1i;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-arg_2.x), Struct_2(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, false, arg_1, arg_1), Struct_1(u_input.b.x, u_input.a.x)))))), Struct_1(reverseBits(45259u), -u_input.a.x), arg_2.x);
    return Struct_5(select(vec2<bool>(var_1.a >= var_1.a, !(!arg_1)), !(!vec2<bool>(true, arg_0)), !select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_1, arg_1), arg_1), vec2<bool>(arg_0, arg_0))), 2147483647i, !select(select(vec3<bool>(arg_0, arg_1, true), vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, false), arg_1)), select(!vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, arg_1), select(vec3<bool>(arg_0, true, arg_1), vec3<bool>(true, arg_1, true), arg_1)), vec3<bool>(true, true, true)), -u_input.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = ~(~(~(~vec3<u32>(0u, 1u, u_input.b.x)) & vec3<u32>(u_input.d, u_input.b.x ^ u_input.b.x, 45959u)));
    var var_1 = func_2(false, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -311f), vec4<f32>(arg_2, -964f, 817f, arg_2))))));
    let var_2 = 4294967295u;
    var_1 = Struct_5(var_1.a, arg_1, var_1.c, -select(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, 1i, var_1.b), u_input.a)), var_1.d, var_1.c));
    return u_input.a.x << ((u_input.b.x << (firstLeadingBit(~countOneBits(u_input.b.x)) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(-u_input.a, vec3<i32>(-2147483647i, countOneBits(u_input.c.x), u_input.a.x));
    var var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), vec3<bool>(true, true | any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), ~select(u_input.c.x, -2147483647i, true) != reverseBits(-2147483647i)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)) || true);
    let var_2 = -vec4<i32>(0i, u_input.a.x, countOneBits(~func_1(vec2<i32>(u_input.c.x, -90960i), -24555i, 674f, false)), _wgslsmith_mod_i32(15604i, _wgslsmith_div_i32(-2147483647i >> (u_input.d % 32u), 2147483647i)));
    var_0 = firstTrailingBit(-var_2.xyy);
    var var_3 = Struct_1(1u, ~_wgslsmith_clamp_i32(func_1(vec2<i32>(-5380i, var_2.x), _wgslsmith_clamp_i32(var_2.x, var_2.x, -24441i), _wgslsmith_div_f32(288f, -713f), all(vec3<bool>(true, true, var_1.x))), -u_input.c.x, -2147483647i));
    var var_4 = true;
    let var_5 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(3038f)))), Struct_1(var_3.a, var_2.x), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(601f - var_5.a))))) * _wgslsmith_f_op_f32(step(1000f, 431f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.c, var_5.a))))) * _wgslsmith_div_vec2_f32(vec2<f32>(-351f, _wgslsmith_f_op_f32(abs(318f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.c, var_5.c) - vec2<f32>(-107f, var_5.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(930f, var_5.a) * vec2<f32>(var_5.a, var_5.a))))), var_5.a, (var_2.x ^ (-2147483647i ^ reverseBits(var_5.b.b))) << (~27069u % 32u), ~vec2<u32>(_wgslsmith_mod_u32(select(var_3.a, 0u, false), abs(10127u)), var_5.b.a));
}

