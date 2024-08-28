struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(0i, 12673i, 10453i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_0 = vec3<i32>(~_wgslsmith_div_i32((global0[_wgslsmith_index_u32(arg_0, 4u)] >> (u_input.e % 32u)) << (u_input.e % 32u), 3548i), global0[_wgslsmith_index_u32(u_input.c & arg_0, 4u)] | ~global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0, 1u), 4u)], _wgslsmith_dot_vec4_i32(max(firstTrailingBit(-vec4<i32>(-1i, -42590i, 5400i, u_input.a)), -reverseBits(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 4u)], 21984i, 0i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-34711i, 1i, u_input.d, global0[_wgslsmith_index_u32(1u, 4u)]), max(vec4<i32>(-9104i, 1i, u_input.d, -2147483647i) & vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b), firstTrailingBit(vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)], -2147483647i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -38014i, global0[_wgslsmith_index_u32(u_input.e, 4u)], -16527i), vec4<i32>(global0[_wgslsmith_index_u32(78139u, 4u)], -2147483647i, u_input.d, 0i)))));
    var var_1 = countOneBits(~(-countOneBits(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 4u)], -1i, 4613i, var_0.x))));
    var var_2 = u_input.b;
    return Struct_1(arg_1.a);
}

fn func_3() -> f32 {
    global0 = array<i32, 4>();
    let var_0 = func_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.e), vec3<u32>(1u, 4294967295u, 1u)), ~4294967295u) & 0u, Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    global0 = array<i32, 4>();
    var var_1 = vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(u_input.e), u_input.c), u_input.e & countOneBits(33282u)) >> (~(~(~4294967295u)) % 32u), 4u)], ~(-firstLeadingBit(global0[_wgslsmith_index_u32(1u, 4u)])), u_input.a);
    var_1 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], var_1.x & firstLeadingBit(u_input.d), -(~global0[_wgslsmith_index_u32(47726u, 4u)]))), _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], var_1.x, global0[_wgslsmith_index_u32(u_input.e, 4u)])), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(0u, 4u)]), countOneBits(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(38505u, 4u)], 2147483647i, 28685i))), vec3<i32>(i32(-1i) * -1i, var_1.x, var_1.x))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-572f, _wgslsmith_f_op_f32(select(-386f, _wgslsmith_f_op_f32(1391f * _wgslsmith_f_op_f32(ceil(-281f))), (var_0.a && var_0.a) | true))), -386f));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = Struct_1((1f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(106f))))) & !(!all(vec2<bool>(false, false))));
    global0 = array<i32, 4>();
    var var_1 = func_1(countOneBits(u_input.c), var_0);
    var_1 = Struct_1(true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1216f, -346f, 1178f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, 1860f, -1759f, -954f) + vec4<f32>(-1761f, -590f, 2149f, 1299f)), false)) * vec4<f32>(_wgslsmith_f_op_f32(657f - -475f), -1066f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1663f))), vec4<f32>(1106f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 799f)), _wgslsmith_f_op_f32(1563f * -1000f), false && var_0.a)), 1f, 693f), true)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(526f, -681f)), _wgslsmith_f_op_f32(1000f - -372f), _wgslsmith_div_f32(-1059f, -866f), -108f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, -1000f, 241f, -775f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, -717f, -711f, -1562f)))))))));
    return _wgslsmith_div_u32(13200u, _wgslsmith_mod_u32(reverseBits(~68503u), ~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    var_0 = func_1(min(u_input.e, _wgslsmith_add_u32(~select(11988u, u_input.c, var_0.a), ~u_input.e)), Struct_1(!all(!vec2<bool>(var_0.a, false))));
    global0 = array<i32, 4>();
    var var_1 = func_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(792u, 838u, 40682u)), vec3<u32>(1u, 153498u, 58965u)), ~(~0u)) & func_2(0u, select(1i, u_input.b, true && var_0.a), ~2147483647i | u_input.b), Struct_1(true));
    var_0 = Struct_1(all(select(!vec2<bool>(var_0.a, false), vec2<bool>(var_1.a, !var_1.a), true)));
    var_1 = func_1(u_input.c, func_1(u_input.c, func_1(max(u_input.e, max(u_input.c, 62308u)), func_1(_wgslsmith_div_u32(28536u, u_input.c), Struct_1(false)))));
    var_0 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-13843i, global0[_wgslsmith_index_u32(u_input.e, 4u)], u_input.d), vec3<i32>(global0[_wgslsmith_index_u32(29u, 4u)], -29047i, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<i32>(22613i, global0[_wgslsmith_index_u32(4294967295u, 4u)], 11645i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(2717u, 4u)], -37972i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.e, 4u)], u_input.a)), -36855i, -2147483647i), vec3<i32>(u_input.a & -9014i, -38385i, _wgslsmith_sub_i32(u_input.a, global0[_wgslsmith_index_u32(8815u, 4u)]))));
}

