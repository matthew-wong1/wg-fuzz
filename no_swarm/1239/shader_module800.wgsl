struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    global0 = array<vec4<u32>, 12>();
    global1 = array<vec2<i32>, 6>();
    let var_0 = any(!vec2<bool>(any(vec2<bool>(true, true)), !any(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1662f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-272f, _wgslsmith_f_op_f32(f32(-1f) * -1768f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)))));
    global2 = array<Struct_1, 19>();
    return arg_1;
}

fn func_3() -> bool {
    var var_0 = -vec2<i32>(_wgslsmith_sub_i32(~(~u_input.a), ~abs(2147483647i)), _wgslsmith_div_i32(~(-2147483647i), 42035i));
    global0 = array<vec4<u32>, 12>();
    global2 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_f32(floor(746f));
    var var_2 = func_1(Struct_2(4294967295u, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(9259u, 0u), ~19453u), 19u)]), func_1(Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(93079u, 0u, 1757u)), global2[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_1(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 24512i, -2147483647i, -47660i), vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x)), 16021i, 1i), vec3<i32>(-1i, i32(-1i) * -47566i, abs(25756i))), vec4<u32>(max(13310u, firstLeadingBit(1u)), 1u, 78444u << (_wgslsmith_div_u32(1u, 1u) % 32u), 1u), -1i), ~global0[_wgslsmith_index_u32(0u, 12u)], select(_wgslsmith_sub_i32(var_0.x, 1i), var_0.x, true));
    return all(select(select(vec2<bool>(any(vec3<bool>(false, true, false)), false), vec2<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, false, false))), true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b.x;
    global1 = array<vec2<i32>, 6>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f), -1000f))));
    global2 = array<Struct_1, 19>();
    var var_2 = select(select(vec4<bool>(!func_3(), any(vec2<bool>(true, false)), true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), func_3()), select(vec4<bool>(false, any(vec4<bool>(true, false, true, true)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, false))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-235f, 1578f)) > _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(299f, -766f), _wgslsmith_f_op_f32(trunc(985f))))), true);
    return -487f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2288f, -252f, -1538f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(622f, -527f, 828f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, -388f, 284f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1699f, -531f, 787f), vec3<f32>(-754f, 449f, 1034f))))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1u, func_1(Struct_2(1u, Struct_1(vec4<i32>(0i, u_input.a, 0i, 20355i), vec3<i32>(2147483647i, u_input.a, u_input.a))), global2[_wgslsmith_index_u32(0u, 19u)], vec4<u32>(39841u, 14023u, 0u, 5803u), -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 798f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(822f, -273f))))));
    global1 = array<vec2<i32>, 6>();
    let var_2 = Struct_1(_wgslsmith_add_vec4_i32(-select(select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, 2147483647i, 1i, u_input.a), vec4<bool>(false, true, var_0, var_0)), -vec4<i32>(1i, u_input.a, -1i, u_input.a), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, false, var_0, var_0), var_0)), vec4<i32>(-1i) * -(~vec4<i32>(-246i, u_input.a, 1i, u_input.a))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -42239i) >> (~vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-29217i, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, 37103i)), vec3<i32>(u_input.a, u_input.a, -30793i) ^ vec3<i32>(2147483647i, 331i, u_input.a), abs(vec3<i32>(-12549i, u_input.a, u_input.a)))));
    global0 = array<vec4<u32>, 12>();
    let var_3 = 17984u ^ min(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(global0[_wgslsmith_index_u32(0u, 12u)])), 0u);
    global0 = array<vec4<u32>, 12>();
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_3, 62699u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(var_3, var_3), vec2<u32>(var_3, var_3)), ~abs(vec2<u32>(41078u, var_3))), ~(~vec2<u32>(var_3, 42068u))), func_1(Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(67094u, var_3), vec2<u32>(0u, var_3)), ~vec2<u32>(var_3, 0u)), global2[_wgslsmith_index_u32(var_3, 19u)]), func_1(Struct_2(_wgslsmith_mod_u32(1u, 12441u), Struct_1(var_2.a, var_2.a.yyw)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(24060u, 8208u, var_3), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_3, var_3), vec3<u32>(var_3, 1u, 39894u))), 19u)], select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_3, 72708u, var_3), global0[_wgslsmith_index_u32(var_3, 12u)]), select(vec4<u32>(var_3, 46910u, 4294967295u, var_3), vec4<u32>(69444u, var_3, 0u, 49561u), false), var_1.x < var_1.x), var_2.b.x), vec4<u32>(0u, ~var_3, 0u, 8218u) ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3, 4294967295u, var_3, 53830u), vec4<u32>(var_3, var_3, var_3, 1u)), ~global0[_wgslsmith_index_u32(var_3, 12u)]), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~countOneBits(_wgslsmith_sub_i32(var_2.b.x, 1i))), global0[_wgslsmith_index_u32(var_4.a, 12u)] & abs(~_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(var_3, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_2(var_3, global2[_wgslsmith_index_u32(0u, 19u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - -239f), var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -2633f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(var_4.a, Struct_1(var_4.b.a, var_2.b)))))))));
}

