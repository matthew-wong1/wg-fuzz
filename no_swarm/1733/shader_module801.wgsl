struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<vec2<f32>, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<i32>(reverseBits(firstTrailingBit(~1i)), -39258i, ~abs(_wgslsmith_sub_i32(0i, u_input.a)));
    global0 = array<vec4<u32>, 1>();
    let var_1 = true;
    var var_2 = Struct_1(select(global0[_wgslsmith_index_u32(1u, 1u)] << (vec4<u32>(~4294967295u, 25736u, 1u, _wgslsmith_add_u32(64170u, 0u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(1u, 1u)], -7795i != (~(-1i) ^ var_0.x)), select(!(!vec3<bool>(var_1, var_1, var_1)), vec3<bool>(any(vec3<bool>(true, var_1, false)), all(!vec3<bool>(true, var_1, true)), true), !select(true | var_1, true, true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1338f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 452f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) + _wgslsmith_f_op_f32(step(-1913f, 1353f))), false)) + _wgslsmith_f_op_f32(-2139f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(428f)), _wgslsmith_f_op_f32(ceil(1138f))))));
    return !vec2<bool>(all(!vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)), var_1);
}

fn func_2() -> u32 {
    let var_0 = select(vec2<bool>(!all(vec4<bool>(true, true, true, true)) & (any(vec4<bool>(false, true, false, true)) & any(vec2<bool>(false, true))), !(true && all(vec4<bool>(true, false, false, true)))), !(!func_3()), vec2<bool>(false, true));
    var var_1 = Struct_4(-2147483647i, 4294967295u, vec3<i32>(-u_input.a >> (~(~0u) % 32u), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, 0i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -18312i), vec2<i32>(-2147483647i, 46036i)), ~u_input.a)), u_input.a), Struct_2(true), !select(all(!vec3<bool>(var_0.x, false, false)), true, all(var_0) | var_0.x));
    var_1 = Struct_4(i32(-1i) * -15863i, countOneBits(11586u), select(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c.x, -1i, u_input.a), _wgslsmith_add_vec3_i32(var_1.c, vec3<i32>(var_1.c.x, var_1.a, u_input.a))), firstLeadingBit(vec3<i32>(u_input.a, _wgslsmith_div_i32(342i, var_1.c.x), var_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(422f, -1642f)), -530f) < _wgslsmith_f_op_f32(round(-1000f))), Struct_2(all(select(vec4<bool>(var_1.d.a, false, var_1.d.a, var_0.x), !vec4<bool>(true, var_0.x, true, false), false))), all(!(!(!vec3<bool>(false, var_0.x, var_0.x)))));
    let var_2 = -1i;
    let var_3 = -721f;
    return ~_wgslsmith_div_u32(~_wgslsmith_add_u32(countOneBits(var_1.b), _wgslsmith_mod_u32(var_1.b, var_1.b)), ~(~4294967295u));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = firstLeadingBit(arg_1.c.zz);
    var_0 = -arg_1.c.yz;
    let var_1 = arg_1;
    var_0 = _wgslsmith_mult_vec2_i32(var_1.c.zz, vec2<i32>(arg_0.c.x, ~arg_0.a)) | (~vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(arg_1.c.xz, vec2<i32>(u_input.a, var_1.c.x))) | arg_1.c.zz);
    var var_2 = ~10983i;
    return vec3<u32>(var_1.b, _wgslsmith_sub_u32(func_2(), 38090u), firstLeadingBit(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 19>();
    global0 = array<vec4<u32>, 1>();
    var var_0 = -61097i;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(Struct_4(u_input.a, 1u, vec3<i32>(-2147483647i, -23106i, u_input.a), Struct_2(true), true), Struct_4(-3484i, 0u, vec3<i32>(-1i, -2147483647i, 1i), Struct_2(false), true)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(48830u), 1u, ~0u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2946i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)) >> (~vec3<u32>(48595u, 32581u, 49666u) % vec3<u32>(32u)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(-42885i, u_input.a, -2147483647i), vec3<i32>(1i, 2147483647i, -1i)), vec3<i32>(u_input.a, 0i, u_input.a))), -_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, 43620i, u_input.a), vec3<i32>(-2945i, -2147483647i, 1i) & vec3<i32>(u_input.a, u_input.a, -14765i))));
}

