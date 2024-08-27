struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1157f), Struct_1(555f), Struct_1(-1304f), Struct_1(2402f), Struct_1(-480f), Struct_1(-427f), Struct_1(290f), Struct_1(668f), Struct_1(-188f), Struct_1(189f), Struct_1(-429f), Struct_1(1920f), Struct_1(1031f), Struct_1(-330f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.x, arg_1.x))))))));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, firstTrailingBit(60256u), ~u_input.b, 0u)), abs(vec4<u32>(4294967295u, u_input.c, _wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.c ^ u_input.c)));
    var var_2 = firstLeadingBit(69161u);
    return false;
}

fn func_4(arg_0: bool) -> vec2<bool> {
    var var_0 = firstTrailingBit(-_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, 0i, 8360i), vec3<i32>(1i, 1i, 1i))) >> ((firstLeadingBit(vec3<u32>(u_input.b, firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(58496u, u_input.b)))) ^ firstLeadingBit(vec3<u32>(~u_input.b, 30897u | u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 2321u, u_input.b), vec3<u32>(0u, 64393u, 32671u))))) % vec3<u32>(32u));
    var var_1 = ~1u;
    var var_2 = 2233f;
    var var_3 = ~countOneBits(vec3<u32>(25300u, 44403u, ~u_input.c));
    var_3 = ~(~(~abs(vec3<u32>(4294967295u, 4294967295u, 1u))));
    return vec2<bool>(any(select(!select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, arg_0, arg_0)), !vec4<bool>(arg_0, false, false, arg_0), false)), true);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(min(select(abs(_wgslsmith_mod_u32(0u, arg_2)), ~(~u_input.a), all(vec4<bool>(true, true, true, false))), ~_wgslsmith_clamp_u32(0u, 1u, _wgslsmith_clamp_u32(u_input.a, 7841u, u_input.c))) >> (_wgslsmith_mult_u32(8945u, u_input.b) % 32u), 14u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2 >> (abs(~29518u) % 32u), arg_2), 14u)];
    global0 = array<Struct_1, 14>();
    let var_2 = func_4(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, 1942f, var_1.a), vec3<f32>(1633f, -160f, 509f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1474f, 808f)))), vec3<f32>(-1367f, _wgslsmith_f_op_f32(-699f * -159f), -335f)), vec3<f32>(var_0.a, -762f, _wgslsmith_f_op_f32(arg_1.a - 376f)), arg_0));
    let var_3 = arg_1;
    return !(!vec4<bool>(var_2.x, true, false, func_4(var_2.x).x));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = countOneBits(~u_input.b);
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = all(select(vec4<bool>(false, true, true, false), select(func_2(-12068i, Struct_1(411f), min(arg_1, 0u)), func_2(arg_0.x, Struct_1(875f), arg_1), !func_2(arg_0.x, global0[_wgslsmith_index_u32(58608u, 14u)], var_0)), vec4<bool>(true, true, true, true)));
    var var_2 = 626f;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), true, !func_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(1i, 8798i, -26041i))), u_input.b));
    var var_1 = vec3<f32>(1142f, -242f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, 1f)));
    global0 = array<Struct_1, 14>();
    var_1 = vec3<f32>(129f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(680f - 948f)))) - var_1.x));
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~firstTrailingBit(i32(-1i) * -44379i), 1i, 3788i), ~reverseBits(4294967295u), -_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(2147483647i, -71121i, 20926i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(56291i, 2147483647i, 1i), vec3<i32>(82124i, -45813i, -2139i), vec3<i32>(1i, 1i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -656f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, -1003f), _wgslsmith_f_op_f32(-var_1.x), var_0.x | var_0.x)) * _wgslsmith_div_f32(422f, _wgslsmith_f_op_f32(-var_1.x)))));
}

