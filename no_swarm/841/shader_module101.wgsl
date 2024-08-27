struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: array<f32, 25> = array<f32, 25>(177f, -496f, 2445f, -1061f, 1166f, 127f, 1103f, -297f, -634f, -1000f, -1142f, -448f, -999f, -2155f, 1617f, 1160f, -1000f, -891f, 2003f, -1511f, -1091f, -1426f, 347f, 1110f, -1114f);

var<private> global1: array<u32, 5> = array<u32, 5>(1u, 0u, 12015u, 29397u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    var var_0 = Struct_4(vec4<bool>(true, true, any(vec2<bool>(true, true)), false), Struct_1(-1i, ~u_input.c, !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec4<f32>(-1000f, -187f, -175f, _wgslsmith_f_op_f32(757f - global0[_wgslsmith_index_u32(26726u, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(387f, 1300f)))) + arg_0.x)));
    let var_1 = arg_0.zx;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], ~max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13876u, 5u)], 5u)], 26641u)), _wgslsmith_mult_u32(22041u, min(abs(4294967295u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)]))), abs(vec2<u32>(1u, global1[_wgslsmith_index_u32(7849u, 5u)]) & select(vec2<u32>(global1[_wgslsmith_index_u32(0u, 5u)], 76478u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)]), var_0.b.c.x)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(78554u, global1[_wgslsmith_index_u32(1u, 5u)]), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(131134u, 5u)], 5u)], 5u)], 5u)], 5u)]), vec2<u32>(82805u, 1u))) % vec2<u32>(32u)));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_2(~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 0u, 3922u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31422u, 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)]) ^ vec3<u32>(1u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(88845u, 5u)], 5u)], 5u)]), max(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 1u, 4294967295u), vec3<u32>(35013u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], global1[_wgslsmith_index_u32(100102u, 5u)])), _wgslsmith_clamp_vec3_u32(vec3<u32>(182u, 120726u, global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<u32>(58343u, 1u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(8281u, 5u)], 0u)))));
    var var_1 = select(!(!vec2<bool>(false, func_3(vec3<f32>(-336f, -211f, arg_2.x)))), vec2<bool>(false, any(vec2<bool>(true, -28071i == arg_0))), any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    let var_2 = Struct_3(-1195f);
    var var_3 = Struct_3(-309f);
    var var_4 = Struct_1(-(~(-1i)), -2147483647i, vec3<bool>(!all(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)), any(select(vec2<bool>(true, true), vec2<bool>(false, var_1.x), false)), !any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(1035f, 130f, 1122f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 25u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 479f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2607f, -1000f, 1000f, 311f) - arg_2), _wgslsmith_div_vec4_f32(arg_2, arg_2))))), _wgslsmith_f_op_f32(516f * _wgslsmith_f_op_f32(-arg_2.x)));
    return global1[_wgslsmith_index_u32(countOneBits(4294967295u), 5u)];
}

fn func_1() -> vec3<u32> {
    let var_0 = false;
    let var_1 = _wgslsmith_sub_u32(~select(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(55941u, 1u, 4294967295u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94746u, 5u)], 5u)], 1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)])), var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(5261u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)]), 5u)], ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 0u), 5u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(58096u, 5u)], 5u)], 5u)]), vec3<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(100096u, 5u)], 5u)], ~47825u, func_2(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1270f, global0[_wgslsmith_index_u32(70703u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]) * vec3<f32>(349f, 224f, -1550f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(66330u, 25u)], global0[_wgslsmith_index_u32(129u, 25u)], 1581f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 25u)]))))));
    global0 = array<f32, 25>();
    let var_2 = Struct_4(vec4<bool>(var_0, !(!(u_input.a >= u_input.a)), !var_0, var_0), Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, -1i), vec2<i32>(-17798i, -53539i)), u_input.a, !(!vec3<bool>(false, var_0, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-254f, -428f, global0[_wgslsmith_index_u32(1u, 25u)], 1000f), vec4<f32>(616f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49131u, 5u)], 25u)], global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 25u)]))) - vec4<f32>(global0[_wgslsmith_index_u32(34865u, 25u)], -828f, -297f, 570f))), global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(countOneBits(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 77901u, var_0)), 5u)]), 25u)]));
    global1 = array<u32, 5>();
    return ~(~max(~reverseBits(vec3<u32>(19586u, var_1, 2675u)), vec3<u32>(1u, ~global1[_wgslsmith_index_u32(9766u, 5u)], ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 25>();
    var var_0 = func_1();
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(abs(vec2<i32>(u_input.a, u_input.b))), vec2<i32>(reverseBits(u_input.a), u_input.a)));
    let var_2 = ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(23658i, -2147483647i, 45320i, -2147483647i), vec4<i32>(var_1.x, u_input.c, u_input.a, 2346i)), max(var_1.x, u_input.c)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, 12710i), vec3<i32>(-1i, u_input.c, 1i), vec3<i32>(45811i, var_1.x, -20381i))));
    var_0 = ~vec3<u32>(func_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 0i, var_1.x, 2147483647i), ~vec4<i32>(var_2, 1i, 0i, -28768i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(614f, 1000f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)])))), 50155u, global1[_wgslsmith_index_u32(var_0.x, 5u)]);
    let var_3 = Struct_2(~(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], var_0.x, 4294967295u) | ~vec3<u32>(var_0.x, global1[_wgslsmith_index_u32(1u, 5u)], 0u)) >> (vec3<u32>(var_0.x, ~global1[_wgslsmith_index_u32(0u, 5u)], var_0.x) % vec3<u32>(32u)));
    let var_4 = Struct_1(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32((vec3<i32>(var_1.x, -8731i, u_input.b) & vec3<i32>(u_input.c, u_input.b, var_2)) << (~vec3<u32>(var_3.a.x, 17951u, var_3.a.x) % vec3<u32>(32u)), vec3<i32>(~var_1.x, var_1.x, 1i)), abs(max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2, 1i, u_input.a), vec3<i32>(var_2, var_2, var_1.x)), ~vec3<i32>(57010i, -8061i, -2147483647i)))), vec3<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, false), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(695f, global0[_wgslsmith_index_u32(14518u, 25u)], 209f, -188f), vec4<f32>(-374f, 1000f, 917f, global0[_wgslsmith_index_u32(70856u, 25u)])))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~0u, 25u)]))), 863f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~var_3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(var_3.a.x, var_0.x, 0u) ^ vec3<u32>(var_3.a.x, global1[_wgslsmith_index_u32(var_3.a.x, 5u)], 29603u))));
}

