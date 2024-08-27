struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + 359f), _wgslsmith_f_op_f32(ceil(285f))), -963f) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), _wgslsmith_f_op_f32(arg_0.a + arg_1.b.x), -2147483647i > arg_1.c)), arg_1.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-619f * -2030f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_1.a.x) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.x + var_0.x))))) + arg_1.a);
    let var_2 = Struct_4(arg_0, !(!select(select(false, false, false), true, all(vec3<bool>(true, true, false)))));
    let var_3 = Struct_4(arg_0, var_2.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(445f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - 795f) * -1061f))))));
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<u32>, 32>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1049f));
    var var_1 = 917f;
    global0 = array<vec4<u32>, 32>();
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~45124u, 1u), ~u_input.a), select(firstLeadingBit(u_input.a), ~(~u_input.a), true));
    return Struct_3(21584u, -1155f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-819f + var_0.a), _wgslsmith_f_op_f32(func_3(Struct_2(322f), Struct_1(vec4<f32>(-2306f, 1344f, var_0.a, var_0.a), vec4<f32>(var_0.a, -476f, var_0.a, 776f), 2147483647i, 16923i), global0[_wgslsmith_index_u32(var_2.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), var_0.a, _wgslsmith_f_op_f32(-var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.a)), _wgslsmith_f_op_f32(-801f - _wgslsmith_div_f32(var_0.a, var_0.a)), 876f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(456f, var_0.a)))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-27408i, -34919i), -vec2<i32>(-2147483647i, 1i)), 1i), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-347f, var_0.a, -1549f, var_0.a), vec4<f32>(-1685f, 366f, -200f, var_0.a))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-564f, -1000f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -791f)))), 1i, -firstTrailingBit(i32(-1i) * -27264i)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = func_2();
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2737f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)), -1924f)), var_0.c.a.x) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.x), -569f), var_0.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f - 229f)))));
    let var_2 = any(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), true));
    return select(!select(!select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_2, false, false, false), var_2), !vec4<bool>(true, false, true, var_2), all(vec4<bool>(var_2, var_2, var_2, var_2))), vec4<bool>(!(!(1195f < var_0.b)), true, false, select(_wgslsmith_div_i32(arg_1.x, -2147483647i) == _wgslsmith_div_i32(0i, 14444i), false, true)), all(vec3<bool>((var_2 & true) & false, var_2, all(vec2<bool>(var_2, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1045f - -812f)));
    var var_2 = !(!(!func_1(~1u, vec4<i32>(-1i, -14496i, -40266i, -2147483647i))));
    var_2 = select(!vec4<bool>(true, true, _wgslsmith_f_op_f32(-var_1) != 127f, false), select(select(func_1(32581u, vec4<i32>(-1i, 1i, 2147483647i, -43657i) << (vec4<u32>(u_input.a, u_input.a, 111978u, 27512u) % vec4<u32>(32u))), !(!vec4<bool>(false, true, var_2.x, true)), var_2.x), !select(select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x), var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), true), var_2.x), var_2.x);
    var var_3 = func_2();
    global0 = array<vec4<u32>, 32>();
    var_0 = var_3.b;
    var var_4 = var_3.c.b.x;
    let var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_mult_i32(1i, var_3.c.c)) | var_3.d.c), ~_wgslsmith_sub_i32(-2147483647i & _wgslsmith_clamp_i32(var_3.c.c, -1i, var_3.d.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.d, -2147483647i), vec2<i32>(var_3.d.d, -19862i)) ^ _wgslsmith_mult_i32(var_3.d.c, 27569i)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_3.c.c | 29585i, countOneBits(var_3.c.c), max(-9996i, var_3.c.d), _wgslsmith_mod_i32(var_3.d.d, 2147483647i))), ~(firstLeadingBit(vec4<i32>(var_3.c.c, 1i, -2147483647i, -60528i)) & firstTrailingBit(vec4<i32>(3333i, var_3.c.c, -14452i, -7950i))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.c.c, -31407i, -42236i, -2147483647i) << (global0[_wgslsmith_index_u32(4294967295u, 32u)] % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.d.c, 0i, var_3.d.d, 2147483647i), vec4<i32>(var_3.c.d, 9776i, var_3.d.d, var_3.c.d))))));
}

