struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = false;
    let var_1 = Struct_1(-804f, ~countOneBits(global0.b), select(!select(global1.b.a.c, global0.c, !vec3<bool>(false, false, global0.c.x)), arg_1.a.c, select(global1.b.b.c, vec3<bool>(arg_1.b.b.c.x, true, all(vec2<bool>(false, true))), arg_0.a.b.x != 17620u)));
    var var_2 = global1.b;
    var var_3 = u_input.a < _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(u_input.a, 12324i) | -2147483647i), -u_input.a);
    let var_4 = true;
    return u_input.a;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = global1.b.b.c.x;
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-377f, _wgslsmith_f_op_f32(ceil(-135f)), -2263f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a), -123f, global0.a) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(abs(global1.a.a)), _wgslsmith_div_f32(-597f, -814f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(511f, _wgslsmith_f_op_f32(abs(122f)), _wgslsmith_f_op_f32(round(global1.b.a.a))))));
    let var_3 = u_input.a;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1579f))))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.b.b.b.x, global1.b.b.b.x, 1u), global1.a.b, ~global1.b.b.b), vec3<u32>(86217u, global1.a.b.x, 25681u) >> ((vec3<u32>(global1.b.b.b.x, global1.b.b.b.x, 5628u) >> (global1.a.b % vec3<u32>(32u))) % vec3<u32>(32u))), select(global0.c, !global1.a.c, false)), global1.b.b);
    return abs(global1.b.a.b.x);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a - global0.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a - global1.a.a), global1.b.a.a)), ~(global0.b >> (_wgslsmith_mult_vec3_u32(global1.b.b.b, vec3<u32>(1u, 29145u, global1.a.b.x)) % vec3<u32>(32u))), select(select(global0.c, !global1.b.b.c, !global0.c.x), !select(vec3<bool>(global1.a.c.x, global0.c.x, true), global0.c, global0.c.x), all(!global1.b.b.c))), global1.b);
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 61749i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-2147483647i, u_input.a, -48955i, u_input.a))), max(func_2(var_0.b, Struct_3(global1.a, Struct_2(Struct_1(332f, global0.b, vec3<bool>(false, var_0.a.c.x, true)), Struct_1(global0.a, vec3<u32>(4294967295u, 15391u, 4294967295u), vec3<bool>(var_0.b.a.c.x, true, false))))), _wgslsmith_sub_i32(u_input.a, u_input.a)) >> (~global1.b.a.b.x % 32u)) >> (402u % 32u);
    var var_2 = Struct_2(var_0.b.b, var_0.a);
    var_1 = u_input.a << (var_0.a.b.x % 32u);
    let var_3 = Struct_1(var_2.a.a, vec3<u32>(var_0.a.b.x, _wgslsmith_mult_u32(global1.b.b.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(9546u, global0.b.x, 9989u, var_0.a.b.x), vec4<u32>(30175u, 0u, 88463u, global0.b.x)), ~vec4<u32>(0u, 1u, 4294967295u, global1.b.a.b.x))), ~_wgslsmith_div_u32(global0.b.x, 4294967295u) | abs(func_3(u_input.a))), vec3<bool>(var_0.a.c.x, ~1u != ~_wgslsmith_mult_u32(45354u, var_0.a.b.x), any(select(!vec4<bool>(global1.a.c.x, var_2.a.c.x, var_0.b.a.c.x, var_0.a.c.x), vec4<bool>(false, global0.c.x, global1.a.c.x, global0.c.x), select(vec4<bool>(false, true, var_0.b.b.c.x, true), vec4<bool>(var_0.a.c.x, var_0.b.a.c.x, global0.c.x, false), global0.c.x)))));
    return Struct_3(var_0.a, Struct_2(Struct_1(_wgslsmith_div_f32(-332f, _wgslsmith_f_op_f32(step(-246f, 319f))), vec3<u32>(select(0u, var_3.b.x, false), min(var_0.a.b.x, 4294967295u), global1.a.b.x & var_2.b.b.x), select(!var_2.a.c, select(global0.c, vec3<bool>(false, var_0.b.a.c.x, var_2.a.c.x), global1.a.c.x), true)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_f_op_f32(trunc(-1000f)))), vec3<u32>(var_0.b.a.b.x, 4294967295u, var_3.b.x >> (0u % 32u)), vec3<bool>(!var_3.c.x, all(var_2.b.c.zy), any(vec4<bool>(false, false, false, var_2.a.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(u_input.a, 0i)), -vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(~44187u, reverseBits(global1.b.a.b.x)) % vec2<u32>(32u))));
    global1 = func_1();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(289f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.a)))))))));
    global0 = func_1().a;
    var var_2 = global1.b;
    global0 = var_2.a;
    var var_3 = Struct_2(Struct_1(-250f, global0.b, vec3<bool>(false, false, _wgslsmith_dot_vec2_u32(global1.a.b.yz, vec2<u32>(58253u, global1.a.b.x)) >= _wgslsmith_add_u32(global0.b.x, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))))), ~var_2.a.b, select(select(global0.c, !var_2.a.c, global1.a.b.x <= global1.b.b.b.x), select(!vec3<bool>(global1.a.c.x, false, var_2.b.c.x), func_1().a.c, !vec3<bool>(true, false, global1.b.a.c.x)), vec3<bool>(true, true, var_2.a.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(global0.a - var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, 1105f, var_2.b.a)))), _wgslsmith_f_op_f32(step(350f, _wgslsmith_f_op_f32(1003f - -1118f))), _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(~30949i, 0i)), select(abs(select(vec3<i32>(u_input.a, var_0.x, var_0.x) << (vec3<u32>(global0.b.x, 0u, var_3.b.b.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-38843i, var_0.x, var_0.x), vec3<i32>(u_input.a, var_0.x, var_0.x)), 874f > var_2.b.a)), vec3<i32>(-1738i, 0i, _wgslsmith_mult_i32(u_input.a, 1i)) & reverseBits(-vec3<i32>(u_input.a, u_input.a, -2147483647i)), var_2.b.c));
}

