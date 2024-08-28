struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-168f, 245f, 1077f, 146f, -159f, -812f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>) -> f32 {
    var var_0 = u_input.c | u_input.c;
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_1 = -11353i;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(1u) >> (~abs(4294967295u) % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, 65454u)), vec3<u32>(28625u, ~(~u_input.a.x), 4294967295u))), 6u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f - 272f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32) -> vec2<bool> {
    let var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(abs(u_input.a.x >> (~(u_input.a.x & u_input.a.x) % 32u)), 6u)] >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -699f))), arg_2));
    var var_2 = Struct_2(Struct_1(select(vec2<bool>(any(vec4<bool>(var_0, var_1, var_0, false)), false), vec2<bool>(true & var_0, all(vec4<bool>(true, var_1, var_0, var_1))), (u_input.b >> (0u % 32u)) != _wgslsmith_add_i32(arg_1.x, u_input.b)), vec2<u32>(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 1u), ~u_input.a.x)), vec3<i32>(u_input.c.x, u_input.b, -reverseBits(arg_1.x)), Struct_1(!vec2<bool>(true, all(vec2<bool>(var_0, var_1))), vec2<u32>(4472u | u_input.a.x, u_input.a.x) & ~firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x))));
    let var_3 = ~select(select(abs(~u_input.a), var_2.a.b, vec2<bool>(var_1 != true, var_2.a.a.x)), var_2.a.b, true | !all(vec3<bool>(false, var_2.c.a.x, var_2.a.a.x)));
    let var_4 = Struct_2(Struct_1(vec2<bool>(false, false), u_input.a), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, select(-9840i, arg_0.x, var_2.c.a.x), _wgslsmith_div_i32(6674i, u_input.c.x)), abs(vec3<i32>(-55842i, arg_1.x, arg_0.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-52510i, _wgslsmith_mult_i32(695i, 1i), var_2.b.x), abs(~arg_1), vec3<i32>(arg_1.x, ~arg_0.x, firstLeadingBit(u_input.e)))), var_2.c);
    return vec2<bool>(0u < abs(var_2.c.b.x), !(firstTrailingBit(0i) <= -1i));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = 2147483647i;
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_1 = !(!func_4(-u_input.d, max(countOneBits(vec3<i32>(var_0, 1i, arg_0.b.x)), abs(vec3<i32>(u_input.d.x, arg_1, u_input.b))), _wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(func_3(false, vec4<bool>(arg_0.a.a.x, false, false, arg_0.a.a.x), vec2<i32>(u_input.b, -2341i))))));
    let var_2 = arg_0.c;
    return 1u;
}

fn func_5(arg_0: vec2<u32>) -> bool {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = ~select(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, 2147483647i)), u_input.d), vec2<i32>(max(2147483647i, u_input.d.x), -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -649f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_0.x, 6u)], 236f)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 6u)] * global0[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    return all(vec3<bool>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 6u)] * _wgslsmith_f_op_f32(trunc(-392f))) > -1000f, !all(vec3<bool>(true, true, true)), any(func_4(vec2<i32>(u_input.b, var_0), ~vec3<i32>(-2147483647i, 1i, var_0), _wgslsmith_f_op_f32(f32(-1f) * -1025f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(vec2<u32>(firstLeadingBit(func_2(Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(u_input.a.x, 33923u)), vec3<i32>(u_input.b, 37117i, u_input.d.x), Struct_1(vec2<bool>(true, false), u_input.a)), u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 58103u, u_input.a.x)), vec3<u32>(4294967295u, 1u, u_input.a.x)), 38988u)));
    global0 = array<f32, 6>();
    let var_1 = select(select(vec3<bool>(func_5(vec2<u32>(u_input.a.x, u_input.a.x)) & any(vec2<bool>(false, false)), select(true, u_input.e >= -4879i, true), true), vec3<bool>(!func_5(u_input.a), _wgslsmith_f_op_f32(-155f + global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) < _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), select(global0[_wgslsmith_index_u32(0u, 6u)] == 398f, true, true)), !(true | any(vec4<bool>(false, true, true, false)))), vec3<bool>(true, false, true), all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    return Struct_1(select(var_1.zy, vec2<bool>(17112u != u_input.a.x, !(u_input.a.x > u_input.a.x)), false), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(1u, ~(~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(u_input.a.x, (~1u & ~u_input.a.x) | ~(u_input.a.x | 69490u), u_input.a.x >> (~u_input.a.x % 32u));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = var_0.x;
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(u_input.e, abs(u_input.e), u_input.c.x, abs(u_input.b))), _wgslsmith_mult_u32(~1u, ~var_2.b.x));
}

