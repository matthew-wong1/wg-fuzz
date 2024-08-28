struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true));

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-6832i, -45934i), vec2<i32>(-1i, -1245i), vec2<i32>(-222i, 0i), vec2<i32>(-29123i, 1i), vec2<i32>(23449i, 20066i), vec2<i32>(22214i, i32(-2147483648)), vec2<i32>(46047i, -28741i), vec2<i32>(1i, 30104i), vec2<i32>(33338i, -1i), vec2<i32>(-32698i, 1i), vec2<i32>(35550i, 64546i), vec2<i32>(59780i, 15964i), vec2<i32>(-4555i, -10630i), vec2<i32>(2147483647i, -59997i), vec2<i32>(833i, i32(-2147483648)), vec2<i32>(12037i, -7511i));

var<private> global2: array<vec3<bool>, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<u32> {
    global2 = array<vec3<bool>, 4>();
    let var_0 = !(!any(global0[_wgslsmith_index_u32(reverseBits(~u_input.a), 2u)]));
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 16u)])), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, -50634i), ~global1[_wgslsmith_index_u32(u_input.a, 16u)]), -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 16u)])));
    return ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(42570u, u_input.a), 0u), u_input.a), max(~(~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 9988u), vec2<u32>(u_input.a, 4294967295u)) & ~vec2<u32>(u_input.a, u_input.a)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    let var_0 = !(!select(select(arg_1, select(vec4<bool>(arg_1.x, false, arg_2.x, false), vec4<bool>(true, arg_2.x, false, arg_2.x), false), arg_2), arg_1, arg_2.x));
    var var_1 = !var_0.xx;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    var var_4 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    return var_3;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    global0 = array<vec4<bool>, 2>();
    global1 = array<vec2<i32>, 16>();
    let var_0 = 0u;
    global0 = array<vec4<bool>, 2>();
    var var_1 = ~vec2<u32>(19528u, _wgslsmith_mod_u32(~(~10501u), ~33273u));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)) && select(true, true, true), any(vec2<bool>(true, true)), true & (_wgslsmith_div_f32(-1206f, -889f) >= _wgslsmith_f_op_f32(select(1122f, 690f, false))), all(vec2<bool>(true, all(global2[_wgslsmith_index_u32(var_0.x, 4u)]))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2134f)));
    var var_3 = Struct_5(func_3(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_2, select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), reverseBits(-45258i)))), Struct_4(Struct_1(vec2<f32>(var_2, 305f), true), true), ~var_0.x), select(select(!select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1, vec4<bool>(true, true, true, var_1.x)), select(vec4<bool>(false, false, var_1.x, var_1.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 22185u, u_input.a), vec3<u32>(20463u, u_input.a, 1u)), 2u)], var_1.x), !var_1), !(!(!var_1)), select(var_1, !vec4<bool>(var_1.x, true, true, var_1.x), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))));
    var var_4 = 1820u;
    var var_5 = vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(abs(var_0), var_0, true), vec2<u32>(u_input.a, 4294967295u)), ~var_0), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), u_input.a) & ~4294967295u, max(1u, ~u_input.a) >> (func_1().x % 32u)), 9413u);
    var var_6 = Struct_3(Struct_2(var_3.a.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-327f, _wgslsmith_f_op_f32(1608f * var_3.a.a.a.x), var_3.a.a.a.x, _wgslsmith_f_op_f32(var_2 + -1000f)))), false), -_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(1i, 1i, 1i, 1i))), var_3.b.yw, var_3.a.a.b, _wgslsmith_dot_vec2_u32(var_0, min(abs(vec2<u32>(1u, u_input.a)), max(~var_5.xz, ~var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_5.x, vec3<u32>(~_wgslsmith_mod_u32(u_input.a, firstLeadingBit(0u)), 41823u, 4294967295u), select(select(_wgslsmith_sub_i32(~(-1i), _wgslsmith_mult_i32(var_6.b, 1i)), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(var_5.x, 16u)] ^ vec2<i32>(var_6.b, var_6.b), _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(1u, 16u)], vec2<i32>(-24630i, -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 16u)])), select(any(var_3.b), any(vec2<bool>(var_3.b.x, var_1.x)), any(var_1))), firstTrailingBit(_wgslsmith_div_i32(2147483647i, -44503i)) << (~_wgslsmith_mult_u32(48399u, var_0.x) % 32u), false), _wgslsmith_dot_vec3_i32(vec3<i32>(-min(-2147483647i, -23011i), 2147483647i, 8285i), select(vec3<i32>(_wgslsmith_mult_i32(0i, var_6.b), 0i, var_6.b & var_6.b), vec3<i32>(firstLeadingBit(-17788i), _wgslsmith_dot_vec2_i32(vec2<i32>(6308i, -31507i), global1[_wgslsmith_index_u32(var_0.x, 16u)]), _wgslsmith_mod_i32(var_6.b, 16362i)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_5.x | var_0.x, firstTrailingBit(4294967295u)), 4u)])));
}

