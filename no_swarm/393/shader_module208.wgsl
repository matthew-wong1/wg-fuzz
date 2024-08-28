struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_1;

var<private> global2: i32 = 32148i;

var<private> global3: array<bool, 27> = array<bool, 27>(false, true, false, false, true, false, false, false, false, false, true, false, true, false, true, true, false, true, true, true, true, true, false, true, false, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    let var_0 = ~global1.c.x;
    let var_1 = -(~(~var_0) | ~(-var_0));
    let var_2 = global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(2873u, u_input.a)), 27u)];
    global3 = array<bool, 27>();
    let var_3 = !(!arg_1.x);
    return true;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global1 = Struct_1(arg_2.a, arg_3.b, ~(~global1.c), countOneBits(21878i), -1718f);
    var var_0 = arg_3.b.wyw;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-596f)))))))), _wgslsmith_f_op_f32(f32(-1f) * -914f), arg_3.e);
    var var_2 = -abs(arg_2.d);
    global0 = vec3<bool>(true, !(arg_2.a == arg_1.e), !(!all(select(var_0.xx, vec2<bool>(arg_3.b.x, global3[_wgslsmith_index_u32(u_input.a, 27u)]), arg_2.b.x))));
    return !(((~u_input.a != _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) | false) == any(select(arg_2.b.zxz, arg_3.b.zxx, vec3<bool>(global1.b.x, true, global3[_wgslsmith_index_u32(u_input.a, 27u)]))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.e)) * _wgslsmith_f_op_f32(step(arg_0.e, 549f)))))), 982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), arg_1.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1588f - var_0.x)))) - -485f), vec4<bool>(!(global1.b.x & true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(u_input.a, u_input.a, 115019u, u_input.a)), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), func_2(var_0.x, vec2<bool>(global1.b.x, global3[_wgslsmith_index_u32(0u, 27u)]))), ~vec4<u32>(52703u, 0u, 4294967295u, u_input.a) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 14287u, 20975u, u_input.a), vec4<u32>(33894u, 1u, u_input.a, 4294967295u))), 27u)], func_3(arg_1.c.x, Struct_1(arg_0.e, vec4<bool>(true, global3[_wgslsmith_index_u32(221u, 27u)], arg_1.b.x, false), _wgslsmith_mod_vec3_i32(global1.c, arg_1.c), -arg_0.c.x, -907f), arg_1, arg_0), !any(vec2<bool>(arg_1.b.x, true))), _wgslsmith_clamp_vec3_i32(global1.c, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.d, global1.d), abs(vec3<i32>(arg_0.d, arg_1.d, -1i))) ^ ~(~global1.c), -vec3<i32>(-65434i, arg_1.c.x, _wgslsmith_mod_i32(23012i, arg_1.d))), arg_0.d, arg_1.a);
    global0 = vec3<bool>(select(false, !global0.x, !(var_1.b.x & arg_1.b.x) && (_wgslsmith_mod_u32(u_input.a, u_input.a) > u_input.a)), true, arg_0.b.x);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~40828u, 4294967295u | u_input.a), 27u)];
    global1 = arg_1;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~vec2<u32>(~u_input.a, u_input.a)));
    var var_1 = Struct_1(global1.a, select(global1.b, vec4<bool>(false, all(global1.b), ~u_input.a == 61415u, global3[_wgslsmith_index_u32(select(min(69531u, var_0.x), var_0.x, global0.x & global0.x), 27u)]), !func_1(Struct_1(global1.e, global1.b, global1.c, global1.d, global1.a), Struct_1(-1000f, vec4<bool>(false, global0.x, true, global0.x), global1.c, global1.d, global1.e))), global1.c, global1.c.x ^ (i32(-1i) * -68389i), global1.e);
    let var_2 = select(!var_1.b.wz, vec2<bool>(all(vec2<bool>(true, global1.b.x)), global0.x), !(global0.x || false));
    var var_3 = ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a >> (u_input.a % 32u), 1u, 3336u), vec3<u32>(~1u, ~14672u, 27671u)), vec3<u32>(1u, 2050u, u_input.a));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(941f, 2535f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-271f, global1.e)) * _wgslsmith_f_op_f32(select(var_1.a, var_1.a, false)))))), var_1.b, vec3<i32>(-2218i, _wgslsmith_mod_i32(countOneBits(-1i) << (firstTrailingBit(var_3.x) % 32u), countOneBits(33834i >> (var_3.x % 32u))), var_1.d), min(_wgslsmith_dot_vec2_i32(var_1.c.zy, select(var_1.c.zz, vec2<i32>(var_1.c.x, global1.d), global0.xz)), 2147483647i >> (_wgslsmith_div_u32(1u, 43521u) % 32u)), 1054f);
    var var_5 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, _wgslsmith_div_u32(1u, 4294967295u), 1u), vec4<u32>(~0u, 52055u, firstLeadingBit(var_0.x), select(var_3.x, var_3.x, global0.x))), min(_wgslsmith_add_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(u_input.a, 25104u, var_3.x, 30768u))), vec4<u32>(~var_3.x, 1254u, ~3650u, firstTrailingBit(var_0.x))), vec4<u32>(abs(u_input.a >> (var_0.x % 32u)), _wgslsmith_sub_u32(var_0.x | u_input.a, ~4294967295u), ~u_input.a, firstLeadingBit(~4294967295u))), min(max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, var_0.x, 17441u, u_input.a), vec4<u32>(var_3.x, var_3.x, 0u, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 578u, 19100u, u_input.a), vec4<u32>(u_input.a, 38490u, var_0.x, var_3.x))) & ~select(vec4<u32>(67478u, 102991u, var_0.x, var_0.x), vec4<u32>(4294967295u, var_0.x, u_input.a, 0u), true), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(10979u, 15589u, 1u, 37184u)) & firstTrailingBit(vec4<u32>(var_3.x, 4294967295u, 4294967295u, 4294967295u))));
    var var_6 = global1.c.xy;
    global0 = global1.b.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(41942u, vec2<i32>(-1i) * -vec2<i32>(select(var_1.c.x, 0i, false), -1i ^ var_6.x));
}

