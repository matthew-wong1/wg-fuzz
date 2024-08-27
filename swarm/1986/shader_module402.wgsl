struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 87796i;

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 27> = array<i32, 27>(i32(-2147483648), 0i, 2147483647i, -41798i, 2147483647i, -1i, i32(-2147483648), 1i, 12919i, -10734i, 0i, -69675i, 1i, -37640i, 2147483647i, 2147483647i, -1i, -1i, 34779i, 87774i, -21872i, 12276i, 0i, 1i, 1i, 40062i, -33508i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(868f, 1f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1437f, arg_1) - vec2<f32>(1157f, arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 889f))))), vec2<f32>(_wgslsmith_f_op_f32(-908f - -298f), -234f));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>) -> bool {
    global2 = array<i32, 27>();
    let var_0 = abs(vec3<i32>(global1.x, global1.x, -2147483647i) ^ vec3<i32>(~(2147483647i << (arg_1.x % 32u)), u_input.d.x, global2[_wgslsmith_index_u32(~11118u, 27u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, 1000f)) + vec2<f32>(663f, -361f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2096f, -492f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_0, -270f, arg_0.e)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(300f, -773f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-249f, -1000f)))));
    var var_2 = Struct_1(!vec2<bool>(!arg_0.e.x, true), _wgslsmith_mult_vec2_u32(arg_1, ~(vec2<u32>(arg_1.x, arg_0.b.x) >> (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u))) | vec2<u32>(u_input.a ^ arg_1.x, _wgslsmith_sub_u32(30724u, arg_1.x))), !arg_0.c, false, vec2<bool>(arg_0.a.x, arg_0.c.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(ceil(-981f))), var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(158f, var_1.x)), select(vec2<bool>(true, var_2.e.x), var_2.c.zw, vec2<bool>(false, true)))))));
    return arg_0.c.x;
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global2 = array<i32, 27>();
    global0 = global1.x;
    global1 = abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)] << (u_input.a % 32u), _wgslsmith_clamp_i32(min(u_input.b, u_input.c), ~45202i, global1.x), _wgslsmith_add_i32(global1.x, select(global2[_wgslsmith_index_u32(1u, 27u)], u_input.b, true))) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 18169u, u_input.a), min(vec3<u32>(u_input.a, 47515u, arg_0), vec3<u32>(arg_0, 0u, u_input.a))) % vec3<u32>(32u)));
    let var_0 = Struct_1(vec2<bool>(select(all(vec3<bool>(true, true, true)), true, true), u_input.a < u_input.a), vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, 47628u, 18779u)))), ~(~(~36418u))), !vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)), true, true), !any(vec2<bool>(true, true)), select(!vec2<bool>(true, select(true, false, false)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    let var_1 = var_0;
    return ~(~vec2<u32>(var_0.b.x, var_1.b.x & var_1.b.x) | var_1.b);
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(select(!select(vec2<bool>(arg_0.c.x, false), vec2<bool>(arg_0.a.x, arg_0.d), !arg_0.c.zz), arg_0.e, false || (arg_0.b.x > 49246u)), ~(select(arg_0.b, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.b.x), arg_0.b), !arg_0.d) & (reverseBits(arg_0.b) ^ arg_0.b)), arg_0.c, true, arg_0.a);
    let var_1 = Struct_1(var_0.e, ~(_wgslsmith_clamp_vec2_u32(arg_0.b >> (arg_0.b % vec2<u32>(32u)), min(var_0.b, vec2<u32>(arg_0.b.x, var_0.b.x)), arg_0.b) ^ var_0.b), select(!(!(!var_0.c)), var_0.c, vec4<bool>(!any(arg_0.c.xzx), all(arg_0.c) && false, false, false)), _wgslsmith_mod_u32(firstLeadingBit(u_input.a), _wgslsmith_mod_u32(var_0.b.x >> (arg_0.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 4359u, 0u, u_input.a), vec4<u32>(0u, 4817u, var_0.b.x, u_input.a)))) >= 22816u, select(arg_0.c.zy, select(!var_0.a, select(vec2<bool>(false, true), select(vec2<bool>(false, var_0.a.x), vec2<bool>(true, true), arg_0.a.x), all(var_0.e)), select(var_0.a, !arg_0.e, select(vec2<bool>(false, false), var_0.a, var_0.e))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(!vec2<bool>(var_0.e.x, var_0.e.x), select(vec2<bool>(false, false), vec2<bool>(true, true), false), arg_0.c.x))));
    global2 = array<i32, 27>();
    global0 = ~(-_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, global1.x, 2147483647i)), -_wgslsmith_clamp_i32(u_input.b, -1i, 2147483647i)));
    global0 = i32(-1i) * -global1.x;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) - _wgslsmith_f_op_f32(-1573f * _wgslsmith_f_op_f32(-737f - 450f)))), _wgslsmith_f_op_f32(f32(-1f) * -1233f), -global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.x, 0u), 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(vec2<bool>(true, func_1(Struct_1(vec2<bool>(false, true), vec2<u32>(4294967295u, 0u), vec4<bool>(true, false, true, false), false, vec2<bool>(false, false)), vec2<u32>(u_input.a, 1u), vec3<i32>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 27u)], -2147483647i)) == true), abs(~func_3(u_input.a)), vec4<bool>(select(u_input.a > u_input.a, true, true), true, true, func_1(Struct_1(vec2<bool>(false, true), vec2<u32>(0u, u_input.a), vec4<bool>(true, false, false, true), false, vec2<bool>(false, false)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, -25817i), vec3<i32>(1i, u_input.d.x, -1i), vec3<i32>(1i, 2147483647i, 24026i)))), true, vec2<bool>(false || (-31745i < global1.x), func_1(Struct_1(vec2<bool>(true, true), vec2<u32>(1u, u_input.a), vec4<bool>(true, false, false, false), true, vec2<bool>(false, true)), vec2<u32>(87148u, u_input.a), vec3<i32>(-33972i, -2147483647i, -2147483647i)))));
}

