struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1209f, global0.x, arg_0.x)), 318f)) == 123f, arg_0.x));
    var var_1 = ~4294967295u;
    var_1 = u_input.c.x >> (u_input.c.x % 32u);
    let var_2 = Struct_3(Struct_2(abs(-abs(vec4<i32>(u_input.b.x, u_input.d, 2147483647i, u_input.d))), any(select(!vec4<bool>(arg_0.x, false, false, false), select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(arg_0.x, true, false, true)), true))), Struct_2(vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, u_input.b.x), -2147483647i, ~u_input.b.x), -27707i, _wgslsmith_sub_i32(u_input.d, 1i)), all(select(!vec4<bool>(true, arg_0.x, true, false), !vec4<bool>(arg_0.x, var_0.a.x, var_0.a.x, false), all(vec3<bool>(arg_0.x, var_0.a.x, false))))));
    var var_3 = vec3<u32>(1u, 0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.c.wyz, vec3<u32>(u_input.c.x, 0u, u_input.c.x))), u_input.c.yyw));
    return var_3.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(~1u, countOneBits(16904u), ~0u, ~select(u_input.c.x, ~func_3(vec2<bool>(false, true)), all(vec3<bool>(true, true, false))));
    let var_1 = Struct_3(Struct_2(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.d), u_input.d), max(u_input.d, u_input.b.x) << (49754u % 32u), u_input.a, u_input.b.x), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)))), Struct_2(reverseBits(vec4<i32>(2147483647i, firstLeadingBit(-12929i), _wgslsmith_mod_i32(u_input.a, u_input.d), u_input.b.x << (u_input.c.x % 32u))), all(vec2<bool>(true, true))));
    var var_2 = Struct_3(Struct_2(var_1.a.a, var_1.b.b), var_1.b);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 291f) * vec2<f32>(353f, -1000f))))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1626f), -960f));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), 176f)))) - vec2<f32>(global0.x, -982f));
    return Struct_1(!(!vec3<bool>(false, 76449u > var_0.x, any(vec4<bool>(false, false, false, var_1.b.b)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = ~(~_wgslsmith_div_u32(1u, u_input.c.x));
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1011f))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_f_op_f32(exp2(var_3))));
    return Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 1i, u_input.d, 1i) ^ select(vec4<i32>(1i, u_input.b.x, var_2.x, 0i), vec4<i32>(var_2.x, 8403i, -23577i, -2147483647i), vec4<bool>(false, true, var_0.a.x, false)), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, -31246i, var_2.x), -vec4<i32>(-20215i, 1i, 25902i, u_input.d))) | _wgslsmith_add_vec4_i32(select(vec4<i32>(2147483647i, 18844i, 43626i, var_2.x), vec4<i32>(u_input.b.x, var_2.x, -1i, -5359i), arg_1.a.x) | _wgslsmith_add_vec4_i32(vec4<i32>(-3463i, u_input.d, 0i, 0i), vec4<i32>(1699i, 23646i, 67408i, var_2.x)), select(vec4<i32>(var_2.x, -1i, 2351i, var_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(4227i, u_input.a, var_2.x, var_2.x), vec4<i32>(15385i, var_2.x, var_2.x, var_2.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.a.x, true, false, arg_1.a.x), var_0.a.x))), !select(arg_1.a.x, arg_1.a.x, var_0.a.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = func_4(~arg_0.x, func_2());
    let var_1 = !func_2().a;
    var var_2 = _wgslsmith_f_op_f32(-421f * global0.x);
    var var_3 = Struct_3(Struct_2(var_0.a, all(vec2<bool>(global0.x < global0.x, all(var_1)))), func_4(reverseBits(0u), Struct_1(!func_2().a)));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 756f, var_3.b.b)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -539f, global0.x), vec3<f32>(global0.x, global0.x, 467f), all(vec4<bool>(var_3.b.b, var_1.x, var_0.b, var_1.x)))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(527f, -509f, 597f)))));
    return StorageBuffer(abs(vec3<i32>(var_0.a.x, var_0.a.x, max(u_input.d, -14340i) | -23040i)), _wgslsmith_mod_u32(17674u, 1u), arg_0.ywy, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-595f + global0.x), _wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(trunc(global0.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(792f, global0.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(937f, -1562f) - vec2<f32>(652f, 1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(404f, -862f), vec2<f32>(global0.x, 1101f))))))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global0 = vec2<f32>(1f, 1000f);
    let var_0 = u_input.d >> (u_input.c.x % 32u);
    let x = u_input.a;
    s_output = func_1(~(~u_input.c), countOneBits(u_input.c.ywx));
}

