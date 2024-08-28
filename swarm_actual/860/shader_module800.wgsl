struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = abs(8050i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a + 1449f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.a))))), vec2<bool>(arg_0.c.c > _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.c.c, 0i), countOneBits(vec3<i32>(arg_0.c.c, -2147483647i, -1i))), any(global0[_wgslsmith_index_u32(abs(u_input.a ^ u_input.a), 12u)])), Struct_1(abs(arg_0.c.a), 4294967295u, 1i), arg_0.d);
    let var_2 = max(firstTrailingBit(firstLeadingBit(abs(~vec2<u32>(u_input.a, arg_0.c.b)))), arg_0.c.a);
    var var_3 = max(select(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c.c, var_1.c.c, -1i), vec3<i32>(48252i, 28438i, var_1.c.c))), -(~(-vec3<i32>(arg_0.c.c, var_1.c.c, arg_0.c.c))), arg_0.d), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(var_1.c.c, -arg_0.c.c, -37578i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1.c.c, var_1.c.c, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.c, 20555i, var_1.c.c), vec3<i32>(arg_0.c.c, -29150i, arg_0.c.c))), -select(vec3<i32>(arg_0.c.c, 0i, arg_0.c.c), vec3<i32>(var_1.c.c, 2147483647i, -2147483647i), false))));
    let var_4 = Struct_1(~(~vec2<u32>(var_2.x, ~1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(81609u), 78440u, ~0u) ^ (vec3<u32>(21188u, 21696u, var_1.c.b) | ~vec3<u32>(arg_0.c.a.x, 4294967295u, 4991u)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.b, var_2.x, arg_0.c.a.x) >> (vec3<u32>(38457u, 8519u, 0u) % vec3<u32>(32u)), select(vec3<u32>(arg_0.c.b, var_2.x, u_input.b), vec3<u32>(1u, var_1.c.a.x, u_input.b), true)), ~(~vec3<u32>(31354u, 4294967295u, 4294967295u)))), _wgslsmith_mult_i32(arg_0.c.c, _wgslsmith_div_i32(_wgslsmith_div_i32(select(2147483647i, 0i, false), -1i), -1i)));
    return arg_1.x;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1777f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-123f + -751f), _wgslsmith_f_op_f32(floor(-629f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-630f + -1459f) * _wgslsmith_f_op_f32(func_3(Struct_2(-1082f, vec2<bool>(false, true), Struct_1(vec2<u32>(u_input.a, u_input.a), 1u, 26859i), vec3<bool>(false, false, false)), vec4<f32>(-788f, -1000f, 868f, -646f), vec4<f32>(-1000f, 278f, 314f, -202f)))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), ~u_input.b) | ~vec2<u32>(0u, 15512u), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.b), countOneBits(u_input.a), u_input.a, u_input.a), vec4<u32>(4294967295u, _wgslsmith_add_u32(12674u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 1u, 103532u), vec4<u32>(20722u, 1131u, u_input.b, u_input.a)), firstLeadingBit(u_input.a))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 35234i, 2147483647i, -2147483647i), vec4<i32>(1i, 0i, -6634i, 40328i) << (vec4<u32>(75884u, 4283u, u_input.a, u_input.b) % vec4<u32>(32u)))), select(select(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], true), global0[_wgslsmith_index_u32(~abs(~u_input.b), 12u)], !vec3<bool>(true, true, all(vec4<bool>(false, true, true, false)))));
    let var_1 = ~(~vec3<u32>(u_input.a, _wgslsmith_clamp_u32(~var_0.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(20018u, 2957u, 0u), vec3<u32>(9409u, 1u, 9089u)), reverseBits(u_input.b)), max(u_input.b ^ var_0.c.b, ~u_input.a)));
    var var_2 = vec3<f32>(-1314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(880f + var_0.a) - 194f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-1000f, vec2<bool>(true, true), var_0.c, vec3<bool>(var_0.b.x, true, var_0.d.x)), vec4<f32>(760f, var_0.a, 1855f, var_0.a), vec4<f32>(716f, var_0.a, 391f, var_0.a))), 442f))), var_0.a);
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2032f))), 1000f), !vec2<bool>(var_0.d.x, any(var_0.d)), var_0.c, vec3<bool>(select(var_0.b.x, false, any(vec2<bool>(var_0.b.x, true))) & false, select(any(select(vec3<bool>(false, false, true), vec3<bool>(var_0.d.x, var_0.b.x, var_0.b.x), var_0.d)), false, var_0.d.x), true));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-207f + arg_1))), !var_0.d.yy, Struct_1(~var_0.c.a, ~var_0.c.b, var_0.c.c), vec3<bool>(!all(!vec4<bool>(var_0.d.x, var_0.b.x, var_0.d.x, var_0.d.x)), true, var_0.b.x));
    var var_2 = vec4<i32>(~arg_3, 2049i, var_0.c.c ^ -29386i, var_0.c.c);
    let var_3 = Struct_1(_wgslsmith_div_vec2_u32(~countOneBits(~var_1.c.a), vec2<u32>(var_1.c.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, u_input.b), vec4<u32>(1u, 0u, var_0.c.a.x, var_1.c.b)), countOneBits(vec4<u32>(arg_2, 1u, u_input.b, u_input.a))))), abs(var_0.c.a.x), -7133i);
    var var_4 = ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(var_0.c.a.x, var_3.a.x, 46936u), vec3<u32>(4294967295u, u_input.a, 62831u), vec3<bool>(true, true, true)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(6596u, 0u, var_3.b), vec3<u32>(40539u, 4294967295u, 4294967295u)) >> (~vec3<u32>(var_3.b, 1u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(~vec3<u32>(22996u, 525u, u_input.b)));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(1u, 0u, u_input.b, 26661u) >> (~vec4<u32>(22447u, 1u, var_4.x, var_4.x) % vec4<u32>(32u)), vec4<u32>(var_4.x, abs(2663u), ~var_3.b, 0u)), reverseBits(~vec4<u32>(var_1.c.b, arg_2, var_4.x, u_input.a))), ~781u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    var var_0 = Struct_1(vec2<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(10978u, 1u, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b)) ^ (u_input.a & 1u)) | ~30582u, _wgslsmith_mult_u32(func_1(false, _wgslsmith_f_op_f32(min(-555f, 1334f)), 1u, -15032i), u_input.b)), 4294967295u, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -3808i, -1i), vec3<i32>(1i, 1i, 1i)), 33857i), ~0i));
    var var_1 = var_0.a;
    let var_2 = select(_wgslsmith_mult_i32(_wgslsmith_div_i32(min(var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, var_0.c, -2147483647i), vec3<i32>(44863i, 8851i, -9509i))), ~(-20028i)), var_0.c << (var_0.b % 32u)), var_0.c, !(!all(!global0[_wgslsmith_index_u32(var_1.x, 12u)])));
    var var_3 = Struct_2(func_2().a, func_2().b, func_2().c, global0[_wgslsmith_index_u32(var_0.a.x, 12u)]);
    var_1 = vec2<u32>(var_3.c.a.x << (1u % 32u), 0u & _wgslsmith_dot_vec3_u32(vec3<u32>(~var_3.c.b, 4294967295u, 110396u), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(92900u, 0u, var_3.c.b), vec3<u32>(var_1.x, 56886u, 82422u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.c.a.x, u_input.b, 0u), vec3<u32>(var_0.a.x, 4294967295u, var_1.x)))));
    let var_4 = u_input.b;
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, min(u_input.a, 1u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-961f, -785f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, -170f))))))));
}

