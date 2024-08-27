struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 63523u), 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 2u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xy))));
    var var_1 = Struct_1(!vec4<bool>(false, all(!vec2<bool>(arg_0.a.x, true)), true, select(all(vec3<bool>(arg_0.a.x, true, arg_0.a.x)), !arg_0.a.x, true)), vec3<i32>(-1i, arg_0.b.x, countOneBits(arg_0.c.x)) >> (countOneBits(~vec3<u32>(35448u, 58021u, arg_2)) % vec3<u32>(32u)), ~arg_0.c);
    let var_2 = ~(~(max(vec4<u32>(0u, 4294967295u, 54200u, 1u), vec4<u32>(1u, 4294967295u, arg_1, u_input.a.x)) << (vec4<u32>(93846u, arg_2, u_input.a.x, arg_2) % vec4<u32>(32u)))) | firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(arg_1, arg_2) & 0u, firstTrailingBit(arg_2 >> (4294967295u % 32u)), arg_1, ~(~arg_1)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, var_2.x), select(select(vec2<u32>(37674u, 0u), u_input.a, var_1.a.wx), u_input.a, vec2<bool>(false, false))), 2u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, arg_1, 42411u, 0u) ^ vec4<u32>(var_2.x, arg_2, 4294967295u, arg_2), select(var_2, var_2, true))), vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_2.x, 11284u, 36696u), vec3<u32>(arg_1, 73756u, 1u)), vec3<u32>(var_2.x, 0u, 4294967295u)), 9224u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 91322u, u_input.a.x)), ~var_2.yyx), _wgslsmith_clamp_u32(~var_2.x, 4294967295u, reverseBits(0u)))), 2u)]);
    let var_3 = global1[_wgslsmith_index_u32(max(2435u, ~var_2.x), 2u)];
    return !arg_0.a.ww;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = vec3<bool>(true, !(!arg_1.a.x), any(select(arg_1.a.xx, func_3(arg_1, 4294967295u, ~u_input.a.x), false)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 297f, global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<f32>(1000f, 761f, global1[_wgslsmith_index_u32(39096u, 2u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(421f, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)])), vec3<bool>(var_1.x, arg_1.a.x, var_1.x))) - vec3<f32>(_wgslsmith_div_f32(global0.x, 773f), 277f, _wgslsmith_f_op_f32(global0.x - global0.x)))));
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    return Struct_1(arg_1.a, ~(arg_1.b << (select(vec3<u32>(39104u, u_input.a.x, 0u) & vec3<u32>(1u, var_0, var_0), select(vec3<u32>(29274u, 23494u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 66004u), var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), arg_1.a.xwy, var_1)) % vec3<u32>(32u))), arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = countOneBits(0u);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4321u, ~(~0u)), 2u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.x, -265f)))))), 994f));
    var var_1 = func_2(~_wgslsmith_clamp_vec2_i32(arg_0.c, ~arg_0.c, arg_0.c), Struct_1(arg_0.a, _wgslsmith_clamp_vec3_i32(arg_0.b, min(_wgslsmith_mult_vec3_i32(arg_0.b, vec3<i32>(0i, -2147483647i, 2147483647i)), vec3<i32>(arg_2, -34302i, 2147483647i)), arg_0.b ^ -arg_0.b), arg_0.c), countOneBits(_wgslsmith_add_i32(arg_2, _wgslsmith_sub_i32(arg_0.b.x, arg_0.b.x)) >> ((_wgslsmith_add_u32(u_input.a.x, 32944u) & 1u) % 32u)));
    var_0 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(~(u_input.a.x >> (1u % 32u)), abs(~37209u)));
    var_1 = arg_0;
    return func_3(arg_0, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), ~countOneBits(vec3<u32>(u_input.a.x, 205u, u_input.a.x))) << (u_input.a.x % 32u)).x;
}

fn func_1() -> vec3<bool> {
    return vec3<bool>(func_4(func_2(firstTrailingBit(~vec2<i32>(-33990i, -1i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-2957i, -2147483647i, 1i), min(vec2<i32>(1i, -24602i), vec2<i32>(-2147483647i, 2147483647i))), 1i), !any(func_2(vec2<i32>(-5547i, -9184i), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(13084i, 1i, 0i), vec2<i32>(-31723i, -1i)), -19837i).a.yz), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -30151i, 0i), vec3<i32>(-66195i, 0i, 49443i)), vec3<i32>(countOneBits(2147483647i), 21707i, -9290i))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 2>();
    var var_0 = abs(1i);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)] + global1[_wgslsmith_index_u32(u_input.a.x, 2u)]))), 1009f);
    let var_2 = _wgslsmith_f_op_f32(500f - global0.x);
    var_0 = firstLeadingBit(63471i);
    var var_3 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), func_1(), false)));
    let var_4 = u_input.a.x;
    var_0 = 2147483647i & max(select(-12840i, _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), -23342i), false), 9406i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.x, 258f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_clamp_i32(1i, ~_wgslsmith_div_i32(32948i, -2147483647i) << (firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, 49587u, 1u)) % 32u), i32(-1i) * -(0i >> (0u % 32u))), _wgslsmith_f_op_vec2_f32(select(global0.xy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.yx), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3678f), _wgslsmith_f_op_f32(-var_2)))), var_3.x)), var_4);
}

