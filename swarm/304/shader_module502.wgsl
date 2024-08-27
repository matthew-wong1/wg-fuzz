struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-25472i, -65200i);

var<private> global1: Struct_2 = Struct_2(Struct_1(23958u), vec4<u32>(0u, 1u, 55973u, 4294967295u), vec2<i32>(5396i, 0i), vec4<u32>(53243u, 4294967295u, 4294967295u, 31122u), false);

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(0u)), Struct_3(Struct_1(0u)), Struct_3(Struct_1(4294967295u)), Struct_3(Struct_1(96353u)), Struct_3(Struct_1(4294967295u)), Struct_3(Struct_1(1u)), Struct_3(Struct_1(0u)), Struct_3(Struct_1(1u)), Struct_3(Struct_1(61460u)));

var<private> global3: array<Struct_1, 32>;

var<private> global4: Struct_1 = Struct_1(42926u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> vec4<bool> {
    global3 = array<Struct_1, 32>();
    return select(!vec4<bool>(arg_1 & (arg_0.b.x <= 1u), !(arg_2 & global1.e), arg_2, global1.e), !vec4<bool>(false, arg_0.e, all(!vec4<bool>(arg_0.e, arg_0.e, false, false)), false), global1.e);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    global4 = Struct_1(arg_0.a);
    var var_0 = -1i;
    var var_1 = global2[_wgslsmith_index_u32(126985u, 9u)];
    let var_2 = select(!select(func_3(Struct_2(var_1.a, vec4<u32>(global1.d.x, 2173u, 16389u, 1u), global1.c, u_input.d, false), global1.e, global1.e & true), !(!vec4<bool>(global1.e, global1.e, global1.e, false)), select(vec4<bool>(true, global1.e, false, global1.e), vec4<bool>(true, true, global1.e, global1.e), select(vec4<bool>(global1.e, true, global1.e, global1.e), vec4<bool>(true, false, true, global1.e), false))), select(!(!(!vec4<bool>(global1.e, true, false, false))), vec4<bool>((global1.e != global1.e) || (30342u > arg_2.a.a), _wgslsmith_f_op_f32(-arg_3) != _wgslsmith_f_op_f32(round(arg_3)), any(!vec2<bool>(true, global1.e)), global1.e), func_3(Struct_2(Struct_1(479u), ~vec4<u32>(0u, global4.a, global1.a.a, var_1.a.a), ~vec2<i32>(-22158i, global1.c.x), _wgslsmith_sub_vec4_u32(global1.b, global1.d), select(global1.e, false, true)), true, all(!vec2<bool>(false, global1.e)))), !(!select(!vec4<bool>(global1.e, global1.e, true, global1.e), !vec4<bool>(global1.e, global1.e, global1.e, true), all(vec2<bool>(global1.e, global1.e)))));
    global4 = Struct_1(35446u);
    return Struct_2(Struct_1(~25824u), global1.b, global1.c | _wgslsmith_div_vec2_i32(global1.c, vec2<i32>(-11248i, -3985i)), _wgslsmith_div_vec4_u32(vec4<u32>(~countOneBits(0u), global4.a, _wgslsmith_sub_u32(~46442u, 33154u), arg_2.a.a), vec4<u32>((68805u << (global4.a % 32u)) | 16377u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global1.d, global1.d), ~4294967295u), 1u ^ ~arg_2.a.a, arg_1.x & min(u_input.a, global4.a))), func_3(Struct_2(Struct_1(arg_0.a), ~vec4<u32>(var_1.a.a, global1.a.a, 88622u, 1u), global1.c, _wgslsmith_div_vec4_u32(vec4<u32>(9353u, 0u, arg_2.a.a, 25100u), _wgslsmith_div_vec4_u32(global1.d, vec4<u32>(4294967295u, u_input.d.x, 14594u, global4.a))), var_2.x), true, any(var_2.yz)).x);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = func_2(Struct_1(0u), ~global1.b, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(121f))))));
    global3 = array<Struct_1, 32>();
    global1 = Struct_2(func_2(arg_0.a, u_input.d, Struct_3(global1.a), _wgslsmith_f_op_f32(1f * -1715f)).a, min(vec4<u32>(select(var_0.a.a, arg_0.a.a, true), 1u, u_input.a, 21781u), vec4<u32>(~abs(global4.a), ~(0u ^ global4.a), (global1.b.x ^ global4.a) ^ 1u, 49982u >> (_wgslsmith_clamp_u32(1u, arg_0.a.a, var_0.b.x) % 32u))), ~global1.c, ~(vec4<u32>(firstLeadingBit(var_0.b.x), _wgslsmith_mult_u32(26437u, 73516u), arg_0.a.a, global4.a) ^ u_input.d), all(vec2<bool>(global1.e, all(arg_1))));
    let var_1 = min(~(~(_wgslsmith_add_u32(106410u, 0u) >> (firstLeadingBit(82812u) % 32u))), global4.a);
    let var_2 = all(!vec2<bool>(select(true, global1.c.x > var_0.c.x, true), !global1.e));
    return Struct_2(func_2(var_0.a, ~vec4<u32>(4294967295u, _wgslsmith_sub_u32(48614u, var_1), arg_0.a.a, ~42683u), global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(0u, 14787u)), 9u)], _wgslsmith_div_f32(-1173f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1936f))))).a, u_input.d, var_0.c, var_0.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(global3[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(false, any(vec4<bool>(global1.e, global1.e, global1.e, true)) & global1.e, global1.e, !global1.e));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(~var_0.d.x | u_input.a, ~(global1.d.x | var_0.a.a), any(vec3<bool>(true, true, true))), _wgslsmith_sub_u32(_wgslsmith_add_u32(4278u, ~(~70620u)), var_0.b.x)), 9u)];
    var var_2 = _wgslsmith_sub_i32(global0.x, _wgslsmith_dot_vec2_i32(-select(-vec2<i32>(u_input.c, 0i), vec2<i32>(-2126i, global0.x) ^ vec2<i32>(-2147483647i, global1.c.x), vec2<bool>(true, global1.e)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 13188i, 0i), vec4<i32>(global0.x, -24220i, u_input.b, 14632i)), 2147483647i), -30088i)));
    global4 = var_0.a;
    let var_3 = func_1(Struct_3(var_0.a), select(vec4<bool>(any(!vec2<bool>(var_0.e, var_0.e)), true, var_0.e, !var_0.e), !vec4<bool>(all(vec2<bool>(false, false)), var_0.e, true, var_0.e), -select(-186i, u_input.c, true) >= -22755i)).c.x;
    global0 = ~(abs(vec2<i32>(-18538i, min(var_3, var_3))) | _wgslsmith_div_vec2_i32(~var_0.c, vec2<i32>(_wgslsmith_mult_i32(37865i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -34756i, u_input.b, 63384i), vec4<i32>(-1i, -55877i, global0.x, 6040i)))));
    let var_4 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 4294967295u), global4.a) << (var_0.a.a % 32u), select(u_input.a, 22536u, true), reverseBits(~4294967295u)) ^ vec3<u32>(func_2(Struct_1(global1.b.x), ~(~u_input.d), Struct_3(func_2(Struct_1(global4.a), vec4<u32>(u_input.a, 71869u, 1u, u_input.d.x), Struct_3(Struct_1(1u)), -556f).a), _wgslsmith_div_f32(-794f, _wgslsmith_f_op_f32(select(-347f, -1174f, var_0.e)))).a.a, _wgslsmith_dot_vec3_u32(global1.b.zyz, countOneBits(reverseBits(vec3<u32>(4294967295u, 1u, global4.a)))), select(global1.d.x, reverseBits(global4.a), true));
    let var_5 = func_3(func_2(Struct_1(global1.a.a), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(21072u, 0u), 36373u, global4.a), var_0.d.x, var_0.d.x, _wgslsmith_mod_u32(~global4.a, 9790u)), Struct_3(var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(439f, 1156f)))), 1791f)), !global1.e, true).wz;
    global1 = func_1(Struct_3(func_1(Struct_3(Struct_1(4294967295u)), vec4<bool>(!var_5.x, all(vec3<bool>(var_5.x, global1.e, var_5.x)), !global1.e, false)).a), vec4<bool>(func_1(Struct_3(func_2(var_0.a, vec4<u32>(var_1.a.a, 1u, var_0.b.x, 64779u), global2[_wgslsmith_index_u32(global4.a, 9u)], -1104f).a), !(!vec4<bool>(var_5.x, false, true, var_0.e))).e, true, !var_5.x || (true & all(vec3<bool>(true, var_5.x, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-2854f)), _wgslsmith_f_op_f32(f32(-1f) * -620f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, -552f)) + vec2<f32>(109f, -268f))) + vec2<f32>(1f, 1f)));
}

