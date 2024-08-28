struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(442f, 217f, -1006f, -2279f);

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: f32 = -1039f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_1(global0.x, _wgslsmith_f_op_f32(-global0.x));
    global1 = array<vec4<f32>, 17>();
    global0 = global1[_wgslsmith_index_u32(30905u, 17u)];
    var var_1 = abs(u_input.b);
    let var_2 = -476f;
    return 238i;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(102f, global0.x, false))))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(1u, 17u)])) * _wgslsmith_div_vec4_f32(vec4<f32>(-2078f, -1000f, global0.x, global0.x), vec4<f32>(global0.x, -1074f, global0.x, arg_3.x))), global1[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 17u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 17u)] - vec4<f32>(768f, -306f, 201f, arg_3.x))))));
    var var_0 = ~1u;
    let var_1 = -_wgslsmith_div_i32(u_input.b, -func_3(Struct_3(vec3<bool>(true, false, true)), ~u_input.a.x, Struct_3(vec3<bool>(false, false, false))));
    var var_2 = u_input.a.xx;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = Struct_3(vec3<bool>(!any(vec2<bool>(true, true)), all(vec2<bool>(true, false)), any(vec3<bool>(false, false, true)) != any(vec3<bool>(true, true, true))));
    global2 = _wgslsmith_f_op_f32(877f * 1034f);
    global1 = array<vec4<f32>, 17>();
    global2 = 589f;
    var_0 = Struct_3(select(select(select(vec3<bool>(true, false, false), var_0.a, var_0.a.x), vec3<bool>(true, var_0.a.x, any(vec2<bool>(false, var_0.a.x))), var_0.a), vec3<bool>(!var_0.a.x, !var_0.a.x, any(var_0.a) | true), !vec3<bool>(u_input.b > -47i, var_0.a.x, true)));
    return var_0.a.x;
}

fn func_1(arg_0: u32) -> bool {
    global1 = array<vec4<f32>, 17>();
    var var_0 = 1i;
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), ~vec3<i32>(0i, -2147483647i, u_input.b), vec2<bool>(true, true), u_input.b >> (56218u % 32u)), true, Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec3<i32>(1i, 2147483647i, 2147483647i), vec2<bool>(true, true), ~19311i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1495f, -287f), global0.wyx) - _wgslsmith_f_op_vec3_f32(ceil(global0.xzy))))) + 364f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1025f)), _wgslsmith_f_op_f32(658f - global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-772f)), _wgslsmith_f_op_f32(global0.x + -3242f)))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(vec4<bool>(true, true, true, true)));
    var_0 = true;
    var var_1 = u_input.b;
    var_1 = -_wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-10444i, 28101i, 1i), ~vec3<i32>(52174i, -33689i, 40174i)), u_input.b));
    var var_2 = Struct_3(select(!vec3<bool>(true, func_1(11445u), true), select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.a.x != 4294967295u, true), vec3<bool>(true, true, true)), (u_input.a.x | ~u_input.a.x) <= ~u_input.a.x));
    let var_3 = Struct_3(select(select(!var_2.a, var_2.a, !vec3<bool>(var_2.a.x, false, false)), vec3<bool>(true, var_2.a.x, var_2.a.x), func_4(global0.x, Struct_1(-199f, _wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_add_i32(1i, u_input.b), 353f)));
    var var_4 = 1000f;
    var var_5 = Struct_1(global0.x, global0.x);
    let var_6 = Struct_1(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-var_5.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(firstTrailingBit(u_input.b)), -1i), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-23625i, -1i, u_input.b, -17050i), vec4<i32>(1i, u_input.b, u_input.b, u_input.b), vec4<i32>(-11546i, 17936i, -2147483647i, u_input.b)), ~vec4<i32>(2147483647i, u_input.b, u_input.b, 4753i)) >> (vec4<u32>(79229u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 95970u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 62206u)), u_input.a.x, ~4294967295u) % vec4<u32>(32u)), ~countOneBits(abs(vec4<i32>(53214i, -2147483647i, 0i, u_input.b)))), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~0u, u_input.a.x), 17u)]), ~(~1u), select(firstTrailingBit(_wgslsmith_mod_i32(-u_input.b, 1i)), -2147483647i, true));
}

