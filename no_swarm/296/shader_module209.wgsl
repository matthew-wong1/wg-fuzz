struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(-41341i, Struct_2(2011f, 4294967295u, vec4<bool>(true, true, true, true)), 43743u), Struct_3(0i, Struct_2(-493f, 0u, vec4<bool>(false, false, true, false)), 0u), Struct_3(-1i, Struct_2(-993f, 9150u, vec4<bool>(false, true, true, false)), 53054u), Struct_3(68004i, Struct_2(-1320f, 1u, vec4<bool>(true, true, false, true)), 0u), Struct_3(-57570i, Struct_2(469f, 1u, vec4<bool>(true, false, false, true)), 4294967295u), Struct_3(-12213i, Struct_2(619f, 51067u, vec4<bool>(true, true, false, true)), 1u), Struct_3(i32(-2147483648), Struct_2(663f, 0u, vec4<bool>(false, false, false, false)), 24721u), Struct_3(6587i, Struct_2(-408f, 37840u, vec4<bool>(false, true, false, true)), 71768u), Struct_3(2147483647i, Struct_2(2198f, 10484u, vec4<bool>(true, false, true, false)), 4294967295u), Struct_3(2147483647i, Struct_2(823f, 3723u, vec4<bool>(true, true, true, false)), 22111u), Struct_3(8172i, Struct_2(157f, 1u, vec4<bool>(true, true, true, false)), 4760u), Struct_3(i32(-2147483648), Struct_2(-523f, 4294967295u, vec4<bool>(true, false, true, true)), 0u), Struct_3(34738i, Struct_2(556f, 1532u, vec4<bool>(false, false, false, true)), 0u), Struct_3(0i, Struct_2(1452f, 1u, vec4<bool>(false, true, true, false)), 22750u), Struct_3(-1i, Struct_2(-1648f, 1u, vec4<bool>(true, true, false, false)), 81514u), Struct_3(i32(-2147483648), Struct_2(-446f, 26624u, vec4<bool>(false, false, true, false)), 1u), Struct_3(24685i, Struct_2(-304f, 29292u, vec4<bool>(true, false, true, true)), 74257u), Struct_3(-64984i, Struct_2(1438f, 4294967295u, vec4<bool>(false, false, false, false)), 54696u), Struct_3(i32(-2147483648), Struct_2(361f, 85326u, vec4<bool>(false, false, true, true)), 26036u), Struct_3(5106i, Struct_2(-410f, 0u, vec4<bool>(true, true, true, false)), 4294967295u), Struct_3(18923i, Struct_2(1097f, 39950u, vec4<bool>(false, true, true, false)), 1u), Struct_3(-13240i, Struct_2(-142f, 12844u, vec4<bool>(true, true, false, false)), 4294967295u), Struct_3(-3502i, Struct_2(-996f, 0u, vec4<bool>(false, false, true, true)), 1u), Struct_3(0i, Struct_2(426f, 95828u, vec4<bool>(false, true, true, false)), 4294967295u), Struct_3(71i, Struct_2(-578f, 78534u, vec4<bool>(false, false, false, false)), 29029u), Struct_3(0i, Struct_2(-789f, 9273u, vec4<bool>(true, true, true, true)), 1u), Struct_3(1i, Struct_2(-650f, 4294967295u, vec4<bool>(true, false, false, true)), 2248u), Struct_3(17438i, Struct_2(-608f, 4294967295u, vec4<bool>(true, false, true, true)), 1u), Struct_3(21025i, Struct_2(-440f, 1u, vec4<bool>(false, false, true, true)), 37764u), Struct_3(-1i, Struct_2(-465f, 6018u, vec4<bool>(false, true, true, true)), 4294967295u), Struct_3(i32(-2147483648), Struct_2(733f, 30464u, vec4<bool>(true, false, false, true)), 71231u), Struct_3(i32(-2147483648), Struct_2(780f, 0u, vec4<bool>(true, true, true, true)), 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a * arg_3.a)), -127f, arg_3.a)));
    let var_1 = Struct_3(-3840i, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.a, arg_3.a)) + arg_3.a))), arg_0.b.b, arg_0.b.c), ~23528u);
    let var_2 = var_0.yy;
    global0 = array<Struct_3, 32>();
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -329f)))));
    return arg_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<Struct_3, 32>();
    var var_0 = Struct_3(abs(i32(-1i) * -(arg_1.a ^ 18583i)), Struct_2(-285f, 24932u, !vec4<bool>(all(arg_1.b.c), false, select(arg_1.b.c.x, false, arg_1.b.c.x), arg_2.x != -41092i)), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(1u, arg_0.x, u_input.a, u_input.a)), reverseBits(arg_1.b.b)), max(arg_1.c, u_input.a | u_input.a), 53538u));
    global0 = array<Struct_3, 32>();
    var_0 = func_2(global0[_wgslsmith_index_u32(u_input.a, 32u)], vec3<i32>(-42968i, -2147483647i, 0i), -2147483647i, var_0.b);
    var_0 = arg_1;
    return var_0.b;
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    var var_0 = arg_0;
    var var_1 = ~arg_0.b.b;
    var var_2 = (-(-34401i ^ abs(arg_0.a)) ^ 1i) | 28600i;
    return ~((_wgslsmith_clamp_u32(15711u, var_0.c, 4294967295u) << (firstLeadingBit(1u) % 32u)) ^ ~_wgslsmith_sub_u32(u_input.a, 22331u)) >> (_wgslsmith_clamp_u32(~70906u, min(max(~var_0.b.b, func_2(Struct_3(8469i, var_0.b, var_0.c), vec3<i32>(arg_0.a, var_0.a, 1i), var_0.a, arg_0.b).b.b), reverseBits(_wgslsmith_mod_u32(41159u, 53467u))), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 0u, 80817u, u_input.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(38259u, u_input.a, arg_0.b.b, 26279u), vec4<u32>(var_0.b.b, 18465u, 1u, u_input.a)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~1i, func_1(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 23385u, 4294967295u, 0u))), global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mult_u32(u_input.a, 1u)), 32u)], _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 0i), vec2<i32>(-1i) * -vec2<i32>(1i, -50194i))), 1u);
    let var_1 = ~vec2<u32>(func_2(Struct_3(var_0.a, Struct_2(var_0.b.a, u_input.a, vec4<bool>(var_0.b.c.x, false, true, var_0.b.c.x)), 1u), -vec3<i32>(var_0.a, var_0.a, -1i), var_0.a, var_0.b).c, 1u) ^ select(select(~vec2<u32>(1u, var_0.b.b), ~vec2<u32>(var_0.c, 0u), vec2<bool>(true, var_0.b.c.x | var_0.b.c.x)), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(var_0.c, 0u), vec2<u32>(1u, 951u), true), ~vec2<u32>(23112u, var_0.c)), !var_0.b.c.xy);
    let var_2 = -208f;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(25396u, _wgslsmith_clamp_u32(firstTrailingBit(~var_0.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 41295u, 27429u, 4446u), vec4<u32>(var_1.x, var_0.b.b, var_0.c, 1u)) >> (_wgslsmith_add_u32(var_1.x, var_1.x) % 32u), 4294967295u)), 32u)];
    let var_3 = var_0.b;
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.a))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, -1013f)))), abs(vec3<i32>(1i, var_0.a, var_0.a | ~var_0.a)), ~vec3<i32>(var_0.a, _wgslsmith_add_i32(var_0.a, -6927i), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~1u, abs(var_3.b), var_0.c >> (1u % 32u)), var_3.b, func_3(func_2(Struct_3(var_0.a, Struct_2(var_3.a, var_1.x, var_3.c), _wgslsmith_sub_u32(var_0.c, 1u)), ~(var_4.c & var_4.c), -2147483647i, var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.a))));
}

