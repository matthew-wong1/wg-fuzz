struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: array<u32, 9> = array<u32, 9>(4294967295u, 7195u, 0u, 4294967295u, 0u, 1u, 0u, 1u, 86924u);

var<private> global3: i32 = -1i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = !arg_1.d;
    global0 = array<f32, 22>();
    global2 = array<u32, 9>();
    var var_1 = arg_3;
    global1 = array<vec4<u32>, 11>();
    return arg_1.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(func_3(arg_2.c, arg_2, global2[_wgslsmith_index_u32(abs(1u), 9u)], Struct_1(vec2<u32>(3254u, arg_2.a.x), arg_2.a.x, arg_2.c, arg_2.d))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(93539u, 9u)], arg_2.a.x), ~arg_2.a)), arg_2.a);
    var var_1 = !vec2<bool>(arg_2.d, all(vec3<bool>(arg_2.d, true, true)));
    global3 = reverseBits(-1i);
    var var_2 = i32(-1i) * -arg_1.x;
    var var_3 = vec3<f32>(global0[_wgslsmith_index_u32(arg_2.a.x, 22u)], 390f, global0[_wgslsmith_index_u32(arg_2.a.x, 22u)]);
    return !any(select(!select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, arg_2.d, true), true), select(!vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(true, false, arg_2.d), vec3<bool>(arg_2.d, var_1.x, false)), any(vec3<bool>(false, false, false)) || (true && arg_2.d)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = select(_wgslsmith_add_vec2_i32(~(~vec2<i32>(-5159i, -22583i) | _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(7071i, u_input.a))), select(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(23010i, u_input.a), vec2<i32>(-6064i, u_input.a)), -1i), !select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, true), arg_0.d))), vec2<i32>(u_input.a, 2147483647i), select(vec2<bool>(arg_0.d, false), !vec2<bool>(func_2(vec4<i32>(0i, -5677i, 2147483647i, -1i), vec4<i32>(-2147483647i, -54792i, u_input.a, u_input.a), arg_0), true), true));
    global2 = array<u32, 9>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(480f, 300f)))) + global0[_wgslsmith_index_u32(~arg_0.c.x, 22u)]);
    var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] * -497f);
    global0 = array<f32, 22>();
    return select(!(!select(!vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), !vec4<bool>(true, true, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, true, false, arg_0.d))), !select(!select(vec4<bool>(arg_0.d, true, false, arg_0.d), vec4<bool>(arg_0.d, true, true, true), vec4<bool>(false, true, arg_0.d, false)), vec4<bool>(true, !arg_0.d, true, global0[_wgslsmith_index_u32(48109u, 22u)] > global0[_wgslsmith_index_u32(1u, 22u)]), select(select(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), arg_0.d), !vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true))), vec4<bool>(any(!select(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, false, false), false)), any(vec4<bool>(all(vec3<bool>(arg_0.d, arg_0.d, false)), all(vec3<bool>(arg_0.d, arg_0.d, arg_0.d)), true, true)), arg_0.d, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -544f);
    var var_1 = select(select(!vec4<bool>(all(vec3<bool>(false, false, true)), false, any(vec4<bool>(true, true, true, false)), true), select(vec4<bool>(true, true, true, true), select(func_1(Struct_1(vec2<u32>(35219u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9151u, 9u)], 9u)], 9u)], 9u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52607u, 9u)], 9u)], vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 1u, global2[_wgslsmith_index_u32(1u, 9u)]), true)), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), true), !(!any(vec2<bool>(true, true)))), !(!vec4<bool>(true, true, u_input.a > 2147483647i, select(true, true, false))), all(select(func_1(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59559u, 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(69132u, 9u)]), global2[_wgslsmith_index_u32(4294967295u, 9u)], vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)], 7025u), false)).ywz, vec3<bool>(true, true, all(vec3<bool>(false, false, true))), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)))));
    var_1 = !vec4<bool>(var_1.x, !all(var_1.zzz), var_1.x, any(func_1(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(62536u, 9u)], 59184u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(79372u, 9u)], 9u)], vec3<u32>(global2[_wgslsmith_index_u32(20098u, 9u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 9u)]), false))));
    var var_2 = vec2<u32>(1u, countOneBits(~_wgslsmith_mod_u32(27801u, 1u))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(countOneBits(69104u) >> (_wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16065u, 9u)], 9u)], 9u)]) % 32u), 11u)], ~(~vec4<u32>(5638u, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(~33098u, abs(global2[_wgslsmith_index_u32(43267u, 9u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1u, 11u)], vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(33520u, 9u)], global2[_wgslsmith_index_u32(32591u, 9u)])), 9u)], firstLeadingBit(1u)), vec4<u32>(min(global2[_wgslsmith_index_u32(17412u, 9u)], 1u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26102u, 9u)], 9u)] >> (global2[_wgslsmith_index_u32(23652u, 9u)] % 32u), global2[_wgslsmith_index_u32(15577u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61352u, 9u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13159u, 9u)], 9u)]), 9u)]))) % vec2<u32>(32u));
    var var_3 = ~18932i;
    global2 = array<u32, 9>();
    var var_4 = Struct_1(~(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(var_2.x, 9u)]) & vec2<u32>(1u, 1u)) << (select(~func_3(vec3<u32>(var_2.x, global2[_wgslsmith_index_u32(var_2.x, 9u)], var_2.x), Struct_1(vec2<u32>(82854u, 41239u), 1u, vec3<u32>(38722u, var_2.x, 35746u), var_1.x), 0u, Struct_1(vec2<u32>(var_2.x, var_2.x), 0u, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 9u)], 9u)], var_2.x, var_2.x), false)), _wgslsmith_sub_vec2_u32(func_3(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40803u, 9u)], 9u)], 78471u, global2[_wgslsmith_index_u32(1u, 9u)]), Struct_1(vec2<u32>(35020u, global2[_wgslsmith_index_u32(0u, 9u)]), global2[_wgslsmith_index_u32(26834u, 9u)], vec3<u32>(0u, var_2.x, global2[_wgslsmith_index_u32(var_2.x, 9u)]), false), 6531u, Struct_1(vec2<u32>(1u, global2[_wgslsmith_index_u32(26372u, 9u)]), global2[_wgslsmith_index_u32(var_2.x, 9u)], vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 4294967295u, var_2.x), var_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(0u, 39835u))), func_1(Struct_1(vec2<u32>(var_2.x, 4294967295u), var_2.x, vec3<u32>(1u, var_2.x, 1u), false)).xw) % vec2<u32>(32u)), abs(4294967295u), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(67342u, 9u)], 0u, var_2.x), vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(var_2.x, 9u)])) << (abs(vec3<u32>(global2[_wgslsmith_index_u32(0u, 9u)], var_2.x, 1u)) % vec3<u32>(32u))) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~var_2.x, 9u)], 9u)], ~(var_2.x ^ 1u), select(var_2.x, ~var_2.x, var_1.x)), !func_1(Struct_1(vec2<u32>(0u, 0u), var_2.x, vec3<u32>(12108u, 4294967295u, var_2.x), false)).x == false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.a, 1i, -2147483647i)), ~vec3<i32>(6742i, -20280i, -2147483647i) << (vec3<u32>(4294967295u, var_2.x, global2[_wgslsmith_index_u32(var_4.a.x, 9u)]) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1033f, var_0), vec2<f32>(var_0, var_0)))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_2.x, 96414u, var_2.x) | vec3<u32>(10357u, 29713u, 39096u)), var_4.c), 9u)], _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-249f, global0[_wgslsmith_index_u32(23950u, 22u)]))), ~20160i);
}

