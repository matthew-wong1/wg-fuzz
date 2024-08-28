struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, 1000f, vec4<f32>(-2114f, 738f, 1000f, -463f), Struct_1(502f), 1i);

var<private> global1: array<vec2<i32>, 2>;

var<private> global2: array<vec3<f32>, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    global1 = array<vec2<i32>, 2>();
    var var_0 = Struct_3(false, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1937f)), global0.b), _wgslsmith_f_op_f32(arg_1.a * arg_1.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c + global0.c)), global0.c, vec4<bool>(all(vec2<bool>(global0.a, false)), global0.a, (u_input.a & u_input.a) < _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a), true))), arg_0.a, ~_wgslsmith_mult_i32(max(u_input.c, arg_0.c.x), _wgslsmith_mult_i32(global0.e, -21330i)) & global0.e);
    global0 = Struct_3(any(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_2, var_0.a, arg_2, false), arg_2)) | !global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-232f + _wgslsmith_f_op_f32(f32(-1f) * -1643f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(588f - var_0.d.a) * _wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(arg_0.a.a * -290f), _wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - -973f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(939f, 1000f, -1090f, arg_1.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-712f, -415f, var_0.c.x, 1632f) - var_0.c)), _wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(var_0.b, 2278f, arg_1.a, global0.c.x))), vec4<bool>(any(select(vec4<bool>(false, true, global0.a, false), vec4<bool>(true, global0.a, false, var_0.a), vec4<bool>(true, global0.a, false, false))), all(vec2<bool>(global0.a, true)), true, global0.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.a, var_0.d.a, arg_2))))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(min(u_input.b, var_0.e), _wgslsmith_add_i32(-2807i, 1i)), abs(global1[_wgslsmith_index_u32(u_input.a, 2u)])), ~(~max(2147483647i, 2147483647i)), ~6812i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1658f)))), -1864f);
}

fn func_2() -> vec4<bool> {
    global1 = array<vec2<i32>, 2>();
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(global0.d.a + 776f), global0.c, Struct_1(1f), _wgslsmith_clamp_i32(-(firstTrailingBit(-21968i) & ~(-2147483647i)), -u_input.b, -(~1i)));
    global0 = Struct_3(any(select(!vec4<bool>(true, global0.a, global0.a, true), !(!vec4<bool>(global0.a, global0.a, global0.a, global0.a)), false)), -2306f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global0.d, global0.d, vec4<i32>(40067i, -30161i, u_input.e.x, global0.e), vec4<i32>(u_input.e.x, u_input.b, 0i, u_input.e.x)), Struct_1(global0.b), true)), -546f, _wgslsmith_f_op_f32(ceil(364f)), -299f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, -830f, global0.c.x, _wgslsmith_div_f32(global0.b, global0.c.x)))), global0.d, -1i);
    var var_0 = vec3<i32>(countOneBits(1i), -21911i, abs(_wgslsmith_mod_i32(global0.e, (i32(-1i) * -1i) | _wgslsmith_mult_i32(u_input.c, -2147483647i))));
    global1 = array<vec2<i32>, 2>();
    return !(!(!select(select(vec4<bool>(global0.a, global0.a, global0.a, true), vec4<bool>(global0.a, true, false, true), vec4<bool>(global0.a, false, true, false)), vec4<bool>(global0.a, global0.a, false, global0.a), !vec4<bool>(global0.a, true, false, false))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec3<u32>(~113905u, u_input.a, 21199u);
    var var_1 = select(!vec4<bool>(all(select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, false, global0.a), vec3<bool>(false, true, false))), false, !select(global0.a, false, global0.a), global0.a), !func_2(), global0.a);
    let var_2 = ~(~7907u ^ countOneBits(u_input.a ^ ~var_0.x));
    global2 = array<vec3<f32>, 7>();
    global1 = array<vec2<i32>, 2>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a)))), Struct_1(1117f), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.d, global0.e, u_input.b)), ~vec4<i32>(global0.e, global0.e, 37145i, -5295i), vec4<i32>(2147483647i, 3628i, global0.e, -16944i)), (vec4<i32>(global0.e, u_input.c, u_input.e.x, global0.e) | vec4<i32>(-32884i, 0i, u_input.b, 1i)) & ~vec4<i32>(global0.e, u_input.b, global0.e, u_input.e.x)), ~(~vec4<i32>(0i, -26999i, -13984i, -3962i))), vec4<i32>(_wgslsmith_mod_i32(global0.e, 1i), countOneBits(~(~global0.e)), global0.e ^ _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 45620i, u_input.e.x), u_input.e), _wgslsmith_clamp_i32(global0.e, 2147483647i, u_input.b)), -28648i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, global0.a);
    let var_1 = func_1(global0.d);
    let var_2 = global0.a | !any(vec4<bool>(var_0.x, var_0.x, !var_0.x, var_0.x && true));
    var var_3 = var_1.a;
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    var var_4 = u_input.c;
    var_4 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.d.a));
}

