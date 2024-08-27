struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-734f, 1933f, -259f, 439f, -930f, -264f, -1372f, 597f, 1727f, 119f, -239f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, min(_wgslsmith_clamp_i32(17102i, var_0.x, var_0.x), 2147483647i), var_0.x ^ select(-2317i, var_0.x, arg_3.b), -1i), arg_1);
    var_1 = -var_0.x;
    var var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(select(~reverseBits(vec4<u32>(arg_0, 11125u, u_input.a.x, u_input.a.x)), abs(firstLeadingBit(vec4<u32>(4294967295u, arg_0, 31954u, 13176u))), arg_3.b)), ~_wgslsmith_mult_vec4_u32(min(firstLeadingBit(vec4<u32>(u_input.b.x, 256u, arg_0, 3816u)), vec4<u32>(u_input.a.x, arg_0, arg_0, 0u) >> (vec4<u32>(arg_0, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u))), select(vec4<u32>(arg_0, u_input.a.x, arg_0, 5945u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, 60183u, arg_0), vec4<u32>(u_input.a.x, arg_0, 73416u, arg_0)), true)));
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b.yy, u_input.a), vec2<u32>(4294967295u, arg_0) << (_wgslsmith_add_vec2_u32(u_input.b.yy, vec2<u32>(26171u, 4294967295u)) % vec2<u32>(32u))));
    return arg_3.b & !all(!vec4<bool>(arg_3.b, false, true, false));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.a.x, arg_0.a.x, 368f) + _wgslsmith_div_vec4_f32(vec4<f32>(-756f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 819f, arg_0.a.x), arg_0.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(34226u, 11u)]), -948f))), arg_0.b);
    global0 = array<f32, 11>();
    let var_1 = _wgslsmith_mult_u32(u_input.b.x & 5749u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, 0u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(379f, 823f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-376f, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))), var_0.a.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(108366u, 11u)], 285f, -823f, -1000f), vec4<f32>(129f, -854f, 143f, var_0.a.x))), var_0.a, vec4<bool>(!arg_0.b, all(vec4<bool>(arg_0.b, var_0.b, arg_0.b, var_0.b)), var_0.b, func_3(u_input.a.x, vec4<i32>(1i, 11101i, 32727i, -18202i), 2183f, Struct_1(vec4<f32>(-1000f, -1910f, -1212f, 626f), false)))))));
    return reverseBits(1i);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_0 = firstLeadingBit(reverseBits(vec4<u32>(4294967295u, ~0u, 1u, 4294967295u))) & select(_wgslsmith_mult_vec4_u32(~vec4<u32>(53267u, u_input.a.x, 14346u, u_input.b.x), ~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x) << (vec4<u32>(20961u, 4219u, 1u, 585u) % vec4<u32>(32u)))), vec4<u32>((u_input.b.x << (59185u % 32u)) ^ reverseBits(u_input.a.x), ~(~u_input.b.x), u_input.a.x & ~1u, 915u), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), -564f <= global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), (u_input.b.x | 2589u) != 0u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 479f, -698f, 1000f) + vec4<f32>(global0[_wgslsmith_index_u32(50164u, 11u)], -444f, -1000f, global0[_wgslsmith_index_u32(24999u, 11u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(var_0.x, 11u)], -189f, -1839f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(85981u, 11u)] * global0[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_f32(sign(-1030f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) + 1003f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(56925u, 11u)])), -196f)), !select(!(global0[_wgslsmith_index_u32(var_0.x, 11u)] != -1812f), false, all(vec3<bool>(true, true, false))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(1214f));
    let var_1 = true;
    return func_4(vec3<i32>(1i & (-2147483647i & func_2(Struct_1(vec4<f32>(-811f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), var_1))), -41108i, -1i));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 42804u, u_input.a.x), ~u_input.b) | vec3<u32>(~u_input.b.x, 41613u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), _wgslsmith_mult_vec3_u32(abs(u_input.b), u_input.b)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b.x) % vec4<u32>(32u))), max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 386u, u_input.b.x), vec4<u32>(u_input.b.x, 18004u, u_input.a.x, u_input.b.x)), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 4294967295u))), u_input.a.x << (countOneBits(max(41022u, u_input.a.x)) % 32u)));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<i32>(2147483647i, -845i, 14017i)).a.x * arg_0.a.x), _wgslsmith_f_op_f32(floor(func_1().a.x)))));
    var var_3 = func_4(~vec3<i32>(1i, 1i, 1i));
    var var_4 = _wgslsmith_f_op_f32(-362f + global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(u_input.a.x | 10459u), ~30656u), 11u)]);
    return StorageBuffer(-1251f, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 8897i), func_2(arg_0), ~(-12901i)) >> (vec3<u32>(~0u, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), min(countOneBits(vec3<i32>(-19282i, 1i, -1i) << (vec3<u32>(var_0, u_input.a.x, 4542u) % vec3<u32>(32u))), vec3<i32>(~14171i, abs(39490i), 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = func_5(func_1(), true && !(true || select(true, false, false)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)] + 867f)), 961f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~29293u, 11u)] - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 11u)]))), global0[_wgslsmith_index_u32(10947u, 11u)]), all(vec3<bool>(false, false, false)) & true));
}

