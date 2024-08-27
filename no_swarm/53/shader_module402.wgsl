struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(5255u, 1u, 8175u, 79913u));

var<private> global1: array<i32, 3> = array<i32, 3>(14690i, -25219i, i32(-2147483648));

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(2147483647i), Struct_2(1i), Struct_2(0i), Struct_2(38280i), Struct_2(2147483647i), Struct_2(-694i), Struct_2(i32(-2147483648)), Struct_2(13175i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(-7962i), Struct_2(14672i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(2147483647i));

var<private> global3: vec2<f32> = vec2<f32>(-1130f, 499f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_sub_i32(abs(firstLeadingBit(-global1[_wgslsmith_index_u32(0u, 3u)])), _wgslsmith_add_i32(-2147483647i, global1[_wgslsmith_index_u32(27069u, 3u)])));
    var var_1 = select(global0[_wgslsmith_index_u32(u_input.a, 1u)], vec4<u32>(40969u, u_input.b, select(4294967295u & u_input.b, u_input.b, true), 1u), select(vec4<bool>(true, true, false, all(vec3<bool>(false, false, true))), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, false))), false)) << (~(~select(select(vec4<u32>(41452u, 2529u, 14435u, u_input.b), vec4<u32>(u_input.b, arg_1.x, arg_1.x, 68425u), vec4<bool>(false, true, false, false)), _wgslsmith_add_vec4_u32(arg_1, global0[_wgslsmith_index_u32(arg_1.x, 1u)]), arg_1.x <= arg_1.x)) % vec4<u32>(32u));
    var_0 = global2[_wgslsmith_index_u32(~21544u, 15u)];
    global0 = array<vec4<u32>, 1>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(arg_0.x - 1177f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(234f, 647f))) - global3.x) + arg_0.x));
    return select(select(select(vec4<bool>(false, true, true, select(true, false, false)), vec4<bool>(true, true, true, true), true && all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(-487f >= global3.x, false, false, all(vec3<bool>(false, false, true))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !vec4<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), true, true), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false)), true), false));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~(-(vec3<i32>(u_input.d, global1[_wgslsmith_index_u32(u_input.b, 3u)], 2147483647i) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 13564u, 32420u), vec3<u32>(8763u, u_input.a, u_input.a)) % vec3<u32>(32u)))) ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(u_input.d), u_input.c, ~(-65794i)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, u_input.c, global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(18622u, 3u)], -2147483647i)), abs(vec3<i32>(u_input.d, 2147483647i, 1i))), vec3<i32>(u_input.d, global1[_wgslsmith_index_u32(firstLeadingBit(43207u), 3u)], _wgslsmith_add_i32(arg_0.a, arg_0.a))) & firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 29562i, global1[_wgslsmith_index_u32(1u, 3u)]), vec3<i32>(43676i, -2147483647i, global1[_wgslsmith_index_u32(u_input.b, 3u)])), ~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)]))));
    let var_1 = all(!select(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, 1749f, global3.x), vec3<f32>(global3.x, global3.x, -953f), vec3<bool>(false, false, true))), ~global0[_wgslsmith_index_u32(u_input.a, 1u)]), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, true))));
    var var_2 = global1[_wgslsmith_index_u32(min(firstTrailingBit(~_wgslsmith_mult_u32(4137u, u_input.a >> (27861u % 32u))), 34831u), 3u)];
    var var_3 = vec2<u32>(~firstTrailingBit(~70420u), ~(~20696u));
    var var_4 = Struct_1(var_1);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = func_2(Struct_2(-26053i));
    var var_1 = -1i;
    var var_2 = ~1u;
    return global2[_wgslsmith_index_u32(~1u, 15u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global2 = array<Struct_2, 15>();
    global0 = array<vec4<u32>, 1>();
    global3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(858f)), _wgslsmith_f_op_f32(-global3.x))), -1274f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x * global3.x))))));
    var var_0 = vec4<bool>(false, true, arg_2.a, any(vec2<bool>(arg_0.a, arg_0.a)));
    var var_1 = arg_3;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(!all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)] >= u_input.d, u_input.b <= 13766u)));
    var var_2 = Struct_2(-_wgslsmith_dot_vec2_i32(firstTrailingBit(abs(vec2<i32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(47703u, 3u)]))), _wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 3u)], -1i), vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(0u, 3u)])) & abs(vec2<i32>(0i, 1i))));
    var var_3 = -_wgslsmith_sub_vec3_i32(vec3<i32>(func_4(Struct_1(false), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, false, false), true), var_1, func_1(var_1, vec3<bool>(false, false, true), 18623u, vec2<u32>(u_input.a, 24206u))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 3888u) | 1u, 3u)], _wgslsmith_clamp_i32(~(-15104i), var_2.a ^ -2147483647i, -44541i)), abs(~(-vec3<i32>(-4679i, -19372i, var_2.a))));
    let var_4 = var_1;
    global2 = array<Struct_2, 15>();
    let var_5 = ~(~reverseBits(max(~vec2<u32>(u_input.b, 235u), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)))));
    var_2 = global2[_wgslsmith_index_u32(1u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(1u & var_5.x)), u_input.a), vec2<u32>(u_input.a, ~(var_5.x << (reverseBits(1u) % 32u))));
}

