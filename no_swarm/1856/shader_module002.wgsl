struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = select(vec3<bool>(true, _wgslsmith_mult_u32(1u >> (u_input.b % 32u), _wgslsmith_clamp_u32(1u, u_input.b, 32997u)) <= u_input.b, true), vec3<bool>(true, !select(true, false, true), true), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    let var_1 = ~(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.b, 4294967295u, 33047u, 48356u) >> (vec4<u32>(u_input.b, 76275u, 1u, u_input.b) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, 17649u, 0u, u_input.b))), _wgslsmith_add_vec4_u32(select(vec4<u32>(50413u, 0u, 0u, u_input.b), vec4<u32>(u_input.b, 37350u, u_input.b, u_input.b), vec4<bool>(false, var_0.x, false, var_0.x)), firstLeadingBit(vec4<u32>(38899u, u_input.b, u_input.b, 117163u)))));
    var_0 = vec3<bool>(var_0.x, all(select(select(vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false)), select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, true)), vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), vec4<bool>(true, var_0.x || false, select(false, false, true), true))), var_0.x);
    global1 = var_0.x & true;
    var var_2 = Struct_3(select(true, var_0.x, true), Struct_2(Struct_1(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, false)), vec3<u32>(var_1.x, min(var_1.x, var_1.x), _wgslsmith_div_u32(0u, 44234u)), _wgslsmith_dot_vec3_i32(u_input.c, select(u_input.c, u_input.c, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-382f, 1484f), vec2<f32>(461f, 130f), var_0.zy))), 1619f), all(vec4<bool>(true, false, all(vec3<bool>(var_0.x, true, var_0.x)), select(false, false, false)))));
    return -589f;
}

fn func_2() -> Struct_2 {
    global1 = false;
    var var_0 = Struct_1(vec3<bool>(0u < u_input.b, any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), all(vec2<bool>(true, false)))), false), reverseBits(vec3<u32>(~select(105254u, 39203u, true), ~abs(u_input.b), _wgslsmith_add_u32(u_input.b | u_input.b, u_input.b | u_input.b))), countOneBits(u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1433f, -703f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) - 1825f));
    let var_1 = vec4<bool>(!(all(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)) || var_0.a.x), !var_0.a.x, any(vec4<bool>(false, any(var_0.a.zz), true, var_0.a.x)), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1481f), -103f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(round(var_0.d.x)))) - _wgslsmith_div_f32(-342f, _wgslsmith_f_op_f32(func_3())))) - 795f);
    let var_2 = var_0.d.x;
    return Struct_2(Struct_1(!var_1.zww, _wgslsmith_div_vec3_u32(firstTrailingBit(var_0.b >> (vec3<u32>(var_0.b.x, var_0.b.x, u_input.b) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(var_0.b, var_0.b)), var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.d), _wgslsmith_f_op_f32(ceil(225f))), !var_0.a.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 37628u, 0u), vec3<u32>(1u, arg_0.a.b.x, 40253u)) >= select(36835u, ~1u, arg_0.a.a.x), func_2());
    let var_1 = Struct_3(!(all(select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(true, var_0.a, var_0.b.a.a.x, true), true)) || any(select(var_0.b.a.a, vec3<bool>(false, false, true), var_0.a))), Struct_2(func_2().a, !(!arg_0.b) | !select(arg_0.a.a.x, false, false)));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = abs(_wgslsmith_div_u32(40896u, u_input.b) ^ ~1u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2068f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 367f) - arg_3.a.d.x)), -172f, true)));
    var var_1 = func_2();
    var var_2 = any(var_1.a.a) && var_1.b;
    global0 = arg_3.a.d.x;
    return Struct_1(select(vec3<bool>(!(!var_1.a.a.x), arg_2.x <= -27198i, !var_1.a.a.x), func_2().a.a, var_1.a.a.x != var_1.b), var_1.a.b, 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(arg_1.x, arg_3.a.e), var_1.a.a.yx))) * _wgslsmith_f_op_vec2_f32(-arg_3.a.d)), -1991f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_add_i32(~(-2147483647i), ~(~u_input.c.x)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1729f, _wgslsmith_f_op_f32(min(293f, 662f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2207f, -465f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, -1431f)) - vec2<f32>(768f, 1372f))))));
    let var_2 = Struct_2(func_4(~(~func_1(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<u32>(23754u, 42447u, u_input.b), u_input.a, vec2<f32>(var_1.x, var_1.x), var_1.x), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1065f, -725f, var_1.x) - vec4<f32>(var_1.x, var_1.x, -1138f, 1500f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -1055f, -682f, var_1.x))))), u_input.c & ~vec3<i32>(2147483647i, var_0, u_input.a), func_2()), true);
    global1 = (_wgslsmith_f_op_f32(876f + var_1.x) < -348f) | (var_2.b == any(vec4<bool>(func_2().b, var_2.a.a.x, var_2.a.a.x, var_2.b)));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.e, _wgslsmith_f_op_f32(round(var_2.a.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1631f, var_2.a.d.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_2.a.b.yy);
}

