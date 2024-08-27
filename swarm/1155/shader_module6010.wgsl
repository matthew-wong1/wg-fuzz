struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_4(!select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, all(vec3<bool>(true, arg_0.x, arg_0.x)), true, any(vec2<bool>(true, arg_0.x)))));
    var var_1 = Struct_2(max(u_input.e.x, countOneBits(15783i)));
    var var_2 = Struct_2(-_wgslsmith_mult_i32(~(-4806i), var_1.a));
    let var_3 = Struct_4(vec4<bool>(u_input.a != (0u | firstTrailingBit(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), true && !var_0.a.x, 9519u < (u_input.b | countOneBits(u_input.a))));
    let var_4 = true;
    return vec4<bool>(false, all(!select(!var_0.a.wx, vec2<bool>(var_3.a.x, var_3.a.x), var_0.a.x)), false, !var_3.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(u_input.e.x, true, !func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(111f, -524f), vec2<f32>(-879f, -1000f))))), !vec2<bool>(true || select(true, false, false), true), -690f);
    let var_1 = ~((_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.b, u_input.b), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a))) ^ ~max(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.b, u_input.b))) & vec3<u32>(u_input.a, u_input.b, 12198u));
    var var_2 = any(var_0.c.wwy);
    let var_3 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(~var_1.x, 16911u)), ~(~var_1.x));
    var_2 = true;
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    let var_0 = vec3<bool>(!(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)))), any(func_3(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec2<f32>(arg_1.x, -611f))), select(true, ~_wgslsmith_div_u32(u_input.b, 32016u) > (u_input.a | ~u_input.b), false));
    let var_1 = Struct_3(~(~((vec2<u32>(u_input.a, 15008u) | vec2<u32>(65684u, 29239u)) << (~vec2<u32>(u_input.a, 15868u) % vec2<u32>(32u)))));
    let var_2 = select(max(var_1.a, vec2<u32>(u_input.b, _wgslsmith_clamp_u32(4294967295u, var_1.a.x | var_1.a.x, var_1.a.x))), var_1.a, false);
    let var_3 = countOneBits(select(var_2.x, u_input.a, true & var_0.x));
    var var_4 = u_input.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f), arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 330f))) + arg_1.x)) - _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 162f) * vec4<f32>(-1395f, arg_2.x, 1006f, 1528f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-168f, 722f, arg_2.x, arg_2.x)))), !(!select(vec4<bool>(true, false, arg_3.a.x, false), vec4<bool>(arg_3.a.x, false, arg_3.a.x, false), false)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1174f, arg_2.x)) * arg_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1163f)) - arg_2.x)), arg_2.x, arg_2.x, _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) * arg_2)))));
    var var_1 = func_3(vec3<bool>(true, arg_3.a.x | all(vec4<bool>(true, arg_3.a.x, false, false)), func_3(vec3<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1861f, arg_2.x) * vec2<f32>(1000f, -688f))).x | all(!arg_3.a.wwy)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.zy)))).yyw;
    var var_2 = vec2<u32>(min(_wgslsmith_clamp_u32(arg_1.x, u_input.b, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(1u, 54711u))) | _wgslsmith_mod_u32(1u, ~1u), arg_1.x), 35762u);
    var var_3 = 1u;
    var_1 = vec3<bool>(!var_1.x, false, true);
    return select(arg_3.a, vec4<bool>(abs(abs(1i)) < u_input.e.x, true || var_1.x, arg_3.a.x, any(!func_3(vec3<bool>(true, false, false), arg_2))), arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = Struct_4(func_1(!any(vec3<bool>(true, true, true)), vec2<u32>(u_input.b, 1u), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1000f), _wgslsmith_f_op_f32(min(-615f, -246f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-721f, -786f, true)), 846f, false))), Struct_4(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), false))));
    var var_2 = ~(~(~(~vec3<u32>(45336u, 4294967295u, 0u) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(u_input.b, u_input.a, 0u)) % vec3<u32>(32u)))));
    var_0 = u_input.c;
    var var_3 = select(var_1.a.zyx, var_1.a.xzy, vec3<bool>(true, !all(!var_1.a.zxx), true));
    let var_4 = Struct_4(var_1.a);
    let var_5 = Struct_1(u_input.e.x, var_4.a.x, vec4<bool>(false, var_4.a.x, (abs(56839u) == _wgslsmith_div_u32(var_2.x, 1u)) || true, !all(var_4.a)), vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_6 = Struct_3(var_2.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_5.e - _wgslsmith_div_f32(var_5.e, var_5.e)), -317f), vec2<f32>(786f, _wgslsmith_f_op_f32(round(var_5.e))))), vec3<f32>(-1064f, -767f, -267f), ~(~vec2<u32>(~var_2.x, abs(var_6.a.x))), vec4<u32>(u_input.a, var_2.x, _wgslsmith_add_u32(abs(1u), var_6.a.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_2.xz, var_6.a, var_2.yx), _wgslsmith_mult_vec2_u32(~var_2.yy, vec2<u32>(u_input.b, 19431u) ^ vec2<u32>(var_6.a.x, u_input.a)))), abs(~vec4<u32>(var_6.a.x, var_6.a.x, _wgslsmith_clamp_u32(var_6.a.x, u_input.b, 1u), 1u)));
}

