struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<bool, 20> = array<bool, 20>(true, false, true, false, true, true, false, false, false, false, true, false, false, true, false, false, false, true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = vec3<bool>(select(all(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(28392u, 20u)], false, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(12160u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(45949u, 20u)], true, global1[_wgslsmith_index_u32(4233u, 20u)], false), global1[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 20u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51289u, 5u)], 5u)], 20u)], global1[_wgslsmith_index_u32(1u, 20u)]))), select(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 4502u), 5u)] == _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(0u, 1u)), true), false), global1[_wgslsmith_index_u32(3958u, 20u)], true);
    global0 = array<u32, 5>();
    var var_1 = vec3<u32>(~((u_input.a.x >> (firstTrailingBit(u_input.a.x) % 32u)) | ~global0[_wgslsmith_index_u32(1u, 5u)]), reverseBits(global0[_wgslsmith_index_u32(~109045u, 5u)]), u_input.a.x);
    let var_2 = Struct_3(Struct_1(!select(!vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 20u)], false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(36684u, 20u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 20u)], true, global1[_wgslsmith_index_u32(0u, 20u)])), vec4<bool>(var_0.x, all(select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(var_1.x, 20u)], true), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(0u, 20u)]), true)), var_0.x, var_0.x), ~(~abs(vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 5u)], var_1.x, u_input.a.x)))), global0[_wgslsmith_index_u32(~1u, 5u)], Struct_2(select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), (vec2<i32>(22357i, -1i) << (vec2<u32>(u_input.a.x, var_1.x) % vec2<u32>(32u))) | ~vec2<i32>(0i, 2147483647i), var_0.xy), Struct_1(select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(10483u, 20u)], true, false, var_0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], false, var_0.x)), vec4<bool>(var_0.x, true, global1[_wgslsmith_index_u32(var_1.x, 20u)], var_0.x), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 20u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(27939u, 20u)], var_0.x, var_0.x, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(29922u, 20u)], var_0.x, var_0.x, global1[_wgslsmith_index_u32(0u, 20u)]), false), vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(112858u, 5u)], global0[_wgslsmith_index_u32(31401u, 5u)]), ~2510u, 0u))), true, 15053i);
    let var_3 = vec4<bool>(true, false, true, false);
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(0i) >> (global0[_wgslsmith_index_u32(reverseBits(4294967295u), 5u)] % 32u), min(1i, func_3())), 23492i);
    global0 = array<u32, 5>();
    global1 = array<bool, 20>();
    let var_1 = arg_0;
    let var_2 = Struct_2(~var_0, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.zwy), countOneBits(vec3<u32>(u_input.a.x, 40364u, 10205u))), 20u)], !select(false, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(34334u, 20u)]), true, all(vec4<bool>(global1[_wgslsmith_index_u32(28863u, 20u)], true, true, true))), vec4<bool>(all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true)), true, true, firstLeadingBit(u_input.a.x) != ~global0[_wgslsmith_index_u32(var_1, 5u)]), (~vec3<u32>(39713u, 23704u, var_1) >> (firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(var_1, 5u)], 1u, global0[_wgslsmith_index_u32(0u, 5u)])) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_u32(~u_input.a.xwy, reverseBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_1, 5u)], 97700u)), ~u_input.a.wxy)));
    return Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, ~1u == ~select(21159u, global0[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), true, all(!var_2.b.a.wy)), vec3<u32>(~(~(1u << (global0[_wgslsmith_index_u32(arg_0, 5u)] % 32u))), ~(~(~32372u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.b.c.x, 4294967295u), var_2.b.c))));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<u32, 5>();
    let var_0 = ~(max(vec2<u32>(18233u, u_input.a.x >> (global0[_wgslsmith_index_u32(u_input.a.x, 5u)] % 32u)), u_input.a.zw) >> (u_input.a.wx % vec2<u32>(32u)));
    var var_1 = Struct_3(func_2(_wgslsmith_div_u32(~u_input.a.x, ~1u), _wgslsmith_add_u32(~var_0.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(10645u, 5u)], 0u) << (4294967295u % 32u))), ~(~u_input.a.x | ~(1u & var_0.x)), Struct_2(~(-vec2<i32>(0i, 4130i)) << (vec2<u32>(firstLeadingBit(32801u), _wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19511u, 5u)], 5u)], 5u)])) % vec2<u32>(32u)), Struct_1(!select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], false, false, global1[_wgslsmith_index_u32(88353u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68086u, 5u)], 20u)], global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(42760u, 20u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(7147u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), vec4<bool>(any(vec2<bool>(false, false)), !global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 5u)], 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), u_input.a.ywx)), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, global0[_wgslsmith_index_u32(1u, 5u)]), 1u) << (_wgslsmith_add_u32(var_0.x, _wgslsmith_mod_u32(u_input.a.x, 3947u)) % 32u), 20u)], ~(-90904i));
    let var_2 = vec4<u32>(25147u, min(70018u, ~(~_wgslsmith_div_u32(u_input.a.x, var_1.c.b.c.x))), 52190u, 1u);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -400f, -852f, arg_0) - vec4<f32>(-1387f, 476f, 266f, arg_0)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1136f, 654f, 1306f, arg_0)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1395f, arg_0)))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<u32, 5>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.x, 1014f)), _wgslsmith_f_op_f32(-928f + -117f), -968f, _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, 204f, arg_0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1309f, arg_0.x, -995f, arg_0.x), vec4<f32>(arg_0.x, -388f, arg_0.x, arg_0.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(1406f, arg_0.x, arg_0.x, -785f), vec4<f32>(arg_0.x, 1838f, 482f, 1640f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1382f, arg_0.x, 879f, 557f)))) - vec4<f32>(-618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(arg_0.x)) * arg_0.x), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1311f + -828f), _wgslsmith_f_op_f32(-arg_0.x)))));
    global1 = array<bool, 20>();
    global0 = array<u32, 5>();
    var var_1 = arg_1.c.b;
    return func_2(~(~0u), global0[_wgslsmith_index_u32(0u, 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    var var_0 = func_4(vec2<f32>(1100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(658f, 2421f))) - 1000f)), Struct_3(Struct_1(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 20u)], true, false)), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], 5u)], 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(48692u, 20u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 20u)], true, false), true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 0u), u_input.a.zww)), countOneBits(0u), Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(59787i, 0i), vec2<i32>(30394i, 2147483647i), vec2<i32>(-9854i, 0i)) | reverseBits(vec2<i32>(69628i, 74847i)), Struct_1(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(9782u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), func_2(4294967295u, 1u).a, ~u_input.a.wxx)), -37189i > select(firstLeadingBit(-1i), ~18039i, true), firstTrailingBit(-42902i)));
    let var_1 = func_2(~(~1u), 0u);
    let var_2 = 31367u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-613f, 1000f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 727f) - vec2<f32>(-759f, 1007f)), vec2<f32>(1228f, 170f))))), select(vec4<i32>(0i, -21809i, 1i, 36429i) >> (vec4<u32>(1u, 4294967295u, var_1.c.x, var_0.c.x) % vec4<u32>(32u)), vec4<i32>(-14692i, _wgslsmith_dot_vec3_i32(vec3<i32>(-43813i, 812i, -39507i), vec3<i32>(-18280i, 73481i, 39893i)), -35779i, ~32472i), true) | -select(-vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -2147483647i), select(vec4<i32>(572i, -1i, 0i, 1i), vec4<i32>(9666i, 1i, -2147483647i, 1i), var_0.b.x), true), 29625u << (min(48195u, var_0.c.x) % 32u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + -996f), 1480f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1406f, _wgslsmith_f_op_f32(select(929f, 240f, true)), -156f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(409f, 1000f, -392f), vec3<f32>(1065f, 605f, -820f)))), true)), var_1.a.wyz)));
}

