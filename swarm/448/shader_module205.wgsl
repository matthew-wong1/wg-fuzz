struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-23500i, -21135i), vec2<i32>(i32(-2147483648), 18714i), vec2<i32>(24513i, -58575i), vec2<i32>(0i, 1i), vec2<i32>(-47646i, -87555i), vec2<i32>(1i, 23499i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(9350i, 1i), vec2<i32>(29393i, -1i), vec2<i32>(2147483647i, 43432i), vec2<i32>(-57942i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(1i, 2147483647i));

var<private> global2: vec4<u32> = vec4<u32>(0u, 25795u, 1u, 23703u);

var<private> global3: i32 = -3041i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = u_input.c;
    let var_1 = ~u_input.a;
    global2 = abs(~(vec4<u32>(70325u, 8332u, arg_0, u_input.d) & ~vec4<u32>(u_input.d, 1u, global2.x, 7212u))) >> (countOneBits(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_0, 4294967295u, global2.x), vec4<u32>(global2.x, 1512u & global0[_wgslsmith_index_u32(global2.x, 20u)], _wgslsmith_mult_u32(10991u, 0u), 50042u))) % vec4<u32>(32u));
    var var_2 = Struct_1(!(select(true, arg_0 != arg_0, true) && false), ~(vec2<i32>(-1i) * -vec2<i32>(var_1.x, u_input.b)), 1000f);
    global2 = ~(~firstLeadingBit(vec4<u32>(firstLeadingBit(9384u), 7287u, 10988u, arg_0 >> (arg_0 % 32u))));
    return var_2.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = ~vec3<u32>(~global0[_wgslsmith_index_u32(~0u >> (_wgslsmith_add_u32(4294967295u, global2.x) % 32u), 20u)], 17322u, ~0u);
    global3 = u_input.b;
    global1 = array<vec2<i32>, 14>();
    let var_1 = true;
    let var_2 = !(!func_3(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 20u)], 20u)], _wgslsmith_mod_u32(79115u, 1u))));
    return Struct_1(false, -global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(72601u, global2.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, global2.x), vec4<u32>(u_input.d, global2.x, global0[_wgslsmith_index_u32(38518u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), ~u_input.d), firstTrailingBit(~vec4<u32>(15245u, global0[_wgslsmith_index_u32(u_input.d, 20u)], global0[_wgslsmith_index_u32(global2.x, 20u)], 4294967295u))), vec4<u32>(~(~u_input.d | global2.x), ~reverseBits(~1u), countOneBits(u_input.d), ~(~40343u)));
    return func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(203f, 678f)), -1659f)), _wgslsmith_f_op_f32(607f + arg_0.c), -1789f))), vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 1971f)))), arg_0.c, _wgslsmith_f_op_f32(round(-268f))), vec3<f32>(292f, arg_0.c, _wgslsmith_div_f32(1417f, arg_0.c)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.c;
    global3 = select(arg_1.b.x << (~firstTrailingBit(_wgslsmith_dot_vec2_u32(global2.wx, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 20u)], 20u)], 50657u))) % 32u), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, arg_1.b.x, 0i, -30339i), countOneBits(vec4<i32>(-2147483647i, u_input.b, arg_1.b.x, 1i)))), all(select(select(select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, arg_1.a), false), !vec3<bool>(false, arg_0.a, false), func_2(vec3<f32>(-1084f, arg_1.c, arg_1.c), vec3<f32>(1000f, 651f, -742f), vec3<f32>(-253f, arg_0.c, arg_1.c)).a), select(select(vec3<bool>(true, true, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.a), false), select(vec3<bool>(true, arg_1.a, false), vec3<bool>(arg_0.a, true, arg_0.a), false), true), false)));
    var var_1 = true;
    let var_2 = abs(arg_1.b.x);
    let var_3 = select(u_input.a.xzy, vec3<i32>(reverseBits(_wgslsmith_add_i32(arg_0.b.x, arg_0.b.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 0i, arg_0.b.x), vec4<i32>(11718i, u_input.a.x, -640i, u_input.b))), 1i << (u_input.d % 32u), _wgslsmith_div_i32(60411i, _wgslsmith_mult_i32(arg_0.b.x ^ 0i, countOneBits(u_input.a.x)))), select(vec3<bool>(arg_1.a, true, select(true, any(vec4<bool>(false, false, true, false)), true)), !vec3<bool>(true, -1i < var_2, !arg_1.a), func_4(func_4(arg_1)).a && !(arg_0.a & true)));
    return vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a | false);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(!arg_1, -vec2<i32>(reverseBits(0i) >> (1u % 32u), (u_input.c << (u_input.d % 32u)) & (i32(-1i) * -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f))))));
    global0 = array<u32, 20>();
    var var_1 = func_5(func_4(func_2(vec3<f32>(-489f, _wgslsmith_f_op_f32(-1713f - var_0.c), _wgslsmith_f_op_f32(max(var_0.c, var_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 234f, -1235f)), vec3<f32>(-389f, var_0.c, -519f), !vec3<bool>(var_0.a, var_0.a, true))), vec3<f32>(_wgslsmith_div_f32(235f, 1763f), _wgslsmith_f_op_f32(var_0.c - -1783f), _wgslsmith_f_op_f32(var_0.c - 845f)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1322f, _wgslsmith_f_op_f32(-var_0.c), var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(426f, 844f, -1000f) + vec3<f32>(var_0.c, 816f, -257f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -876f, var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, var_0.c, 391f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-684f, -824f, var_0.c) * vec3<f32>(var_0.c, var_0.c, -1458f))), (global2.x ^ 21302u) < 4294967295u))));
    var var_2 = Struct_1(false, arg_0.zz ^ vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 14655i, -86065i), u_input.a.zzx)), min(var_0.b.x | u_input.a.x, _wgslsmith_mod_i32(arg_0.x, var_0.b.x))), _wgslsmith_f_op_f32(-var_0.c));
    var var_3 = var_0.c;
    return Struct_1(var_1.x, ~vec2<i32>(i32(-1i) * -9188i, -1i) >> (reverseBits((vec2<u32>(77772u, u_input.d) | global2.zw) << (reverseBits(global2.wy) % vec2<u32>(32u))) % vec2<u32>(32u)), -939f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -max(47630i, u_input.a.x);
    let var_0 = func_1(u_input.a, true);
    global2 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(max(countOneBits(~vec4<u32>(66730u, 39703u, 4294967295u, global2.x)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global2.x, 35520u, global2.x, 55141u), vec4<u32>(35539u, u_input.d, 4294967295u, global2.x)), ~vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global2.x, 20u)], 14244u, 0u), vec4<u32>(u_input.d, 41542u, 4294967295u, u_input.d) | vec4<u32>(global2.x, 0u, 12986u, 1u))), abs((vec4<u32>(23944u, 71069u, global0[_wgslsmith_index_u32(u_input.d, 20u)], 34553u) & vec4<u32>(31622u, 13239u, 28389u, 1u)) ^ vec4<u32>(global2.x, 1u, u_input.d, global2.x))), ~reverseBits(firstLeadingBit(vec4<u32>(u_input.d, 26114u, global2.x, global0[_wgslsmith_index_u32(4294967295u, 20u)])) ^ vec4<u32>(1u, global2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 1u)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c)));
    var var_2 = func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(885f, var_0.c, -1803f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 332f, -364f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(919f, 1407f, -1512f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-623f, _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-var_1))))));
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global2.xxw, global2.zyx), abs(vec3<u32>(56762u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 20u)], 20u)], global2.x)))), 20u)], 56628u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_4(var_0).c, _wgslsmith_f_op_f32(-var_2.c), -876f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_2.c * 221f), _wgslsmith_div_f32(2257f, var_2.c), _wgslsmith_f_op_f32(min(1270f, -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1032f, var_1, 488f) * vec3<f32>(var_1, var_0.c, 1901f))))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(sign(var_2.c))))));
}

