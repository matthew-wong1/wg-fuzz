struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 26> = array<i32, 26>(-5553i, 33372i, -1i, 0i, i32(-2147483648), -41250i, 5848i, -27706i, -11350i, 1i, 1i, 2147483647i, 0i, i32(-2147483648), -20175i, -125i, i32(-2147483648), 19502i, 84281i, 35427i, i32(-2147483648), 0i, 1i, i32(-2147483648), i32(-2147483648), -24506i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    global1 = array<i32, 26>();
    global0 = Struct_2(Struct_1(!vec4<bool>(false, global0.a.a.x, global0.a.a.x, true), global0.a.c, 1u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b))))))), u_input.a >> (18704u % 32u));
    let var_0 = global0.a;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a & ~26706u, u_input.a), ~(~vec2<u32>(32799u, global0.c)), (~(-8392i) != max(0i, global1[_wgslsmith_index_u32(67565u, 26u)])) || !(global0.a.a.x & false)), ~(~vec2<u32>(1u, abs(26856u)))), 26u)];
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1064f, -295f))), max(~0u, 47284u));
    return -50267i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1134f - _wgslsmith_f_op_f32(abs(-698f))));
    let var_1 = Struct_3(Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-748f, 1030f) * _wgslsmith_f_op_vec2_f32(abs(arg_3.b))))), 3477u), !(-638f != global0.b.x), -func_3());
    var var_2 = global0.a.a.wy;
    var var_3 = vec3<f32>(arg_1.b.x, 117f, arg_1.b.x);
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(677f, arg_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.x * 1351f)))), _wgslsmith_f_op_f32(-1351f - var_3.x), arg_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, var_1.a.b.x)), _wgslsmith_f_op_f32(var_1.a.b.x * _wgslsmith_f_op_f32(-arg_0.b.x)))));
    return Struct_4(arg_1.a.a.x || any(!(!arg_3.a.a.zzz)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-215f * arg_2))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(vec4<bool>(all(vec4<bool>(!global0.a.a.x, !arg_2.a.x, true, true)), true, arg_0.a, global0.a.a.x), arg_2.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_2.b, 0u)), firstTrailingBit(vec2<u32>(global0.a.b, 0u) | vec2<u32>(arg_2.b, 2771u))), firstLeadingBit(vec2<u32>(u_input.a ^ global0.a.b, 4294967295u))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> Struct_3 {
    global1 = array<i32, 26>();
    var var_0 = 652f;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-459f, global0.b.x, -1114f, arg_0.a.b.x), vec4<f32>(arg_0.a.b.x, -752f, 360f, 174f), arg_0.a.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-594f, 631f, 455f, arg_0.a.b.x) + vec4<f32>(global0.b.x, global0.b.x, 2314f, -309f)), global0.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(781f, -1004f, 1202f, 793f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, arg_0.a.b.x, -1278f, global0.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(max(221f, -1188f)), global0.b.x, _wgslsmith_f_op_f32(sign(1000f)), 668f))));
    var var_2 = 18796u;
    let var_3 = -(arg_0.c & global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(arg_1, 1u, global0.a.b, 1u)) << (global0.c % 32u), 26u)]);
    return Struct_3(arg_0.a, true, -1577i);
}

