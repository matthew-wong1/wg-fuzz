struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(i32(-2147483648), 2147483647i, -1407f), Struct_1(-1i, 0i, 245f), Struct_1(-35367i, 2147483647i, 1214f), Struct_1(i32(-2147483648), -10902i, 1000f), Struct_1(2147483647i, -18633i, 322f), Struct_1(-36774i, 1715i, 214f), Struct_1(586i, -7337i, 654f), Struct_1(76851i, 952i, 203f), Struct_1(-16943i, -12093i, -735f), Struct_1(48429i, i32(-2147483648), 1042f), Struct_1(27577i, i32(-2147483648), 1213f), Struct_1(1i, -1i, -1356f), Struct_1(i32(-2147483648), 1i, 968f), Struct_1(2147483647i, 0i, -240f), Struct_1(i32(-2147483648), 980i, 1316f), Struct_1(-1i, 29768i, 358f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(true, false, false)))), false, !all(vec2<bool>(true, true)), false);
    let var_1 = vec4<bool>(true | any(!(!vec4<bool>(true, false, var_0.x, true))), true, var_0.x, true);
    let var_2 = Struct_1(47109i, _wgslsmith_dot_vec3_i32(~vec3<i32>(34171i, 1i, -u_input.a), min(reverseBits(vec3<i32>(u_input.a, -47513i, u_input.a)) & (vec3<i32>(2147483647i, u_input.a, u_input.a) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, 20503i, u_input.a)), -vec3<i32>(u_input.a, -30517i, 1i)))), _wgslsmith_f_op_f32(f32(-1f) * -724f));
    let var_3 = _wgslsmith_div_vec4_i32(-vec4<i32>(abs(select(u_input.a, -18444i, var_1.x)), -var_2.b, _wgslsmith_add_i32(1i, var_2.b | u_input.a), -7103i), firstLeadingBit(abs(reverseBits(vec4<i32>(var_2.b, 1i, 1i, var_2.a) | vec4<i32>(-24282i, u_input.a, u_input.a, var_2.a)))));
    return var_2.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> vec4<i32> {
    global0 = array<Struct_1, 16>();
    let var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~countOneBits(vec4<u32>(1u, 42834u, 11317u, 4294967295u)))), 16u)];
    let var_1 = ~_wgslsmith_add_i32(~30102i, _wgslsmith_div_i32(20340i, _wgslsmith_mult_i32(-12741i, -1i)));
    let var_2 = vec3<bool>(true, arg_0.x || true, true);
    var var_3 = Struct_1(var_0.a, _wgslsmith_mult_i32(-max(abs(-19383i), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(5794i, var_1, -1i), select(vec3<i32>(var_1, 1i, var_1), vec3<i32>(-26399i, 5218i, 30934i), vec3<bool>(var_2.x, var_2.x, arg_2))) << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, 729f, true)) + var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-var_0.c)), false)) + var_0.c));
    return countOneBits(min(vec4<i32>(-43810i, 24374i, -7408i, arg_1.x) << (vec4<u32>(101587u, 34318u, 59528u, 0u) % vec4<u32>(32u)), ~vec4<i32>(var_1, 24641i, u_input.a, var_0.b)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_sub_i32(u_input.a, -32826i), -32074i, ~abs(countOneBits(arg_3)), -2147483647i);
}

fn func_1() -> u32 {
    let var_0 = -min(~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 47487i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)) >> (vec4<u32>(1u, 4294967295u, 50519u, 7795u) % vec4<u32>(32u))), -func_2(vec3<bool>(true, true, true), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1036i)), true, ~u_input.a));
    global0 = array<Struct_1, 16>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u), select(1u, select(76129u, ~60267u, true), all(vec3<bool>(true, true, any(vec3<bool>(false, false, false)))))), 16u)];
    let var_2 = abs(~_wgslsmith_mult_u32(0u, 1u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(802f, var_1.c, var_1.c, -1155f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, var_1.c, 457f, var_1.c)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-185f, 117f, 852f, var_1.c), vec4<f32>(191f, -154f, var_1.c, var_1.c))))), vec4<f32>(249f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(723f, var_1.c, false)))), -934f, -570f)));
    return reverseBits(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(64787u, 4294967295u), 16u)];
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(~(-8304i), ~u_input.a, var_0.b & -1i, u_input.a), select(vec4<i32>(var_0.a, min(18175i, 1i), _wgslsmith_add_i32(u_input.a, var_0.a), u_input.a), -vec4<i32>(var_0.a, u_input.a, var_0.b, -2147483647i), vec4<bool>(true, true, true, true))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_mod_i32(2147483647i, 1i)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.a, -29827i)), vec2<i32>(u_input.a, 7486i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1246f))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_1(), -(~var_1.b), select(~reverseBits(~4294967295u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(18658u, 50755u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 37254u), vec3<u32>(1u, 1u, 0u))) ^ 1u, true));
}

