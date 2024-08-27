struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<u32, 16> = array<u32, 16>(4294967295u, 35970u, 1u, 30848u, 124149u, 16094u, 0u, 56272u, 1u, 47845u, 1u, 4294967295u, 27227u, 4294967295u, 49401u, 1u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: bool) -> vec3<i32> {
    var var_0 = Struct_1(select(vec4<bool>(!arg_3, arg_3, !any(vec3<bool>(arg_3, arg_3, false)), 2147483647i < _wgslsmith_div_i32(arg_1.x, arg_0.x)), !vec4<bool>(arg_3, arg_3, true, true), arg_3));
    var var_1 = Struct_2(~(vec4<u32>(59113u, firstTrailingBit(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23317u, 16u)], 29u)], 16u)]), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 16u)], 29u)], 7625u) & vec4<u32>(countOneBits(0u), ~1u, 28627u, ~58796u)), Struct_1(select(!(!var_0.a), vec4<bool>(arg_3, arg_3, any(vec3<bool>(false, false, arg_3)), all(vec4<bool>(arg_3, var_0.a.x, false, var_0.a.x))), var_0.a)), Struct_1(vec4<bool>(true, true, !var_0.a.x & all(var_0.a), false)), Struct_1(vec4<bool>(arg_3 | false, all(select(var_0.a.wyw, var_0.a.wzx, true)), true, true)));
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    var_1 = Struct_2(select(vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)] ^ _wgslsmith_div_u32(u_input.b, 4294967295u), u_input.a ^ _wgslsmith_mod_u32(4294967295u, 67925u), countOneBits(min(global1[_wgslsmith_index_u32(4294967295u, 16u)], var_1.a.x)), 64118u), vec4<u32>(12719u, _wgslsmith_mod_u32(var_1.a.x, ~72773u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(countOneBits(1u)), 16u)], 16u)], 1u), select(var_1.c.a.x, _wgslsmith_f_op_f32(select(642f, 786f, false)) <= -1452f, -784f != arg_2.x)), Struct_1(select(vec4<bool>(true, !var_0.a.x, true, var_1.d.a.x && true), select(!vec4<bool>(true, var_1.c.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, true, true, false), select(vec4<bool>(var_1.c.a.x, var_0.a.x, true, var_1.b.a.x), vec4<bool>(false, var_0.a.x, false, arg_3), var_0.a)), !any(var_1.d.a.yz))), Struct_1(var_0.a), Struct_1(!vec4<bool>(-318f <= arg_2.x, false, any(var_0.a.zzx), arg_3 & true)));
    return ~vec3<i32>(_wgslsmith_sub_i32(arg_0.x | arg_0.x, arg_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_1.x, arg_1.x, -41674i), vec4<i32>(-1i, 0i, 40491i, arg_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1103i, 1i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, 3024i, -2147483647i))), 14798i) & (_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(21664i, arg_1.x, -82148i), vec3<i32>(arg_1.x, -4860i, -23918i)), arg_1.x, 29810i & arg_0.x), vec3<i32>(_wgslsmith_div_i32(0i, arg_1.x), arg_1.x, ~arg_0.x), ~countOneBits(vec3<i32>(1i, 0i, -32265i))) & ~vec3<i32>(27357i, arg_1.x, i32(-1i) * -31993i));
}

