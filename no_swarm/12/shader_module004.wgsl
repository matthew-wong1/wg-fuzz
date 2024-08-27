struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1000f, 230f), vec2<f32>(-1523f, -1000f), vec2<f32>(1000f, -1767f));

var<private> global2: array<u32, 31>;

var<private> global3: bool;

var<private> global4: array<vec3<u32>, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = -1i;
    global2 = array<u32, 31>();
    var var_1 = countOneBits(vec4<i32>(-1i) * -((vec4<i32>(-9656i, 2147483647i, u_input.d, 0i) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_0) % vec4<u32>(32u))) & min(vec4<i32>(var_0, 1i, u_input.c, 46118i), vec4<i32>(u_input.d, u_input.b.x, var_0, u_input.c))));
    let var_2 = arg_1;
    global4 = array<vec3<u32>, 15>();
    return arg_1.a.www;
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = u_input.b;
    global1 = array<vec2<f32>, 3>();
    var var_1 = global0.x;
    global0 = select(select(!select(vec3<bool>(global0.x, true, false), vec3<bool>(false, false, false), func_3(global2[_wgslsmith_index_u32(u_input.a, 31u)], Struct_1(vec4<bool>(global0.x, false, global0.x, global0.x), false, global0.x), 1000f)), vec3<bool>(func_3(_wgslsmith_add_u32(4294967295u, 0u), Struct_1(vec4<bool>(global0.x, global0.x, true, true), true, true), _wgslsmith_f_op_f32(-697f + 549f)).x, true | global0.x, all(!global0.xy)), !(!global0.x != true)), vec3<bool>(all(vec3<bool>(global0.x && global0.x, !global0.x, false)), min(~93867u, 25901u) == _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(select(0u, u_input.a, false), 15u)], vec3<u32>(u_input.a, 0u, 4294967295u)), !(global0.x & global0.x)), global0.x);
    let var_2 = Struct_1(!select(select(vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, true, global0.x, true), global0.x), !vec4<bool>(global0.x, global0.x, false, false)), vec4<bool>(all(vec3<bool>(true, true, global0.x)), true, !global0.x, all(vec2<bool>(false, true))), !select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), false)), func_3(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(24040u, 31u)])), 31u)], Struct_1(!(!vec4<bool>(global0.x, false, false, global0.x)), true, false), -921f).x, all(!select(vec3<bool>(true, false, global0.x), vec3<bool>(true, true, true), vec3<bool>(false, false, global0.x))));
    return vec4<bool>(true, false, false, false & (~firstLeadingBit(u_input.d) == (firstLeadingBit(u_input.c) ^ _wgslsmith_div_i32(var_0.x, -1i))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(select(!(!vec4<bool>(false, false, true, global0.x)), !(!func_2(vec4<u32>(57698u, 38603u, global2[_wgslsmith_index_u32(4294967295u, 31u)], 76662u))), global0.x), !(max(~u_input.a, global2[_wgslsmith_index_u32(24024u, 31u)] & 1u) != u_input.a), all(vec2<bool>(global0.x, false)) || !(min(20596u, u_input.a) <= min(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 31u)])));
    var var_1 = var_0;
    global4 = array<vec3<u32>, 15>();
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec3_u32(global4[_wgslsmith_index_u32(reverseBits(~(~u_input.a)), 15u)], vec3<u32>(_wgslsmith_dot_vec3_u32(~global4[_wgslsmith_index_u32(u_input.a, 15u)], abs(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 15u)])), abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 39360u), vec4<u32>(u_input.a, 11405u, 0u, 1u)), 31u)]), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(u_input.a, 15u)]), 31u)], _wgslsmith_clamp_u32(33778u, u_input.a, 1u)))));
    global1 = array<vec2<f32>, 3>();
    return _wgslsmith_add_u32(global2[_wgslsmith_index_u32(50488u, 31u)], firstLeadingBit(_wgslsmith_mult_u32(53341u, firstTrailingBit(19907u) | max(0u, global2[_wgslsmith_index_u32(var_2.x, 31u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-2141f, _wgslsmith_f_op_f32(f32(-1f) * -1539f));
    var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a, 31u)], 0u)), 3u)];
    var var_1 = 0u ^ (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 31u)], 31u)] & ~(~_wgslsmith_mod_u32(50361u, u_input.a)));
    var var_2 = _wgslsmith_mod_i32(-(~countOneBits(-44310i)), ~(~_wgslsmith_add_i32(-1i, -36941i))) < u_input.b.x;
    let var_3 = Struct_1(vec4<bool>(global0.x, any(global0.zx), !(!(!global0.x)), false), true & all(!select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), true)), u_input.d != u_input.c);
    var var_4 = !select(any(global0.yx), var_3.c, !var_3.b) | global0.x;
    let var_5 = global0.x;
    let var_6 = global2[_wgslsmith_index_u32(select(u_input.a, u_input.a, true), 31u)];
    var var_7 = vec2<u32>(func_1(), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-258f)), _wgslsmith_f_op_f32(max(var_0.x, 199f)), -929f, _wgslsmith_f_op_f32(863f + var_0.x)), vec4<f32>(var_0.x, var_0.x, 546f, _wgslsmith_f_op_f32(-var_0.x)), var_3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 835f, 1720f, var_0.x) - vec4<f32>(-244f, var_0.x, var_0.x, var_0.x)))))));
}

