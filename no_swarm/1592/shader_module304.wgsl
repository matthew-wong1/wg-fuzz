struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(18632u, 52938u, 0u, 1u, 93880u, 24921u, 4294967295u, 0u, 88289u, 35038u, 1u, 11940u, 8776u, 1u, 4294967295u, 24206u, 11095u, 37180u, 0u, 1u, 4294967295u, 5246u, 23654u, 29809u, 1u, 1u, 1u, 38471u, 1u);

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-4336i, 91002i), vec2<i32>(22320i, 48899i), vec2<i32>(31026i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-71997i, i32(-2147483648)), vec2<i32>(-4792i, 70474i), vec2<i32>(3008i, 0i), vec2<i32>(64171i, 47804i), vec2<i32>(0i, i32(-2147483648)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = ~(vec4<i32>(-1i) * -(~vec4<i32>(16489i, u_input.b, 2147483647i, 0i)));
    global0 = array<u32, 29>();
    var var_1 = ~u_input.a;
    let var_2 = !(!select(true, !select(arg_0.x, false, true), true));
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(58346u), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 1u), 29u)]) << (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(31045u, u_input.a, global0[_wgslsmith_index_u32(59066u, 29u)]), 1u), ~vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 29u)])) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec2_u32(~(vec2<u32>(11842u, global0[_wgslsmith_index_u32(41864u, 29u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 9918u) % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(48460u, 29u)], 9135u), vec2<u32>(78423u, u_input.a)))));
    return var_0.x;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec4<i32>) -> i32 {
    let var_0 = min(firstLeadingBit(min(select(vec2<u32>(101890u, u_input.a), vec2<u32>(0u, 38500u), vec2<bool>(arg_1.b, true)), ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a))) & _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~1u), vec2<u32>(~global0[_wgslsmith_index_u32(20623u, 29u)], ~u_input.a)), vec2<u32>(~_wgslsmith_sub_u32(17639u, 12586u >> (0u % 32u)), 1u));
    var var_1 = arg_1.b;
    let var_2 = vec3<u32>(~(~select(~0u, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 29u)])), false)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a << (38416u % 32u), 105242u), 29u)], 29u)], 29u)], u_input.a);
    let var_3 = Struct_2(Struct_1(-_wgslsmith_mult_i32(-2147483647i | arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1255f, -273f, -1303f) * vec3<f32>(-247f, -486f, -339f)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, arg_1.b), arg_0 & arg_0), vec2<bool>(true, arg_0)), _wgslsmith_add_u32(44602u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1007f, 1283f, -600f, 1000f))))), -u_input.b, _wgslsmith_mod_u32(countOneBits(var_0.x), ~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(var_0.x, 1u, 4294967295u)), 29u)])));
    var_1 = true;
    return i32(-1i) * -1i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b, -1i, -12766i, 20069i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-204f, -657f, 783f)))), !vec2<bool>(all(vec4<bool>(false, false, false, false)), 10146i <= u_input.b), ~select(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12553u | global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1291f, -456f, -1838f, 1910f))))), firstLeadingBit(firstTrailingBit(-(5843i | u_input.b))), 10313u);
    var var_1 = Struct_2(var_0.a, func_4(false, Struct_5(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-33623i, var_0.a.a, 2147483647i), vec3<i32>(u_input.b, -5917i, u_input.b))), !(true && var_0.a.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, select(var_0.b, var_0.a.a, var_0.a.c.x), -var_0.a.a, func_3(vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, true))), -(~vec4<i32>(var_0.b, var_0.a.a, var_0.b, 2161i)))), 23331u);
    let var_2 = Struct_4(_wgslsmith_mult_u32(firstLeadingBit(var_0.a.d) << (var_1.a.d % 32u), 95628u), vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(57645u, var_0.a.d, 22296u)), _wgslsmith_add_vec3_u32(vec3<u32>(74198u, var_1.c, 32531u), vec3<u32>(var_0.a.d, var_0.a.d, 19592u))), _wgslsmith_dot_vec4_u32(vec4<u32>(11463u << (0u % 32u), 0u >> (global0[_wgslsmith_index_u32(var_1.a.d, 29u)] % 32u), _wgslsmith_div_u32(86513u, 48377u), ~3618u), ~(vec4<u32>(0u, u_input.a, var_0.c, var_1.c) << (vec4<u32>(var_1.a.d, var_1.c, 16159u, u_input.a) % vec4<u32>(32u)))), ~(~4294967295u)), !all(select(vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, true), select(vec4<bool>(true, var_0.a.c.x, true, true), vec4<bool>(var_1.a.c.x, true, var_1.a.c.x, false), vec4<bool>(false, true, var_1.a.c.x, false)), true)));
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(544f + _wgslsmith_f_op_f32(-var_1.a.e.x));
    return Struct_1(-countOneBits(countOneBits(_wgslsmith_sub_i32(var_0.a.a, 3337i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.a.b, var_1.a.b), _wgslsmith_f_op_vec3_f32(var_1.a.b + vec3<f32>(-160f, -380f, -181f))))))), !(!vec2<bool>(var_2.c, var_3.c)), var_0.a.d, vec4<f32>(-2108f, _wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.e.x + -380f)), _wgslsmith_f_op_f32(exp2(var_0.a.b.x))));
}

