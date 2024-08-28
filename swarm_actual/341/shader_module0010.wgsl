struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<f32>(-2278f, -877f, -781f, 317f)), Struct_2(vec4<f32>(-1235f, -1031f, 107f, -794f)), Struct_2(vec4<f32>(495f, -858f, -973f, -989f)), Struct_2(vec4<f32>(-201f, -1009f, -1330f, 449f)), Struct_2(vec4<f32>(-1472f, 1131f, 1093f, -662f)), Struct_2(vec4<f32>(1209f, 1025f, -1113f, -548f)), Struct_2(vec4<f32>(-577f, 906f, -772f, 325f)), Struct_2(vec4<f32>(100f, -1272f, -2395f, 433f)), Struct_2(vec4<f32>(329f, 1000f, -1485f, -680f)), Struct_2(vec4<f32>(-323f, -789f, -1496f, 994f)), Struct_2(vec4<f32>(137f, -1992f, 1000f, -483f)), Struct_2(vec4<f32>(-615f, 378f, 594f, -733f)), Struct_2(vec4<f32>(1417f, 672f, -714f, 215f)), Struct_2(vec4<f32>(125f, -544f, 121f, 301f)), Struct_2(vec4<f32>(686f, -654f, 568f, 1682f)), Struct_2(vec4<f32>(168f, -1701f, -558f, -2215f)), Struct_2(vec4<f32>(-1642f, 544f, -1957f, 1149f)), Struct_2(vec4<f32>(592f, 283f, 397f, -496f)), Struct_2(vec4<f32>(1168f, 2200f, -1285f, -1000f)), Struct_2(vec4<f32>(728f, 2347f, 1000f, 1000f)), Struct_2(vec4<f32>(-1054f, 1000f, 1292f, -1664f)), Struct_2(vec4<f32>(-580f, 104f, -698f, -1017f)), Struct_2(vec4<f32>(1546f, 683f, -587f, 1128f)), Struct_2(vec4<f32>(1000f, 878f, -617f, -869f)), Struct_2(vec4<f32>(-230f, 543f, 213f, 2225f)), Struct_2(vec4<f32>(345f, -398f, 896f, -1171f)), Struct_2(vec4<f32>(-301f, 236f, -777f, 887f)), Struct_2(vec4<f32>(-1597f, -427f, -409f, -208f)));

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: array<vec3<i32>, 27>;

var<private> global4: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<bool> {
    var var_0 = global0.a.x;
    var var_1 = global4.yzx;
    global2 = array<bool, 1>();
    var var_2 = ~select(~(~vec2<u32>(19142u, 47816u)), vec2<u32>(1u, 1u), !(!vec2<bool>(false, var_1.x))) >> (~abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    let var_3 = firstTrailingBit(vec2<u32>(var_2.x, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(12770u, 0u, 5992u), 2444u)));
    return vec3<bool>(global4.x, true, !(!(_wgslsmith_div_f32(global0.a.x, 580f) <= global0.a.x)));
}

fn func_3() -> vec4<bool> {
    global4 = select(select(vec4<bool>(all(global4.zyw), true, _wgslsmith_sub_i32(u_input.b, -43259i) < firstLeadingBit(u_input.a), !(!global4.x)), vec4<bool>(true, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48515u, 26915u, 4294967295u), vec4<u32>(69164u, 22974u, 45118u, 5729u)), 1u)], global2[_wgslsmith_index_u32(~min(2941u, 0u), 1u)], all(vec4<bool>(global4.x, global2[_wgslsmith_index_u32(4294967295u, 1u)], global4.x, global4.x)) || !global2[_wgslsmith_index_u32(4294967295u, 1u)]), select(select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global4.x, global4.x, false), vec4<bool>(true, false, global4.x, global2[_wgslsmith_index_u32(0u, 1u)]), select(vec4<bool>(false, global4.x, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(85889u, 1u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 1u)], false, global4.x), true)), !vec4<bool>(false, global4.x, false, true), vec4<bool>(true, u_input.a <= u_input.a, global2[_wgslsmith_index_u32(34052u, 1u)] | false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(88217u, 1u, 44124u, 21181u), vec4<u32>(17001u, 42910u, 490u, 1u)), 1u)]))), select(vec4<bool>(true, any(global4.xwx), all(vec2<bool>(global4.x, true)), !global4.x || true), vec4<bool>(true, global4.x, true, !global4.x), false), true);
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~(~1u)), _wgslsmith_mod_u32(23847u, firstTrailingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 19485u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(44918u, 1u, 1u, 697u), vec4<u32>(1u, 6008u, 49985u, 1u), vec4<u32>(29513u, 4243u, 0u, 0u)))))), 28u)];
    return select(vec4<bool>(any(!global4.wx), false, !(u_input.a >= 1i), true), vec4<bool>(!(u_input.b <= 2147483647i), false, global4.x != global4.x, any(vec4<bool>(any(vec4<bool>(global4.x, global4.x, false, true)), all(vec4<bool>(true, false, global4.x, global2[_wgslsmith_index_u32(4294967295u, 1u)])), false && global4.x, global4.x | global2[_wgslsmith_index_u32(33396u, 1u)]))), global2[_wgslsmith_index_u32(max(~87191u, abs(~(~31320u))), 1u)]);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    global1 = array<Struct_2, 28>();
    let var_0 = arg_2.b.wxy >> (arg_2.b.wwz % vec3<u32>(32u));
    let var_1 = arg_3;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-478f, -1591f, arg_1.a.x, -336f))) - arg_1.a));
    global2 = array<bool, 1>();
    return select(select(vec4<bool>(!(!arg_2.c.x), global2[_wgslsmith_index_u32(1u << (_wgslsmith_add_u32(var_1, 16860u) % 32u), 1u)], all(vec2<bool>(true, true)), any(func_2())), vec4<bool>(false, !(arg_2.c.x != arg_2.c.x), !(-1000f <= var_2.a.x), global4.x), true), func_3(), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -923f), global0.a.x, any(func_1(global1[_wgslsmith_index_u32(5270u, 28u)], global1[_wgslsmith_index_u32(41886u, 28u)], Struct_1(88313u, vec4<u32>(4294967295u, 827u, 2704u, 1u), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], true, global4.x, false)), 1069u)))), global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(175f - -1496f) * _wgslsmith_f_op_f32(global0.a.x + 1921f))), -315f));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-666f, global0.a.x))) + _wgslsmith_f_op_vec2_f32(global0.a.wz - vec2<f32>(var_0.a.x, -799f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(sign(-853f))))));
    global2 = array<bool, 1>();
    global4 = !vec4<bool>(func_3().x, _wgslsmith_mod_i32(~u_input.a, ~u_input.b) >= -(~(-19451i)), any(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 1u)], false))), func_3().x);
    var var_2 = var_0;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(19917u, ~(~8272u)), 27u)];
    global3 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(max(var_0.a.x, var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(2000f * var_0.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, 859f, var_0.a.x, var_0.a.x), vec4<f32>(global0.a.x, var_1.x, var_1.x, 293f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, global0.a.x, var_1.x, 1368f) * var_2.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -100f, var_0.a.x, global0.a.x) * _wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(var_0.a.x, 988f, var_0.a.x, 1077f))))));
}

