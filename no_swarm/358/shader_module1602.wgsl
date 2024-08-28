struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(10748i, vec4<i32>(29219i, 76070i, 47128i, -7615i)), Struct_1(-27823i, vec4<i32>(-2147i, -13507i, 0i, 42433i)), Struct_1(-1i, vec4<i32>(0i, -10121i, i32(-2147483648), 8746i)), Struct_1(-4614i, vec4<i32>(1i, -23590i, 1577i, 2147483647i)), Struct_1(2147483647i, vec4<i32>(14760i, 31119i, 16917i, 0i)), Struct_1(-2591i, vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i)), Struct_1(1i, vec4<i32>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648))), Struct_1(22502i, vec4<i32>(10184i, -16649i, 22069i, 0i)), Struct_1(64335i, vec4<i32>(-310i, 1i, 2147483647i, 2147483647i)), Struct_1(8864i, vec4<i32>(-39316i, -5041i, 0i, 1i)), Struct_1(722i, vec4<i32>(0i, i32(-2147483648), 0i, 27577i)), Struct_1(7560i, vec4<i32>(-1i, -5347i, 0i, -1i)), Struct_1(10256i, vec4<i32>(-5896i, 0i, i32(-2147483648), 0i)), Struct_1(-44191i, vec4<i32>(36483i, -5586i, 1i, -1i)), Struct_1(19628i, vec4<i32>(-73206i, 7098i, -9985i, 2147483647i)), Struct_1(-7019i, vec4<i32>(i32(-2147483648), 52747i, -11830i, 1i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = 30308i;
    var var_1 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1.b.x, -2147483647i), arg_2.a, arg_1.b.x) | 1i, vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(~(~arg_1.b.x)), -2147483647i, firstLeadingBit(_wgslsmith_add_i32(-var_0, var_0 >> (4294967295u % 32u)))));
    return true;
}

fn func_3() -> i32 {
    let var_0 = vec4<bool>(true, !all(vec2<bool>(all(vec3<bool>(false, false, false)), false)), false, true);
    let var_1 = !vec4<bool>(true, var_0.x, any(vec4<bool>(true, true, true, false)) && var_0.x, true);
    let var_2 = global0[_wgslsmith_index_u32(13462u, 16u)];
    global0 = array<Struct_1, 16>();
    let var_3 = Struct_1(i32(-1i) * -2147483647i, var_2.b);
    return -var_3.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2563f + _wgslsmith_f_op_f32(201f - 218f)), 1375f)), -319f)), _wgslsmith_f_op_f32(sign(1084f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -607f)));
    var var_1 = -3203i;
    var_0 = vec3<f32>(1649f, _wgslsmith_f_op_f32(abs(-1787f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-269f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1267f) * _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = Struct_1(max(_wgslsmith_add_i32(~0i, 2147483647i), ~arg_0.a), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-39184i), 0i), max(func_3(), 0i)), _wgslsmith_dot_vec2_i32(abs(arg_0.b.xy), ~(~arg_0.b.xx)), -_wgslsmith_mod_i32(~arg_0.b.x, -arg_0.a), (select(arg_0.a, arg_0.b.x, true) ^ -45018i) & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.x, 0i, -1i, 45433i), arg_0.b), ~vec4<i32>(arg_0.b.x, arg_0.a, -26050i, -37183i))));
    var_1 = -1i;
    return global0[_wgslsmith_index_u32(6903u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    var var_0 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, func_1(u_input.a, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(21866u, 16u)]), true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(func_1(u_input.a, global0[_wgslsmith_index_u32(~u_input.a, 16u)], func_2(Struct_1(2147483647i, vec4<i32>(-18205i, -1i, 2147483647i, -2147483647i)))), true, false));
    var_0 = vec3<bool>(var_0.x, func_1(u_input.a, func_2(func_2(Struct_1(2147483647i, vec4<i32>(0i, -66112i, 49994i, -2147483647i)))), func_2(global0[_wgslsmith_index_u32(~u_input.a, 16u)])) != !(u_input.a <= _wgslsmith_mult_u32(0u, 21543u)), var_0.x);
    var var_1 = !(!(select(true, var_0.x, func_1(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 16u)], Struct_1(43039i, vec4<i32>(1181i, 41000i, -5464i, 50890i)))) | (!var_0.x & (var_0.x & false))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1125f + -628f), _wgslsmith_f_op_f32(-821f + -1000f)), _wgslsmith_f_op_f32(sign(1000f)), var_0.x & true)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1088f - _wgslsmith_f_op_f32(step(306f, 913f))))), _wgslsmith_div_f32(-304f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -1176f))), -18345i);
}

