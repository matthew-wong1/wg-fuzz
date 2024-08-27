struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: array<i32, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = ~(~vec4<u32>(arg_0.c.x | ~arg_0.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(50627u, 1u, global1.x), global0.xyz), 4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(29209u), arg_1.c.x, arg_2)));
    global2 = array<bool, 1>();
    global0 = ~_wgslsmith_add_vec4_u32(u_input.b, u_input.b);
    global2 = array<bool, 1>();
    let var_0 = _wgslsmith_f_op_f32(736f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(859f, -2825f)) - arg_1.a) + arg_1.a)));
    return _wgslsmith_mod_i32(~firstTrailingBit(countOneBits(_wgslsmith_sub_i32(0i, -2147483647i))), ~(i32(-1i) * -u_input.a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -957f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(exp2(arg_2.b))) + -484f)), select(~arg_2.c, ~global0.zxx | ~vec3<u32>(u_input.d, 939u, 0u), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_3.x, 1u)], select(true, false, global2[_wgslsmith_index_u32(4294967295u, 1u)]))) ^ vec3<u32>(abs(1u), _wgslsmith_clamp_u32(arg_2.c.x, ~0u, u_input.d), u_input.d));
    global3 = array<i32, 8>();
    let var_1 = vec2<i32>(u_input.e, func_2(Struct_1(-1282f, -1060f, abs(reverseBits(u_input.b.zzz))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2251f - arg_2.b))), -591f, ~vec3<u32>(68164u, 4294967295u, 4294967295u)), ~1u));
    let var_2 = var_0.b;
    global1 = vec3<u32>(~(~20718u), abs(3398u << ((select(28149u, 0u, global2[_wgslsmith_index_u32(0u, 1u)]) ^ 0u) % 32u)), 0u);
    return vec3<u32>(4294967295u, 0u, arg_2.c.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(global0.xwy, _wgslsmith_add_vec3_u32(func_3(vec2<i32>(-1i, func_2(Struct_1(-991f, 380f, u_input.b.www), Struct_1(-1930f, -845f, u_input.b.ywz), u_input.d)), Struct_1(540f, _wgslsmith_f_op_f32(f32(-1f) * -242f), ~vec3<u32>(100173u, 8060u, global1.x)), Struct_1(_wgslsmith_f_op_f32(step(-1078f, 1000f)), _wgslsmith_f_op_f32(trunc(-2742f)), firstLeadingBit(vec3<u32>(u_input.d, global1.x, u_input.d))), global0.zyz), max(~select(vec3<u32>(u_input.b.x, 4294967295u, global1.x), global0.yzz, vec3<bool>(true, true, global2[_wgslsmith_index_u32(50592u, 1u)])), ~vec3<u32>(12323u, global1.x, global1.x))));
    var var_1 = vec2<i32>(-firstTrailingBit(_wgslsmith_sub_i32(21508i, _wgslsmith_div_i32(u_input.a, u_input.a))), u_input.a);
    let var_2 = !vec4<bool>(any(select(!vec2<bool>(arg_0, false), !vec2<bool>(false, arg_0), any(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 1u)])))), false, true, true);
    var var_3 = var_2.x;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -498f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(888f - 248f), _wgslsmith_div_f32(-794f, 522f))) * -1144f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)))), vec3<u32>(global0.x, global0.x, 24009u));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_4.a, var_4.b), _wgslsmith_f_op_f32(var_4.b - 614f)), _wgslsmith_f_op_f32(1620f * _wgslsmith_f_op_f32(-var_4.b))) - -663f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1714f * var_4.a) * _wgslsmith_f_op_f32(-var_4.b)))), select(global0.zzx, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, global1.x | 4294967295u, var_0.x), vec3<u32>(var_4.c.x, abs(u_input.b.x), _wgslsmith_mod_u32(global1.x, var_4.c.x))), !var_2.xzz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-select(u_input.c.x, _wgslsmith_div_i32(-1i, 1i), global0.x >= 0u) > u_input.a);
    global1 = global0.zzz;
    global2 = array<bool, 1>();
    let var_1 = !select(!select(vec2<bool>(global2[_wgslsmith_index_u32(27113u, 1u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], true), vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]), true), true), vec2<bool>(!(!global2[_wgslsmith_index_u32(global0.x, 1u)]), !global2[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))) > -349f);
    global2 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.a, var_0.a, -592f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-269f, 953f, -2344f, var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, -1413f, var_0.b, var_0.b)), vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(global0.x, 1u)], true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.b)) - -1089f)), _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(func_3(vec2<i32>(u_input.e, u_input.a), func_1(var_1.x), Struct_1(var_0.a, -763f, vec3<u32>(global0.x, 45463u, 0u)), vec3<u32>(37416u, 37670u, u_input.b.x)).x, 8u)], reverseBits(global3[_wgslsmith_index_u32(global1.x, 8u)])), ~select(_wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.c.yy), vec2<i32>(0i, global3[_wgslsmith_index_u32(u_input.d, 8u)]), select(var_1, vec2<bool>(true, var_1.x), var_1.x))));
}