fn func_1() -> Struct_5 {
    global1 = array<vec2<i32>, 9>();
    var var_0 = func_2();
    global1 = array<vec2<i32>, 9>();
    var_0 = Struct_1(0i, var_0.e.wxx, vec2<bool>(all(!select(vec4<bool>(var_0.c.x, var_0.c.x, true, false), vec4<bool>(var_0.c.x, true, var_0.c.x, true), vec4<bool>(true, false, true, var_0.c.x))), select(var_0.c.x, true, true | var_0.c.x)), 97080u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e * _wgslsmith_f_op_vec4_f32(floor(var_0.e))) - var_0.e) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.e - func_2().e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, -837f, 813f, var_0.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.e.x, var_0.e.x, var_0.b.x))), var_0.c.x))));
    let var_1 = Struct_4(~firstTrailingBit(54815u) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(17684u), 29u)], 29u)] % 32u), select(vec3<u32>(global0[_wgslsmith_index_u32(12506u ^ var_0.d, 29u)], min(var_0.d, 30244u), ~1u) & vec3<u32>(0u, 0u, ~global0[_wgslsmith_index_u32(1u, 29u)]), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_0.d, 29u)], 48536u, var_0.d), vec3<u32>(1670u, 4294967295u, var_0.d)) ^ vec3<u32>(u_input.a, 4294967295u, var_0.d)), select(!select(vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x)), vec3<bool>(var_0.b.x != 430f, true, all(var_0.c)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)] >= 1u, !var_0.c.x, var_0.c.x))), true);
    return Struct_5(~u_input.b, any(vec4<bool>(var_0.c.x, var_0.c.x, true, !var_1.c)) && all(vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true || var_1.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = u_input.b;
    var var_1 = func_1();
    var var_2 = u_input.a;
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(555f))) + _wgslsmith_f_op_f32(-444f + -1000f)))));
    var_2 = ~(~abs(0u));
    var_2 = _wgslsmith_sub_u32(func_2().d, _wgslsmith_div_u32(var_3, min(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26951u, 29u)], 29u)], var_3, u_input.a), vec4<u32>(u_input.a, var_3, global0[_wgslsmith_index_u32(5167u, 29u)], u_input.a))), _wgslsmith_clamp_u32(0u, ~60539u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], var_3)), 29u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(func_2().a, -1i), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(var_3, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(38975u, 29u)]) >> (vec4<u32>(79947u, 10037u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9483u, 29u)], 29u)], 29u)], 24992u) % vec4<u32>(32u)))), ~firstLeadingBit(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97141u, 29u)], 29u)], 78557u, 3391u, 14081u))), _wgslsmith_add_vec3_i32(~(vec3<i32>(-10452i, -36966i, u_input.b) & vec3<i32>(u_input.b, 1i, -37580i)) ^ _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, u_input.b, 31229i), vec3<i32>(u_input.b, -1i, -6691i)), vec3<i32>(i32(-1i) * -var_1.a, -(~var_1.a), _wgslsmith_add_i32(-55340i, -10690i))));
}

