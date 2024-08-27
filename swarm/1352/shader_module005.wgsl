struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: array<u32, 3>;

var<private> global3: Struct_2 = Struct_2(false, Struct_1(vec3<i32>(-26866i, -1i, i32(-2147483648)), vec4<u32>(51935u, 0u, 1u, 51204u)), vec2<f32>(915f, -435f), vec2<i32>(i32(-2147483648), 31568i), Struct_1(vec3<i32>(4431i, 0i, 54960i), vec4<u32>(0u, 1u, 49923u, 0u)));

var<private> global4: array<bool, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = 1u;
    global2 = array<u32, 3>();
    let var_1 = _wgslsmith_dot_vec4_u32(max(firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], global3.b.b.x, global2[_wgslsmith_index_u32(59791u, 3u)]), vec4<u32>(19486u, 93208u, global3.b.b.x, 50815u), vec4<u32>(global3.e.b.x, 37988u, 0u, 27825u)))), ~(~vec4<u32>(0u, u_input.a, 1u, global3.e.b.x))), ~select(~vec4<u32>(25760u, 0u, 0u, global2[_wgslsmith_index_u32(75120u, 3u)]), ~vec4<u32>(4294967295u, 12316u, global3.b.b.x, 22820u), global3.c.x >= global3.c.x) >> (countOneBits(select(vec4<u32>(4784u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], global3.e.b.x, global3.e.b.x), global3.e.b << (vec4<u32>(u_input.a, 0u, 69818u, 1u) % vec4<u32>(32u)), !global3.a)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, -2537f, global3.c.x, global3.c.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(max(global3.c.x, global3.c.x)), _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(ceil(global3.c.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-2480f, global3.c.x, 1682f, 545f), vec4<f32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x))))))));
    return global2[_wgslsmith_index_u32(~min(~global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global3.e.b.zyw, vec3<u32>(4294967295u, 49349u, u_input.e.x)), 3u)], var_1), 3u)];
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    let var_1 = select(vec2<bool>(global4[_wgslsmith_index_u32(25835u >> (_wgslsmith_mult_u32(~4294967295u, ~global3.b.b.x) % 32u), 28u)], arg_1.a), select(vec2<bool>(arg_1.a, func_3() != global3.e.b.x), select(vec2<bool>(any(vec4<bool>(arg_1.a, global4[_wgslsmith_index_u32(0u, 28u)], arg_1.a, true)), !global3.a), select(select(vec2<bool>(global3.a, global4[_wgslsmith_index_u32(arg_1.b.b.x, 28u)]), vec2<bool>(var_0.a, global4[_wgslsmith_index_u32(arg_1.b.b.x, 28u)]), vec2<bool>(false, false)), vec2<bool>(global3.a, true), select(vec2<bool>(arg_1.a, false), vec2<bool>(true, global4[_wgslsmith_index_u32(var_0.b.b.x, 28u)]), vec2<bool>(false, true))), var_0.a), false), !select(!select(vec2<bool>(global3.a, true), vec2<bool>(false, global4[_wgslsmith_index_u32(61510u, 28u)]), global3.a), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, global3.a), vec2<bool>(arg_1.a, global4[_wgslsmith_index_u32(u_input.a, 28u)]))));
    var var_2 = func_3();
    let var_3 = 4294967295u;
    let var_4 = ~var_0.b.b.zw >> (_wgslsmith_clamp_vec2_u32(var_0.b.b.xx << (firstLeadingBit(vec2<u32>(global3.b.b.x, 4294967295u) & global3.e.b.xz) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(var_0.b.b.xx, ~u_input.e | reverseBits(u_input.e), firstLeadingBit(~vec2<u32>(global2[_wgslsmith_index_u32(var_0.e.b.x, 3u)], global2[_wgslsmith_index_u32(21873u, 3u)]))), u_input.e) % vec2<u32>(32u));
    return ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_4.x), 3u)];
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x + -2370f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3.c.x)))), arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1147f, -803f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(925f, 1666f, 1558f), vec3<f32>(global3.c.x, arg_1, 626f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1092f, -1000f, global3.c.x), vec3<f32>(595f, global3.c.x, global3.c.x), global4[_wgslsmith_index_u32(51871u, 28u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.c.x, -272f, 342f), vec3<f32>(827f, arg_1, global3.c.x))), select(vec3<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 28u)], false, true), vec3<bool>(true, true, false), vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 28u)], global4[_wgslsmith_index_u32(u_input.a, 28u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, 105f, 144f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global3.c.x, -235f)), false))))));
    let var_1 = !vec3<bool>(all(!vec2<bool>(global4[_wgslsmith_index_u32(global3.e.b.x, 28u)], global3.a)) | false, false, all(select(vec3<bool>(false, global3.a, false), select(vec3<bool>(global3.a, false, global4[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(global4[_wgslsmith_index_u32(54458u, 28u)], true, true)), vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 28u)], false))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~(~arg_0), countOneBits(~1u)), ~firstLeadingBit(arg_0 ^ 0u)), 28u)], global3.e, _wgslsmith_f_op_vec2_f32(round(var_0.zy)), _wgslsmith_sub_vec2_i32(u_input.c.xz, firstTrailingBit(global3.e.a.xy)), Struct_1(global3.b.a, max(global3.b.b ^ global3.e.b, (vec4<u32>(arg_0, u_input.e.x, 0u, global3.b.b.x) << (global3.e.b % vec4<u32>(32u))) << (global3.e.b % vec4<u32>(32u)))));
    let var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(var_3.e.b, vec4<u32>(1u, 4294967295u, 30162u, global2[_wgslsmith_index_u32(var_3.b.b.x, 3u)]), vec4<bool>(global3.a, global3.a, false, var_1.x)), _wgslsmith_sub_vec4_u32(global3.b.b, vec4<u32>(global3.b.b.x, u_input.e.x, 49217u, 60334u))), vec4<u32>(~1u, _wgslsmith_mod_u32(0u, 2730u), ~u_input.e.x, 1u)), global3.b.b), ~(~reverseBits(vec4<u32>(11144u, arg_0, 0u, arg_0))) & vec4<u32>(global2[_wgslsmith_index_u32(func_2(vec4<f32>(1000f, global3.c.x, -144f, var_2), Struct_2(global3.a, var_3.b, vec2<f32>(-318f, var_3.c.x), vec2<i32>(1i, -2147483647i), var_3.e)) << (func_2(vec4<f32>(-1220f, var_3.c.x, var_2, 212f), Struct_2(false, global3.b, var_0.xz, vec2<i32>(var_3.e.a.x, 14365i), Struct_1(vec3<i32>(-316i, -1i, 26507i), vec4<u32>(0u, 0u, 11117u, var_3.b.b.x)))) % 32u), 3u)], 0u, min(~u_input.a, 44717u), abs(global2[_wgslsmith_index_u32(global3.b.b.x, 3u)])));
    return ~(~reverseBits(abs(global3.d) & (u_input.c.yw << (vec2<u32>(0u, var_4.x) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    global0 = select(_wgslsmith_add_vec2_i32(select(_wgslsmith_sub_vec2_i32(global3.b.a.yy, vec2<i32>(-1i, -1i)), vec2<i32>(countOneBits(u_input.c.x), _wgslsmith_add_i32(2147483647i, u_input.d)), true), -min(vec2<i32>(1i, u_input.d) | global3.e.a.yy, countOneBits(global3.e.a.yy))), -select(func_4(func_2(vec4<f32>(global3.c.x, -275f, -1214f, -2066f), Struct_2(global4[_wgslsmith_index_u32(0u, 28u)], Struct_1(vec3<i32>(global0.x, 629i, -13526i), vec4<u32>(4294967295u, global3.b.b.x, global3.e.b.x, global3.e.b.x)), global3.c, u_input.c.yy, Struct_1(u_input.c.xxz, vec4<u32>(global3.e.b.x, 0u, 31375u, 56259u)))), _wgslsmith_f_op_f32(abs(global3.c.x)), ~(-2147483647i)), global3.b.a.yy, false), true);
    global1 = !(_wgslsmith_add_u32(~global3.b.b.x, ~(~4294967295u)) != ~func_3());
    let var_0 = _wgslsmith_mod_u32(abs(0u), 4294967295u);
    let var_1 = Struct_2(!all(vec4<bool>(any(vec3<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.b.x, 3u)], 28u)], true, global3.a)), all(vec4<bool>(false, true, false, false)), true, all(vec2<bool>(global4[_wgslsmith_index_u32(0u, 28u)], global3.a)))), global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(global3.c)), global3.c, select(vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(false, false), global4[_wgslsmith_index_u32(33503u, 28u)]))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1413f, global3.c.x))))))), vec2<i32>(abs(global0.x), (_wgslsmith_clamp_i32(global3.b.a.x, u_input.d, global0.x) << (countOneBits(var_0) % 32u)) | global3.e.a.x), Struct_1(u_input.c.wwy, global3.e.b));
    global4 = array<bool, 28>();
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec2_i32(countOneBits(global3.e.a.zy), min(firstTrailingBit(vec2<i32>(global3.b.a.x, 1478i)), global3.d));
    global3 = Struct_2(!global4[_wgslsmith_index_u32(0u, 28u)], global3.e, _wgslsmith_f_op_vec2_f32(global3.c - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.c.x, -262f), vec2<f32>(954f, 1408f)))))), _wgslsmith_add_vec2_i32(~min(vec2<i32>(57978i, global0.x), u_input.c.yz) << (vec2<u32>(~global3.b.b.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(15582u, 3u)], global3.e.b.x)) % vec2<u32>(32u)), min(select(_wgslsmith_div_vec2_i32(vec2<i32>(98159i, global0.x), global3.b.a.xx), vec2<i32>(global3.d.x, 1i), select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(18903u, 28u)]), vec2<bool>(global3.a, false), true)), ~u_input.c.zw)), Struct_1(~func_1(u_input.e), global3.e.b));
    let var_0 = Struct_2(all(select(vec3<bool>(all(vec4<bool>(global3.a, false, false, true)), !global4[_wgslsmith_index_u32(26786u, 28u)], global3.a), vec3<bool>(true, !global3.a, true), false)), Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -50859i, global0.x, -2147483647i)), _wgslsmith_clamp_i32(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -26954i, global0.x, 1i), u_input.c), u_input.c.x), -2147483647i), ~(~_wgslsmith_clamp_vec4_u32(global3.b.b, vec4<u32>(1u, 1u, 15243u, 0u), vec4<u32>(55638u, 0u, u_input.b, 25738u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(326f + -1526f))), _wgslsmith_f_op_f32(abs(625f)))), _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(global3.b.a.zy, global3.b.a.yx), vec2<i32>(-2147483647i, 1i) | vec2<i32>(u_input.d, -50183i))), ~(~(vec2<i32>(u_input.d, global0.x) & vec2<i32>(global0.x, global3.e.a.x)))), Struct_1(countOneBits(vec3<i32>(49560i, global0.x ^ u_input.c.x, 0i)), ~abs(vec4<u32>(global3.b.b.x, u_input.e.x, 1u, global2[_wgslsmith_index_u32(0u, 3u)]))));
    global4 = array<bool, 28>();
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(54327u, _wgslsmith_mod_u32(max(10959u, global2[_wgslsmith_index_u32(98454u, 3u)]), ~var_0.e.b.x)), _wgslsmith_mod_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 3u)], 4294967295u), u_input.e ^ vec2<u32>(0u, u_input.a), u_input.e), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3.e.b.x, 24401u), vec2<u32>(var_0.e.b.x, u_input.a), u_input.e)), vec2<u32>(26188u, abs(u_input.a >> (global2[_wgslsmith_index_u32(1u, 3u)] % 32u)))));
    var var_2 = Struct_1(var_0.e.a, ~countOneBits(var_0.b.b));
    global3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~abs(u_input.c))));
}

