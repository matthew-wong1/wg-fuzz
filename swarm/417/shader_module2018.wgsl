struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(1000f, 1164f, 1000f, -504f, 1000f, -2061f, -315f, -1000f, 556f, -303f, -839f, 580f, -723f, 634f, -911f, 505f, -1269f, 444f, 2015f, -590f, 1134f, -772f, -645f, 2078f, -264f, -207f, -937f, 146f, -893f, 1157f, 128f, -514f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = array<f32, 32>();
    let var_0 = Struct_1(!vec2<bool>(arg_0.a.x, any(vec3<bool>(arg_0.a.x, false, false)) | arg_0.a.x), global0[_wgslsmith_index_u32(u_input.c, 32u)] == global0[_wgslsmith_index_u32(6778u, 32u)]);
    let var_1 = true;
    let var_2 = Struct_1(var_0.a, !any(select(vec3<bool>(var_0.a.x, false, var_1), !vec3<bool>(false, var_1, var_1), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(false, true, arg_0.b), vec3<bool>(true, true, arg_0.b)))));
    let var_3 = ~max(~(~(~42552u)), 1u);
    return vec2<bool>(any(select(select(!arg_0.a, vec2<bool>(arg_0.b, true), vec2<bool>(true, true)), !(!var_2.a), true)), true);
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(!vec2<bool>(any(vec3<bool>(true, true, true)), false && (global0[_wgslsmith_index_u32(u_input.c, 32u)] > -1000f)), any(vec2<bool>(true, true)));
    var var_2 = Struct_1(select(vec2<bool>(false, var_1.b), !var_1.a, false), var_1.a.x);
    var_0 = true;
    let var_3 = Struct_1(!func_3(var_1, 0u, _wgslsmith_div_vec3_i32(abs(u_input.d.xxz), vec3<i32>(-3995i, -2147483647i, u_input.e.x))), false);
    return u_input.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_1(!func_3(Struct_1(!vec2<bool>(arg_0.a.x, arg_0.b), true), 50935u, vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, -16833i, u_input.a)), !func_3(arg_0, _wgslsmith_sub_u32(u_input.c | arg_2.x, u_input.c), -(u_input.d.xzx & u_input.d.xxw)).x);
    global0 = array<f32, 32>();
    let var_1 = arg_0;
    return !select(var_1.a, vec2<bool>(true && !arg_0.a.x, arg_0.b), !var_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = arg_2;
    var var_1 = vec3<bool>(all(!select(!vec4<bool>(arg_2.a.x, true, var_0.b, arg_2.a.x), !vec4<bool>(arg_3.b, arg_3.a.x, false, false), !vec4<bool>(arg_1.a.x, arg_1.a.x, true, true))), true, true);
    global0 = array<f32, 32>();
    return Struct_1(arg_3.a, !(select(u_input.c <= u_input.c, false, true) || var_0.a.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<f32, 32>();
    var var_0 = func_5(arg_3, Struct_1(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 32u)] + global0[_wgslsmith_index_u32(u_input.c, 32u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 32u)] + -1000f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(54235u, 32u)]) * global0[_wgslsmith_index_u32(u_input.c, 32u)])), Struct_1(arg_2.a, arg_1.b), Struct_1(func_4(Struct_1(select(vec2<bool>(true, arg_3.b), arg_3.a, arg_1.a), true), vec4<u32>(_wgslsmith_mult_u32(1u, u_input.c), _wgslsmith_add_u32(u_input.c, u_input.c), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19630u, 83590u), vec3<u32>(36544u, 0u, u_input.c))), firstTrailingBit(vec3<u32>(60625u, u_input.c, 4294967295u)) ^ select(vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<u32>(u_input.c, 26397u, u_input.c), true)), arg_1.a.x));
    var var_1 = global0[_wgslsmith_index_u32(0u, 32u)];
    let var_2 = all(arg_3.a);
    let var_3 = select(min(countOneBits(vec3<u32>(~21624u, max(u_input.c, 45908u), ~u_input.c)), ~countOneBits(vec3<u32>(1u, u_input.c, 993u))), ~vec3<u32>(min(u_input.c, ~1u), u_input.c, ~(~u_input.c)), select(vec3<bool>(!select(arg_3.b, arg_1.b, true), var_2, !(64912i > arg_0.x)), select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_2.b, arg_2.a.x, arg_1.a.x), vec3<bool>(arg_2.b, var_2, true), false), select(vec3<bool>(arg_3.a.x, false, true), vec3<bool>(true, true, true), select(vec3<bool>(arg_3.b, false, arg_1.b), vec3<bool>(false, var_2, var_2), arg_2.b))), u_input.d.x < -(i32(-1i) * -11006i)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    var var_0 = Struct_1(!func_1((u_input.d.yzw & u_input.d.yzw) | vec3<i32>(u_input.e.x, u_input.b, u_input.d.x), Struct_1(vec2<bool>(true, true), any(vec3<bool>(false, false, false))), Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(false, false), -450f < global0[_wgslsmith_index_u32(1u, 32u)])), !any(vec4<bool>(true, true, true, true)));
    var var_1 = func_5(Struct_1(vec2<bool>(!(u_input.c >= u_input.c), select(true, var_0.b && var_0.b, var_0.b)), true), func_5(Struct_1(func_4(func_5(Struct_1(vec2<bool>(var_0.b, var_0.b), var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(var_0.b, false), var_0.b), Struct_1(var_0.a, var_0.b)), firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, u_input.c)), !var_0.a.x), func_5(func_5(func_5(Struct_1(vec2<bool>(true, true), var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(var_0.a.x, var_0.b), false)), func_5(Struct_1(vec2<bool>(true, true), true), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(true, var_0.b), true), Struct_1(var_0.a, var_0.b)), Struct_1(vec2<bool>(var_0.a.x, false), false), func_5(Struct_1(var_0.a, false), Struct_1(var_0.a, true), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(var_0.b, true), true))), func_5(Struct_1(var_0.a, false), func_5(Struct_1(vec2<bool>(var_0.b, var_0.a.x), var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(true, var_0.a.x), var_0.b), Struct_1(var_0.a, var_0.a.x)), func_5(Struct_1(var_0.a, true), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.a.x)), func_5(Struct_1(vec2<bool>(var_0.b, var_0.a.x), true), Struct_1(vec2<bool>(true, var_0.b), var_0.b), Struct_1(vec2<bool>(false, false), var_0.b), Struct_1(var_0.a, false))), func_5(Struct_1(var_0.a, true), Struct_1(vec2<bool>(false, var_0.a.x), var_0.a.x), Struct_1(vec2<bool>(var_0.a.x, true), var_0.b), Struct_1(vec2<bool>(var_0.b, var_0.a.x), var_0.a.x)), func_5(func_5(Struct_1(var_0.a, true), Struct_1(vec2<bool>(false, true), true), Struct_1(var_0.a, false), Struct_1(var_0.a, true)), func_5(Struct_1(var_0.a, var_0.a.x), Struct_1(var_0.a, var_0.a.x), Struct_1(var_0.a, var_0.a.x), Struct_1(vec2<bool>(true, true), var_0.a.x)), func_5(Struct_1(var_0.a, true), Struct_1(vec2<bool>(var_0.a.x, var_0.b), var_0.b), Struct_1(vec2<bool>(true, var_0.b), var_0.a.x), Struct_1(var_0.a, var_0.a.x)), Struct_1(var_0.a, var_0.a.x))), Struct_1(vec2<bool>(!var_0.b, func_5(Struct_1(vec2<bool>(var_0.a.x, false), var_0.b), Struct_1(var_0.a, true), Struct_1(var_0.a, false), Struct_1(var_0.a, var_0.a.x)).a.x), !var_0.a.x), Struct_1(var_0.a, true)), func_5(Struct_1(!func_1(vec3<i32>(-1i, 2147483647i, u_input.e.x), Struct_1(vec2<bool>(false, var_0.b), true), Struct_1(vec2<bool>(true, var_0.a.x), var_0.b), Struct_1(vec2<bool>(false, var_0.a.x), true)), any(var_0.a)), Struct_1(func_4(func_5(Struct_1(vec2<bool>(var_0.a.x, true), var_0.a.x), Struct_1(var_0.a, false), Struct_1(vec2<bool>(var_0.b, var_0.b), true), Struct_1(var_0.a, true)), ~vec4<u32>(1u, 4294967295u, u_input.c, 12258u), vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(50825u, 1u, u_input.c)), false), func_5(Struct_1(func_4(Struct_1(vec2<bool>(var_0.a.x, var_0.b), var_0.b), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), vec3<u32>(0u, 4294967295u, u_input.c)), var_0.a.x), func_5(Struct_1(vec2<bool>(var_0.a.x, true), var_0.b), Struct_1(vec2<bool>(true, true), true), func_5(Struct_1(vec2<bool>(var_0.a.x, false), true), Struct_1(var_0.a, var_0.a.x), Struct_1(vec2<bool>(false, var_0.a.x), var_0.a.x), Struct_1(vec2<bool>(var_0.b, false), false)), Struct_1(vec2<bool>(false, false), var_0.b)), func_5(Struct_1(var_0.a, var_0.a.x), func_5(Struct_1(var_0.a, false), Struct_1(vec2<bool>(false, var_0.b), false), Struct_1(var_0.a, true), Struct_1(vec2<bool>(var_0.a.x, true), var_0.a.x)), Struct_1(vec2<bool>(var_0.b, var_0.a.x), var_0.a.x), func_5(Struct_1(vec2<bool>(var_0.a.x, var_0.b), var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(false, var_0.a.x), var_0.a.x), Struct_1(var_0.a, true))), Struct_1(!var_0.a, u_input.c == 0u)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)] < 234f, var_0.b), var_0.b)), Struct_1(func_1(abs(vec3<i32>(u_input.b, u_input.a, 23379i) | vec3<i32>(0i, u_input.b, u_input.b)), Struct_1(var_0.a, func_4(Struct_1(var_0.a, var_0.a.x), vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 9761u)).x), func_5(func_5(Struct_1(vec2<bool>(false, var_0.a.x), true), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(var_0.b, true), var_0.b), Struct_1(vec2<bool>(true, true), true)), func_5(Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(false, false), var_0.b), Struct_1(vec2<bool>(false, var_0.b), false)), Struct_1(var_0.a, false), Struct_1(var_0.a, var_0.a.x)), Struct_1(func_5(Struct_1(var_0.a, true), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.a.x), Struct_1(vec2<bool>(false, var_0.b), var_0.b)).a, false)), any(vec4<bool>(var_0.a.x, true, var_0.b, var_0.b))));
    let var_2 = Struct_1(!var_1.a, var_0.b);
    let var_3 = func_4(var_2, ~firstTrailingBit(vec4<u32>(~u_input.c, 63209u, 1u, u_input.c)), min(~(~vec3<u32>(u_input.c, u_input.c, 51925u) | vec3<u32>(u_input.c, u_input.c, 0u)), _wgslsmith_mod_vec3_u32(~(vec3<u32>(0u, u_input.c, 20482u) | vec3<u32>(0u, u_input.c, 19716u)), ~vec3<u32>(u_input.c, 1u, u_input.c) & select(vec3<u32>(4294967295u, 4294967295u, 36735u), vec3<u32>(u_input.c, u_input.c, 1u), vec3<bool>(var_2.b, var_2.a.x, var_1.a.x)))));
    let var_4 = !vec4<bool>(!var_0.a.x, true, !func_5(func_5(var_2, var_2, var_2, var_2), func_5(var_2, Struct_1(var_3, var_0.a.x), var_2, Struct_1(var_1.a, true)), func_5(var_2, Struct_1(var_3, true), var_2, Struct_1(vec2<bool>(var_1.b, var_1.a.x), false)), Struct_1(vec2<bool>(false, false), var_2.a.x)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 32u)])) != _wgslsmith_f_op_f32(f32(-1f) * -477f));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 6581u, _wgslsmith_sub_u32(38424u, u_input.c), 173u), ~vec4<u32>(0u, 4294967295u, u_input.c, u_input.c) << (~vec4<u32>(u_input.c, u_input.c, u_input.c, 115935u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1883u, u_input.c, 1u, 1u), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 20405u)))), vec2<u32>(countOneBits(~(u_input.c >> (u_input.c % 32u))), reverseBits(u_input.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(18473u, 1641u)), max(vec2<u32>(4294967295u, u_input.c), select(vec2<u32>(0u, u_input.c), vec2<u32>(1u, u_input.c), var_1.a))), u_input.c, 24839u, ~(~(~26349u))), ~firstTrailingBit(1u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(6041u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)]) + vec4<f32>(global0[_wgslsmith_index_u32(13019u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], 1793f, global0[_wgslsmith_index_u32(86565u, 32u)])) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], 1000f, global0[_wgslsmith_index_u32(1u, 32u)], -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-504f, -1541f, 1543f, 2400f) * vec4<f32>(249f, global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(2623f, 347f, global0[_wgslsmith_index_u32(u_input.c, 32u)], 1000f) * vec4<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 32u)], -102f, global0[_wgslsmith_index_u32(u_input.c, 32u)]))))))));
}

