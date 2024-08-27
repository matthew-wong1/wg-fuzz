struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<bool, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> vec2<bool> {
    var var_0 = -abs(-12764i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(618f, 272f, -446f) + vec3<f32>(-178f, 183f, -167f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, 1696f, 760f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, 154f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-337f, -534f), vec2<f32>(219f, 1633f)))) - vec2<f32>(426f, 1999f))), Struct_3(global0[_wgslsmith_index_u32(66077u, 26u)]), Struct_1(~select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-16893i, -2147483647i, 2147483647i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(0i, -64618i, -6446i)), min(vec3<i32>(-15563i, 25953i, -2147483647i), vec3<i32>(-3679i, 2147483647i, 44758i)), true), 1u, 1u, arg_2, vec4<i32>(1i, -(~(-1i)), -3504i << (_wgslsmith_div_u32(36767u, 49826u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-19607i, 1i, 24028i, 41588i), select(vec4<i32>(-2147483647i, -21904i, -2147483647i, 2147483647i), vec4<i32>(-1i, 24879i, 19510i, -33234i), global1[_wgslsmith_index_u32(32847u, 21u)])))), _wgslsmith_sub_vec4_u32(vec4<u32>(61245u, _wgslsmith_sub_u32(abs(arg_0), 1u << (arg_0 % 32u)), arg_0, _wgslsmith_add_u32(~91801u, arg_1)), ~(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)))));
    return var_1.c.a.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var_0 = ~1u;
    var var_1 = select(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))), select(vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(24953u, u_input.a.x), 21u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], true, global1[_wgslsmith_index_u32(8695u, 21u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(40571u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))), true, true), select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(8897u, 21u)]), global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), false), vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, u_input.a.x), 21u)], func_2(u_input.a.x, _wgslsmith_add_u32(0u, 23226u), false).x, true, any(func_2(u_input.a.x, 1u, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])))), false);
    let var_2 = arg_1;
    let var_3 = max(vec2<i32>(min(_wgslsmith_clamp_i32(0i, arg_0.x >> (0u % 32u), arg_0.x), ~arg_0.x << (u_input.a.x % 32u)), arg_0.x), abs(vec2<i32>(-1i) * -max(arg_0.yy, arg_0.wx)));
    return vec2<bool>(true, false);
}

fn func_1() -> vec3<i32> {
    let var_0 = -select(countOneBits(-1i), abs(_wgslsmith_mult_i32(-1i, 1i)), global1[_wgslsmith_index_u32(2792u >> (u_input.a.x % 32u), 21u)]);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -118f);
    var var_2 = any(!select(select(func_2(4294967295u, u_input.a.x, false), select(vec2<bool>(global1[_wgslsmith_index_u32(57510u, 21u)], true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), false), true), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)])), !func_3(vec4<i32>(-2147483647i, var_0, var_0, 20793i), 1392f, -513f)));
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    return vec3<i32>(var_0, _wgslsmith_mod_i32(47024i, var_0), select(0i, abs(-(-1i << (1u % 32u))), !(!func_3(vec4<i32>(var_0, var_0, 32714i, 13196i), -969f, 2772f).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    var var_0 = Struct_5(func_1() ^ abs(-vec3<i32>(0i, 2147483647i, 52820i)), select(vec2<bool>(!(!global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), global1[_wgslsmith_index_u32(abs(4294967295u), 21u)]), !vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(9311u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(31015u, 21u)])), true), func_3(firstLeadingBit(vec4<i32>(-2147483647i, 1i, -4359i, 34683i)), _wgslsmith_f_op_f32(473f * -1045f), _wgslsmith_f_op_f32(select(535f, 1000f, true))).x & true), u_input.a << (u_input.a % vec2<u32>(32u)), select(select(vec4<bool>(true, any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), false || global1[_wgslsmith_index_u32(u_input.a.x, 21u)], func_3(vec4<i32>(-22682i, 0i, 14928i, 59172i), -783f, 1278f).x), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false, false)), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), false), true)), !select(select(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global1[_wgslsmith_index_u32(95388u, 21u)]), global1[_wgslsmith_index_u32(18791u, 21u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(69297u, 21u)], true)), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), (func_3(vec4<i32>(2147483647i, 1i, -58335i, 1i), -1117f, -115f).x & global1[_wgslsmith_index_u32(4294967295u, 21u)]) | true));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, -vec4<i32>(1i, 1i, ~1i, reverseBits(abs(var_0.a.x))), vec2<i32>(~abs(var_0.a.x), var_0.a.x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-730f)), 455f), 1000f, _wgslsmith_f_op_f32(ceil(-1486f))), 0u);
}

