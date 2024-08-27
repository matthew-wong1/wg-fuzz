struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b.b.b)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1130f, 2395f, true)))))))));
    return ~_wgslsmith_mult_u32(abs(reverseBits(u_input.d.x)), 20949u);
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 31>();
    var var_0 = -countOneBits(_wgslsmith_div_i32(u_input.a, u_input.c) | ~(u_input.c & 0i));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(arg_0.x, 31u)], -1335f, Struct_3(Struct_2(vec3<i32>(-2147483647i, u_input.a, u_input.c), global0[_wgslsmith_index_u32(43558u, 31u)]), Struct_2(vec3<i32>(-17893i, 1i, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(false, true, false, false))), max(0u, 1u)), 20888u) ^ (firstLeadingBit(~u_input.d.x) | ~_wgslsmith_sub_u32(arg_0.x, u_input.e.x)), 31u)], Struct_2(vec3<i32>(-42725i, ~(~u_input.a), 11291i), Struct_1(!all(vec4<bool>(false, false, false, false)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -681f)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(123f, -599f, 750f) - vec3<f32>(466f, 834f, 398f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-698f, -1009f, 806f), vec3<f32>(1000f, 1000f, -278f))), vec3<f32>(965f, _wgslsmith_div_f32(941f, 1000f), _wgslsmith_f_op_f32(-769f - -906f)), vec3<bool>(true, false, true)))));
    var var_2 = Struct_3(var_1.b, Struct_2(vec3<i32>(0i, u_input.c, u_input.a), var_1.b.b), vec4<bool>(!var_1.a.c.x, true, true, var_1.b.b.c.x));
    let var_3 = ~arg_0.x;
    return var_1.a.c.xxy;
}

fn func_4(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = 1286f;
    var var_1 = abs(~(~u_input.b)) | vec4<u32>(21489u, ~(~countOneBits(u_input.e.x)), _wgslsmith_clamp_u32(~u_input.e.x, u_input.b.x, (1u ^ u_input.b.x) | countOneBits(12943u)), u_input.e.x);
    var_1 = ~reverseBits(u_input.b);
    var var_2 = ~u_input.c << (70060u % 32u);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(var_0 - 1253f)))))));
    return select(select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, false, arg_0.x), !arg_0.x), vec4<bool>(true, true, true, !arg_0.x), !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true))), select(select(select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), true), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), select(vec4<bool>(true, false, arg_0.x, arg_0.x), !vec4<bool>(false, true, arg_0.x, true), select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(false, arg_0.x, false, true), true)), arg_0.x), false), select(vec4<bool>(true, !any(vec3<bool>(arg_0.x, arg_0.x, true)), arg_0.x | (53951u < var_1.x), false), select(!(!vec4<bool>(false, false, arg_0.x, false)), select(select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, false)), select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(false, false, arg_0.x, true), vec4<bool>(true, arg_0.x, true, false)), vec4<bool>(true, true, true, arg_0.x)), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), all(vec3<bool>(arg_0.x, arg_0.x, false)))), true), all(vec2<bool>(arg_0.x, any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(327f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) + arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-959f, arg_0, -2202f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, 588f)))), vec3<f32>(arg_0, 279f, _wgslsmith_f_op_f32(-arg_0)))), true));
    global0 = array<Struct_1, 31>();
    let var_1 = -(~((-6230i << (u_input.d.x % 32u)) << (_wgslsmith_dot_vec4_u32(countOneBits(u_input.b), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.b.x)) % 32u)));
    var var_2 = all(func_4(select(func_2(~u_input.e), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), all(vec3<bool>(false, true, false))))));
    let var_3 = reverseBits((countOneBits(_wgslsmith_sub_i32(1i, -1i)) & _wgslsmith_dot_vec4_i32(-vec4<i32>(380i, var_1, -2147483647i, u_input.c), -vec4<i32>(var_1, -1i, var_1, -2147483647i))) & (u_input.c & var_1));
    return Struct_3(Struct_2(~(_wgslsmith_div_vec3_i32(vec3<i32>(-63781i, var_1, u_input.a), vec3<i32>(2394i, var_1, var_3)) >> (u_input.b.xzx % vec3<u32>(32u))), Struct_1(select(true, select(true, false, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(288f * arg_0), _wgslsmith_f_op_f32(-arg_0)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))), Struct_2(-reverseBits(max(vec3<i32>(var_1, 1i, 2147483647i), vec3<i32>(-2147483647i, 40746i, var_3))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(1u, 17501u), u_input.e.x), 31u)]), !select(select(func_4(vec3<bool>(true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_4(vec3<bool>(true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-707f);
    let var_1 = vec3<bool>(var_0.a.b.b >= _wgslsmith_f_op_f32(var_0.a.b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1195f + -1216f))), true, false);
    var var_2 = Struct_5(func_1(_wgslsmith_f_op_f32(sign(var_0.b.b.b))).a.b, Struct_2(vec3<i32>(5870i & u_input.c, var_0.a.a.x, ~(-29991i)) << (~u_input.b.xyx % vec3<u32>(32u)), func_1(_wgslsmith_f_op_f32(-var_0.a.b.b)).a.b), vec3<f32>(var_0.a.b.b, 1849f, 314f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.b.b.b, var_2.b.b.b)) + var_2.b.b.b) * var_0.b.b.b));
    let var_4 = -4309i;
    var var_5 = -147f;
    var_2 = Struct_5(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -505f), 573f)).a.b, Struct_2(var_0.b.a & vec3<i32>(abs(var_4), u_input.a, 0i), Struct_1(any(var_1), var_0.b.b.b, vec4<bool>(true, var_1.x || false, select(var_1.x, var_2.a.c.x, var_2.b.b.a), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-801f, -499f, false)), _wgslsmith_f_op_f32(f32(-1f) * -963f))), _wgslsmith_f_op_f32(-var_0.a.b.b), _wgslsmith_f_op_f32(-var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