fn func_1(arg_0: i32) -> Struct_4 {
    global1 = array<i32, 26>();
    let var_0 = func_5(Struct_3(Struct_2(func_4(Struct_4(false, global0.b.x), func_2(Struct_2(global0.a, vec2<f32>(293f, global0.b.x), u_input.a), Struct_2(global0.a, vec2<f32>(global0.b.x, global0.b.x), global0.a.b), -1120f, Struct_2(global0.a, global0.b, u_input.a)), Struct_1(global0.a.a, global0.a.c, 27047u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -1000f)))), firstLeadingBit(abs(global0.a.b))), true, ~global1[_wgslsmith_index_u32(~(~4294967295u), 26u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(~max(global0.c, 68659u), ~u_input.a), ~(countOneBits(vec2<u32>(global0.a.b, global0.a.c)) << (firstTrailingBit(vec2<u32>(1u, 66439u)) % vec2<u32>(32u)))), ~(~vec4<i32>(_wgslsmith_sub_i32(0i, -5239i), 20260i, -1i, 20362i)));
    var var_1 = ~vec4<u32>(func_4(Struct_4(-455f < global0.b.x, _wgslsmith_f_op_f32(floor(-506f))), Struct_4(any(global0.a.a.wz), _wgslsmith_f_op_f32(-1117f * 152f)), Struct_1(!var_0.a.a.a, reverseBits(global0.a.b), ~u_input.a)).c, _wgslsmith_add_u32(var_0.a.a.b, global0.c), 63564u, var_0.a.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_5(Struct_3(Struct_2(global0.a, var_0.a.b, var_0.a.a.c), var_0.a.a.a.x, var_0.c), u_input.a, vec4<i32>(arg_0, -32125i, global1[_wgslsmith_index_u32(var_1.x, 26u)], arg_0)).a.b.x, _wgslsmith_f_op_f32(2569f * 201f), global0.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.b.x, var_0.a.b.x, -937f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-159f, global0.b.x, var_0.a.b.x), vec3<f32>(global0.b.x, var_0.a.b.x, 364f), false)), !global0.a.a.x)), func_4(Struct_4(var_0.a.a.a.x, -228f), Struct_4(global0.a.a.x, global0.b.x), Struct_1(global0.a.a, var_0.a.c, 36757u)).a.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.x))), global0.b.x, global0.b.x))));
    global0 = func_5(var_0, 0u, vec4<i32>(~var_0.c, global1[_wgslsmith_index_u32(1u, 26u)], ~var_0.c, -countOneBits(global1[_wgslsmith_index_u32(var_0.a.a.b, 26u)]))).a;
    return Struct_4(var_0.a.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f * var_0.a.b.x) * _wgslsmith_f_op_f32(min(-1263f, _wgslsmith_f_op_f32(sign(-909f))))))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_i32(abs(firstTrailingBit(~firstLeadingBit(global1[_wgslsmith_index_u32(global0.c, 26u)]))), -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.b, ~1u), 26u)]);
    let var_1 = select(func_4(Struct_4(!arg_0.x && arg_2.a.x, 881f), Struct_4(true || arg_1.a, _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -552f)))), Struct_1(func_4(func_2(Struct_2(global0.a, vec2<f32>(346f, global0.b.x), global0.a.b), Struct_2(global0.a, global0.b, u_input.a), global0.b.x, Struct_2(Struct_1(vec4<bool>(arg_1.a, arg_1.a, false, arg_2.a.x), 896u, global0.a.b), global0.b, 4294967295u)), Struct_4(true, -1234f), arg_2).a, global0.a.c, _wgslsmith_clamp_u32(52585u, u_input.a, u_input.a) | ~global0.a.b)).a, global0.a.a, _wgslsmith_clamp_u32(0u, ~global0.a.b, global0.c) <= 36745u);
    global0 = Struct_2(func_4(arg_1, arg_1, arg_2), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(global0.b)), global0.b)), ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(59217u, 0u), vec2<u32>(arg_2.b, 5774u), var_1.xx), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.b, global0.c), vec2<u32>(4294967295u, u_input.a)))));
    global1 = array<i32, 26>();
    var var_2 = func_5(Struct_3(Struct_2(Struct_1(arg_2.a, arg_2.c | global0.c, 0u & global0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, global0.b.x) + _wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(837f, -1810f))), u_input.a), arg_0.x, 2147483647i), 64319u, -vec4<i32>(firstLeadingBit(20249i), _wgslsmith_mult_i32(-26527i, i32(-1i) * -1i), var_0, global1[_wgslsmith_index_u32(u_input.a, 26u)])).a;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(1u, _wgslsmith_add_u32(16445u, u_input.a), func_6(!global0.a.a.wzz, func_1(-2147483647i), Struct_1(vec4<bool>(false, true, global0.a.a.x, global0.a.a.x), u_input.a << (1u % 32u), min(85814u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1474f, global0.b.x, -2291f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1118f, global0.b.x, 1233f))), !global0.a.a.yxy)) + vec3<f32>(-1063f, _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(floor(-1783f))))))));
    global1 = array<i32, 26>();
    let var_2 = var_1.yx;
    var var_3 = Struct_3(func_5(func_5(func_5(func_5(Struct_3(Struct_2(Struct_1(global0.a.a, u_input.a, var_0.x), var_2, 4294967295u), global0.a.a.x, global1[_wgslsmith_index_u32(26389u, 26u)]), 28179u, vec4<i32>(global1[_wgslsmith_index_u32(19700u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])), global0.a.c ^ u_input.a, vec4<i32>(4538i, global1[_wgslsmith_index_u32(u_input.a, 26u)], -2147483647i, -2147483647i)), ~0u, vec4<i32>(1i, -2147483647i, 1i, firstTrailingBit(-10061i))), 66615u, _wgslsmith_div_vec4_i32(~vec4<i32>(-7786i, -1i, 0i, 2147483647i) << (~vec4<u32>(1u, global0.c, u_input.a, var_0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(global1[_wgslsmith_index_u32(global0.a.c, 26u)], 0i, -39582i, 0i), vec4<i32>(global1[_wgslsmith_index_u32(79886u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(42918u, 26u)], 12388i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1264i, -42085i, global1[_wgslsmith_index_u32(var_0.x, 26u)], 6243i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], -1i, global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]))))).a, any(vec4<bool>(global0.a.a.x, (global1[_wgslsmith_index_u32(global0.c, 26u)] & global1[_wgslsmith_index_u32(var_0.x, 26u)]) <= global1[_wgslsmith_index_u32(countOneBits(global0.a.c), 26u)], func_2(func_5(Struct_3(Struct_2(Struct_1(vec4<bool>(global0.a.a.x, global0.a.a.x, true, false), 88721u, var_0.x), vec2<f32>(-1063f, global0.b.x), u_input.a), global0.a.a.x, -1i), var_0.x, vec4<i32>(global1[_wgslsmith_index_u32(3943u, 26u)], global1[_wgslsmith_index_u32(2721u, 26u)], global1[_wgslsmith_index_u32(4467u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)])).a, Struct_2(global0.a, global0.b, 1u), func_1(37861i).b, Struct_2(global0.a, vec2<f32>(793f, -1616f), 4294967295u)).a, func_4(Struct_4(false, var_2.x), func_2(Struct_2(Struct_1(vec4<bool>(true, global0.a.a.x, global0.a.a.x, true), 0u, var_0.x), global0.b, 1u), Struct_2(global0.a, vec2<f32>(-1801f, var_1.x), 47591u), global0.b.x, Struct_2(Struct_1(global0.a.a, global0.c, u_input.a), vec2<f32>(1261f, global0.b.x), 1699u)), func_4(Struct_4(false, 1937f), Struct_4(false, -1853f), Struct_1(vec4<bool>(false, global0.a.a.x, global0.a.a.x, global0.a.a.x), 84817u, 24461u))).a.x)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(global1[_wgslsmith_index_u32(15873u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(13520u, 26u)], 0i) ^ select(vec4<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(64507u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)]), vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(global0.a.c, 26u)]), global0.a.a.x), -vec4<i32>(-60571i, -1i, global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(16729u, 26u)])), select(vec4<i32>(global1[_wgslsmith_index_u32(43532u, 26u)], -global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(17785u, var_0.x), 26u)], global1[_wgslsmith_index_u32(4376u, 26u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], -1i, global1[_wgslsmith_index_u32(0u, 26u)]), vec4<i32>(0i, global1[_wgslsmith_index_u32(10496u, 26u)], 0i, global1[_wgslsmith_index_u32(global0.c, 26u)])), global0.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) * _wgslsmith_div_f32(-174f, var_1.x)) - var_1.x)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(global0.c, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]), vec2<i32>(var_3.c, global1[_wgslsmith_index_u32(25356u, 26u)]) | vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -2147483647i)), ~vec2<i32>(-33969i, 1i) | (vec2<i32>(global1[_wgslsmith_index_u32(global0.a.b, 26u)], 75934i) ^ vec2<i32>(2147483647i, 1i))), vec2<i32>(-1i) * -vec2<i32>(var_3.c, 0i)));
}

