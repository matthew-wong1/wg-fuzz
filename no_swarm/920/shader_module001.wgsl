struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: f32 = 514f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1164f), -297f)) + _wgslsmith_f_op_f32(f32(-1f) * -493f));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(217f, -125f), any(vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false))))), arg_0.x, Struct_1(863f, !(all(vec2<bool>(false, false)) && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), Struct_1(arg_0.x, !(!any(vec3<bool>(false, false, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(var_0.c.a)), var_0.e.b);
    let var_2 = ~(~61803u << ((firstTrailingBit(71575u) & _wgslsmith_mod_u32(1u, 1u)) % 32u)) << (~((37528u & select(4294967295u, 4555u, false)) >> (_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 80086u), 26u)], _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(1u, 26u)], vec2<u32>(9581u, 26761u))) % 32u)) % 32u);
    var var_3 = !vec4<bool>(false, !all(!vec4<bool>(false, var_0.a.b, false, true)), u_input.a < u_input.a, var_1.b);
    var var_4 = var_1.b;
    return -select(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, u_input.a, -2147483647i), ~(-vec3<i32>(22191i, arg_1, -40043i)), vec3<i32>(1i, -13229i, ~0i)), ~vec3<i32>(max(1i, u_input.a), u_input.b, 19464i), vec3<bool>(all(var_3.xxy), true, true));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(116f, 170f) * _wgslsmith_f_op_f32(arg_2.a * -424f)))));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(select(select(!vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, true, true), !vec3<bool>(arg_2.b, true, true)), vec3<bool>(false, arg_1, arg_2.b), true), countOneBits(abs(-2147483647i))))));
    global0 = array<vec2<u32>, 26>();
    let var_0 = _wgslsmith_sub_vec3_i32(min(min(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-1i, 1i, u_input.a)), -vec3<i32>(u_input.a, 2147483647i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 56369i, u_input.a), func_3(vec3<f32>(arg_0.x, 130f, arg_2.a), u_input.b))), _wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.a, u_input.b, u_input.a) | vec3<i32>(u_input.b, u_input.b, u_input.a)), ~reverseBits(vec3<i32>(u_input.a, 1i, u_input.a)))), abs(_wgslsmith_add_vec3_i32((vec3<i32>(u_input.b, 1i, 46505i) ^ vec3<i32>(u_input.b, -1i, -35614i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(57215i, u_input.a, u_input.a) >> (vec3<u32>(47248u, 1516u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.b, -705i, u_input.b)))));
    var var_1 = firstLeadingBit(vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(22228u, _wgslsmith_sub_u32(1u, 0u), 1u), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(96231u, 3644u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 2291u, 1u), vec3<u32>(86097u, 5748u, 1u)))), ~abs(4294967295u), 7847u));
    return Struct_2(arg_2, 642f, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-495f, 270f)) * -297f), 874f), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), any(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true)) & true);
    global1 = -1443f;
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(173f, var_0.a), vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, var_0.a))))), u_input.a >= u_input.b, var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)), -1000f, _wgslsmith_f_op_f32(var_0.a * var_1.e.a))));
    let var_3 = 4294967295u;
    let var_4 = vec4<bool>(var_1.a.b | var_0.b, true, !var_1.c.b, all(vec4<bool>(var_3 > var_3, false, any(vec4<bool>(var_0.b, var_0.b, var_0.b, var_1.a.b)), all(!vec3<bool>(var_0.b, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(15575u, firstLeadingBit(var_3)), _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(29862u, 26u)], ~(~vec2<u32>(32199u, 4294967295u)))), var_3);
}

