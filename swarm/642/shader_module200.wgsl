struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(1349f, -402f), vec2<i32>(-1i, i32(-2147483648)), 28870u, vec3<i32>(-54688i, 5304i, -47354i)), Struct_1(vec2<f32>(217f, 1000f), vec2<i32>(0i, 0i), 0u, vec3<i32>(47487i, -1i, -21120i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = u_input.a.x;
    global0 = array<Struct_1, 2>();
    var var_1 = _wgslsmith_f_op_f32(floor(-2427f));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x ^ 0u, ~(~u_input.a.x)), 2u)];
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, -934f, var_2.a.x)) + vec4<f32>(var_2.a.x, 1161f, var_2.a.x, 868f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -511f, var_2.a.x) - vec4<f32>(var_2.a.x, var_2.a.x, -707f, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -384f), -902f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)))))), -(~vec4<i32>(abs(var_2.b.x), 1i, -45001i, countOneBits(var_2.b.x))), select(vec3<bool>(!any(vec4<bool>(false, true, false, false)), true & (8902i != var_2.d.x), true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false), true), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * -160f) + _wgslsmith_f_op_f32(var_2.a.x - 724f)), var_2.a.x, true))), -var_2.d.xx);
    return _wgslsmith_div_vec2_i32(~(-vec2<i32>(var_2.b.x, -2147483647i)) & vec2<i32>(-var_3.b.x, 75487i), var_2.b);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = u_input.a.x;
    let var_1 = (_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(func_3(), vec2<i32>(2147483647i, 0i), ~vec2<i32>(831i, 20018i)), arg_0.xz, vec2<i32>(32330i, arg_0.x)) & _wgslsmith_div_vec2_i32(vec2<i32>(4092i, arg_0.x), ~vec2<i32>(-2147483647i, arg_0.x))) >> (max(vec2<u32>(~4294967295u, 77117u), abs(~vec2<u32>(u_input.a.x, 71575u))) % vec2<u32>(32u));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~0u, u_input.a.x), max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 38436u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec3<u32>(13784u, 38562u, 1u))) % 32u), 2u)];
    return global0[_wgslsmith_index_u32(32283u | var_2.c, 2u)];
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -941f))))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1124f, 525f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-977f + 760f), _wgslsmith_f_op_f32(sign(1708f)))))));
    global0 = array<Struct_1, 2>();
    var var_1 = u_input.a;
    global0 = array<Struct_1, 2>();
    let var_2 = true;
    return func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i << (0u % 32u), -40507i, max(-1i, -2147483647i), -1i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(1i, -5831i, -2147483647i, -34056i)), vec4<i32>(27077i, 0i, -39417i, 1i), ~vec4<i32>(1i, 14984i, -38528i, 9326i)), ~abs(vec4<i32>(-1i, -1i, 15943i, 23161i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = func_1(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    global0 = array<Struct_1, 2>();
    let var_1 = Struct_1(func_2(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_0.b.x, var_0.d.x, var_0.b.x), vec4<i32>(var_0.d.x, -44141i, -2147483647i, var_0.d.x)), var_0.b.x, 0i, -2147483647i), abs(abs(vec4<i32>(var_0.b.x, var_0.d.x, var_0.b.x, 71475i))), vec4<bool>(true, true, true, true))).a, -vec2<i32>(_wgslsmith_div_i32(-26943i & var_0.d.x, firstLeadingBit(var_0.b.x)), var_0.b.x | 1i), var_0.c, vec3<i32>(_wgslsmith_add_i32(-var_0.d.x >> (0u % 32u), -var_0.b.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.x, 9914i, 0i, var_0.d.x), vec4<i32>(var_0.b.x, -2147483647i, 0i, var_0.d.x) >> (select(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, 0u, u_input.a.x, var_0.c), vec4<bool>(false, false, true, false)) % vec4<u32>(32u))), abs(0i) ^ _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_0.d.x, 13159i)), vec2<i32>(-25168i, var_0.d.x) & var_0.b)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(vec2<bool>(true, true)).a.x)))));
    global0 = array<Struct_1, 2>();
    var var_3 = 59679i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_mod_vec2_u32(abs(_wgslsmith_div_vec2_u32(u_input.a, ~vec2<u32>(var_1.c, 2054u))), ~(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(var_1.c, 50232u), u_input.a) >> (u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_1.a.x)), -abs(-1i));
}

