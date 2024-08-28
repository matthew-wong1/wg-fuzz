struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_sub_i32(~(-1i), i32(-1i) * -2147483647i), 0i, ~(~u_input.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, -1i), vec3<i32>(u_input.b, -2147483647i, u_input.b)), -2147483647i, u_input.b >> (13078u % 32u))), vec3<bool>(~0u == _wgslsmith_mult_u32(1u, u_input.e), 1u == min(u_input.a, 1u), true)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f * 737f) + _wgslsmith_f_op_f32(max(975f, -749f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1077f, -1000f, false)), _wgslsmith_f_op_f32(482f * 305f)))), -1565f), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-13668i, -47354i), u_input.b, _wgslsmith_clamp_i32(-57889i, 18748i, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.c, -14175i))), abs(vec4<i32>(u_input.b, u_input.b, u_input.c, 2147483647i) & vec4<i32>(16361i, u_input.c, 6621i, 1i)), select(abs(vec4<i32>(u_input.c, -41239i, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.c, 1i), vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), select(true, true, true))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.c, min(u_input.c, 0i), u_input.c, u_input.b ^ u_input.c), abs(vec4<i32>(-2147483647i, -1i, 2147483647i, u_input.c) & vec4<i32>(u_input.c, u_input.c, u_input.c, -274i))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, true)), true);
    let var_1 = vec3<u32>(45239u, ~94325u, reverseBits(75434u));
    let var_2 = !vec4<bool>(var_0.e, var_1.x < var_1.x, _wgslsmith_f_op_f32(abs(393f)) >= var_0.b.x, true);
    var var_3 = !select(var_0.d.b.xz, var_0.a.b.zz, !any(select(var_0.d.b.xx, var_0.d.b.yy, true)));
    var_3 = var_2.zz;
    return var_0.b;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.b, 2147483647i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, 6887i, -8040i, u_input.c), vec4<i32>(abs(u_input.c), 2147483647i, 2147483647i, 47528i), countOneBits(vec4<i32>(0i, -1i, u_input.c, -1i)) ^ firstLeadingBit(vec4<i32>(56892i, u_input.c, u_input.b, 15767i))), !vec3<bool>(true, all(vec2<bool>(false, false)), true)), Struct_1(~vec4<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, -24149i), ~u_input.b, u_input.c, u_input.c), vec3<bool>(true, true, true)), false);
    let var_1 = var_0;
    var var_2 = Struct_1(vec4<i32>(-(_wgslsmith_dot_vec3_i32(var_0.a.a.yww, var_0.c.a.xwz) >> (76018u % 32u)), abs(reverseBits(~u_input.b)), 2147483647i, -var_1.d.a.x), vec3<bool>(var_0.a.b.x, var_1.b.x >= _wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) < _wgslsmith_f_op_f32(max(-158f, _wgslsmith_div_f32(var_0.b.x, 585f)))));
    var_2 = var_0.c;
    var_2 = Struct_1(vec4<i32>(-firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(44682i, 2147483647i, -1i), vec3<i32>(-1i, -2147483647i, 39717i))), var_2.a.x, _wgslsmith_mod_i32(~78572i, var_1.c.a.x | var_0.d.a.x) >> (84692u % 32u), 0i), select(!vec3<bool>(any(vec4<bool>(false, var_2.b.x, false, false)), all(vec2<bool>(var_1.e, var_1.e)), !var_1.a.b.x), !var_2.b, var_0.d.b.x));
    return Struct_2(Struct_1(var_0.c.a, !vec3<bool>(!var_0.d.b.x, true, !var_0.d.b.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), -1506f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2965f, -1734f))), var_1.b))), var_1.b)), Struct_1(max(vec4<i32>(var_1.d.a.x, reverseBits(var_0.d.a.x), _wgslsmith_div_i32(var_2.a.x, var_2.a.x), 27107i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, var_0.d.a.x, -33684i) | var_1.a.a, var_2.a ^ var_1.c.a)), vec3<bool>(var_0.d.b.x, -var_2.a.x > countOneBits(1i), u_input.d.x > ~40235u)), var_0.c, false);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.c;
    var_0 = firstLeadingBit(func_2().a.a.x);
    var_0 = arg_0.a.a.x;
    let var_1 = ~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 2147483647i, 2147483647i, 1i), vec4<i32>(arg_0.c.a.x, u_input.c, u_input.b, 18371i))) >> (30244u % 32u);
    return func_2().c;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_1.d.a, select(vec3<bool>(false, true, arg_1.d.b.x), !(!arg_1.a.b), select(true, all(!arg_1.c.b), !(!arg_1.c.b.x))));
    var_0 = func_4(func_2(), select(vec3<u32>(u_input.a, u_input.d.x, _wgslsmith_clamp_u32(abs(4294967295u), u_input.a, 89399u)), vec3<u32>(~firstTrailingBit(u_input.e), u_input.d.x & 1u, ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), !select(func_4(arg_1, vec3<u32>(0u, u_input.e, u_input.e)).b, vec3<bool>(true, var_0.b.x, arg_1.a.b.x), var_0.b.x)));
    let var_1 = -19921i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -259f) + 112f))) + _wgslsmith_f_op_f32(arg_1.b.x * -589f)), arg_1.b.x, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f))), 338f);
    var_0 = arg_1.d;
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = firstLeadingBit(arg_2.a);
    let var_1 = vec3<u32>(~abs(u_input.a), select(40271u, 0u, true && (_wgslsmith_f_op_f32(arg_0 - arg_1.b.x) < -137f)), 51124u);
    let var_2 = all(vec3<bool>(true, any(!vec4<bool>(false, true, arg_1.c.b.x, true)), arg_1.a.b.x));
    var var_3 = Struct_1(vec4<i32>(firstTrailingBit(~arg_2.a.x), -4570i, -2879i, ~(~arg_1.a.a.x) | min(-u_input.b, 2147483647i ^ var_0.x)), !(!(!(!arg_1.d.b))));
    let var_4 = arg_1.c;
    return func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_0) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3)))), -171f)), arg_1);
}

