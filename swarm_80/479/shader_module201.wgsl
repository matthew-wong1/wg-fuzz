struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17080i;

var<private> global1: vec2<bool>;

var<private> global2: array<f32, 27>;

var<private> global3: array<Struct_1, 16>;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<f32, 27>();
    let var_0 = arg_0;
    var var_1 = global3[_wgslsmith_index_u32(~var_0.b, 16u)];
    global2 = array<f32, 27>();
    let var_2 = arg_0;
    return vec3<bool>(all(select(!var_2.c, !var_0.c, var_0.c)), all(var_2.c), !any(select(select(vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(var_0.c.x, global1.x, var_2.c.x, false), false), vec4<bool>(var_2.c.x, var_2.c.x, var_1.c.x, var_1.c.x), !vec4<bool>(arg_0.c.x, var_1.c.x, false, var_0.c.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global3 = array<Struct_1, 16>();
    let var_0 = 8150i;
    global1 = select(!(!(!vec2<bool>(false, global1.x))), !select(vec2<bool>(true, true), select(select(arg_0.yx, vec2<bool>(false, true), arg_3.zw), func_3(global3[_wgslsmith_index_u32(arg_2.b, 16u)]).xx, !arg_2.c.yx), arg_0.x), vec2<bool>(!(_wgslsmith_div_f32(-1000f, 1057f) >= _wgslsmith_f_op_f32(global4.x + 796f)), ~1u <= _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.b, arg_2.b, 120201u), ~vec3<u32>(arg_2.a, arg_2.a, 75679u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(-global4.x)))))));
    global3 = array<Struct_1, 16>();
    return ~arg_2.b;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = vec3<u32>(16262u, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(66384u, 1u, 4294967295u)), ~vec3<u32>(1u, 1u, 1u)) >> (func_4(select(!vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(false, global1.x, false, true), true), (u_input.c ^ -1i) >> (1u % 32u), Struct_1(select(4294967295u, 12251u, global1.x), 1u, func_3(Struct_1(1u, 32598u, vec3<bool>(global1.x, global1.x, true)))), vec4<bool>(true, global1.x & global1.x, global1.x && false, global1.x)) % 32u), 4294967295u);
    global2 = array<f32, 27>();
    var var_1 = !(!(!vec3<bool>(all(vec2<bool>(false, true)), global1.x, global2[_wgslsmith_index_u32(2561u, 27u)] != global4.x)));
    var var_2 = -u_input.c != u_input.b;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(var_0.yz, vec2<u32>(var_0.x, 4294967295u))), abs(var_0.xy)), var_0.x, vec3<bool>(!select(true, all(vec2<bool>(true, true)), !var_1.x), !var_1.x, any(vec4<bool>(true, false, true, var_1.x))));
    return ~abs(~(~abs(var_3.b)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~4294967295u)) & _wgslsmith_mod_u32(~(~arg_1) ^ arg_0.a, countOneBits(arg_0.b)), 16u)];
    global0 = -1i << (var_0.a % 32u);
    var var_1 = 21093i;
    global0 = select(arg_3.x, -25335i, any(vec3<bool>(!any(arg_0.c), false, true)));
    global3 = array<Struct_1, 16>();
    return global3[_wgslsmith_index_u32(~arg_0.b, 16u)];
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = func_5(Struct_1(1u, func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(25405u, 27u)], global2[_wgslsmith_index_u32(45470u, 27u)])))), !vec3<bool>(true, arg_0 != arg_0, true)), 1u << ((reverseBits(7072u) | firstTrailingBit(4294967295u)) % 32u), any(!vec2<bool>(true, all(vec4<bool>(false, global1.x, true, true)))), u_input.e);
    global2 = array<f32, 27>();
    global4 = _wgslsmith_div_vec2_f32(vec2<f32>(global4.x, 991f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(479f, -794f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(896f, 522f)))), vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(41671u, 27u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-652f)), global2[_wgslsmith_index_u32(var_0.b, 27u)])))));
    let var_1 = !(!vec4<bool>(func_3(func_5(Struct_1(var_0.a, 1u, var_0.c), var_0.a, false, vec2<i32>(arg_0, u_input.c))).x, !any(var_0.c.xx), func_3(global3[_wgslsmith_index_u32(min(51280u, var_0.b), 16u)]).x, false));
    let var_2 = var_0;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = select(select(vec2<bool>(select(true, false, false) == global1.x, func_1(i32(-1i) * -78655i)), vec2<bool>(true, global1.x), vec2<bool>(true, false)), vec2<bool>(true, (_wgslsmith_div_u32(1u, 16525u) << (1u % 32u)) > func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)]))), global1.x);
    var_1 = !vec2<bool>(var_1.x, true);
    global2 = array<f32, 27>();
    let var_2 = Struct_1(func_5(func_5(Struct_1(1u, ~1u, !vec3<bool>(var_1.x, var_1.x, false)), 1u, any(!vec4<bool>(false, var_1.x, false, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(1781i, u_input.d), ~u_input.e)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(55761u, 21225u, 4294967295u, 26609u), vec4<u32>(1u, 15285u, 4294967295u, 94000u)), vec4<u32>(1u, 1u, 1u, 1u)), any(select(vec2<bool>(global1.x, false), vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, global1.x), vec2<bool>(global1.x, false), true))), ~vec2<i32>(0i, -2147483647i)).b, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), max(select(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(27611u, 1u, 4294967295u, 10780u), vec4<u32>(4294967295u, 39298u, 0u, 4294967295u)), !vec4<bool>(true, false, global1.x, var_1.x)), vec4<u32>(~15855u, _wgslsmith_div_u32(57836u, 86686u), ~0u, _wgslsmith_sub_u32(44570u, 1u)))), vec3<bool>(true, func_1(-1i), any(vec3<bool>(var_1.x, false, !var_1.x))));
    global3 = array<Struct_1, 16>();
    var var_3 = func_5(Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(39559u, 42770u)), ~select(vec2<u32>(25781u, var_2.a), vec2<u32>(4294967295u, 4294967295u), global1.x)), 2814u, var_2.c), var_2.a, (global1.x != ((var_2.b >= var_2.b) & !global1.x)) || global1.x, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(-749f);
}

