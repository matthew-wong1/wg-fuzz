struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 30> = array<u32, 30>(1u, 22546u, 1u, 43497u, 4294967295u, 7526u, 0u, 45969u, 1u, 4294967295u, 40211u, 1u, 55513u, 19709u, 1u, 75802u, 4294967295u, 25661u, 18599u, 0u, 37834u, 3338u, 0u, 4294967295u, 84957u, 1u, 0u, 4294967295u, 0u, 4294967295u);

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, false, true, true, true, false, false, true, true, true, false, false, true, false, false, true, false, false, false, true);

var<private> global3: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(59114u, 35672u, 68641u, 62927u), vec4<u32>(0u, 3716u, 0u, 14633u), vec4<u32>(4294967295u, 1u, 40902u, 1u), vec4<u32>(3968u, 4294967295u, 1u, 25830u), vec4<u32>(0u, 44829u, 50792u, 0u), vec4<u32>(43375u, 1u, 40286u, 1u), vec4<u32>(30855u, 55518u, 27999u, 60289u), vec4<u32>(4294967295u, 0u, 49395u, 4294967295u), vec4<u32>(0u, 1u, 74728u, 0u), vec4<u32>(1u, 0u, 43761u, 4294967295u), vec4<u32>(1u, 0u, 118422u, 0u), vec4<u32>(0u, 4294967295u, 7818u, 173u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 48771u, 1u, 111235u), vec4<u32>(16768u, 1u, 102960u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 879u), vec4<u32>(11477u, 43254u, 1u, 21970u), vec4<u32>(0u, 4294967295u, 30919u, 149388u), vec4<u32>(0u, 1u, 4527u, 57600u), vec4<u32>(0u, 38522u, 1u, 82373u), vec4<u32>(1u, 0u, 43439u, 1u), vec4<u32>(25189u, 4294967295u, 4294967295u, 36872u), vec4<u32>(55654u, 64333u, 0u, 1u), vec4<u32>(4294967295u, 1u, 5054u, 19003u), vec4<u32>(1u, 16929u, 0u, 138u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(1u, 6449u, 1u, 20774u), vec4<u32>(38294u, 1u, 4294967295u, 60577u), vec4<u32>(63320u, 5581u, 41261u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 143492u), vec4<u32>(4693u, 0u, 57965u, 4294967295u), vec4<u32>(1u, 45179u, 4294967295u, 4294967295u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    return select(vec3<bool>(!all(select(global0.c, global0.c, global0.c.x)), !any(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a, 21u)], global2[_wgslsmith_index_u32(arg_2.a, 21u)], true), global0.c, vec3<bool>(global2[_wgslsmith_index_u32(28928u, 21u)], arg_2.c.x, false))), false), arg_0.c, !(!any(vec4<bool>(arg_0.c.x, false, false, global0.c.x))));
}

fn func_2() -> vec4<u32> {
    let var_0 = u_input.b;
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(18123u, u_input.c.x) ^ 55019u), 30u)], vec2<f32>(1721f, _wgslsmith_f_op_f32(global0.b.x * global0.b.x)), select(!func_3(Struct_1(u_input.e, vec2<f32>(global0.b.x, global0.b.x), vec3<bool>(global0.c.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 21u)], false)), ~4294967295u, Struct_1(1u, global0.b, global0.c)), vec3<bool>(true, all(global0.c), false), true));
    global2 = array<bool, 21>();
    var var_2 = Struct_2(~vec2<i32>(45976i, -abs(var_0)), Struct_1(~(~global0.a) ^ ~_wgslsmith_mult_u32(0u, 58850u), global0.b, global0.c));
    var_2 = Struct_2(~vec2<i32>(-2147483647i, 0i), Struct_1(76490u, vec2<f32>(446f, global0.b.x), var_1.c));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(~42246u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a, 55599u), u_input.a), ~u_input.c.x, var_1.a)), global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~(var_2.b.a & global1[_wgslsmith_index_u32(10962u, 30u)]), 30u)], 32u)]), vec4<u32>(reverseBits(var_1.a), 0u, var_2.b.a, 4294967295u));
}

