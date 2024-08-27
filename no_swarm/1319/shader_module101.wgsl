struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = 1i;
    let var_2 = 714f;
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return 20857u;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2267f, -501f)))), -403f, arg_0)));
    var var_1 = ~(-1i) >> (_wgslsmith_clamp_u32(func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2128f)), all(!vec4<bool>(false, arg_0, arg_0, arg_0)), ~min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32158u, 15u)], 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(1u, 15u)]))), ~func_3(Struct_1(941f), any(vec4<bool>(false, arg_0, arg_0, true)), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(22842u, 15u)], global0[_wgslsmith_index_u32(358u, 15u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(45646u, 15u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), 15u)] | max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 15u)]), 15u)], 15u)], 81276u >> (global0[_wgslsmith_index_u32(1u, 15u)] % 32u))) % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.x, var_0.a))))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-383f, -1373f)), arg_1.x)));
    let var_4 = (true || any(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), true))) | arg_0;
    return reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(7215i, ~(-2147483647i)), 0i, 66284i, u_input.b), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, -1i, u_input.a.x, u_input.a.x), min(countOneBits(vec4<i32>(1i, u_input.a.x, u_input.b, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.b, -52806i, -987i)), vec4<i32>(u_input.a.x, 22535i, u_input.b, 15316i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, 16936i, -4881i), vec4<i32>(1i, u_input.b, 0i, -6753i), vec4<i32>(33349i, -1i, 18707i, -2147483647i)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 15>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let var_1 = Struct_1(885f);
    var var_2 = vec4<u32>(1u, ~1u, ~reverseBits(global0[_wgslsmith_index_u32(4294967295u << (global0[_wgslsmith_index_u32(0u, 15u)] % 32u), 15u)] | reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), global0[_wgslsmith_index_u32(4294967295u, 15u)] & ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(15250u, 0u), 15u)], 15u)] | _wgslsmith_div_u32(59865u, global0[_wgslsmith_index_u32(32660u, 15u)])));
    let var_3 = select(func_2(false, var_0), vec4<i32>(-1i) * -max(-vec4<i32>(u_input.b, 2147483647i, 2147483647i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, -24147i, u_input.b), vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x))), select(vec4<bool>(any(vec3<bool>(true, true, true)), false, false, true), vec4<bool>(true, true, (u_input.b < -1i) && true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))), any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, false, false)))));
    return Struct_1(-1808f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    let var_0 = -388f;
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return any(vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), any(vec3<bool>(true, true, true)), false == any(vec3<bool>(true, true, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(global1.x, 1020f, global1.x, global1.x);
    var var_0 = !(!select(true, true, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1091f) * global1.wy), func_1(Struct_1(global1.x)))));
    var var_1 = !(!select(vec3<bool>(true, true, all(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), true || any(vec4<bool>(true, true, true, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-102f - _wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(-245f - -861f))), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, global1.x))))))));
    global1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a, -212f, _wgslsmith_f_op_f32(sign(-2486f)), _wgslsmith_f_op_f32(abs(623f))), vec4<f32>(-109f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(121f)) - -1114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f + -118f)))));
    let var_3 = vec2<bool>(false, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(func_2(!var_3.x, global1.zx), firstLeadingBit(vec4<i32>(u_input.b, u_input.a.x, -2147483647i, -7806i))), _wgslsmith_mod_i32(u_input.b, u_input.b | -1i), global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.wzx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1017f, 1331f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a, global1.x, var_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1334f, var_2.a) + global1.zww))))), _wgslsmith_div_u32(0u, 35172u) << (~global0[_wgslsmith_index_u32(0u, 15u)] % 32u));
}

