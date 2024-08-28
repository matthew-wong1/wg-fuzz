struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(42899u, true, vec3<u32>(27342u, 32881u, 1u), true, 27069i), Struct_1(1u, false, vec3<u32>(1u, 1u, 50155u), false, -32681i), Struct_1(0u, false, vec3<u32>(1u, 4294967295u, 4294967295u), false, -8452i), Struct_1(85347u, true, vec3<u32>(1u, 0u, 0u), false, 1i), Struct_1(0u, true, vec3<u32>(0u, 70363u, 0u), false, 38078i), Struct_1(52397u, true, vec3<u32>(79559u, 3302u, 4294967295u), true, 17624i), Struct_1(57183u, false, vec3<u32>(54205u, 9206u, 0u), false, 2147483647i), Struct_1(87110u, false, vec3<u32>(17548u, 24707u, 4294967295u), true, 73588i), Struct_1(41803u, false, vec3<u32>(60321u, 5549u, 85228u), true, 7626i), Struct_1(0u, false, vec3<u32>(78354u, 4294967295u, 1u), true, 19672i), Struct_1(27194u, true, vec3<u32>(70871u, 40230u, 73314u), true, -1i), Struct_1(1u, false, vec3<u32>(4294967295u, 4294967295u, 19175u), true, 18266i), Struct_1(1u, true, vec3<u32>(0u, 1u, 4294967295u), true, 1i), Struct_1(0u, false, vec3<u32>(15649u, 4294967295u, 64892u), true, -1i), Struct_1(1u, false, vec3<u32>(55283u, 91023u, 1u), false, i32(-2147483648)));

var<private> global1: Struct_1;

var<private> global2: array<u32, 29> = array<u32, 29>(59592u, 24538u, 26568u, 1u, 17456u, 49380u, 0u, 8289u, 4294967295u, 97470u, 9649u, 0u, 1u, 1u, 0u, 8373u, 0u, 54767u, 37046u, 11621u, 0u, 0u, 0u, 0u, 3054u, 1u, 1u, 20439u, 39829u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    global1 = Struct_1((global1.c.x | global1.a) << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3594u, global2[_wgslsmith_index_u32(arg_1.a, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], u_input.c.x), u_input.b), u_input.b.x) % 32u), 0i >= global1.e, ~countOneBits(vec3<u32>(~19758u, ~arg_1.a, arg_1.c.x >> (16540u % 32u))), !(true & !(global1.b | true)), _wgslsmith_add_i32(global1.e, arg_1.e));
    return -u_input.e.x > 2941i;
}

fn func_3() -> i32 {
    var var_0 = Struct_1(0u, false, ~vec3<u32>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global1.a, 29u)], 1u, global1.a)), ~34535u, ~global1.c.x), !(global1.e > 1i), -u_input.e.x << (u_input.d.x % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -500f), -424f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(trunc(-633f)))));
    var var_2 = ~(~var_0.a | 1u);
    var var_3 = 2147483647i;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), -1198f)), _wgslsmith_div_f32(-2180f, _wgslsmith_f_op_f32(abs(264f)))))), 742f);
    return 47078i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_div_vec4_i32(reverseBits(~((vec4<i32>(global1.e, -2147483647i, u_input.e.x, arg_0.e) ^ vec4<i32>(35111i, 1i, 0i, arg_0.e)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, arg_0.e, 1i, arg_0.e), vec4<i32>(u_input.e.x, arg_0.e, arg_0.e, global1.e)))), -vec4<i32>(func_3(), u_input.e.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_0.e, u_input.e.x, u_input.e.x), _wgslsmith_div_i32(33042i, u_input.e.x), ~global1.e), arg_0.e));
    global0 = array<Struct_1, 15>();
    global2 = array<u32, 29>();
    global2 = array<u32, 29>();
    return Struct_1(firstLeadingBit(1u), all(select(!vec2<bool>(false, arg_0.d), vec2<bool>(false, arg_0.b), any(vec4<bool>(arg_0.d, arg_0.d, arg_0.b, false)))) | (global1.d & arg_0.d), vec3<u32>(~(global2[_wgslsmith_index_u32(~87855u, 29u)] ^ ~4294967295u), select(global1.c.x, _wgslsmith_div_u32(reverseBits(global2[_wgslsmith_index_u32(41921u, 29u)]), 1u), all(select(vec4<bool>(true, global1.d, true, true), vec4<bool>(arg_0.b, arg_0.b, false, false), vec4<bool>(true, arg_0.b, true, false)))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x ^ 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, global1.c.x, global1.a, u_input.a), u_input.b), 34515u), 29u)]), ~u_input.a > ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 29u)], 29u)]), u_input.e.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 15u)];
    let var_1 = func_2(func_2(arg_0));
    var var_2 = (0u & ~(~_wgslsmith_clamp_u32(var_1.c.x, arg_1.a, 4294967295u))) >= abs(~var_1.a);
    let var_3 = arg_0;
    let var_4 = -3100f;
    return arg_3 == _wgslsmith_sub_i32(reverseBits(~(i32(-1i) * -2147483647i)), ~(-abs(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 15u)];
    global2 = array<u32, 29>();
    global0 = array<Struct_1, 15>();
    var var_1 = 55862u;
    global0 = array<Struct_1, 15>();
    var var_2 = Struct_1(4294967295u, func_1(_wgslsmith_div_f32(133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1165f, -563f)))), global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 29u)]), 15u)]), select(var_0.c, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(1u, 29u)]), var_0.c & vec3<u32>(1u, 6607u, 1u)), 0u, 4294967295u), !(!(!vec3<bool>(var_0.d, false, var_0.b)))), true, -u_input.e.x);
    let var_3 = 1i;
    let var_4 = _wgslsmith_add_vec3_u32(select(global1.c, ~reverseBits(~vec3<u32>(u_input.b.x, u_input.b.x, 1u)), func_4(global0[_wgslsmith_index_u32(countOneBits(0u), 15u)], func_2(global0[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(4294967295u, 29u)], 0u, var_2.d), 15u)]), ~63207u, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(1i, var_3), _wgslsmith_sub_i32(1i, 17935i)))), _wgslsmith_clamp_vec3_u32(global1.c, vec3<u32>(var_2.a, _wgslsmith_sub_u32(var_2.c.x, _wgslsmith_clamp_u32(var_0.a, 92970u, 65794u)), ~global1.a), vec3<u32>(0u, ~(global2[_wgslsmith_index_u32(91202u, 29u)] << (global2[_wgslsmith_index_u32(u_input.c.x, 29u)] % 32u)), u_input.c.x & abs(var_2.c.x))));
    let var_5 = func_2(Struct_1(71959u, true, var_0.c, !(false || var_2.d), ~var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-4192i, 2147483647i << (min(4294967295u ^ var_5.c.x, ~44053u) % 32u)));
}

