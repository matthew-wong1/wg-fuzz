struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(32562i, -37700i), Struct_1(-3263i, i32(-2147483648)), Struct_1(0i, 8242i), Struct_1(-41310i, 1i), Struct_1(i32(-2147483648), 2147483647i), Struct_1(-1i, 0i), Struct_1(30872i, 46403i), Struct_1(-16629i, i32(-2147483648)), Struct_1(-39240i, i32(-2147483648)));

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 9u)];
    global1 = -2147483647i;
    global0 = array<Struct_1, 9>();
    var var_1 = all(!vec4<bool>(any(vec2<bool>(true, true)), true, true, all(vec2<bool>(false, false)))) | true;
    var_1 = true;
    return -select(select(max(select(vec3<i32>(-48827i, -2147483647i, var_0.a), vec3<i32>(var_0.b, -6859i, 1i), vec3<bool>(true, false, false)), vec3<i32>(var_0.b, var_0.b, var_0.b) | vec3<i32>(var_0.b, 2147483647i, var_0.b)), ~vec3<i32>(var_0.a, var_0.b, var_0.a), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec3<i32>(_wgslsmith_mult_i32(var_0.b, var_0.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b, 1i, -2147483647i, 1990i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, 1i, 0i), vec4<i32>(24799i, 0i, -19257i, var_0.a))), -var_0.b), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x) == arg_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), -358f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -489f, 582f))))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x), -911f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-266f, 1395f, 949f), vec3<f32>(var_1.x, -1000f, -1175f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 375f, -354f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, 226f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -810f, -313f), vec3<f32>(var_1.x, 1010f, var_1.x)))))));
    var var_2 = min(abs(select(func_3(vec2<f32>(-213f, -1000f)), reverseBits(vec3<i32>(arg_1.b, 11845i, 39551i)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) ^ abs(vec3<i32>(2147483647i, 2147483647i, -9887i))), vec3<i32>(-2147483647i, -_wgslsmith_dot_vec3_i32(-vec3<i32>(-17362i, -64688i, -30521i), ~vec3<i32>(arg_0.a, arg_1.a, 53340i)), reverseBits(arg_1.a)));
    var var_3 = select(!vec4<bool>(u_input.b > u_input.b, true, true, arg_0.b > 26065i), select(!vec4<bool>(false, all(vec2<bool>(true, true)), true, true), !vec4<bool>(true, select(true, true, false), true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), select(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), u_input.a.x == 4294967295u)), false));
    return ~firstLeadingBit(var_2.xx);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, u_input.a.x) | 4294967295u, u_input.a.x), 9u)];
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-(i32(-1i) * -2147483647i), -var_0.a | _wgslsmith_dot_vec2_i32(vec2<i32>(50816i, arg_0.b), vec2<i32>(0i, arg_2.b))), ~func_2(Struct_1(1i, -5199i), arg_1)), -abs(-vec2<i32>(arg_0.a, -669i)));
    var var_2 = countOneBits(arg_2.a);
    global0 = array<Struct_1, 9>();
    global1 = -arg_1.a;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(min(-1098f, _wgslsmith_f_op_f32(-568f - -1180f)));
    global1 = _wgslsmith_div_i32(1i, -(~_wgslsmith_add_i32(func_1(global0[_wgslsmith_index_u32(u_input.b, 9u)], Struct_1(2147483647i, 33775i), Struct_1(-1i, 828i), false), ~1i)));
    global0 = array<Struct_1, 9>();
    global1 = 24622i;
    var var_2 = vec3<i32>(0i, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, 10167i), ~66757i) << (u_input.b % 32u), func_2(Struct_1(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -7373i, 0i), vec3<i32>(59276i, -2147483647i, 20227i))), Struct_1(-1i, -40169i << (u_input.a.x % 32u))).x & func_1(global0[_wgslsmith_index_u32(select(u_input.b, u_input.b & 1u, true), 9u)], global0[_wgslsmith_index_u32(~1u, 9u)], Struct_1(-2147483647i, 0i), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.a.x), true)), ~(~4294967295u)) >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 1u, 19652u)), u_input.a) % 32u), var_1);
}

