struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = -557f;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(round(var_0));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -866f);
    let var_3 = _wgslsmith_f_op_f32(-var_0);
    return vec2<u32>(1u, ~(~max(13219u, 52654u)));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 498i <= u_input.a)), Struct_1(false, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f + _wgslsmith_f_op_f32(step(558f, 1116f)))), ~select(func_3(false, -2747i, vec3<i32>(-69807i, u_input.b.x, u_input.b.x)), ~vec2<u32>(1u, 0u), vec2<bool>(true, true))));
    var var_1 = vec3<f32>(var_0.b.c, var_0.b.c, _wgslsmith_f_op_f32(max(var_0.b.c, var_0.b.c)));
    var var_2 = select(vec2<bool>(var_0.a, true), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, var_0.b.a), var_0.a), !vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(var_0.b.a, var_0.b.a), true)), vec2<bool>(var_0.a, (var_0.b.d.x > 770u) || var_0.b.a), !var_0.b.a), vec2<bool>(var_0.a, !all(!vec3<bool>(true, var_0.a, true))));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -31491i, -1i, -54967i), -(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -2409i) << (vec4<u32>(var_0.b.b.x, 0u, var_0.b.d.x, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(19460i, 5834i, u_input.a, 62883i), vec4<i32>(u_input.b.x, -42074i, 0i, 37478i)), vec4<i32>(u_input.a, u_input.b.x, u_input.a, -21957i))), _wgslsmith_sub_i32(abs(u_input.a << ((var_0.b.d.x & var_0.b.b.x) % 32u)), ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.a), -1i | u_input.b.x)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_f32(floor(var_1.x)), 212f);
    return _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i, -21179i, u_input.a, u_input.a), vec4<i32>(var_3, var_3, var_3, 0i), false), firstLeadingBit(vec4<i32>(var_3, 26741i, var_3, u_input.b.x))) & abs(vec4<i32>(u_input.a, -1i, 1i, var_3))), -vec4<i32>(i32(-1i) * -38435i, -1i, ~var_3, countOneBits(1i)));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = (vec4<i32>(-u_input.b.x, u_input.b.x, select(37771i, -u_input.a, false), -u_input.a) ^ _wgslsmith_add_vec4_i32(max(reverseBits(vec4<i32>(-2147483647i, -42650i, -3108i, u_input.a)), func_2()), ~(-vec4<i32>(u_input.a, 2147483647i, -12116i, 10269i)))) << ((vec4<u32>(~_wgslsmith_mult_u32(arg_0, arg_0), ~(~1u), ~arg_0, 45636u) | _wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, arg_0, 1u)), countOneBits(~vec4<u32>(arg_0, 5536u, arg_0, arg_0)))) % vec4<u32>(32u));
    var var_1 = arg_1.x;
    let var_2 = Struct_2(any(vec4<bool>(!all(arg_1), any(arg_1.wyy), !(arg_1.x && arg_1.x), all(vec4<bool>(true, true, false, arg_1.x)))), Struct_1(arg_1.x, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(43447u, arg_0, 57150u, arg_0), vec4<u32>(57161u, arg_0, arg_0, 33574u) | vec4<u32>(arg_0, 1u, 4294967295u, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)), abs(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(10862u, 4294967295u)), ~vec2<u32>(1u, 1u), countOneBits(vec2<u32>(4294967295u, 67211u))))));
    let var_3 = 1u >> (~_wgslsmith_clamp_u32(0u, 16383u & select(4294967295u, 0u, true), var_2.b.b.x) % 32u);
    let var_4 = Struct_1(arg_1.x, _wgslsmith_div_vec4_u32(var_2.b.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.b.b, select(vec4<u32>(arg_0, arg_0, var_2.b.b.x, 22840u), var_2.b.b, vec4<bool>(true, false, arg_1.x, true))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, var_3, 1u, 60592u), var_2.b.b) << (~vec4<u32>(var_2.b.b.x, 96211u, 1627u, arg_0) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_2.b.b, var_2.b.b), _wgslsmith_clamp_vec4_u32(var_2.b.b, var_2.b.b, vec4<u32>(arg_0, var_2.b.d.x, var_2.b.b.x, var_2.b.b.x))))), _wgslsmith_f_op_f32(-857f + var_2.b.c), vec2<u32>(1u, 25845u) | vec2<u32>(_wgslsmith_mult_u32(arg_0, ~4294967295u), 0u));
    return vec3<bool>(any(select(select(vec4<bool>(var_4.a, true, false, false), vec4<bool>(true, true, var_2.a, false), false), vec4<bool>(true, true, false, var_2.a), var_4.a)), var_4.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -287f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(1482f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f + -543f)))) - _wgslsmith_f_op_f32(386f * 2423f));
    var var_2 = Struct_1(all(func_1(_wgslsmith_add_u32(abs(32232u), 0u), vec4<bool>(true, true, true, true))), vec4<u32>(79128u, ~(~0u), 1u, firstLeadingBit(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)), ~vec2<u32>(0u, 1u));
    var_1 = 194f;
    var_1 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.d.x));
}

