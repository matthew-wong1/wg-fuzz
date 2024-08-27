struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-12698i, -1i, -27693i, -24306i));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<i32>(1i, 0i, 1i, 1i)), Struct_1(vec4<i32>(15623i, 0i, -20720i, 9914i)), Struct_1(vec4<i32>(21250i, i32(-2147483648), -8042i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 16132i, 22117i, -1i)), Struct_1(vec4<i32>(0i, -1669i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(1i, 1156i, -1i, 15965i)), Struct_1(vec4<i32>(25103i, -1i, 2147483647i, 33955i)), Struct_1(vec4<i32>(6255i, 27840i, 0i, 12608i)), Struct_1(vec4<i32>(-9540i, 14470i, 55380i, 79370i)), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, 31163i, -20035i, 27848i)), Struct_1(vec4<i32>(1039i, -9741i, i32(-2147483648), 54839i)), Struct_1(vec4<i32>(-7415i, -46494i, 39416i, 9424i)), Struct_1(vec4<i32>(-1i, 60171i, 46485i, 8859i)), Struct_1(vec4<i32>(67965i, i32(-2147483648), 2147483647i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -10016i, 17050i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = global0.a.x;
    let var_1 = arg_1;
    var_0 = arg_1.a.a.x;
    var_0 = arg_1.a.a.x;
    let var_2 = _wgslsmith_sub_u32(~(~abs(1u) ^ u_input.b), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d));
    return _wgslsmith_mod_vec2_i32(abs(~vec2<i32>(global0.a.x, 2147483647i)), global1.a.zy) << ((u_input.d & reverseBits(~_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.d))) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.b, 16u)]);
    var var_1 = reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_0.a.a.yz, vec2<i32>(2147483647i, 2147483647i) >> (_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.d) % vec2<u32>(32u))), max(global0.a.yz, func_3(u_input.b, Struct_2(Struct_1(var_0.a.a))))));
    var var_2 = Struct_2(Struct_1(global0.a));
    var_1 = u_input.e;
    var var_3 = Struct_1(~select(var_2.a.a, vec4<i32>(var_2.a.a.x, u_input.e.x & global1.a.x, -62984i, -1i), true));
    return Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a.x, 0i, ~global1.a.x, countOneBits(-15923i)), global1.a)));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(0u, max(u_input.a.x, u_input.a.x)) & countOneBits(~18164u), u_input.d.x));
    global0 = func_2().a;
    let var_2 = vec3<bool>(true, !(!all(vec2<bool>(true, true))), false);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, reverseBits(_wgslsmith_mod_u32(var_1.x, var_1.x))), 16u)];
    return vec4<bool>(all(var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + _wgslsmith_f_op_f32(-arg_1))), all(vec3<bool>(true, !var_2.x, var_2.x)), var_2.x);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(global1.a);
    var var_1 = func_2();
    var var_2 = 4853u;
    var_2 = 0u;
    var var_3 = Struct_1(-global1.a | abs(-vec4<i32>(global0.a.x, -1i, -1i, arg_3.a.x)));
    return Struct_2(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    var var_0 = 4294967295u;
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)))) < _wgslsmith_f_op_f32(f32(-1f) * -143f), false);
    var var_2 = func_4(32096u, 11215u, func_1(global1.a.x, _wgslsmith_f_op_f32(abs(-232f))), func_2().a);
    let var_3 = vec2<u32>(reverseBits(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))) & (reverseBits(min(u_input.d.x, u_input.a.x)) >> (24181u % 32u)), u_input.a.x);
    global2 = array<Struct_1, 16>();
    var var_4 = u_input.a;
    var_1 = select(vec2<bool>(any(!func_1(1i, -614f).yx), var_1.x), !select(vec2<bool>(true, var_1.x), select(!vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), vec2<bool>(var_1.x, true)), false), var_1.x), vec2<bool>(!(!all(vec4<bool>(true, var_1.x, var_1.x, var_1.x))), true));
    global2 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -919f, -264f, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(828f)) * _wgslsmith_f_op_f32(trunc(544f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-656f * -1470f), -1253f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-304f)) * -160f), -1000f)), global0.a.x);
}

