struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, true), 4294967295u, 739f, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = Struct_2(vec4<i32>(abs(-1i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(-39638i, 13511i)), abs(1i))), abs(0i), max(_wgslsmith_div_i32(-25251i >> (global0.b % 32u), select(arg_2, 0i, global0.a.x)), -1i)));
    let var_1 = Struct_1(global0.a, ~4294967295u, _wgslsmith_f_op_f32(-284f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-912f - -782f))) - -746f)), 0i);
    let var_2 = Struct_2(abs(~(-_wgslsmith_sub_vec4_i32(var_0.a, var_0.a))));
    var var_3 = global0.a.x;
    var var_4 = Struct_2(var_2.a);
    return global0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: u32) -> vec4<f32> {
    global0 = Struct_1(global0.a, (global0.b | ~18201u) << (~(~arg_2.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_add_i32(arg_0.a.x, reverseBits(global0.d)));
    global0 = Struct_1(vec3<bool>(select(true, arg_1.x, global0.a.x && arg_1.x) | true, true, _wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)) <= 1i), ~global0.b, global0.c, -2147483647i);
    let var_0 = Struct_1(global0.a, _wgslsmith_add_u32(4294967295u, arg_2.x), _wgslsmith_f_op_f32(-224f - _wgslsmith_f_op_f32(f32(-1f) * -129f)), abs(u_input.a >> (~24888u % 32u)));
    global0 = var_0;
    global0 = Struct_1(vec3<bool>(true, true, global0.a.x), 1u, 515f, var_0.d);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1167f, -998f)), var_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1300f), global0.c)))), 478f);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(select(abs(vec4<i32>(u_input.a, -51069i, 9731i, 41568i)) | select(vec4<i32>(2147483647i, global0.d, u_input.a, global0.d), vec4<i32>(global0.d, u_input.a, -1i, u_input.a), true), -_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d, -34736i, global0.d, u_input.a), vec4<i32>(-24877i, u_input.a, u_input.a, global0.d)), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false))), vec3<bool>(global0.a.x, !all(vec4<bool>(global0.a.x, false, true, global0.a.x)), false), ~firstLeadingBit(max(vec2<u32>(0u, global0.b) | vec2<u32>(4294967295u, 8731u), ~vec2<u32>(1u, 59633u))), func_3(_wgslsmith_f_op_f32(global0.c + -465f), 727f, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-u_input.a, 2147483647i), ~45574i))));
    let var_1 = Struct_1(!vec3<bool>(true, global0.a.x, any(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))), func_3(global0.c, global0.c, 43278i), _wgslsmith_f_op_f32(max(-1344f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + -827f), -1096f), -750f)))), -(~(-_wgslsmith_add_i32(global0.d, 17507i))));
    let var_2 = all(!global0.a);
    let var_3 = _wgslsmith_f_op_f32(-528f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(-125f))), 717f))));
    let var_4 = _wgslsmith_f_op_f32(max(var_0.x, 1642f));
    return Struct_1(!(!select(vec3<bool>(var_1.a.x, false, false), vec3<bool>(false, var_2, true), vec3<bool>(var_1.a.x, var_1.a.x, var_2))), var_1.b, -1623f, 0i);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.a, 11616u, global0.c, -1i);
    global0 = func_2();
    global0 = Struct_1(!func_2().a, ~(~global0.b), -1924f, ~1i);
    let var_0 = ~reverseBits(~(~select(vec4<u32>(global0.b, global0.b, 43118u, 20013u), vec4<u32>(58044u, global0.b, global0.b, 28636u), false)));
    let var_1 = var_0;
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    global0 = func_1();
    var var_0 = -1000f;
    var var_1 = vec2<bool>(!(!select(true | global0.a.x, global0.a.x, arg_1.a.x)), !(!(!arg_2.x)));
    var var_2 = vec2<i32>(2147483647i, 1i);
    var var_3 = false;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global0.d, func_5(Struct_2(vec4<i32>(global0.d, -54190i, -2147483647i, -66989i)), func_1(), global0.a.yz) ^ -(global0.d >> (global0.b % 32u)), _wgslsmith_add_i32((_wgslsmith_div_i32(u_input.a, u_input.a) ^ -11550i) ^ u_input.a, _wgslsmith_div_i32(u_input.a, ~(-global0.d))), _wgslsmith_sub_i32(reverseBits(u_input.a), 0i));
    global0 = Struct_1(global0.a, 79219u, global0.c, -_wgslsmith_mod_i32(-1i, 1i));
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, func_2().b, global0.b << (1u % 32u), _wgslsmith_mult_u32(22341u, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(14702u, 4294967295u, global0.b, global0.b), ~vec4<u32>(43087u, 73847u, global0.b, global0.b))), global0.b << (abs(1u) % 32u), _wgslsmith_add_u32(~(~global0.b), reverseBits(_wgslsmith_div_u32(select(11945u, global0.b, global0.a.x), 65793u))), global0.b);
    var var_2 = ~_wgslsmith_add_u32(~(~var_1.x ^ func_2().b), 47416u | global0.b);
    var var_3 = _wgslsmith_clamp_i32(-abs(_wgslsmith_clamp_i32(18248i, ~(-1883i), firstLeadingBit(u_input.a))), -19423i, var_0.x);
    var var_4 = Struct_2(-_wgslsmith_sub_vec4_i32(var_0 >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1724u, 0u, global0.b, 13144u), vec4<u32>(4294967295u, global0.b, 0u, 24617u)) % vec4<u32>(32u)), var_0 | reverseBits(vec4<i32>(var_0.x, -37133i, var_0.x, 2147483647i))));
    var_2 = func_2().b;
    let var_5 = ~(~vec3<u32>(firstLeadingBit(firstTrailingBit(35974u)), var_1.x, var_1.x));
    var_1 = firstTrailingBit(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(35810u, var_1.x, 1u, var_1.x), vec4<u32>(var_5.x, 802u, 41214u, var_1.x)), vec4<u32>(var_5.x, 1u, var_5.x, var_5.x) & vec4<u32>(global0.b, 1u, 0u, global0.b)), max(vec4<u32>(4294967295u, 17420u, global0.b, var_1.x), vec4<u32>(58189u, 0u, 66933u, 61098u)) & vec4<u32>(var_5.x, var_5.x, 8823u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, 1u | func_2().b, ~vec3<u32>(var_1.x, 1u, var_1.x), -447f);
}

