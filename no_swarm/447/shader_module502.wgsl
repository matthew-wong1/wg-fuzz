struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(any(vec4<bool>(!arg_3.a.a, (arg_1.x && arg_3.a.a) || true, ~u_input.a.x <= max(arg_3.c, arg_0.x), true)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_3.d.a, arg_3.d.a, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(22435i, -1i, arg_3.a.c.x), vec3<i32>(arg_3.d.a, arg_3.d.a, 2147483647i))) >> (_wgslsmith_mod_vec3_u32(arg_0.wzx & vec3<u32>(arg_0.x, arg_0.x, arg_0.x), ~vec3<u32>(arg_0.x, 0u, 0u)) % vec3<u32>(32u)), -vec3<i32>(-arg_3.d.a, arg_3.a.d.a, 29911i)), arg_3.a.c, arg_3.a.d);
    let var_1 = arg_3;
    let var_2 = var_1.d;
    var_0 = arg_3.a;
    let var_3 = !(!select(!(!arg_1.wyz), vec3<bool>(all(vec2<bool>(arg_1.x, arg_1.x)), var_0.a, -738f <= global0[_wgslsmith_index_u32(var_1.c, 24u)]), !vec3<bool>(true, true, arg_3.a.a)));
    return arg_3.c >= reverseBits(~(~(~0u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(func_3(~firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 34769u, u_input.a.x)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), -708f, Struct_3(Struct_2(false, 31632i, vec2<i32>(21126i, 19350i), Struct_1(-77589i)), _wgslsmith_f_op_f32(round(597f)), 0u, Struct_1(-2147483647i), any(vec4<bool>(true, false, true, false)))), ~(-5829i), vec2<i32>(-min(-10659i, -18590i), -reverseBits(23855i)), Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 10671i, 2147483647i), vec3<i32>(-19433i, 1i, 2147483647i))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x & 1u), 24u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), ~147u), ~43926u), ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 8472u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), Struct_1(i32(-1i) * -select(-10683i, -66475i, true)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))));
    global0 = array<f32, 24>();
    let var_1 = var_0.a;
    let var_2 = var_0.a.d;
    global0 = array<f32, 24>();
    return Struct_3(Struct_2(var_0.e, -5545i, vec2<i32>(var_1.b, min(-45551i, _wgslsmith_mult_i32(var_1.b, -19372i))), Struct_1(0i)), _wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(73235u, 11320u, u_input.a.x, u_input.a.x), min(vec4<u32>(u_input.a.x, 31333u, u_input.a.x, 13880u), vec4<u32>(1u, 0u, 68696u, var_0.c))), 1u) >> (_wgslsmith_mult_u32(reverseBits(24158u & u_input.a.x), 0u) % 32u), var_2, !var_0.a.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_0 = func_2().a;
    global0 = array<f32, 24>();
    var var_1 = 17204i;
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    let var_0 = !func_4(func_2(), func_2().a.d, true | (select(1u, 64887u, false) <= (5843u << (1u % 32u))), Struct_2(!(767f <= arg_1.x), arg_0.x, arg_0, arg_2));
    var var_1 = !any(select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, false), var_0)) | var_0;
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -2931i, 0i), vec3<i32>(arg_2.a, arg_0.x, 2147483647i), vec3<i32>(arg_2.a, arg_2.a, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a, arg_2.a, arg_2.a), ~vec3<i32>(-12989i, -1i, -2147483647i))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(arg_2.a, -79432i, -2147483647i), vec3<i32>(2147483647i, arg_0.x, 0i)), -vec3<i32>(0i, -2147483647i, arg_0.x), -vec3<i32>(-42617i, arg_2.a, -3065i)) | firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_2.a, arg_0.x), vec3<i32>(1i, -49449i, arg_2.a), vec3<i32>(arg_2.a, -1i, arg_2.a)))) & (vec3<i32>(-abs(-2147483647i), arg_2.a, arg_0.x) ^ vec3<i32>(arg_2.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_0.x), vec3<i32>(-35874i, 1i, -7103i))), arg_0.x));
    var var_3 = ~(~arg_3.x);
    var_2 = vec3<i32>(max(arg_0.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(22618i, var_2.x, arg_2.a) ^ vec3<i32>(arg_2.a, var_2.x, arg_0.x)), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_2.x, var_2.x, -1i)), vec3<i32>(var_2.x, arg_0.x, arg_2.a)))), firstLeadingBit(~(~1i)), 34675i);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(func_1(vec2<i32>(-1i, -18548i), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -1604f), Struct_1(-1i), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), 17502i) >> (abs(~u_input.a) % vec2<u32>(32u))), -select(vec2<i32>(1i, 29783i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-1752i, 27478i)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)) | -vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(0i, 2147483647i, 1i))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_u32(1u, 59912u);
    let var_3 = func_2().a;
    global0 = array<f32, 24>();
    let var_4 = Struct_3(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-628f + -1847f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f * 173f))))), u_input.a.x, Struct_1(_wgslsmith_add_i32(var_3.c.x & -1i, abs(~(-14402i)))), true);
    global0 = array<f32, 24>();
    let var_5 = Struct_2(any(vec3<bool>(var_4.e, false, !var_4.e | func_2().e)), ~func_2().a.c.x, max(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-53995i, -32950i), _wgslsmith_mult_vec2_i32(var_3.c, vec2<i32>(-9143i, 0i))), -abs(vec2<i32>(-2147483647i, var_4.d.a))), select(~var_4.a.c, ~(~var_4.a.c), var_4.a.a)), var_4.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec2<i32>(_wgslsmith_mult_i32(var_4.a.d.a, var_3.b), -1i), ~firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 5547u, 1u, var_4.c), vec4<u32>(var_1, 0u, var_2, u_input.a.x), vec4<u32>(var_1, 0u, var_2, u_input.a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], 1091f, var_4.b, global0[_wgslsmith_index_u32(4294967295u, 24u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 24u)], global0[_wgslsmith_index_u32(var_1, 24u)], 782f, -1864f) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(var_2, 24u)], var_4.b, -715f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_2, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], 209f, global0[_wgslsmith_index_u32(var_2, 24u)]) + vec4<f32>(global0[_wgslsmith_index_u32(var_4.c, 24u)], -473f, var_4.b, 537f)))))));
}