fn func_1() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(select(61386u, _wgslsmith_dot_vec4_u32(~(~min(u_input.c, global3[_wgslsmith_index_u32(global0.a, 32u)])), ~func_2()), ~u_input.a.x != global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(68659u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a, 30u)], 32u)], vec4<u32>(global1[_wgslsmith_index_u32(21853u, 30u)], global1[_wgslsmith_index_u32(51694u, 30u)], 55778u, 58115u)), 1u)), 30u)]), 21u)];
    let var_1 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.yy, u_input.d.zy), vec2<i32>(u_input.b, -1i)), Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1722f, -1000f))), global0.b)), global0.c));
    let var_2 = _wgslsmith_f_op_f32(min(var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x))))));
    var_0 = !global2[_wgslsmith_index_u32(10727u, 21u)];
    global1 = array<u32, 30>();
    return Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-global0.b), func_3(var_1.b, u_input.c.x | func_2().x, var_1.b));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = max(vec4<i32>(-u_input.d.x >> (min(~0u, 0u) % 32u), _wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.b, u_input.d.x), u_input.b), 1i, 2147483647i), _wgslsmith_sub_vec4_i32(max(abs(countOneBits(vec4<i32>(arg_0.a.x, u_input.b, -34087i, -1i))), min(-vec4<i32>(-2147483647i, 24327i, 0i, arg_0.a.x), vec4<i32>(u_input.d.x, -14932i, arg_0.a.x, 0i))), vec4<i32>(~u_input.b, _wgslsmith_mod_i32(u_input.d.x, arg_0.a.x), arg_0.a.x, arg_0.a.x) | ~abs(vec4<i32>(0i, -2147483647i, arg_0.a.x, arg_0.a.x))));
    global1 = array<u32, 30>();
    var var_1 = Struct_1(~(~1u), vec2<f32>(global0.b.x, _wgslsmith_div_f32(func_1().b.x, _wgslsmith_f_op_f32(ceil(406f)))), select(vec3<bool>(true, arg_0.b.c.x, func_1().c.x), select(vec3<bool>(true, arg_0.a.x <= u_input.b, true), select(!arg_0.b.c, !vec3<bool>(global0.c.x, global0.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), arg_0.b.c.x | global0.c.x), vec3<bool>(global0.b.x < global0.b.x, false, true)), true));
    let var_2 = vec2<bool>(true, true);
    global3 = array<vec4<u32>, 32>();
    return Struct_1(abs(~(~global0.a)), vec2<f32>(149f, _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f - var_1.b.x))))), arg_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    let var_0 = 57314u;
    let var_1 = func_4(Struct_2(~min(-u_input.d.xy, vec2<i32>(u_input.d.x, u_input.d.x)), func_1()), u_input.c.ww);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2234f, global0.b.x, var_1.b.x), vec3<f32>(-1053f, var_1.b.x, -139f), global0.c.x)) * vec3<f32>(var_1.b.x, 735f, global0.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(max(vec4<u32>(var_1.a, 62692u, 51902u, global1[_wgslsmith_index_u32(var_0, 30u)]), global3[_wgslsmith_index_u32(14756u, 32u)]))) | u_input.c, firstLeadingBit(~_wgslsmith_sub_vec4_u32(select(u_input.c, vec4<u32>(6240u, u_input.e, u_input.a.x, global0.a), vec4<bool>(false, false, false, true)), vec4<u32>(global1[_wgslsmith_index_u32(var_0, 30u)], 1u, global0.a, var_1.a))), -vec4<i32>(~u_input.b, -(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(select(-70227i, u_input.b, true), min(-25884i, 25702i), u_input.b), u_input.d.x), _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(0u, 96140u, u_input.a.x, 12133u) ^ global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44259u, 30u)], 32u)])), _wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(~var_0, 32u)], _wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], vec4<u32>(1u, var_1.a, 49886u, global0.a)) ^ (global3[_wgslsmith_index_u32(0u, 32u)] ^ u_input.c), vec4<u32>(68674u, var_0, 0u, 52805u) ^ ~vec4<u32>(global0.a, global1[_wgslsmith_index_u32(1u, 30u)], 19160u, var_0))));
}

