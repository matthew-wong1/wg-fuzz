struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, false, true, true, false, false, false, false, true, true);

var<private> global1: vec2<f32> = vec2<f32>(984f, -422f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = 83753i;
    var var_1 = true;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(899f + 1119f)), 1048f), vec2<f32>(258f, global1.x))));
    var_1 = any(!select(vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(53013u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(90001u, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)], true)), false, 1449f <= global1.x), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), false));
    global1 = vec2<f32>(-215f, global1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1574f) + vec2<f32>(-1765f, global1.x))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    let var_0 = vec3<bool>(!(!(!arg_0.x)), true, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1685f))))) * -340f) + 826f);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, 488f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -1195f), vec2<f32>(1008f, -565f)))) - _wgslsmith_f_op_vec2_f32(func_3(-2147483647i))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c * global1.x), arg_1.c), _wgslsmith_f_op_f32(global1.x - global1.x))) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), -546f)))));
    var var_2 = !arg_1.d.a.xyw;
    let var_3 = abs(max(arg_1.a, select(-arg_1.a, arg_1.a, false)));
    return global0[_wgslsmith_index_u32(52945u, 11u)];
}

fn func_1() -> i32 {
    global0 = array<bool, 11>();
    var var_0 = ~u_input.c;
    let var_1 = all(select(vec2<bool>(select(true, true, func_2(vec3<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(var_0.x, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), Struct_2(vec4<i32>(-2147483647i, -1i, 1i, -1i), global0[_wgslsmith_index_u32(0u, 11u)], -1361f, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)], false, global0[_wgslsmith_index_u32(u_input.b, 11u)], false))), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)], true, true, true))), global0[_wgslsmith_index_u32(~7536u, 11u)]), select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false), false), !select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(var_0.x, 11u)]), global0[_wgslsmith_index_u32(var_0.x, 11u)]), global0[_wgslsmith_index_u32(min(var_0.x, 70913u) & _wgslsmith_add_u32(var_0.x, 0u), 11u)]), vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false)), true)));
    let var_2 = vec2<i32>(-_wgslsmith_div_i32(1i, 26559i), ~firstLeadingBit(~(-19828i)) >> (~firstTrailingBit(var_0.x) % 32u));
    var_0 = ~u_input.c;
    return 18732i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = select(vec2<i32>(4528i | func_1(), ~(~select(-1i, 1280i, global0[_wgslsmith_index_u32(u_input.a, 11u)]))), -max(vec2<i32>(~2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i) << (u_input.c.ww % vec2<u32>(32u)), ~vec2<i32>(67175i, 1i), reverseBits(vec2<i32>(4740i, 2786i)))), !(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(14735u, 11u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(60225u, 11u)])))));
    global0 = array<bool, 11>();
    var var_2 = var_1.x;
    let var_3 = Struct_1(select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(39909u, 11u)], global0[_wgslsmith_index_u32(21145u, 11u)], true, global0[_wgslsmith_index_u32(14849u, 11u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(26199u, 11u)], true), false), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(25330u, 11u)], false), !vec4<bool>(true, global0[_wgslsmith_index_u32(89312u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(70019u, 11u)], global0[_wgslsmith_index_u32(1032u >> (u_input.a % 32u), 11u)], func_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], true), Struct_2(vec4<i32>(-2147483647i, 2147483647i, var_1.x, -1i), global0[_wgslsmith_index_u32(u_input.b, 11u)], 1041f, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(43686u, 11u)], true, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(69077u, 11u)]))), vec4<bool>(false, false, global0[_wgslsmith_index_u32(33983u, 11u)], global0[_wgslsmith_index_u32(92279u, 11u)])), false || global0[_wgslsmith_index_u32(33674u, 11u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(38990u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(69588u, 11u)], global0[_wgslsmith_index_u32(34463u, 11u)]), true), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(60011u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, false, global0[_wgslsmith_index_u32(1u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(18904u, 11u)], true, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(23596u, 11u)])), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(72007u, 11u)]))), select(select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 11u)], false, global0[_wgslsmith_index_u32(31446u, 11u)])), global0[_wgslsmith_index_u32(u_input.a | 4294967295u, 11u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 11u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], false), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)])), vec4<bool>(false, global0[_wgslsmith_index_u32(69392u, 11u)], false, false)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], false, global0[_wgslsmith_index_u32(895u, 11u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, false, true)));
    let var_4 = ~u_input.c.wx ^ ~(~abs(~u_input.c.xz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_f32(-global1.x)), (53106u | _wgslsmith_sub_u32(1u, 1510u & var_4.x)) & min(var_4.x, abs(~1u)), vec4<u32>(_wgslsmith_add_u32(1u, u_input.a), firstTrailingBit(~_wgslsmith_mult_u32(75486u, u_input.c.x)), _wgslsmith_dot_vec2_u32(var_4, var_4), select(0u, countOneBits(_wgslsmith_mult_u32(var_4.x, 18241u)), var_3.a.x)), _wgslsmith_f_op_f32(-global1.x));
}

