struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3>;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, false, false, false, true, false, false, true, false, true, false, true, true);

var<private> global2: vec3<i32> = vec3<i32>(12489i, 1i, 1i);

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(~arg_0.x, 14u)];
    var var_1 = !vec2<bool>(true, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.c, false, global1[_wgslsmith_index_u32(22637u, 15u)], false), global1[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(32682u, 15u)], true, global1[_wgslsmith_index_u32(arg_0.x, 15u)], var_0.c), !vec4<bool>(var_0.c, var_0.c, global1[_wgslsmith_index_u32(u_input.a, 15u)], true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-558f, var_0.d));
    let var_3 = var_0.a.wyy;
    global0 = array<vec3<f32>, 3>();
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = firstLeadingBit(-2147483647i);
    let var_1 = ~arg_3;
    global0 = array<vec3<f32>, 3>();
    global2 = vec3<i32>(-(~(-arg_2)), countOneBits(-select(abs(var_0), global2.x, global1[_wgslsmith_index_u32(firstLeadingBit(arg_3), 15u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(~(-24060i)), 12717i), vec2<i32>(~select(arg_2, arg_2, arg_0.c), 2147483647i)));
    global1 = array<bool, 15>();
    return arg_0.d;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(select(firstTrailingBit(arg_0.a), vec4<u32>(4294967295u, 5315u, arg_0.b, arg_0.e), vec4<bool>(global1[_wgslsmith_index_u32(39271u, 15u)], false, true, true)), abs(min(arg_0.a, arg_0.a)), false) ^ arg_0.a, (arg_0.e & ~(1u << (arg_0.b % 32u))) ^ min(~max(arg_0.a.x, arg_0.a.x), u_input.a), func_2(reverseBits(_wgslsmith_div_vec4_u32(arg_0.a, arg_0.a))), _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.d))))))), 0u);
    var var_1 = arg_0;
    var_1 = global3[_wgslsmith_index_u32(arg_0.e >> (var_1.e % 32u), 14u)];
    global1 = array<bool, 15>();
    let var_2 = Struct_1(var_1.a, ~(_wgslsmith_sub_u32(4294967295u, var_0.b) | ~max(arg_0.a.x, 4294967295u)), global1[_wgslsmith_index_u32(~(~u_input.a), 15u)], -344f, _wgslsmith_add_u32(firstTrailingBit(u_input.a), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.b >> (34936u % 32u), firstTrailingBit(arg_0.e)), ~(~arg_0.e))));
    return Struct_1(vec4<u32>(~arg_0.e, _wgslsmith_mod_u32(53674u, 1u), ~_wgslsmith_div_u32(0u, 6996u), var_2.b), 95783u, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(903f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(151f, var_1.d) + var_1.d)) + _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a << (arg_0.a % vec4<u32>(32u)), var_2.b, arg_0.d >= arg_0.d, _wgslsmith_f_op_f32(-arg_0.d), ~var_1.b), ~firstLeadingBit(70716i), ~global2.x, firstLeadingBit(_wgslsmith_mod_u32(arg_0.b, 4294967295u))))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~(~(~u_input.a)), 14u)];
    let var_1 = func_1(Struct_1(~abs(abs(vec4<u32>(var_0.e, var_0.e, var_0.e, 1u))), ~(~u_input.a), !(true & (var_0.d <= 1381f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a | 0u, ~158u), var_0.a.zy)));
    var var_2 = vec2<f32>(var_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d))));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(~var_1.a, vec4<u32>(_wgslsmith_add_u32(var_0.a.x, 13328u) | u_input.a, var_0.a.x, ~var_0.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.a.zwz, var_0.a.wxy), _wgslsmith_dot_vec3_u32(var_0.a.xxw, vec3<u32>(5548u, 7578u, 8876u)))), abs(max(min(vec4<u32>(var_1.a.x, 0u, var_0.a.x, u_input.a), vec4<u32>(u_input.a, var_0.e, u_input.a, 0u)), vec4<u32>(var_1.e, 4294967295u, 4294967295u, 70174u)))), var_1.e, any(vec4<bool>(any(!vec3<bool>(var_0.c, var_0.c, false)), _wgslsmith_div_f32(299f, -1344f) != var_2.x, true, any(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, global1[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_0.e, var_0.c, var_1.d, 58244u), -2147483647i << (u_input.a % 32u), abs(global2.x), ~u_input.a))))), 25670u);
    let var_4 = abs(1i) << (_wgslsmith_sub_u32(~1u, ~u_input.a) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e);
}

