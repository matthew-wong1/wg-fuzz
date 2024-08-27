struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 20> = array<u32, 20>(4294967295u, 43423u, 4294967295u, 7039u, 4943u, 58737u, 1u, 76444u, 39778u, 43828u, 11874u, 95827u, 1u, 9572u, 4294967295u, 11864u, 41139u, 4294967295u, 28387u, 0u);

var<private> global2: array<bool, 5>;

var<private> global3: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 8041u), vec2<u32>(73350u, 0u), vec2<u32>(41053u, 2907u), vec2<u32>(25787u, 29124u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 49476u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 22341u), vec2<u32>(1u, 1u), vec2<u32>(57470u, 1u), vec2<u32>(0u, 65268u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 47161u), vec2<u32>(46623u, 0u), vec2<u32>(1u, 1u), vec2<u32>(53957u, 0u), vec2<u32>(87780u, 43134u), vec2<u32>(4294967295u, 12732u), vec2<u32>(23800u, 4294967295u), vec2<u32>(64658u, 29705u), vec2<u32>(8541u, 4294967295u), vec2<u32>(37054u, 29103u));

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_5(Struct_2(all(!arg_0.b.yzz), Struct_1(-1034f, select(select(arg_0.b, vec4<bool>(global2[_wgslsmith_index_u32(0u, 5u)], arg_3.a, false, true), true), arg_3.b.b, !vec4<bool>(false, false, arg_0.b.x, arg_0.b.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -173f) * arg_0.a), vec4<bool>(u_input.a.x <= 1u, all(vec4<bool>(arg_0.b.x, true, false, false)), arg_0.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 5u)] != true))), ~(~firstTrailingBit(42467u)) ^ u_input.a.x, arg_3, min(~24077u, select(53717u, 17769u, !(false & arg_3.a))));
    let var_1 = var_0.c;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), var_0.c.c.b);
    var var_3 = vec2<bool>(all(vec3<bool>(!var_1.a | true, (var_0.d <= 1u) || !global2[_wgslsmith_index_u32(0u, 5u)], true)), false);
    let var_4 = any(vec2<bool>(true, (false && var_0.a.c.b.x) & true));
    return arg_0.b.x;
}

fn func_2() -> u32 {
    let var_0 = select(select(vec4<bool>(any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)], false)), !select(true, false, false), func_3(Struct_1(-1000f, vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 5u)], false, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(197f, -112f, 361f) - vec3<f32>(-626f, 1000f, 785f)), _wgslsmith_f_op_f32(f32(-1f) * -173f), Struct_2(false, Struct_1(2031f, vec4<bool>(false, true, true, false)), Struct_1(-887f, vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 5u)], false)))), !any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], false))), vec4<bool>(func_3(Struct_1(1221f, vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-436f, 183f, -897f) * vec3<f32>(362f, 417f, 1000f)), -121f, Struct_2(global2[_wgslsmith_index_u32(61888u, 5u)], Struct_1(681f, vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(15260u, 5u)], true)), Struct_1(2926f, vec4<bool>(false, global2[_wgslsmith_index_u32(64025u, 5u)], false, global2[_wgslsmith_index_u32(47887u, 5u)])))), false, any(vec3<bool>(true, true, true)), any(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(101902u, 5u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 5u)]))), vec4<bool>(false, true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], false), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(50305u, 5u)], false))), true)), !(!select(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2926u, 20u)], 20u)], 20u)], 5u)], global2[_wgslsmith_index_u32(21332u, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)], true), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(6326u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35702u, 20u)], 5u)], true), global2[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(global2[_wgslsmith_index_u32(18032u, 5u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)]))), _wgslsmith_f_op_f32(f32(-1f) * -894f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(-653f - _wgslsmith_f_op_f32(f32(-1f) * -1539f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1832f, 1103f))))), _wgslsmith_div_vec2_f32(vec2<f32>(-1076f, 2164f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, 523f))))));
    var var_2 = vec3<bool>(!(any(var_0) || !(!global2[_wgslsmith_index_u32(4294967295u, 5u)])), false, var_0.x || (var_0.x | false));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)))));
    var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, var_3.x)))), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-1254f, -1086f))) + _wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(var_1.x, var_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1, var_1))))))));
    return global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52066u, 20u)], 20u)];
}

fn func_1() -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~(u_input.a >> (u_input.a % vec3<u32>(32u)))), u_input.a << ((u_input.a >> (~u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(4294967295u, global0.x)) | (global1[_wgslsmith_index_u32(func_2(), 20u)] << (1u % 32u)), 20u)], countOneBits(global0.x));
    let var_1 = Struct_5(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(floor(-267f)), vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, global0.x), 5u)], false, true)), Struct_1(_wgslsmith_f_op_f32(trunc(596f)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 20u)], 5u)], false, global2[_wgslsmith_index_u32(74878u, 5u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(84854u, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], false, false, global2[_wgslsmith_index_u32(var_0.x, 5u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(5710u, 5u)], global2[_wgslsmith_index_u32(4459u, 5u)], true), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(global0.x, 5u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(14437u, 5u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 5u)], global2[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 5u)]), global2[_wgslsmith_index_u32(1u, 5u)])))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~global0.x), 1u), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f - -1776f)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.x, 5u)], true), func_3(Struct_1(1353f, vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33505u, 20u)], 5u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec3<f32>(-621f, -1209f, 2261f), 427f, Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 5u)], Struct_1(-2066f, vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3403u, 20u)], 20u)], 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], true)), Struct_1(856f, vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_0.x, 5u)], false)))))), Struct_1(-1655f, select(!vec4<bool>(global2[_wgslsmith_index_u32(4416u, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], true), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)], false, global2[_wgslsmith_index_u32(var_0.x, 5u)]), true))), 1u);
    var var_2 = select(vec2<bool>(~4294967295u <= (_wgslsmith_mod_u32(var_0.x, 1u) << (var_1.b % 32u)), false), !var_1.a.b.b.zw, all(select(select(select(var_1.c.c.b, vec4<bool>(true, var_1.c.a, var_1.a.b.b.x, var_1.a.a), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 5u)], true, false)), select(vec4<bool>(var_1.c.b.b.x, var_1.a.c.b.x, false, var_1.a.c.b.x), vec4<bool>(var_1.a.a, global2[_wgslsmith_index_u32(var_1.d, 5u)], true, true), global2[_wgslsmith_index_u32(0u, 5u)]), !vec4<bool>(true, var_1.a.b.b.x, false, false)), vec4<bool>(any(var_1.a.c.b.wwz), true, select(global2[_wgslsmith_index_u32(var_1.d, 5u)], false, false), true), all(select(var_1.c.c.b, var_1.c.b.b, var_1.a.a)))));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(f32(-1f) * -1912f))), min(~12874i, _wgslsmith_clamp_i32(~(-44206i), _wgslsmith_mult_i32(func_1(), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 16861i), vec2<i32>(-40394i, -1i))), ~(i32(-1i) * -2147483647i))), func_1());
}

