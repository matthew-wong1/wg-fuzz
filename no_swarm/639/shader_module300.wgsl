struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: f32 = 160f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(119f, 280f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 15u)], -802f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(263f, global0[_wgslsmith_index_u32(u_input.c, 15u)]) + vec2<f32>(1216f, global0[_wgslsmith_index_u32(4294967295u, 15u)]))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(53102u, 15u)], -1567f), vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])))))))), _wgslsmith_mod_i32(2147483647i >> (u_input.c % 32u), _wgslsmith_div_i32(1i, select(arg_0, arg_2.x, false) ^ -1i)), vec3<u32>(_wgslsmith_sub_u32(abs(~334u), ~u_input.c), ~(26911u << (arg_1 % 32u)) << (1243u % 32u), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(4294967295u, 541u), ~select(u_input.c, 30195u, true))));
    global0 = array<f32, 15>();
    let var_1 = vec2<i32>(-24031i, max(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, arg_0) << (55615u % 32u), -33026i), arg_0));
    global0 = array<f32, 15>();
    let var_2 = ~(var_0.c << (~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 31586u, arg_1), var_0.c)) % vec3<u32>(32u)));
    return _wgslsmith_div_vec2_f32(var_0.a, vec2<f32>(global0[_wgslsmith_index_u32(~(~(~4294967295u)), 15u)], -1984f));
}

fn func_2() -> i32 {
    return firstLeadingBit(-1i);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = arg_0.zx;
    global0 = array<f32, 15>();
    global1 = global0[_wgslsmith_index_u32(u_input.c, 15u)];
    var var_1 = arg_2;
    var var_2 = u_input.b.x;
    return all(vec2<bool>(false, all(vec2<bool>(false, -12766i <= arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(61761u, 15u)])) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2003f, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], 1607f), true))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, 4294967295u, u_input.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1996f, 1429f))), true)))), 1i | (_wgslsmith_mod_i32(func_2(), u_input.b.x >> (1u % 32u)) | -6465i), ~(~(~(vec3<u32>(1u, u_input.c, u_input.c) << (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, global0[_wgslsmith_index_u32(10103u, 15u)])))))) + vec2<f32>(488f, 660f)), var_0.b, var_0.c);
    var var_2 = vec2<bool>(!(!(true == func_3(vec3<f32>(var_0.a.x, var_0.a.x, var_1.a.x), vec2<u32>(70835u, 492u), Struct_1(vec2<f32>(-463f, var_0.a.x), u_input.a, var_0.c), false))), false);
    let var_3 = min(~countOneBits(firstLeadingBit(~vec4<u32>(1u, u_input.c, u_input.c, 57949u))), (~(~vec4<u32>(var_0.c.x, var_1.c.x, var_0.c.x, 4294967295u)) & (~vec4<u32>(1u, var_0.c.x, u_input.c, u_input.c) & ~vec4<u32>(4294967295u, var_1.c.x, var_1.c.x, u_input.c))) ^ countOneBits(~vec4<u32>(4294967295u, var_1.c.x, 48073u, 81932u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, func_2(), -22963i, _wgslsmith_add_i32(_wgslsmith_mult_i32(min(18185i, 30494i), u_input.a >> (1867u % 32u)), -1i)), global0[_wgslsmith_index_u32(0u, 15u)], -1452f, _wgslsmith_mod_i32(var_1.b, _wgslsmith_mult_i32(max(var_0.b, -24053i), -1i)) | -6576i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, 620f), vec2<f32>(var_1.a.x, var_1.a.x))))) * vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -842f))))));
}

