struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1000f, -1565f, -1043f), vec3<f32>(983f, -822f, 162f), vec3<f32>(-341f, 125f, -601f), vec3<f32>(490f, 1000f, -905f), vec3<f32>(1891f, 1063f, -3064f), vec3<f32>(1181f, -1183f, 470f));

var<private> global2: Struct_2 = Struct_2(79716u, 0u, -4241i, vec2<bool>(false, true));

var<private> global3: array<vec3<u32>, 4>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = global2.d;
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, 801f)), countOneBits(2147483647i), true), Struct_2(global2.a, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, global2.a, global2.b, global2.b), vec4<u32>(18557u, global2.b, 29185u, global2.a) | vec4<u32>(global2.a, 0u, 9466u, 47138u), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, global2.d.x, true, true))), _wgslsmith_add_vec4_u32(vec4<u32>(35420u, 18711u, global2.b, global2.a), vec4<u32>(global2.a, 35737u, 34756u, 1u) >> (vec4<u32>(54368u, global2.a, 7611u, global2.a) % vec4<u32>(32u)))), countOneBits(global2.c & 37966i) ^ -(~global2.c), !(!vec2<bool>(true, var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1047f))))), 543f)), select(!vec3<bool>(true, any(vec3<bool>(var_0.x, false, var_0.x)), false), select(!vec3<bool>(global2.d.x, false, var_0.x), !vec3<bool>(false, true, var_0.x), global2.d.x), !vec3<bool>(true, true, global2.d.x)));
    let var_2 = max(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.a, 44246u), vec2<u32>(global2.a, 10135u))) | vec2<u32>(~0u, global2.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a, var_1.b.b), vec2<u32>(55963u, 0u))), firstLeadingBit((vec2<u32>(var_1.b.b, 78194u) & vec2<u32>(14415u, 0u)) << (min(vec2<u32>(100693u, 36386u), vec2<u32>(7391u, global2.a)) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.a, 4294967295u), vec2<u32>(var_1.b.b, global2.a)), vec2<u32>(1u, global2.b) & ~vec2<u32>(77418u, global2.b)) % vec2<u32>(32u)));
    var_0 = vec2<bool>(!all(var_1.b.d), true);
    var var_3 = vec4<bool>(all(!(!select(vec4<bool>(global2.d.x, false, false, false), vec4<bool>(false, true, global2.d.x, true), vec4<bool>(true, var_0.x, false, false)))), !any(vec2<bool>(var_0.x, false)), false, true);
    return !(!var_1.d);
}

fn func_2() -> u32 {
    let var_0 = Struct_5(func_3(), Struct_2(reverseBits(_wgslsmith_div_u32(global2.a, 75611u) << (57512u % 32u)), select(13764u, global2.b, false), min(select(global2.c, global2.c, true), (i32(-1i) * -1i) & global2.c), global2.d), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(240f * -635f), _wgslsmith_f_op_f32(380f + -1568f))), abs(-1i), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(var_0.b.a, 6u)] + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, var_0.c.a.x, 1101f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, var_0.c.a.x, var_0.c.a.x) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.a.x, 791f, var_0.c.a.x)))), global1[_wgslsmith_index_u32(abs(~var_0.b.a), 6u)], vec3<bool>(global2.d.x, var_0.b.d.x, true))))));
    var var_2 = var_0.b.a;
    var var_3 = var_0.c;
    var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c.a.x, _wgslsmith_f_op_f32(471f + 106f))), _wgslsmith_f_op_f32(var_0.c.a.x * _wgslsmith_f_op_f32(-var_1.x)))), -15148i, abs(4294967295u) >= (var_0.b.a >> (1u % 32u)));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(33292u), countOneBits(30422u)), select(~(~(~var_0.b.a)), ~1u, select(func_3().x, global2.d.x, var_3.c)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = ~u_input.e.x;
    var var_2 = reverseBits(select(_wgslsmith_sub_vec4_i32(select(vec4<i32>(global2.c, -2147483647i, 16710i, 2147483647i), u_input.e, vec4<bool>(global2.d.x, global2.d.x, false, true)) | vec4<i32>(u_input.d, -11047i, 35079i, 0i), u_input.e), u_input.e << (arg_1 % vec4<u32>(32u)), all(vec2<bool>(arg_0.x & arg_0.x, arg_0.x))));
    let var_3 = arg_1.x;
    global0 = -_wgslsmith_div_i32(-global2.c, countOneBits(-2147483647i));
    return Struct_1(~(~vec3<u32>(0u, firstTrailingBit(var_3), 49318u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    let var_0 = func_4(vec4<bool>(func_2() == _wgslsmith_mult_u32(reverseBits(1242u), _wgslsmith_clamp_u32(20114u, 0u, global2.b)), global2.d.x, false, global2.d.x), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.b, 1u, global2.b), vec4<u32>(global2.b, global2.b, 90376u, 57842u))) | ~vec4<u32>(_wgslsmith_div_u32(27854u, 31885u), _wgslsmith_sub_u32(global2.b, 1u), 11770u, global2.b & global2.b));
    let var_1 = vec3<bool>(true, false, arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-330f * 457f) * _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    var var_3 = vec2<bool>(true, true);
    var_3 = select(select(select(global2.d, vec2<bool>(true, true), 1u >= _wgslsmith_add_u32(global2.a, var_0.a.x)), !(!global2.d), false), !func_3().xz, false);
    return -(~_wgslsmith_add_i32(-6136i, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, global2.c), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global2.d, _wgslsmith_f_op_f32(f32(-1f) * -749f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-942f)) - _wgslsmith_f_op_f32(max(-1000f, 463f))), _wgslsmith_f_op_f32(1073f - 1f), -2838f)) ^ _wgslsmith_div_i32(u_input.b.x, global2.c);
    var var_0 = vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.e.yxy), ~u_input.e.wyx));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(481f)), _wgslsmith_f_op_f32(-101f + -1199f), -1068f))));
    global3 = array<vec3<u32>, 4>();
    global0 = 2147483647i;
    var var_2 = Struct_1(vec3<u32>(30736u, _wgslsmith_mod_u32(~global2.a, ~global2.b), _wgslsmith_div_u32(global2.b, global2.a) | 4294967295u) & vec3<u32>(global2.b ^ min(4294967295u, global2.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, global2.a, global2.b, 54775u), vec4<u32>(0u, 4294967295u, global2.a, global2.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9519u, global2.a), select(vec3<u32>(global2.b, 1u, 1u), global3[_wgslsmith_index_u32(4294967295u, 4u)], true))));
    global0 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1i) | (~2147483647i ^ _wgslsmith_add_i32(firstLeadingBit(0i), ~u_input.d)), func_4(!(!vec4<bool>(false, true, false, global2.d.x)), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.a, var_2.a.x, var_2.a.x, 40536u), vec4<u32>(4294967295u, 104483u, var_2.a.x, 1u)))).a);
}

