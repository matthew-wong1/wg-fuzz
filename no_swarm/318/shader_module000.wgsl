struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), true)));
    let var_1 = var_0.a;
    let var_2 = u_input.a.x;
    var var_3 = 15680u & u_input.b;
    var_3 = 52859u;
    return Struct_1(vec4<bool>(true, any(!vec2<bool>(false, var_0.a.x)), _wgslsmith_add_i32(-var_2, 0i) <= _wgslsmith_add_i32(~var_2, 41203i << (1u % 32u)), var_1.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(!arg_2.a, vec4<bool>(_wgslsmith_f_op_f32(round(-181f)) == 107f, true, !(arg_2.a.x || true), arg_2.a.x), select(vec4<bool>(true, arg_2.a.x | arg_0.x, arg_2.a.x, u_input.b <= u_input.b), arg_2.a, true)));
    return func_2();
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~vec4<i32>(u_input.a.x, -_wgslsmith_add_i32(countOneBits(4052i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2331i), vec3<i32>(u_input.a.x, 0i, u_input.a.x))), min(min(u_input.a.x, firstTrailingBit(u_input.a.x)), u_input.a.x), u_input.a.x);
    var var_1 = firstTrailingBit(var_0.x);
    var_0 = ~vec4<i32>(-((var_0.x ^ var_0.x) & u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, 20965i, 8908i), ~vec4<i32>(2147483647i, var_0.x, -1i, var_0.x)), vec4<i32>(~(-2147483647i), ~(-30617i), _wgslsmith_clamp_i32(var_0.x, -1i, -2147483647i), 1i)), i32(-1i) * -(~u_input.a.x), 8947i);
    var var_2 = Struct_1(arg_2.a);
    let var_3 = _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-1i) * -(vec4<i32>(var_0.x, 1i, var_0.x, -1i) & vec4<i32>(var_0.x, var_0.x, -2147483647i, 2147483647i))), -vec4<i32>(-1i, 0i, ~firstTrailingBit(u_input.a.x), -var_0.x));
    return func_1(vec4<bool>(select(!arg_0 || true, var_2.a.x, !func_1(vec4<bool>(false, true, arg_1.a.x, false), 1i, Struct_1(vec4<bool>(true, arg_1.a.x, arg_1.a.x, var_2.a.x))).a.x), !((true == arg_2.a.x) || !arg_0), !(abs(2147483647i) < (u_input.a.x << (u_input.b % 32u))), all(select(vec4<bool>(false, arg_1.a.x, arg_2.a.x, var_2.a.x), func_1(arg_1.a, var_0.x, arg_2).a, 132278u < u_input.b))), -1i, Struct_1(!vec4<bool>(arg_2.a.x, false, var_2.a.x, var_2.a.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<bool> {
    global0 = array<vec3<u32>, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))));
    let var_1 = 468f;
    let var_2 = -294f;
    var var_3 = arg_1;
    return vec4<bool>(!(!any(vec2<bool>(true, false))), !(!var_3.a.x), all(func_2().a.yz), !var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(79180u, u_input.b, 0u), vec3<u32>(u_input.b, 48512u, 10584u)), func_3(true, Struct_1(vec4<bool>(false, false, false, true)), func_1(vec4<bool>(true, true, false, true), -2147483647i, Struct_1(vec4<bool>(false, true, true, false)))), ~(~vec3<u32>(4294967295u, u_input.b, 14543u))), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), !vec4<bool>(true, any(vec4<bool>(true, false, true, true)), u_input.a.x > u_input.a.x, true)));
    var var_1 = vec3<i32>(-3976i, 2147483647i, i32(-1i) * -57935i) ^ u_input.a;
    let var_2 = -599f;
    global0 = array<vec3<u32>, 12>();
    var var_3 = var_0.a.x;
    var_1 = -_wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, abs(53443i), u_input.a.x), ~vec3<i32>(var_1.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u))));
    let var_4 = var_0;
    var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(min(select(vec4<i32>(15482i, -24456i, 3309i, 1i), -vec4<i32>(1i, -1i, -13701i, 1i), var_4.a), vec4<i32>(-var_1.x, _wgslsmith_add_i32(u_input.a.x, -28212i), reverseBits(2147483647i), countOneBits(2147483647i))), vec4<i32>(var_1.x, firstTrailingBit(var_1.x), 2147483647i, 26479i)), abs(-(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), -1i);
    let var_5 = func_1(vec4<bool>(true, !(_wgslsmith_f_op_f32(f32(-1f) * -1140f) <= var_2), !func_3(select(true, true, var_0.a.x), Struct_1(var_0.a), var_4).a.x, var_4.a.x), u_input.a.x, Struct_1(var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1971f, _wgslsmith_f_op_f32(trunc(-271f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1322f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2)))), vec4<f32>(1355f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(round(-788f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(161f))), _wgslsmith_f_op_f32(var_2 - -305f)), var_0.a)), ~vec4<u32>(~4294967295u, ~(u_input.b << (32815u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), abs(vec2<u32>(u_input.b, u_input.b))), u_input.b ^ u_input.b));
}

