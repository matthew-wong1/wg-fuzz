struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(14199u, vec4<f32>(-194f, 1770f, -1000f, -209f), 157f);

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-1i, 14084i), vec2<i32>(2199i, 21080i), vec2<i32>(27247i, -27556i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -27970i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = abs(u_input.a);
    var var_1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-52241i, 27545i))) & vec2<i32>(1i, reverseBits(u_input.a)), vec2<i32>(25641i << (1u % 32u), u_input.a));
    var_0 = ~var_1.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1290f, 541f));
    global1 = Struct_2(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c))), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, 1974f))), global1.c), arg_0.b.x);
    return 1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_1, global1.b.x, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(26563u, global0.a, global1.a) & vec3<u32>(global0.a, 1u, global1.a), vec3<u32>(0u, 83u, global1.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 19703u, 48527u), vec3<u32>(1u, 75269u, global1.a)) << (vec3<u32>(4294967295u, global0.a, 49008u) % vec3<u32>(32u))) ^ (_wgslsmith_div_vec3_u32(~vec3<u32>(global0.a, 4294967295u, global0.a), max(vec3<u32>(global0.a, 12823u, 4294967295u), vec3<u32>(global1.a, 11093u, global1.a))) >> (~countOneBits(vec3<u32>(global1.a, 1u, 4001u)) % vec3<u32>(32u))), vec2<u32>(global1.a, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, 1639u, global0.a, 23216u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 29811u, global1.a, global0.a), vec4<u32>(52770u, 35435u, global0.a, global0.a)))));
    let var_1 = _wgslsmith_div_i32(u_input.a, -35470i);
    let var_2 = false | all(select(vec2<bool>(true, select(true, false, false)), vec2<bool>(false, var_0.a | arg_1), vec2<bool>(true, true)));
    global0 = Struct_2(~(firstTrailingBit(func_3(Struct_2(global0.a, vec4<f32>(global1.c, arg_0.x, -226f, var_0.b), 1027f))) ^ global1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-global0.c), -737f, _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_div_f32(-1544f, var_0.b)))), -612f);
    var_0 = Struct_1(!(_wgslsmith_f_op_f32(max(arg_0.x, -1629f)) > arg_0.x), arg_0.x, min(countOneBits(var_0.c), _wgslsmith_add_vec3_u32(var_0.c, abs(abs(vec3<u32>(global0.a, global1.a, global1.a))))), countOneBits(firstLeadingBit(countOneBits(_wgslsmith_div_vec2_u32(var_0.c.yx, vec2<u32>(var_0.d.x, 39417u))))));
    return Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1041f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.x)))))), ~min(vec3<u32>(global1.a, _wgslsmith_mult_u32(global0.a, 96767u), _wgslsmith_mod_u32(48559u, 1u)), firstLeadingBit(var_0.c)), firstTrailingBit(vec2<u32>(global0.a, ~(~var_0.d.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(global0.b.wzy, !(all(vec4<bool>(true, true, true, true)) | (global1.c != 1000f)));
    var var_1 = vec4<i32>(~(~_wgslsmith_mod_i32(u_input.a, 1i)), u_input.a, u_input.a, u_input.a);
    let var_2 = _wgslsmith_f_op_f32(trunc(var_0.b));
    var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(~(u_input.a & 1i)), 1i, -4263i, -3609i), abs(select(vec4<i32>(8496i, -76880i, u_input.a, -1i) << (abs(vec4<u32>(var_0.d.x, var_0.d.x, global0.a, var_0.c.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2783i), vec4<i32>(u_input.a, 13128i, u_input.a, var_1.x)), vec4<i32>(var_1.x, -33295i, u_input.a, -9292i)), select(var_0.d.x <= global0.a, all(vec2<bool>(true, var_0.a)), true))));
    let var_3 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, 668f, -460f, -1667f))))) - global1.b), _wgslsmith_f_op_f32(-global0.c));
    return var_3;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(global0.b.x < arg_0.x, true, select(false, true, true))), select(vec3<bool>(57654u > arg_2.a, true, true), vec3<bool>(true, true, true), vec3<bool>(arg_2.c == -1752f, true, true)), vec3<bool>(true, true, true)), !(!vec3<bool>(any(vec3<bool>(false, false, false)), u_input.a >= 1i, true)));
    var var_1 = false && (true | var_0.x);
    global1 = arg_2;
    var_0 = !vec3<bool>(!var_0.x, false, !var_0.x);
    global0 = func_1();
    return vec3<bool>(!(_wgslsmith_f_op_f32(327f - global0.c) == _wgslsmith_f_op_f32(-arg_1)), false, 43374u >= (36983u & _wgslsmith_add_u32(arg_2.a, 72383u)));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(u_input.a, 3400i >> (select(1u, _wgslsmith_div_u32(global1.a, 4294967295u), func_4(vec2<f32>(global1.b.x, -705f), global0.c, Struct_2(global1.a, global0.b, 592f)).x) % 32u)), abs(_wgslsmith_div_i32(-2147483647i, -8388i) & _wgslsmith_mult_i32(arg_0, -5443i)), ~_wgslsmith_sub_i32(-32247i, arg_0), i32(-1i) * -reverseBits(u_input.a));
    var var_1 = Struct_1(any(!select(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x), true), select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(false, true, true, true), arg_1.x), !vec4<bool>(false, arg_1.x, false, arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_add_vec3_u32(vec3<u32>(global1.a, _wgslsmith_sub_u32(~global0.a, ~global1.a), _wgslsmith_sub_u32(23311u, global0.a) ^ ~52690u), vec3<u32>(global1.a, global1.a, global0.a)), ~(select(vec2<u32>(global0.a, 1u), vec2<u32>(global1.a, 23338u), func_4(vec2<f32>(global1.c, global0.c), global1.b.x, Struct_2(global1.a, vec4<f32>(global0.b.x, global0.c, 847f, -691f), global0.c)).xy) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, global0.a), firstTrailingBit(vec2<u32>(35811u, global0.a)))));
    let var_2 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b.x, 1537f, var_1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, global1.c, global1.b.x), vec3<f32>(global0.b.x, 294f, global1.b.x)))), _wgslsmith_f_op_vec3_f32(-global1.b.xxw)), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, var_1.b) - global0.b.xx), global1.b.ww, var_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c * global0.c))), func_1()).x && true);
    let var_3 = _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1501f)))), arg_1.x));
    var var_4 = ~var_0.x;
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(-4545i & u_input.a, func_4(global0.b.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + 840f) * _wgslsmith_f_op_f32(f32(-1f) * -565f)), func_1()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f * _wgslsmith_f_op_f32(-366f - -302f))));
    var_0 = -580f;
    var_0 = global0.c;
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, global0.a, min(33661u, global1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 42236u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, global1.a, 1u, 1u))), countOneBits(select(vec4<u32>(global0.a, 0u, global0.a, global1.a) >> (vec4<u32>(global0.a, 27327u, global0.a, 1u) % vec4<u32>(32u)), abs(vec4<u32>(93707u, global0.a, global0.a, 4294967295u)), false))), vec4<f32>(-397f, _wgslsmith_f_op_f32(-global0.c), -1137f, _wgslsmith_f_op_f32(abs(func_1().c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(global1.b.x + 1469f)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1966f)), _wgslsmith_f_op_f32(-var_1.c));
    let var_3 = any(!(!vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true)));
    let var_4 = 10191i;
    let var_5 = select(vec3<bool>(all(vec4<bool>(var_3, true, all(vec3<bool>(var_3, var_3, var_3)), any(vec2<bool>(var_3, true)))), !(true || var_3), !(1i != -var_4)), !select(select(!vec3<bool>(var_3, true, false), vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, var_3, false)), select(!vec3<bool>(false, var_3, var_3), !vec3<bool>(true, true, var_3), select(vec3<bool>(true, true, var_3), vec3<bool>(false, var_3, var_3), vec3<bool>(false, var_3, true))), !select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, false, true), var_3)), func_4(global0.b.xw, global0.c, Struct_2(~14816u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1585f), _wgslsmith_f_op_f32(1023f - global0.c), -878f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-898f * _wgslsmith_f_op_f32(-var_2.x)))));
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, reverseBits(vec3<u32>(~3260u, ~35328u, 43017u)), ~_wgslsmith_div_vec3_u32(~(vec3<u32>(35591u, global0.a, var_6.a) >> (vec3<u32>(44539u, global0.a, global0.a) % vec3<u32>(32u))), vec3<u32>(4294967295u, 4294967295u, 0u)), ~vec4<i32>(max(_wgslsmith_mult_i32(-1i, 1i), -1i), var_4, -(~1i), -u_input.a));
}