fn func_2() -> Struct_1 {
    var var_0 = -(~vec3<i32>(reverseBits(-1032i), i32(-1i) * -24093i, _wgslsmith_add_i32(43527i, -1i)) >> (~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(64269u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 16u)], u_input.a))) % vec3<u32>(32u)));
    global0 = array<u32, 29>();
    var_0 = reverseBits(func_3(_wgslsmith_mod_vec2_i32(var_0.xx & vec2<i32>(29032i, var_0.x), var_0.zx), var_0.zz, vec3<f32>(-992f, 290f, 1f), false) & _wgslsmith_sub_vec3_i32(select(vec3<i32>(12889i, var_0.x, var_0.x), vec3<i32>(var_0.x, 1i, var_0.x) >> (vec3<u32>(21628u, 0u, u_input.a) % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), vec3<i32>(-7659i, var_0.x, ~var_0.x)));
    var var_1 = ~u_input.b;
    let var_2 = abs(~_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48250u, 16u)], 29u)] >> (1u % 32u), abs(10572u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(87687u, 29u)]), vec2<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17570u, 29u)], 16u)], 64929u)), 16u)], _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54532u, 16u)], 29u)], 1u), vec3<u32>(0u, global0[_wgslsmith_index_u32(86768u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]))), select(vec4<u32>(global1[_wgslsmith_index_u32(33263u, 16u)], u_input.b, 67301u, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<u32>(global0[_wgslsmith_index_u32(37011u, 29u)], 4294967295u, global0[_wgslsmith_index_u32(23577u, 29u)], global1[_wgslsmith_index_u32(21421u, 16u)]), false) & vec4<u32>(global1[_wgslsmith_index_u32(3212u, 16u)], u_input.a, global1[_wgslsmith_index_u32(u_input.b, 16u)], 4294967295u)));
    return Struct_1(!vec4<bool>(true, any(vec2<bool>(false, true)), true, true));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global1 = array<u32, 16>();
    var var_0 = Struct_1(vec4<bool>(~(~0u) >= (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 16u)], 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), 29u)], 16u)] & firstLeadingBit(3180u)), arg_0, select(arg_0, select(arg_0, false, true), true), !(arg_0 | !arg_0)));
    let var_1 = func_2();
    var var_2 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.b << (1u % 32u), u_input.b & global1[_wgslsmith_index_u32(59966u, 16u)])), ~(~vec2<u32>(25255u, select(u_input.a, global1[_wgslsmith_index_u32(91508u, 16u)], var_0.a.x))));
    var var_3 = (vec4<u32>(select(select(var_2.x, 1u, false), ~global0[_wgslsmith_index_u32(var_2.x, 29u)], all(vec4<bool>(false, false, arg_0, true))), 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), ~global0[_wgslsmith_index_u32(var_2.x, 29u)] ^ _wgslsmith_mod_u32(u_input.b, 0u)) | _wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(2513u, 16u)], 0u, global1[_wgslsmith_index_u32(18198u, 16u)]), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44372u, 29u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 16u)]) | vec4<u32>(39609u, 27442u, 59678u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(22013u, 16u)], global0[_wgslsmith_index_u32(var_2.x, 29u)], 4294967295u, 4537u)))) << (countOneBits(reverseBits(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b)))) % vec4<u32>(32u));
    return !select(select(vec4<bool>(var_0.a.x, all(vec3<bool>(var_0.a.x, var_0.a.x, var_1.a.x)), !arg_0, var_1.a.x & arg_0), select(var_1.a, vec4<bool>(var_1.a.x, true, var_1.a.x, true), select(vec4<bool>(var_0.a.x, var_1.a.x, var_0.a.x, true), var_1.a, var_0.a.x)), !vec4<bool>(true, var_1.a.x, var_0.a.x, false)), vec4<bool>(var_0.a.x | !arg_0, any(vec2<bool>(arg_0, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -658f) != _wgslsmith_f_op_f32(step(369f, -367f))), !var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 16>();
    global0 = array<u32, 29>();
    let var_0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 0u, 73907u) >> (~vec3<u32>(global0[_wgslsmith_index_u32(0u, 29u)], 67393u, global1[_wgslsmith_index_u32(11994u, 16u)]) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(23680u, 16u)]), 1u << (1u % 32u))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], global1[_wgslsmith_index_u32(74664u, 16u)], _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8871u, 29u)], 29u)], 16u)], u_input.a)), Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), !(61487u == global1[_wgslsmith_index_u32(1u, 16u)]), all(func_1(false)), false)), func_2(), func_2());
    global1 = array<u32, 16>();
    let var_1 = _wgslsmith_f_op_f32(trunc(1f));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(select(var_1, 1847f, select(var_2.b.a.x, var_2.c.a.x, func_1(var_2.c.a.x).x & ((var_1 >= 442f) && true))));
    let x = u_input.a;
    s_output = StorageBuffer(-619f, _wgslsmith_f_op_f32(f32(-1f) * -611f), 0u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(f32(-1f) * -1781f)) + _wgslsmith_f_op_f32(min(var_1, var_1))), _wgslsmith_f_op_f32(var_1 * -301f), -847f));
}

