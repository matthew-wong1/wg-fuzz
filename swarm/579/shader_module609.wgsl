struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -783f;

var<private> global1: vec2<f32> = vec2<f32>(-409f, 286f);

var<private> global2: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    global2 = global1.x;
    var var_0 = arg_1;
    global2 = global1.x;
    var var_1 = 12222i;
    var var_2 = true;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1217f)) * _wgslsmith_f_op_f32(floor(-164f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-697f, global1.x)))), _wgslsmith_div_f32(-892f, arg_2.c.b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<f32> {
    global0 = global1.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, global1.x, 790f))))));
    var var_1 = arg_1;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(253f - -1877f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1672f) * _wgslsmith_div_f32(155f, -669f)), 297f))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(23523u, select(vec2<bool>(false, true), vec2<bool>(true, true), false), Struct_3(-549f, 559f, Struct_1(true, -1278f, -2147483647i), Struct_1(false, var_0.x, arg_0.a.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 1391f)), -2356f))) * global1.x);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-886f, var_0.x)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.zy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 2515f) * vec2<f32>(var_0.x, -461f))), vec2<f32>(-254f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), 285f)))));
}

fn func_3() -> i32 {
    return ~(-35427i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_3(481f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) + _wgslsmith_f_op_f32(f32(-1f) * -234f))))), Struct_1(all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), any(vec2<bool>(true, true)))), global1.x, _wgslsmith_clamp_i32(-43564i, min(arg_0, -2147483647i), arg_2.x)), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(827f, global1.x, false))), arg_1), _wgslsmith_add_i32(arg_2.x, -1i)));
    let var_1 = ~abs(abs(vec2<u32>(abs(1u), 1u)));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<i32>(36077i, -48405i, arg_0, 7743i)), arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(448f, arg_1), vec2<f32>(1021f, 506f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, var_0.a), vec2<f32>(var_0.d.b, 979f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_1), vec2<f32>(-319f, arg_1), var_0.c.a)), !vec2<bool>(var_0.c.a, false))))))));
    let var_2 = abs(select(reverseBits(countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)) >> (vec4<u32>(u_input.a, 29184u, 52330u, u_input.a) % vec4<u32>(32u))), ~vec4<u32>(min(u_input.a, 4294967295u), abs(5485u), 25739u, var_1.x), vec4<bool>(true, false, var_0.d.a, var_0.d.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1037f, 1076f, var_0.d.b, var_0.c.b) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(483f, 687f, arg_1, 453f)))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b * global1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1232f))) * global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(2147483647i, 27226i)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(24277i, -1i, 60255i, -51976i), vec4<i32>(1i, -33394i, 2988i, -1i)), _wgslsmith_add_i32(-53021i, 1i)) == 11646i;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1014f, global1.x) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -158f) - _wgslsmith_div_vec2_f32(vec2<f32>(143f, global1.x), vec2<f32>(463f, global1.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 642f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(454f, 771f), _wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<i32>(1i, -30110i, 2147483647i, 1i)), vec2<i32>(-2147483647i, 0i))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-_wgslsmith_div_i32(30128i, func_3()), _wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<i32>(1i, -10811i, 1i, 1i)), vec2<i32>(_wgslsmith_mult_i32(0i, 2486i), -2147483647i))).x, ~(~vec2<i32>(1i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(28106i), 1i) & ~vec2<i32>(-2667i, 0i), min(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(3924i, 0i), vec2<i32>(-25641i, -1i)), countOneBits(vec2<i32>(0i, 0i))), vec2<i32>(-1i, 1i))), ~vec2<u32>(0u, _wgslsmith_add_u32(u_input.a, u_input.a >> (1u % 32u))), max(_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(-14564i, -15020i)), vec2<i32>(1i, 1i)), -firstTrailingBit(23493i)), vec2<i32>(_wgslsmith_add_i32(reverseBits(16669i), ~1i) << (~(1u >> (u_input.a % 32u)) % 32u), -_wgslsmith_mult_i32(~34016i, ~(-55689i))), u_input.a);
}

