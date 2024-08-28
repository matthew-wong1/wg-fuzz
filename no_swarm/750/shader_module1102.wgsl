struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 10>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(44265u, -893f), 2147483647i, vec3<i32>(i32(-2147483648), 54431i, 0i)), Struct_2(Struct_1(1u, -879f), 2147483647i, vec3<i32>(-35929i, 1i, 2147483647i)), Struct_2(Struct_1(22970u, 107f), 1i, vec3<i32>(17910i, 0i, 2147483647i)), Struct_2(Struct_1(4294967295u, -1000f), 2147483647i, vec3<i32>(5666i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(4294967295u, -267f), i32(-2147483648), vec3<i32>(42570i, -17109i, -7372i)), Struct_2(Struct_1(1u, 968f), i32(-2147483648), vec3<i32>(1i, i32(-2147483648), -23333i)), Struct_2(Struct_1(44734u, 647f), 2147483647i, vec3<i32>(1i, 10313i, -21283i)), Struct_2(Struct_1(67911u, -461f), 2203i, vec3<i32>(6236i, 21846i, -39401i)), Struct_2(Struct_1(0u, -660f), -1004i, vec3<i32>(0i, -36224i, -1i)), Struct_2(Struct_1(1u, -268f), 1i, vec3<i32>(-25023i, 0i, 39347i)), Struct_2(Struct_1(1u, 832f), 18810i, vec3<i32>(-1i, -94548i, 72673i)), Struct_2(Struct_1(1u, 162f), -29482i, vec3<i32>(2147483647i, -11357i, -1i)), Struct_2(Struct_1(5591u, -1459f), 1i, vec3<i32>(-1i, 2147483647i, 2147483647i)), Struct_2(Struct_1(0u, -1272f), 39333i, vec3<i32>(20109i, 0i, 1i)), Struct_2(Struct_1(36950u, 1689f), -1i, vec3<i32>(25065i, i32(-2147483648), -1i)), Struct_2(Struct_1(4294967295u, 857f), -3374i, vec3<i32>(-31928i, -1i, 2147483647i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = firstTrailingBit((~vec3<i32>(1i, 1i, 1i) | select(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(23953i, -2147483647i, -2147483647i)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))) << (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(76009u, 67372u, 4294967295u)), ~vec3<u32>(u_input.a, 13388u, u_input.a), vec3<u32>(26622u, u_input.a, u_input.a)), vec3<u32>(u_input.a, max(53739u, u_input.a), 1u)) % vec3<u32>(32u)));
    let var_1 = var_0;
    var var_2 = true;
    let var_3 = vec2<u32>(17147u, u_input.a);
    let var_4 = global2[_wgslsmith_index_u32(abs(firstLeadingBit(~reverseBits(var_3.x)) & ~22352u), 16u)];
    return min(~(-(~(~vec4<i32>(0i, var_1.x, 13047i, 2147483647i)))), reverseBits(select(-vec4<i32>(28779i, 0i, var_0.x, var_1.x), select(min(vec4<i32>(var_1.x, -53840i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, -1i, -29903i)), vec4<i32>(var_4.c.x, var_1.x, var_4.b, 2147483647i), any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))));
}

fn func_2() -> Struct_2 {
    let var_0 = 4294967295u;
    let var_1 = 116f;
    var var_2 = Struct_3(func_3(), any(vec2<bool>(all(vec2<bool>(true, true)), false)));
    let var_3 = var_2.b;
    var var_4 = any(vec4<bool>(true, false, any(select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, var_2.b), var_2.b | true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1157f, 1011f)), var_1) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return Struct_2(Struct_1(~(_wgslsmith_mod_u32(4294967295u, var_0) ^ u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(853f))))), _wgslsmith_mult_i32(var_2.a.x, var_2.a.x), var_2.a.xxx & vec3<i32>(func_3().x >> (~u_input.a % 32u), firstLeadingBit(i32(-1i) * -47533i), abs(var_2.a.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2().a;
    var var_1 = 7992i;
    global2 = array<Struct_2, 16>();
    var var_2 = min(max(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.b, -2147483647i, arg_0.c.x), vec4<i32>(arg_0.c.x, arg_0.b, -30278i, 2147483647i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c.x, 0i, 20566i, -5260i), vec4<i32>(arg_0.b, arg_0.c.x, 2147483647i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 17373i, arg_0.b, -1i), vec4<i32>(2147483647i, 2147483647i, -4851i, 8851i) & vec4<i32>(13401i, arg_0.b, arg_0.c.x, -2147483647i))), vec4<i32>(1i, -arg_0.b, _wgslsmith_sub_i32(arg_0.b << (arg_0.a.a % 32u), _wgslsmith_div_i32(-2818i, 2147483647i)), arg_0.b)), abs(-abs(vec4<i32>(0i, -1i, -39325i, arg_0.c.x) ^ vec4<i32>(arg_0.b, -2147483647i, 0i, 1i))));
    var var_3 = Struct_3(vec4<i32>(25372i, -func_3().x, 1i, func_2().b), all(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), false))));
    return func_2().a;
}

fn func_1() -> u32 {
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    global2 = array<Struct_2, 16>();
    var var_0 = func_4(func_2());
    var var_1 = func_2();
    return _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 47826u, 43198u), vec3<u32>(1u, var_1.a.a, 0u), vec3<u32>(16115u, u_input.a, 1u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 4294967295u, u_input.a), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 8575u, 1u), vec3<u32>(var_0.a, 94004u, 25166u)), vec3<u32>(0u, 85928u, u_input.a), any(vec4<bool>(true, true, false, true)))) % vec3<u32>(32u)), ~vec3<u32>(var_0.a | 1u, var_1.a.a, func_4(global2[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 16u)]).a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(446f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -354f), 543f, false)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)) << (~(~u_input.a) % 32u), 10u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~u_input.a), 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)])) + vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_1(), 10u)]), _wgslsmith_f_op_f32(abs(432f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1843f, -2768f))) - global1[_wgslsmith_index_u32(abs(u_input.a), 10u)]), global1[_wgslsmith_index_u32(~func_2().a.a, 10u)]));
    var var_1 = Struct_1(select(u_input.a, 0u, true), func_4(func_2()).b);
    let var_2 = _wgslsmith_sub_u32(~var_1.a ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, var_1.a), u_input.a), firstLeadingBit(1u | u_input.a)) <= _wgslsmith_div_u32(~(~firstLeadingBit(1u)), var_1.a);
    var var_3 = Struct_1(var_1.a, var_1.b);
    var_1 = func_4(func_2());
    let var_4 = func_2().a;
    var_3 = func_2().a;
    global0 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec2<u32>(u_input.a, var_1.a), vec2<u32>(u_input.a, 4294967295u))) << (min(vec2<u32>(firstLeadingBit(55863u), var_1.a), ~firstLeadingBit(vec2<u32>(var_4.a, 0u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(-700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-975f - 546f)))))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_3.a), max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, var_1.a))), select(countOneBits(vec2<u32>(var_1.a, 20953u)), vec2<u32>(var_4.a, 36716u), var_1.a <= var_1.a)), 0u);
}

