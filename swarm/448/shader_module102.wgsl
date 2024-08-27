struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(true), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<u32>(0u, 0u, 41728u, u_input.b) ^ vec4<u32>(4294967295u, u_input.b, 1u, 1u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 0u, 0u), ~u_input.b, select(24184u, 65965u, arg_1.x), u_input.b))));
    let var_1 = Struct_2(var_0.a.a, vec4<u32>(_wgslsmith_clamp_u32(~(~1153u), var_0.a.b.x, ~52328u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 35389u, 0u), _wgslsmith_clamp_vec4_u32(var_0.a.b, vec4<u32>(var_0.a.b.x, var_0.a.b.x, 37245u, 53343u), vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, u_input.b))) | _wgslsmith_sub_u32(var_0.a.b.x, ~u_input.b), min(~min(var_0.a.b.x, 20223u), u_input.b)));
    var var_2 = _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(select(54133i, u_input.a, var_0.a.a.a), u_input.a, arg_2), vec3<i32>(_wgslsmith_div_i32(arg_2, -2147483647i), arg_2, -1i)), vec3<i32>(_wgslsmith_div_i32(u_input.a, arg_2), i32(-1i) * -29689i, arg_2));
    var var_3 = var_2.x;
    let var_4 = _wgslsmith_mod_i32(var_2.x, i32(-1i) * -_wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(var_2.x, -2147483647i), _wgslsmith_mod_i32(12009i, -9818i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f))));
}

fn func_2() -> Struct_4 {
    let var_0 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.c, u_input.c) >> (vec3<u32>(63554u, 64220u, 12497u) % vec3<u32>(32u))) ^ -firstLeadingBit(vec3<i32>(2147483647i, 25867i, -12037i)), (~vec3<i32>(u_input.a, u_input.c, u_input.c) | abs(vec3<i32>(-16201i, u_input.a, u_input.a))) & vec3<i32>(i32(-1i) * -67677i, -26234i, u_input.c));
    var var_1 = -183f;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f + -123f) * _wgslsmith_div_f32(-1635f, -2542f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-799f - 1601f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<f32>(229f, 100f), vec3<bool>(true, true, false), var_0.x))))))));
    var var_2 = Struct_4(Struct_1(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)))), u_input.c);
    var var_3 = select(select(vec2<bool>(select(true, true, any(vec4<bool>(var_2.a.a, var_2.a.a, false, var_2.a.a))), true), select(vec2<bool>(var_2.a.a, true), vec2<bool>(true, true), ~992u > u_input.b), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, var_2.a.a, false))), vec2<bool>(!var_2.a.a, true || var_2.a.a), !select(vec2<bool>(true, true), vec2<bool>(var_2.a.a, false), var_2.a.a)), true);
    return Struct_4(Struct_1(all(vec3<bool>(any(vec2<bool>(true, var_3.x)), false, var_2.a.a))), var_2.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = false;
    let var_1 = ((select(vec3<u32>(97609u, u_input.b, 1u) & vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, 23545u), !vec3<bool>(var_0, false, var_0)) ^ max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(30843u, 14553u, 0u)), vec3<u32>(0u, u_input.b, u_input.b) & vec3<u32>(u_input.b, 1u, u_input.b))) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 36305u), vec2<u32>(4294967295u, u_input.b)), _wgslsmith_sub_u32(~u_input.b, _wgslsmith_sub_u32(18495u, 1u)), u_input.b)) << ((vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26778u, 0u, 26042u), vec3<u32>(71517u, 1u, u_input.b)) ^ u_input.b, ~102380u, 1u << ((91563u ^ u_input.b) % 32u)) << (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = func_2();
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1066f - _wgslsmith_f_op_f32(abs(-383f))), 119f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 977f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1665f, arg_1) - vec2<f32>(1467f, arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, -593f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1118f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 516f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1419f, -589f)))))));
    return Struct_2(var_2.a, _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, var_1.x, 4294967295u, 1u))), firstLeadingBit(~firstTrailingBit(vec4<u32>(u_input.b, var_1.x, var_1.x, 29009u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(vec2<bool>(true, true), vec2<bool>(select(false, true, true), false), vec2<bool>(true, true)));
    var var_1 = Struct_1(true);
    var var_2 = func_1(~min(min(vec2<i32>(1i, 1i), -vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, -u_input.a)), -1000f);
    var_0 = false;
    let var_3 = var_2.a.a;
    let var_4 = !any(select(vec2<bool>(true, var_1.a | false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_2.a.a, var_1.a), var_1.a), select(vec2<bool>(false, var_2.a.a), vec2<bool>(var_1.a, var_2.a.a), false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(621f, _wgslsmith_f_op_f32(func_3(vec2<f32>(-1000f, -588f), vec3<bool>(true, true, var_2.a.a), u_input.c)), _wgslsmith_f_op_f32(min(1451f, 466f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, -173f, -244f)))))), -_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, 18225i)), vec2<i32>(45315i, -u_input.a)), vec2<f32>(-137f, _wgslsmith_f_op_f32(select(2090f, 210f, all(vec4<bool>(false, true, var_2.a.a, var_1.a))))));
}

