struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1000f, 1672f, 1000f, 1000f, -1184f, -258f, -1737f, -3381f, 509f, -188f, 1286f);

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<f32, 12>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, false, false));

var<private> global4: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-250f, -545f), vec2<f32>(559f, -835f), vec2<f32>(-880f, 211f), vec2<f32>(159f, -288f), vec2<f32>(-610f, -1000f), vec2<f32>(-938f, 1000f), vec2<f32>(1305f, -808f), vec2<f32>(-513f, -137f), vec2<f32>(233f, 803f), vec2<f32>(-466f, -2848f), vec2<f32>(649f, 1015f), vec2<f32>(300f, 270f), vec2<f32>(-3123f, 441f), vec2<f32>(-814f, -487f), vec2<f32>(1592f, 372f), vec2<f32>(291f, -672f), vec2<f32>(297f, -374f), vec2<f32>(291f, 104f), vec2<f32>(-1350f, 960f), vec2<f32>(1000f, -676f), vec2<f32>(-440f, -1157f), vec2<f32>(-577f, 1930f), vec2<f32>(1610f, 1000f), vec2<f32>(398f, -1104f), vec2<f32>(1848f, -427f), vec2<f32>(-493f, 162f), vec2<f32>(-570f, 562f), vec2<f32>(427f, 344f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global2 = array<f32, 12>();
    return ((u_input.b.x < 65593u) & (_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(15645u << (u_input.a.x % 32u), 12u)])) >= _wgslsmith_f_op_f32(f32(-1f) * -457f))) & ((global3.a.x && false) | any(global3.a.wx));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = any(vec2<bool>(true, true));
    global2 = array<f32, 12>();
    return u_input.d.x;
}

fn func_2() -> Struct_1 {
    var var_0 = -(i32(-1i) * -u_input.d.x);
    let var_1 = func_4(_wgslsmith_add_vec3_u32(max(~abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)), abs(abs(u_input.b))), vec3<u32>(u_input.e.x, select(u_input.a.x, ~38938u, true), u_input.e.x)), vec2<bool>(func_3(), select(global3.a.x, any(!global3.a.zzx), false)), Struct_1(!select(vec4<bool>(global3.a.x, false, global3.a.x, global3.a.x), global3.a, global3.a.x)));
    var var_2 = vec3<u32>(u_input.a.x, 1u, u_input.b.x);
    var var_3 = ~(~_wgslsmith_mod_u32(~firstTrailingBit(u_input.e.x), u_input.e.x & var_2.x));
    var_2 = countOneBits(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_2.x, var_2.x, 4294967295u)), vec3<u32>(u_input.e.x, firstTrailingBit(43379u >> (var_2.x % 32u)), 18917u)));
    return Struct_1(!select(!(!global3.a), select(vec4<bool>(global3.a.x, false, false, false), !vec4<bool>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), global3.a), all(select(global3.a.zz, vec2<bool>(global3.a.x, global3.a.x), false))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(countOneBits(min(~vec4<u32>(72009u, 0u, u_input.e.x, 77105u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, u_input.a.x, 7962u), vec4<u32>(u_input.b.x, u_input.e.x, 41624u, 73715u))))) & vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(4294967295u, ~select(u_input.e.x, 4294967295u, true)), ~u_input.e.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 53328u, 59171u, 4294967295u)), firstLeadingBit(vec4<u32>(87099u, 0u, 0u, u_input.a.x))));
    global1 = array<vec4<i32>, 16>();
    let var_1 = Struct_1(global3.a);
    global0 = array<f32, 11>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(~var_0.wx, vec2<u32>(u_input.e.x, var_0.x))), firstTrailingBit(_wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_div_u32(~36959u, max(1u, 35578u)), 58410u))), 11u)];
    return func_2();
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    global3 = Struct_1(global3.a);
    let var_0 = global3.a.wyx;
    var var_1 = Struct_1(!vec4<bool>(false, global3.a.x & var_0.x, var_0.x && !var_0.x, any(select(vec4<bool>(false, var_0.x, false, arg_1), global3.a, global3.a))));
    global4 = array<vec2<f32>, 28>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-328f)), arg_0);
    return func_5(u_input.c, Struct_1(var_1.a), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(~(~u_input.e.x), 12u)], false);
    var var_1 = 1102f;
    let var_2 = func_2();
    var var_3 = firstTrailingBit(-9354i);
    var_3 = ~u_input.c;
    let var_4 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, _wgslsmith_mult_u32(reverseBits(1688u), ~u_input.b.x)) >> (u_input.b.x % 32u), 11u)], global2[_wgslsmith_index_u32(0u, 12u)] < _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~u_input.e.x), 12u)]))).a.zw;
    let x = u_input.a;
    s_output = StorageBuffer(-447f, _wgslsmith_mod_i32((select(-1i, u_input.c, false) ^ u_input.d.x) | -18751i, u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(countOneBits(1u << (u_input.e.x % 32u)), 12u)]), _wgslsmith_div_f32(130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 12u)]) * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 12u)])))), global2[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 11u)] - _wgslsmith_f_op_f32(649f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 12u)])))), 4294967295u);
}

