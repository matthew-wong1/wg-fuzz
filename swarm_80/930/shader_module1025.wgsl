struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_3(vec3<bool>(arg_1, !(any(vec3<bool>(true, arg_1, false)) && true), false), vec3<u32>(firstLeadingBit(reverseBits(arg_0)), u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 39256u), arg_0, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), (vec3<u32>(0u, u_input.a.x, 1u) & vec3<u32>(4294967295u, 1u, 23308u)) ^ vec3<u32>(arg_0, u_input.b, u_input.a.x))), Struct_1(vec3<i32>(u_input.c, 0i, arg_2.b.a.x)), ~_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(u_input.a.x, u_input.d, u_input.b, arg_0)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 30140u, 0u), vec4<u32>(arg_0, arg_0, u_input.a.x, 1u)), ~vec4<u32>(1u, arg_0, 64763u, 55008u)), vec4<u32>(16835u, 0u, arg_0, 1u)));
    let var_1 = select(vec2<bool>(all(select(vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(arg_1, arg_1, var_0.a.x, false), arg_1)), all(select(vec4<bool>(var_0.a.x, true, true, arg_1), !vec4<bool>(arg_1, true, false, false), !vec4<bool>(true, false, false, var_0.a.x)))), var_0.a.yy, select(vec2<bool>(any(vec3<bool>(false, arg_1, arg_1)), all(var_0.a.yy)), select(var_0.a.zy, vec2<bool>(any(var_0.a), any(vec4<bool>(var_0.a.x, var_0.a.x, false, false))), var_0.a.x), !var_0.a.x));
    var var_2 = 0u;
    let var_3 = arg_2;
    var var_4 = vec2<u32>(arg_0, 4294967295u);
    return _wgslsmith_div_vec3_i32(-var_0.c.a, ~var_3.b.a);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(func_3(abs(~9611u), ~u_input.d > u_input.d, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1698f, 799f) * vec2<f32>(246f, 766f)), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c)))) | vec3<i32>(u_input.c, u_input.c, u_input.c));
    var_0 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(74586i, 2147483647i, _wgslsmith_clamp_i32(1i, var_0.a.x, var_0.a.x)), countOneBits(vec3<i32>(1i, u_input.c, -3120i)) >> (~vec3<u32>(u_input.d, u_input.a.x, u_input.d) % vec3<u32>(32u))), ~vec3<i32>(1i, i32(-1i) * -24242i, _wgslsmith_dot_vec3_i32(var_0.a, var_0.a))));
    var_0 = Struct_1(vec3<i32>(28306i, _wgslsmith_clamp_i32(u_input.c, 64544i & u_input.c, firstLeadingBit(select(-3810i, 0i, true))), u_input.c));
    var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(var_0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.c), vec3<i32>(u_input.c, var_0.a.x, u_input.c), var_0.a)) >> (u_input.b % 32u), var_0.a.x, var_0.a.x));
    var_0 = Struct_1(countOneBits(_wgslsmith_div_vec3_i32(var_0.a, _wgslsmith_div_vec3_i32(var_0.a, var_0.a))) ^ (min(vec3<i32>(u_input.c, u_input.c, 83390i), vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)) & var_0.a));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1790f, 1178f))))))), Struct_1(var_0.a));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~arg_0.d.x), 1u, u_input.d, 9253u), arg_0.d);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-2965f)), _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-764f, 126f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-948f, -496f)))))), Struct_1(abs(~vec3<i32>(u_input.c, u_input.c, arg_0.c.a.x)) >> (vec3<u32>(72809u, _wgslsmith_clamp_u32(353u, 0u, 0u), u_input.a.x) % vec3<u32>(32u))));
    var_1 = func_2();
    var_1 = func_2();
    var_1 = func_2();
    return Struct_2(var_1.a, var_1.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = func_1(Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), false)), arg_1.ywx, arg_2.b, vec4<u32>(1u, ~_wgslsmith_mod_u32(1u, arg_1.x), arg_1.x & 49719u, abs(arg_1.x)))).b;
    let var_1 = 9132u;
    var var_2 = _wgslsmith_f_op_f32(-arg_2.a.x);
    var_2 = func_2().a.x;
    var var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(vec3<bool>(true, false, false), vec3<u32>(26540u, var_1, 1u), var_0, vec4<u32>(var_1, u_input.d, 1u, 8239u))).a.x + _wgslsmith_f_op_f32(1057f - -954f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1218f, -110f, 307f, 262f) - vec4<f32>(351f, 1000f, -173f, 621f)), vec4<u32>(0u, 4384u, 24277u, 1u) | vec4<u32>(u_input.b, u_input.a.x, 44773u, u_input.d), func_1(Struct_3(var_0, vec3<u32>(54003u, 4294967295u, 85408u), Struct_1(vec3<i32>(-3503i, 6291i, 16388i)), vec4<u32>(u_input.a.x, u_input.a.x, 9981u, 4223u))))), _wgslsmith_f_op_f32(f32(-1f) * -1498f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-862f + -1341f) - _wgslsmith_f_op_f32(831f * 382f)))))));
    var var_2 = var_0.x;
    var_2 = all(!(!(!var_0)));
    var var_3 = Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(50490i, -2043i, u_input.c, u_input.c), vec4<i32>(u_input.c, -74345i, 4817i, u_input.c)) & 1i, u_input.c, 2147483647i));
    var_3 = Struct_1(var_3.a);
    var var_4 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.x, 1000f, var_0.x)), _wgslsmith_f_op_f32(-var_1.x), var_1.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x, var_1.x))));
}

