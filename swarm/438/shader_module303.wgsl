struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global1: array<i32, 11>;

var<private> global2: array<vec2<u32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_1(global0.a);
    global1 = array<i32, 11>();
    let var_1 = -2147483647i;
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    return !global0.a.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    global1 = array<i32, 11>();
    var var_0 = Struct_1(!select(arg_0.xx, vec2<bool>(all(arg_0), any(arg_0)), false));
    let var_1 = ~vec4<i32>(~(-_wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(-1i, 47744i))), global1[_wgslsmith_index_u32(80443u, 11u)] << (1u % 32u), ~abs(global1[_wgslsmith_index_u32(~10244u, 11u)]), ~(~arg_3.x));
    var_0 = Struct_1(global0.a);
    global0 = arg_2.a;
    return ~(-1i);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    global0 = Struct_1(arg_2.a);
    global0 = arg_1;
    global1 = array<i32, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(923f))))))));
    let var_1 = arg_2.a;
    return vec2<i32>(global1[_wgslsmith_index_u32(arg_0, 11u)], func_4(vec4<bool>(arg_1.a.x, global0.a.x && arg_1.a.x, false, !func_3(global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_div_i32(_wgslsmith_mod_i32(-24298i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 10361i)), global1[_wgslsmith_index_u32(u_input.a.x, 11u)] ^ -14383i), Struct_2(arg_2, any(vec3<bool>(true, arg_3.a.x, arg_1.a.x))), min(vec2<i32>(1i, ~(-10138i)), vec2<i32>(global1[_wgslsmith_index_u32(arg_0, 11u)] ^ global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(arg_0, 11u)]))));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool) -> i32 {
    var var_0 = -_wgslsmith_div_vec3_i32(~vec3<i32>(0i, -5906i ^ global1[_wgslsmith_index_u32(0u, 11u)], arg_0.x << (u_input.a.x % 32u)), vec3<i32>(-1i) * -reverseBits(vec3<i32>(52184i, -2147483647i, -16100i)));
    var var_1 = Struct_2(Struct_1(vec2<bool>(false, !select(arg_1, false, false))), global0.a.x);
    global0 = Struct_1(vec2<bool>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(23372u, 11u)], -2147483647i, 46023i, var_0.x), vec4<i32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 1i, var_0.x)), -1i) >= global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true));
    return max(_wgslsmith_sub_i32(1i, func_2(u_input.a.x, var_1.a, Struct_1(vec2<bool>(var_1.a.a.x, false)), Struct_1(vec2<bool>(true, global0.a.x))).x) ^ 4675i, min(reverseBits(select(-9565i, var_0.x, true)), 0i));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(max(~(-2147483647i), _wgslsmith_clamp_i32(func_5(func_2(u_input.a.x, arg_0, Struct_1(arg_0.a), arg_0), global1[_wgslsmith_index_u32(u_input.a.x, 11u)] <= -1i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(1112u, 11u)], 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 40056i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])) >> (_wgslsmith_sub_u32(u_input.a.x, 23790u) % 32u))));
    var var_1 = ~(-(~(~global1[_wgslsmith_index_u32(u_input.a.x, 11u)])));
    let var_2 = -1678f;
    var var_3 = ~(-countOneBits(~1i));
    let var_4 = Struct_2(arg_0, true);
    return reverseBits(4294967295u);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>(true, all(!select(vec4<bool>(global0.a.x, true, false, arg_1.b), !vec4<bool>(true, global0.a.x, false, arg_1.a.a.x), select(vec4<bool>(true, true, arg_1.b, true), vec4<bool>(global0.a.x, arg_1.b, arg_1.b, false), vec4<bool>(arg_1.b, false, global0.a.x, global0.a.x)))), func_3(func_2(0u, arg_1.a, arg_1.a, Struct_1(arg_1.a.a)).x | func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 1i), vec2<i32>(-35421i, 27176i), arg_0.wy), true)));
    var var_1 = Struct_2(Struct_1(!select(select(vec2<bool>(global0.a.x, false), vec2<bool>(var_0.x, arg_1.a.a.x), vec2<bool>(var_0.x, global0.a.x)), vec2<bool>(false, global0.a.x), arg_0.x < arg_0.x)), var_0.x);
    var_1 = Struct_2(arg_1.a, var_1.b);
    global0 = arg_1.a;
    let var_2 = ~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a ^ abs(vec4<u32>(82872u, u_input.a.x, u_input.a.x, 29077u)), vec4<u32>(4294967295u, 1u, 1u, u_input.a.x) ^ abs(u_input.a)), ~u_input.a.x, ~8723u);
    return Struct_2(Struct_1(select(arg_1.a.a, var_1.a.a, var_1.a.a)), !(!func_3(global1[_wgslsmith_index_u32(var_2.x, 11u)]) && global0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(firstLeadingBit(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 28296i, global1[_wgslsmith_index_u32(72319u, 11u)], -16016i), vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)])))) << ((vec4<u32>(_wgslsmith_add_u32(1u, u_input.a.x), func_1(Struct_1(global0.a)), 0u, u_input.a.x) | select(~vec4<u32>(0u, 18497u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 6508u, 8133u), any(vec4<bool>(false, global0.a.x, false, true)))) % vec4<u32>(32u)), Struct_2(Struct_1(select(select(vec2<bool>(global0.a.x, false), global0.a, false), vec2<bool>(true, true), select(global0.a, global0.a, global0.a))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], -39406i), vec3<i32>(12058i, 41275i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])) > _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], -2147483647i, 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -2147483647i, -23258i)))));
    let var_1 = -1497f;
    let var_2 = _wgslsmith_f_op_f32(trunc(-1918f));
    global1 = array<i32, 11>();
    global0 = Struct_1(!vec2<bool>(any(select(vec4<bool>(var_0.a.a.x, true, false, global0.a.x), vec4<bool>(global0.a.x, true, var_0.a.a.x, global0.a.x), false)), false));
    let var_3 = ~1u;
    global2 = array<vec2<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u) ^ global2[_wgslsmith_index_u32(74673u, 16u)], _wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(4616u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(var_3, 16u)])), var_3 >> (1u % 32u)));
}