fn func_1() -> vec3<f32> {
    let var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-437f, -1000f))))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1357f, 1138f))), Struct_2(func_4(func_2(), ~vec3<u32>(4294967295u, u_input.e, u_input.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1151f, -1629f) * vec2<f32>(-832f, -1752f)) * _wgslsmith_div_vec2_f32(vec2<f32>(690f, -508f), vec2<f32>(-413f, 347f))), Struct_1(vec4<i32>(u_input.c, -22687i, 2147483647i, 12979i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), Struct_1(vec4<i32>(1i, u_input.b, u_input.b, 28718i), vec3<bool>(false, false, false)), -u_input.c <= 0i)), Struct_1(vec4<i32>(i32(-1i) * -u_input.c, u_input.c, 9030i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c) ^ vec2<i32>(1i, u_input.c), vec2<i32>(-2147483647i, 16993i))), !func_4(func_2(), vec3<u32>(1u, 4294967295u, u_input.e)).b), _wgslsmith_f_op_f32(-1057f - -1107f));
    var var_1 = func_6(func_6(var_0.b.x, var_0, var_0.a, var_0.b.x).b.x, Struct_2(Struct_1(_wgslsmith_div_vec4_i32(-var_0.c.a, firstTrailingBit(vec4<i32>(0i, u_input.c, -2147483647i, -2147483647i))), var_0.c.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-747f + var_0.b.x), var_0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1469f, var_0.b.x, var_0.a.b.x)), _wgslsmith_f_op_vec2_f32(func_3()).x))), Struct_1(var_0.a.a, !vec3<bool>(true, var_0.a.b.x, var_0.e)), var_0.d, all(vec4<bool>(any(vec4<bool>(var_0.a.b.x, var_0.e, false, var_0.a.b.x)), all(vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.e)), var_0.e, false))), var_0.c, func_2().b.x);
    var_1 = func_2();
    var var_2 = var_0;
    var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.c, 6585i, var_1.c.a.x, -17838i)), firstTrailingBit(vec4<i32>(-1i, var_1.d.a.x, 2147483647i, -1i))), _wgslsmith_clamp_vec4_i32(var_2.a.a, var_1.d.a, -vec4<i32>(-2147483647i, var_2.c.a.x, u_input.c, var_2.c.a.x))), var_0.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b - var_1.b))))), func_2().a, var_0.a, func_5(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), var_0).d.b.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_2.b.x), 1607f, var_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(~(~(~vec2<i32>(u_input.c, u_input.c))), vec2<i32>(-1i) * -(vec2<i32>(81103i, -1i) >> (vec2<u32>(u_input.e, 42331u) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_2 = vec3<bool>(_wgslsmith_clamp_i32(var_0.x, (2147483647i << (u_input.a % 32u)) >> ((0u << (0u % 32u)) % 32u), 2147483647i) >= ((i32(-1i) * -u_input.b) >> ((76492u ^ firstTrailingBit(u_input.d.x)) % 32u)), true, false);
    let var_3 = !select(select(vec3<bool>(var_2.x, !var_2.x, false && var_2.x), func_6(_wgslsmith_f_op_f32(ceil(-1330f)), Struct_2(Struct_1(vec4<i32>(var_0.x, 1i, -2147483647i, -8294i), var_2), var_1.yy, Struct_1(vec4<i32>(var_0.x, var_0.x, -33492i, var_0.x), var_2), Struct_1(vec4<i32>(2147483647i, -50887i, -34765i, u_input.b), var_2), false), Struct_1(vec4<i32>(var_0.x, 34152i, u_input.c, u_input.c), vec3<bool>(var_2.x, true, var_2.x)), var_1.x).c.b, true), !select(func_4(Struct_2(Struct_1(vec4<i32>(-8310i, 2147483647i, var_0.x, 0i), var_2), var_1.xy, Struct_1(vec4<i32>(-46501i, var_0.x, var_0.x, u_input.b), vec3<bool>(false, var_2.x, var_2.x)), Struct_1(vec4<i32>(var_0.x, u_input.b, 2147483647i, u_input.b), var_2), false), vec3<u32>(u_input.d.x, u_input.e, 0u)).b, func_2().d.b, !var_2), true | any(vec4<bool>(true, false, true, var_2.x)));
    let var_4 = countOneBits(_wgslsmith_div_vec3_i32(-func_2().c.a.yzz, func_5(_wgslsmith_f_op_f32(sign(-208f)), func_5(1057f, Struct_2(Struct_1(vec4<i32>(2827i, 1i, -52343i, u_input.c), vec3<bool>(var_2.x, var_2.x, var_2.x)), var_1.xy, Struct_1(vec4<i32>(var_0.x, -2147483647i, 39033i, 0i), vec3<bool>(var_2.x, var_3.x, true)), Struct_1(vec4<i32>(u_input.c, -1i, 2147483647i, 59450i), vec3<bool>(false, false, var_3.x)), var_2.x))).a.a.xww) << (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.e, u_input.e)), u_input.a, ~54387u), vec3<u32>(u_input.a, u_input.e, ~10626u)) % vec3<u32>(32u)));
    let var_5 = Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.yx * var_1.xz)))), func_2().c, Struct_1(vec4<i32>(-select(u_input.b, -2147483647i, var_3.x), var_4.x, 2856i, var_4.x), vec3<bool>(var_2.x, var_1.x < _wgslsmith_f_op_f32(-var_1.x), any(vec4<bool>(var_2.x, var_2.x, false, var_2.x)) && true)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, var_1.x, ~(u_input.c << (0u % 32u)) >> (70512u % 32u), u_input.d);
}

