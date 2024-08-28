struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 26>;

var<private> global3: Struct_1 = Struct_1(true, 668f, 141f);

var<private> global4: Struct_1 = Struct_1(false, -536f, -949f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(!select(true, true && !global3.a, false), _wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b))), global3.c, global3.a)));
    var var_1 = arg_1;
    var_1 = Struct_1(!(!arg_1.a) || global4.a, 294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(f32(-1f) * -1015f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_1.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) + -967f))));
    let var_2 = -2147483647i;
    global2 = array<u32, 26>();
    return global2[_wgslsmith_index_u32(min(~(~(~0u >> ((global2[_wgslsmith_index_u32(0u, 26u)] | 28986u) % 32u))), 0u), 26u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_1 {
    global1 = ~vec4<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(global1.wx ^ vec2<u32>(1u, 56325u), _wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, arg_2.x)))), func_3(arg_0, arg_0), 4294967295u, 1u);
    global0 = u_input.a;
    let var_0 = -vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, -1i)), -u_input.a, u_input.a) >> (1u % 32u), _wgslsmith_mod_i32(~(~u_input.a), firstLeadingBit(37070i)), max(i32(-1i) * -34806i, u_input.a));
    var var_1 = arg_0;
    var_1 = arg_0;
    return Struct_1(any(vec4<bool>(global4.a, false, !all(vec3<bool>(false, var_1.a, true)), true & all(vec3<bool>(global4.a, global3.a, false)))), global4.b, arg_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) + _wgslsmith_div_f32(arg_3, arg_2.b));
    global2 = array<u32, 26>();
    let var_1 = !select(vec3<bool>(1i == u_input.a, arg_0.a, !all(vec3<bool>(global4.a, global3.a, false))), !vec3<bool>(false, global3.a, arg_2.a), select(select(select(vec3<bool>(false, false, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(true, false, global3.a)), select(vec3<bool>(false, arg_0.a, true), vec3<bool>(false, arg_0.a, global3.a), vec3<bool>(true, false, true)), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), func_2(arg_1, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(672f, -768f), vec2<f32>(609f, arg_3))), ~vec4<u32>(22320u, u_input.b.x, 78726u, global1.x)).a));
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    return vec2<u32>(abs(0u), _wgslsmith_add_u32(firstLeadingBit(u_input.b.x << (43970u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(3586u, 1u, 69226u) << (global1.xxz % vec3<u32>(32u)), vec3<u32>(4294967295u, 0u, 23220u)))) | _wgslsmith_mult_vec2_u32(global1.xw, vec2<u32>(global1.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(18764u, 26u)], u_input.b.x), global1.xz))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1.zy;
    let var_1 = !(!(!arg_1.xz));
    let var_2 = 8124u & (~(~(~global1.x)) & _wgslsmith_dot_vec2_u32(func_4(func_2(Struct_1(false, arg_0.x, global3.b), arg_0.yy, vec4<u32>(u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(global1.x, 26u)], u_input.b.x)), func_2(Struct_1(arg_1.x, -334f, arg_0.x), vec2<f32>(-1000f, global4.b), vec4<u32>(u_input.b.x, 3235u, 39816u, global2[_wgslsmith_index_u32(0u, 26u)])), Struct_1(false, -331f, arg_0.x), -873f), abs(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 26u)]))));
    var var_3 = _wgslsmith_clamp_vec3_u32(global1.zww, u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(~(~4294967295u), 26u)], ~4294967295u, 4294967295u), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, global2[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u), vec3<u32>(84392u, global2[_wgslsmith_index_u32(0u, 26u)], 0u)) >> ((global1.wzx ^ vec3<u32>(global1.x, 0u, global2[_wgslsmith_index_u32(var_2, 26u)])) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.b, ~global1.zzx), ~(~u_input.b))));
    return Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1015f * arg_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.c)) * _wgslsmith_f_op_f32(ceil(-531f))))), 1161f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1137f + _wgslsmith_f_op_f32(round(463f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(848f * 342f), global3.c, true)), _wgslsmith_f_op_f32(exp2(global4.c)))), !(!select(select(vec3<bool>(global3.a, global3.a, global4.a), vec3<bool>(true, false, global4.a), true), vec3<bool>(global4.a, global3.a, true), true || global4.a)));
    global0 = -24619i;
    var var_0 = func_2(func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-1000f, 1191f), _wgslsmith_f_op_f32(step(global4.c, -519f)), _wgslsmith_f_op_f32(-global3.c)), vec3<f32>(global4.b, _wgslsmith_f_op_f32(-global3.c), _wgslsmith_div_f32(-2199f, global4.c)))), !vec3<bool>(global4.a, global3.a, true || global3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(Struct_1(false, global3.b, -229f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, 773f) + vec2<f32>(1356f, global4.b)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global1.x, 26u)], global2[_wgslsmith_index_u32(51304u, 26u)], 64770u), vec4<u32>(54223u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 26u)], 37490u))).c, _wgslsmith_f_op_f32(trunc(global3.b)))), ~select(select(vec4<u32>(global2[_wgslsmith_index_u32(91157u, 26u)], 1u, global1.x, global2[_wgslsmith_index_u32(11530u, 26u)]), vec4<u32>(global2[_wgslsmith_index_u32(global1.x, 26u)], global1.x, 19613u, u_input.b.x), false), vec4<u32>(global2[_wgslsmith_index_u32(21317u, 26u)], 4110u, 4294967295u, global1.x), global3.a) | select(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], global1.x, global1.x, 1u) | max(vec4<u32>(global1.x, 1u, 48751u, 31645u), vec4<u32>(0u, global1.x, 38555u, global1.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(48353u, global1.x, global2[_wgslsmith_index_u32(921u, 26u)], global1.x), vec4<u32>(3082u, u_input.b.x, u_input.b.x, 0u)), select(!vec4<bool>(global4.a, global4.a, false, global3.a), vec4<bool>(global4.a, global4.a, global4.a, true), !vec4<bool>(false, true, false, global4.a))));
    var var_1 = -1000f;
    global4 = Struct_1(!(!var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(830f))))) * global3.b), _wgslsmith_div_f32(-1471f, global4.c));
    var var_2 = !vec2<bool>(true, u_input.a < u_input.a);
    let var_3 = vec4<bool>(-4175i > _wgslsmith_mod_i32(-u_input.a, 39181i), var_2.x, !(!(func_2(Struct_1(var_2.x, global4.b, global4.b), vec2<f32>(var_0.b, 1002f), vec4<u32>(global1.x, u_input.b.x, global1.x, global2[_wgslsmith_index_u32(2787u, 26u)])).a && any(vec2<bool>(false, true)))), any(!vec2<bool>(any(vec2<bool>(true, global4.a)), true)));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, 146f) - vec3<f32>(var_0.b, var_0.c, -248f)))) * vec3<f32>(_wgslsmith_f_op_f32(global3.c + 619f), _wgslsmith_f_op_f32(round(var_0.b)), 228f))), !vec3<bool>(0u > u_input.b.x, select(false, true, true) & func_2(Struct_1(global4.a, 1539f, var_0.c), vec2<f32>(global3.b, global3.b), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 5453u, u_input.b.x, 0u)).a, true));
    var var_4 = !all(select(!var_3.yxz, var_3.zxx, vec3<bool>(!var_0.a, u_input.a > u_input.a, all(var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(-233f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c, -1000f)), global3.b, -329f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1508f, _wgslsmith_div_f32(566f, global3.c), _wgslsmith_f_op_f32(ceil(-1027f)), 837f))));
}

