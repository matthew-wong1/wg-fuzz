struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 13> = array<bool, 13>(false, false, false, false, false, false, true, false, true, true, false, true, true);

var<private> global2: vec2<f32> = vec2<f32>(-462f, -1497f);

var<private> global3: array<i32, 18>;

var<private> global4: array<u32, 24> = array<u32, 24>(53224u, 35960u, 1u, 56500u, 1u, 23106u, 0u, 1u, 79497u, 51298u, 4294967295u, 8276u, 0u, 12954u, 1998u, 0u, 33235u, 7821u, 37419u, 44952u, 1u, 1u, 1u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2283f, 1425f)));
    global1 = array<bool, 13>();
    global4 = array<u32, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1377f, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + -1576f), _wgslsmith_f_op_f32(min(global2.x, -762f)), -317f))), 5917i);
    global1 = array<bool, 13>();
    return global0.b;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(7331u), 1u), 24u)], 18u)], func_3(), arg_0.b);
    let var_1 = Struct_1(abs(reverseBits(vec3<i32>(_wgslsmith_div_i32(u_input.c, -21775i), _wgslsmith_dot_vec4_i32(vec4<i32>(10845i, -2147483647i, 8981i, -1544i), vec4<i32>(u_input.b, 20414i, -23722i, global0.b)), 2147483647i))), _wgslsmith_dot_vec3_i32(global0.a << (_wgslsmith_add_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e, 24u)], 24u)], u_input.d.x, global4[_wgslsmith_index_u32(u_input.e, 24u)]), u_input.d) % vec3<u32>(32u)), vec3<i32>(1i, global3[_wgslsmith_index_u32(u_input.e ^ 4294967295u, 18u)], -1i) ^ firstTrailingBit(arg_0.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(749f, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))), global2.x), vec4<f32>(global2.x, -718f, _wgslsmith_f_op_f32(sign(-350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -819f))), select(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 24u)], 13u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9655u, 24u)], 13u)], true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11740u, 24u)], 13u)], false), global1[_wgslsmith_index_u32(u_input.d.x, 13u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 24u)], 24u)], 13u)]), vec4<bool>(false, true, true, true), false), vec4<bool>(true, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], false)), true, global1[_wgslsmith_index_u32(u_input.d.x, 13u)])))));
    var var_3 = _wgslsmith_div_i32(1i, ~38024i);
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(86648u, 4294967295u, _wgslsmith_dot_vec4_u32(max(reverseBits(vec4<u32>(u_input.e, global4[_wgslsmith_index_u32(22906u, 24u)], u_input.e, global4[_wgslsmith_index_u32(78485u, 24u)])), vec4<u32>(13573u, global4[_wgslsmith_index_u32(8279u, 24u)], 0u, u_input.d.x)), vec4<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 24u)], 24u)], u_input.d.x, ~1u, 33453u))), abs(~firstTrailingBit(vec3<u32>(0u, 916u, global4[_wgslsmith_index_u32(0u, 24u)]))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-920f)), _wgslsmith_f_op_f32(122f + arg_1), global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_2.x, arg_1, -223f) * _wgslsmith_f_op_vec4_f32(sign(var_2))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global2.x, var_2.x, _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_mod_i32(firstTrailingBit(2147483647i), -(i32(-1i) * -32013i)));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_2(Struct_1(arg_0.a, _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(global0.a.x, -2147483647i, global0.b)), arg_0.a)), global2.x);
    let var_1 = true;
    global0 = arg_0;
    global0 = arg_0;
    let var_2 = arg_0;
    return Struct_3(u_input.c != 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-1i);
    let var_1 = func_1(Struct_1(global0.a, firstTrailingBit(u_input.a)));
    var var_2 = func_2(Struct_1(-(~(-vec3<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 18u)], 48327i, var_0))), 4900i), _wgslsmith_f_op_f32(select(global2.x, -673f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(abs(16662u), 24u)], 13u)])));
    global0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c << (4294967295u % 32u), -60583i), global0.a.xy), countOneBits(_wgslsmith_mod_i32(-1i, global3[_wgslsmith_index_u32(0u, 18u)]) << (global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, 47223u, global4[_wgslsmith_index_u32(23485u, 24u)]), 24u)] % 32u)), reverseBits(21587i)), ~_wgslsmith_div_i32(firstTrailingBit(2147483647i) | _wgslsmith_clamp_i32(0i, -1i, 440i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a.yz, global0.a.yy), countOneBits(global0.a.xy))));
    let var_3 = var_2.a.wwx;
    global3 = array<i32, 18>();
    var var_4 = Struct_1(vec3<i32>(~(-_wgslsmith_mod_i32(global0.a.x, global3[_wgslsmith_index_u32(6660u, 18u)])), min(var_2.b, i32(-1i) * -14813i), _wgslsmith_add_i32(-abs(u_input.a), 1i)), 2147483647i);
    let var_5 = ~(-vec3<i32>(var_2.b ^ global0.a.x, func_3(), global0.a.x)) >> (~(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, u_input.d), vec3<u32>(4294967295u, 0u, u_input.d.x) & vec3<u32>(13099u, u_input.e, u_input.e), _wgslsmith_add_vec3_u32(vec3<u32>(15823u, 9276u, 1664u), u_input.d)) >> (vec3<u32>(0u, ~15980u, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u));
    global3 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.yzw + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_2.a.xyy, var_2.a.wxx))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x)))))), _wgslsmith_div_u32(35345u >> (firstLeadingBit(~39374u) % 32u), global4[_wgslsmith_index_u32(u_input.e, 24u)]), ~var_4.a, firstLeadingBit(vec3<i32>(-8714i, 38578i, -3071i)), firstLeadingBit(select(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-4864i, -16319i), vec2<i32>(global0.b, 32813i))), vec2<i32>(_wgslsmith_mult_i32(-15484i, global0.a.x), 54204i), true)));
}

