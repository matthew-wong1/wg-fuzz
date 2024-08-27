struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = 0i;
    global0 = array<Struct_4, 1>();
    let var_1 = _wgslsmith_f_op_f32(arg_2.a.a.b.x * arg_2.a.a.b.x);
    let var_2 = Struct_1(~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a.a.b)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(arg_3.a.a.b, arg_3.a.a.b, vec4<bool>(arg_3.a.a.d, arg_3.a.a.c, arg_0.x, true))), arg_2.a.a.b, var_1 < 1759f))) * arg_2.a.a.b), false, true, _wgslsmith_f_op_f32(f32(-1f) * -436f));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(arg_2.a.a.b.wzx)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -546f))), _wgslsmith_f_op_f32(select(arg_2.a.a.b.x, _wgslsmith_f_op_f32(-682f * -1000f), !arg_2.a.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a.b.x + arg_3.a.a.e) + _wgslsmith_f_op_f32(626f - 453f)), -187f))));
    return ~4294967295u;
}

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(func_3(global1[_wgslsmith_index_u32(~23463u, 28u)], -2107f, Struct_3(Struct_2(Struct_1(4294967295u, vec4<f32>(-1360f, -629f, 613f, -1170f), true, false, -1886f), vec3<i32>(7126i, 0i, -1i)), 136969u), Struct_3(Struct_2(Struct_1(u_input.a.x, vec4<f32>(-764f, 1032f, -1117f, 1528f), true, true, -236f), vec3<i32>(0i, 1i, 1i)), 65006u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(f32(-1f) * -1049f), 109f, _wgslsmith_div_f32(890f, 1000f)), all(vec3<bool>(arg_0, arg_0, true)), arg_0, _wgslsmith_f_op_f32(1240f + -452f)), vec3<i32>(_wgslsmith_mult_i32(~(-1i), max(1i, 36584i)), 1i, 22494i)), ~_wgslsmith_clamp_u32(~(u_input.a.x & u_input.a.x), 5833u, _wgslsmith_clamp_u32(18277u, u_input.a.x, 1u) & u_input.a.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<f32>(-1003f, arg_1.x, -1093f, _wgslsmith_f_op_f32(round(arg_1.x)));
    global0 = array<Struct_4, 1>();
    global1 = array<vec4<bool>, 28>();
    let var_1 = true;
    var var_2 = func_2(var_1);
    return func_2(!any(select(vec2<bool>(false, var_2.a.a.c), vec2<bool>(true, true), true))).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = ~(_wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(35623i, -28565i, 6290i, -2147483647i), vec4<i32>(0i, 42298i, -2147483647i, -43338i), vec4<bool>(true, true, true, false))), _wgslsmith_div_vec4_i32(vec4<i32>(18800i, -36957i, -2147483647i, -53908i), -vec4<i32>(-1i, -52137i, 50253i, 30872i))) ^ vec4<i32>(~(-63786i), 1i, _wgslsmith_div_i32(-1872i >> (u_input.a.x % 32u), 1i), ~_wgslsmith_mult_i32(27857i, 1i)));
    var var_2 = vec3<bool>(true, true, true);
    global0 = array<Struct_4, 1>();
    let var_3 = Struct_2(func_1(var_1.xx, vec3<f32>(-1420f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-693f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-971f)), _wgslsmith_div_f32(-882f, 1156f))))), vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(var_1.x, 5721i)), var_1.x), ~var_1.x, func_2(any(select(vec3<bool>(false, true, false), vec3<bool>(var_2.x, var_2.x, var_2.x), true))).a.b.x));
    let var_4 = true;
    var var_5 = !(~9556i != (~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, var_1.x, var_1.x), vec4<i32>(var_1.x, var_3.b.x, var_1.x, var_3.b.x)) & var_1.x));
    let var_6 = !select(!vec3<bool>(var_2.x, !var_2.x, true), select(select(select(vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_4, true), vec3<bool>(var_3.a.c, true, var_4)), !vec3<bool>(false, var_2.x, var_3.a.c), func_1(vec2<i32>(var_1.x, var_3.b.x), vec3<f32>(882f, var_3.a.e, -1904f)).c), select(vec3<bool>(var_2.x, true, false), select(vec3<bool>(var_3.a.c, false, var_4), vec3<bool>(var_2.x, false, var_2.x), var_4), select(vec3<bool>(false, var_2.x, var_3.a.c), vec3<bool>(false, true, var_3.a.c), var_3.a.d)), var_4), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, var_4), var_4), select(vec3<bool>(var_4, var_2.x, true), vec3<bool>(var_4, false, var_2.x), vec3<bool>(var_4, var_4, var_2.x)), !vec3<bool>(false, var_3.a.d, false)), -var_1.x != -var_3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(abs(var_3.a.b.x)))) - -1107f), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a.b.wyz))));
}

