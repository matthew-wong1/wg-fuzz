struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: array<Struct_1, 15>;

var<private> global3: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 15>();
    global0 = ~_wgslsmith_add_u32(~0u & global3.a.b, _wgslsmith_sub_u32(~u_input.e, global3.a.b));
    let var_0 = vec3<i32>(~u_input.b.x, _wgslsmith_add_i32(u_input.c.x, u_input.c.x), max(min(15629i, 13731i), -(u_input.a | -44009i))) | abs(max(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.d, -43960i, u_input.a)) & -u_input.b, u_input.c));
    var var_1 = vec4<u32>(abs(1u), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), ~global3.a.b, 4294967295u, 1u), ~vec4<u32>(1u, u_input.e, global3.a.d.x, global3.a.d.x))), global3.a.d.x, u_input.e);
    var var_2 = global3.a.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -100f);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b, global3.b, global3.b), vec3<f32>(global3.b, 588f, global3.b)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global3.b, global3.b)))), !select(vec3<bool>(false, global3.a.e, false), vec3<bool>(true, false, global3.a.a), global3.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, 863f, global3.b)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global3.b) + global3.b), _wgslsmith_f_op_f32(abs(-585f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1497f - _wgslsmith_f_op_f32(-var_0.x))))), -1666f, _wgslsmith_f_op_f32(func_3()), global3.b);
    global0 = _wgslsmith_div_u32(abs(u_input.e), u_input.e);
    let var_2 = Struct_3(global3.a.a, select(!select(vec4<bool>(false, global3.a.a, global3.a.e, global3.a.a), select(vec4<bool>(false, false, false, false), vec4<bool>(global3.a.e, global3.a.e, global3.a.c, global3.a.a), vec4<bool>(false, false, global3.a.a, true)), !global3.a.c), vec4<bool>(all(!vec3<bool>(true, true, global3.a.a)), true, false, all(vec3<bool>(global3.a.c, true, global3.a.e))), select(!(!vec4<bool>(true, global3.a.c, global3.a.c, global3.a.c)), vec4<bool>(!global3.a.e, !global3.a.a, global3.a.a, any(vec3<bool>(false, false, global3.a.c))), true)), ~vec4<i32>(countOneBits(3936i), 0i, min(u_input.a << (global3.a.b % 32u), -2147483647i), arg_0.x | _wgslsmith_mult_i32(2147483647i, u_input.b.x)), select(vec2<bool>((1u <= global3.a.d.x) || !global3.a.e, global3.a.a), vec2<bool>(global3.a.c, !global3.a.c), select(select(select(vec2<bool>(true, true), vec2<bool>(global3.a.e, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(global3.a.a, false), global3.a.c), !vec2<bool>(true, global3.a.a)), !vec2<bool>(global3.a.a, global3.a.a), select(vec2<bool>(global3.a.e, global3.a.e), !vec2<bool>(true, global3.a.c), select(vec2<bool>(global3.a.e, global3.a.e), vec2<bool>(global3.a.c, global3.a.c), global3.a.e)))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-332f))))));
    var var_3 = var_2;
    return all(!vec2<bool>(var_3.a, !(!var_3.b.x)));
}

fn func_1() -> Struct_4 {
    return Struct_4(Struct_1(func_2(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(u_input.a, u_input.d, -19513i, -20674i) & vec4<i32>(-10336i, u_input.b.x, -1i, u_input.c.x))), ~global3.a.d.x, false, vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~global3.a.d.x), _wgslsmith_clamp_u32(1u, abs(0u), _wgslsmith_dot_vec3_u32(global3.a.d, vec3<u32>(u_input.e, u_input.e, u_input.e))), global3.a.d.x), true), 273f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    let var_2 = Struct_4(Struct_1(var_0.a.c, ~(~global3.a.b), true, _wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.a.b, u_input.e, global3.a.b), ~vec3<u32>(0u, 4294967295u, var_0.a.b), ~countOneBits(vec3<u32>(u_input.e, u_input.e, 1u))), var_0.a.a), -187f);
    let var_3 = var_2.a.d.xy;
    var var_4 = _wgslsmith_f_op_f32(ceil(global3.b));
    global2 = array<Struct_1, 15>();
    let var_5 = true;
    let var_6 = _wgslsmith_mult_i32(-u_input.b.x, -(~(i32(-1i) * -1i) | (_wgslsmith_div_i32(2147483647i, u_input.c.x) ^ _wgslsmith_add_i32(u_input.b.x, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1121f, var_2.b, global3.b, var_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-615f, -1251f, -120f, global3.b)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-813f * 1007f), _wgslsmith_f_op_f32(step(-374f, -242f)), -662f, _wgslsmith_f_op_f32(floor(var_1)))))), var_0.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, -359f), vec2<f32>(416f, var_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, global3.b)))))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_6, 14516i, u_input.d) << (var_0.a.d % vec3<u32>(32u)), -vec3<i32>(2147483647i, 2147483647i, var_6)), _wgslsmith_mult_i32(var_6, ~u_input.b.x), -_wgslsmith_sub_i32(-55989i, var_6)));
}

