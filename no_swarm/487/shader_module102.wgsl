struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(0u, 37326u, 0u), vec3<u32>(4294967295u, 15796u, 9984u), vec3<u32>(4294967295u, 28309u, 17077u), vec3<u32>(4294967295u, 1u, 23397u), vec3<u32>(49665u, 1u, 17912u), vec3<u32>(12076u, 27829u, 65253u), vec3<u32>(4294967295u, 10158u, 17012u), vec3<u32>(70761u, 1u, 28533u), vec3<u32>(0u, 52869u, 116041u), vec3<u32>(0u, 4294967295u, 18551u), vec3<u32>(23514u, 0u, 27925u), vec3<u32>(20013u, 1u, 83102u), vec3<u32>(32076u, 8203u, 30825u), vec3<u32>(14326u, 1u, 36571u), vec3<u32>(1u, 26577u, 4294967295u), vec3<u32>(41116u, 27062u, 40330u));

var<private> global2: array<f32, 19>;

var<private> global3: vec2<i32>;

var<private> global4: array<i32, 19> = array<i32, 19>(1i, -20408i, 1i, i32(-2147483648), -34719i, 35990i, 2147483647i, 0i, 8924i, 2147483647i, 0i, -7440i, 2147483647i, 9144i, -13195i, 3215i, 1i, 1i, -14532i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = -1i;
    global1 = array<vec3<u32>, 16>();
    global1 = array<vec3<u32>, 16>();
    global2 = array<f32, 19>();
    global1 = array<vec3<u32>, 16>();
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    var var_0 = select(select(!select(!vec4<bool>(false, false, arg_0.c, true), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, arg_0.c, false), select(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), select(vec4<bool>(arg_0.c, global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_0.c, global0[_wgslsmith_index_u32(41668u, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_0.c, true, true), vec4<bool>(global0[_wgslsmith_index_u32(12299u, 32u)], false, false, false)), true), func_3(Struct_1(-1i, -2147483647i, true, vec4<f32>(arg_1.x, 724f, arg_0.d.x, arg_1.x), u_input.a))), func_3(arg_0)), vec4<bool>(true, false, false, all(vec4<bool>(arg_0.c, true, true, !global0[_wgslsmith_index_u32(33046u, 32u)]))), vec4<bool>(true, arg_0.c, true, true));
    var var_1 = arg_0;
    var_1 = Struct_1(~var_1.a, global4[_wgslsmith_index_u32(1u, 19u)], false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1109f * -996f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-104f * 479f)))), 781f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1121f)))), var_1.d.x), min(~(~(i32(-1i) * -8712i)), arg_0.b));
    var var_2 = 31819u;
    let var_3 = firstLeadingBit(~7393u);
    return ~abs(~var_3);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.c;
    var var_1 = arg_2.d.yzy;
    let var_2 = reverseBits(~(arg_0 | arg_0));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27003u, 19u)] - -1069f), -274f)))), _wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(771f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28461u, 19u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_2(Struct_1(arg_1.x, -1i, arg_2.c, vec4<f32>(1577f, arg_2.d.x, -2313f, arg_2.d.x), -7724i), _wgslsmith_f_op_vec2_f32(step(arg_2.d.xw, vec2<f32>(-1000f, 1060f)))), 46052u), 19u)]);
    global4 = array<i32, 19>();
    return select(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), arg_0) & vec2<u32>(firstLeadingBit(var_2), abs(19913u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_2, 2950u), firstTrailingBit(arg_0)), vec2<u32>(0u, 0u) >> ((vec2<u32>(33614u, arg_0) ^ vec2<u32>(0u, var_2)) % vec2<u32>(32u)))), countOneBits(~(~arg_0) | 67964u), global0[_wgslsmith_index_u32(1u, 32u)] && !all(vec3<bool>(false, arg_2.c, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i, u_input.a, global0[_wgslsmith_index_u32(select(~(~(~53627u)), _wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(63378u, 16u)] >> (~global1[_wgslsmith_index_u32(4294967295u, 16u)] % vec3<u32>(32u)), global1[_wgslsmith_index_u32(func_1(1u, _wgslsmith_sub_vec4_i32(vec4<i32>(22101i, 1i, u_input.a, global4[_wgslsmith_index_u32(1u, 19u)]), vec4<i32>(13590i, u_input.a, global3.x, -1i)), Struct_1(u_input.a, 1i, global0[_wgslsmith_index_u32(694u, 32u)], vec4<f32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(10068u, 19u)], 383f), -32019i)), 16u)]), false & select(global4[_wgslsmith_index_u32(22048u, 19u)] <= -20169i, true, global0[_wgslsmith_index_u32(0u << (0u % 32u), 32u)])), 32u)], vec4<f32>(558f, _wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_1(5310u, vec4<i32>(global4[_wgslsmith_index_u32(30945u, 19u)], 38932i, global3.x, 13076i), Struct_1(-2147483647i, global4[_wgslsmith_index_u32(118176u, 19u)], global0[_wgslsmith_index_u32(0u, 32u)], vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], -1176f, global2[_wgslsmith_index_u32(4294967295u, 19u)], -1000f), global3.x)), 38562u >> (0u % 32u), ~50143u), 19u)] - _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(70619u, 0u), 19u)]))), -321f), _wgslsmith_dot_vec3_i32(vec3<i32>(-31478i, firstTrailingBit(-global3.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(1u, 19u)], 1i, 1709i), vec3<i32>(global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(24821u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(global4[_wgslsmith_index_u32(1u, 19u)], u_input.a, 13826i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, -2147483647i), vec3<i32>(11699i, global3.x, -2147483647i), vec3<i32>(global4[_wgslsmith_index_u32(6797u, 19u)], 18091i, global3.x))), vec3<i32>(_wgslsmith_div_i32(-51302i, global4[_wgslsmith_index_u32(544u, 19u)]), u_input.a, _wgslsmith_mult_i32(0i, 3999i)))));
    global3 = vec2<i32>(0i, _wgslsmith_add_i32(~(~(-u_input.a)), global4[_wgslsmith_index_u32(1u, 19u)]));
    let var_1 = Struct_1(10788i, firstLeadingBit(-_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(110669u, 19u)], 57237i) & -var_0.a), !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d.x * -743f), 456f)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x)))), vec4<f32>(global2[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(38062u, 19u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1016f * global2[_wgslsmith_index_u32(125949u, 19u)]), var_0.d.x))), _wgslsmith_f_op_f32(round(1002f)), global2[_wgslsmith_index_u32(6510u, 19u)]), firstLeadingBit(global3.x));
    let var_2 = vec3<bool>(true, !(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 67490i, -2147483647i), vec4<i32>(0i, -5142i, var_0.e, global3.x)) != global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(~0u, 16u)], firstTrailingBit(vec3<u32>(37336u, 0u, 131700u))), 19u)]), ~(~1u) < _wgslsmith_mod_u32(~func_1(38653u, vec4<i32>(u_input.a, global3.x, 0i, var_0.a), Struct_1(-3539i, var_1.a, true, var_0.d, 0i)), firstTrailingBit(~1u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2590f - 406f) - var_1.d.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~0u, 19u)], var_1.d.x))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1f, var_0.d.x)), var_0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_u32(26214u, ~20342u, 56195u), ~_wgslsmith_mod_u32(func_1(0u, vec4<i32>(-11692i, 0i, 2147483647i, 38917i), var_1), _wgslsmith_mult_u32(8472u, 1u)), any(!select(vec4<bool>(false, false, var_0.c, true), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, true, true, false)))), -vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(9316i, var_1.a, global3.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_1.e, global4[_wgslsmith_index_u32(26369u, 19u)]), vec4<i32>(u_input.a, var_1.a, global4[_wgslsmith_index_u32(0u, 19u)], 0i))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, -6334i), vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(1u, 19u)]), var_3), vec2<i32>(1i, var_1.a)), 41296i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(0u, 19u)]), vec3<i32>(var_0.a, 2147483647i, var_0.e)))));
}

