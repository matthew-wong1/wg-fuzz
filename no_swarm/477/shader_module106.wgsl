struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = vec2<u32>(~arg_0.b, 0u) & (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(arg_0.b, 11258u) % vec2<u32>(32u)), ~vec2<u32>(arg_0.b, arg_0.b)), ~min(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(arg_0.b, arg_0.b))) >> (vec2<u32>(~0u, arg_0.b) % vec2<u32>(32u)));
    var var_1 = false;
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = max(17596u, min(14347u, abs(~1u)));
    var var_1 = !(!arg_0);
    var_1 = select(select(select(vec4<bool>(true, true, 779f < arg_1.a, false), arg_0, !(!arg_0)), arg_0, !vec4<bool>(var_1.x, true, true, true)), vec4<bool>(arg_0.x, any(select(var_1.xw, select(var_1.ww, arg_0.xz, false), arg_1.b < 81230u)), false, true), !arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(256f, -419f, _wgslsmith_f_op_f32(trunc(-328f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_1.a) + vec3<f32>(arg_1.a, arg_1.a, arg_1.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, -1000f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a, arg_1.a, -589f)))))))));
    var_1 = vec4<bool>(true, true, all(!select(select(arg_0, vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false)), vec4<bool>(var_1.x, arg_0.x, true, true), any(vec3<bool>(var_1.x, var_1.x, var_1.x)))), true);
    return true;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(563f))))), ~(~14582u)), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) > countOneBits(u_input.a.x));
    var_0 = Struct_1(var_0.a, var_0.b);
    let var_1 = 1u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)) * -1057f) * var_0.a), var_0.a, -2605f);
    let var_3 = firstTrailingBit(u_input.a.x);
    return select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, true, false, any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), func_3(vec4<bool>(true, false, true, false), Struct_1(1218f, 4294967295u))))), select(true, true, !all(vec4<bool>(true, true, false, false)) || !func_3(vec4<bool>(true, true, false, true), Struct_1(var_0.a, var_0.b))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(u_input.a.x, u_input.a.x);
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1416f)))))), 4294967295u), any(arg_2));
    var_0 = countOneBits(u_input.a.x >> (max(0u, ~(~1u)) % 32u));
    let var_2 = ~vec4<i32>(u_input.a.x, 0i, _wgslsmith_div_i32(1i | (u_input.a.x >> (arg_1 % 32u)), u_input.a.x), -2147483647i);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))));
    return func_2(Struct_1(var_1.a, countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 1u, var_1.b, arg_1), min(vec4<u32>(var_1.b, arg_1, arg_1, arg_1), vec4<u32>(var_1.b, 4294967295u, 4294967295u, 57590u))))), true);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(0u), arg_2.b, 1u, ~arg_0.b), vec4<u32>(60413u, max(4294967295u, arg_2.b), _wgslsmith_sub_u32(var_0.b, 1u), reverseBits(arg_2.b)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), 25060u);
    let var_3 = -arg_1;
    let var_4 = var_1.xxw;
    return func_4(select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), 67816u <= var_2.b), vec2<bool>(false, func_1().x), false), 0u, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~firstLeadingBit(abs(0u))), _wgslsmith_mult_u32(0u, ~23364u));
    var var_1 = func_5(func_4(vec2<bool>(true, true), ~(~_wgslsmith_div_u32(var_0.x, var_0.x)), func_1()), select(2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(17920i, -2147483647i), u_input.a.xz), 0i <= (_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) << ((4294967295u << (var_0.x % 32u)) % 32u))), Struct_1(_wgslsmith_f_op_f32(trunc(-368f)), 1u), Struct_1(-1412f, ~(~(~var_0.x))));
    var_0 = _wgslsmith_mult_vec2_u32(~(~countOneBits(vec2<u32>(var_1.b, 0u)) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.b), select(vec2<u32>(0u, var_1.b), vec2<u32>(10903u, var_0.x), true))), _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.x, ~4294967295u) ^ max(~vec2<u32>(var_1.b, var_0.x), vec2<u32>(var_1.b, var_1.b) << (vec2<u32>(4294967295u, var_1.b) % vec2<u32>(32u))), max(~(~vec2<u32>(57743u, var_1.b)), reverseBits(vec2<u32>(13078u, var_0.x)))));
    var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(43035u, 117404u), vec2<u32>(44267u, var_1.b)), vec2<u32>(4294967295u, var_0.x) >> (reverseBits(vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_add_u32(~var_1.b & (0u | var_1.b), func_4(vec2<bool>(false, false), abs(var_0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true)).b), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, -657f, var_1.a), vec3<f32>(var_1.a, -652f, var_1.a), vec3<bool>(true, false, false))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, var_1.a, var_1.a)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, 1401f), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, 750f), vec3<f32>(var_1.a, var_1.a, var_1.a)), true))))), _wgslsmith_sub_vec4_u32(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(81004u, var_0.x, 4294967295u, var_1.b), vec4<u32>(var_1.b, var_1.b, 32129u, var_1.b), vec4<u32>(var_0.x, var_0.x, var_1.b, 0u)), reverseBits(vec4<u32>(1u, var_0.x, 14100u, var_0.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, var_1.b, 10555u, 1u), vec4<u32>(var_0.x, var_1.b, var_1.b, var_1.b)) << (abs(vec4<u32>(var_1.b, 1u, 4294967295u, var_0.x)) % vec4<u32>(32u)))), -25294i, var_0.x, u_input.a.xx);
}

