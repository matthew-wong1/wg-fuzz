struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    return u_input.a;
}

fn func_2() -> i32 {
    global0 = array<vec2<bool>, 28>();
    global0 = array<vec2<bool>, 28>();
    var var_0 = abs(vec2<i32>(-11717i, u_input.a & 0i));
    let var_1 = Struct_1(176f);
    var_0 = ~countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -36885i), firstTrailingBit(-vec2<i32>(50785i, u_input.a))));
    return _wgslsmith_sub_i32(u_input.a, u_input.a);
}

fn func_3() -> f32 {
    var var_0 = select(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(142f))), _wgslsmith_f_op_f32(-878f - -652f), _wgslsmith_f_op_f32(step(149f, 740f)) < -431f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f), 1213f))), !(!(!(u_input.a <= 33784i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1568f, _wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-929f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-255f, 1076f), _wgslsmith_f_op_f32(-2283f - -250f), _wgslsmith_f_op_f32(-588f + 1330f)), vec3<f32>(_wgslsmith_div_f32(545f, 753f), _wgslsmith_f_op_f32(-146f + -1746f), _wgslsmith_f_op_f32(417f + 1001f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, 2023f, 693f) - vec3<f32>(-797f, 1415f, 1199f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, 203f, 965f)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    let var_3 = Struct_2(select(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(24018u, 9605u, 1u), vec3<u32>(10392u, 1u, 7048u)) <= 0u, false), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(3706u), abs(3123u), _wgslsmith_add_u32(0u, 76299u)), 28u)], all(select(global0[_wgslsmith_index_u32(0u, 28u)], select(vec2<bool>(true, false), vec2<bool>(false, true), true), true))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 406f, 1887f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(var_1.x - 1000f)), _wgslsmith_f_op_f32(trunc(333f)), -1384f), ~4294967295u);
    let var_4 = Struct_1(-1000f);
    return var_3.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global0 = array<vec2<bool>, 28>();
    var var_0 = 1i;
    var_0 = func_2();
    var var_1 = Struct_2(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(53080u, ~_wgslsmith_div_u32(arg_1.d, 15815u)), 28u)], _wgslsmith_f_op_vec3_f32(min(arg_1.c.xzw, _wgslsmith_f_op_vec3_f32(-arg_1.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, arg_0.a, arg_1.b.x, arg_1.c.x)) - arg_1.c) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, 266f, arg_0.a, arg_0.a), _wgslsmith_f_op_vec4_f32(max(arg_1.c, vec4<f32>(arg_0.a, arg_0.a, -463f, -1927f)))))))), 50053u);
    global0 = array<vec2<bool>, 28>();
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -979f;
    global0 = array<vec2<bool>, 28>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-155f + -1081f)), _wgslsmith_f_op_f32(floor(1f)), false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) - -1643f)));
    let var_1 = vec4<i32>(func_1(~vec2<u32>(21823u, 31208u), 51109u, Struct_1(-208f)) ^ ~max(abs(-37080i), 9953i), _wgslsmith_mod_i32(func_2(), u_input.a), abs(func_1(_wgslsmith_div_vec2_u32(~vec2<u32>(46138u, 26165u), countOneBits(vec2<u32>(51535u, 1u))), 1u, Struct_1(_wgslsmith_f_op_f32(-378f - 607f)))), u_input.a);
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f * 1154f) + _wgslsmith_f_op_f32(-268f + 675f)))), Struct_2(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(global0[_wgslsmith_index_u32(~17195u, 28u)], vec2<bool>(true, false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 48734u), 28u)]), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)), _wgslsmith_div_f32(-977f, _wgslsmith_f_op_f32(min(-517f, -1000f))), _wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(func_3()))), vec4<f32>(572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f + -920f)), 887f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(step(737f, 652f)), true))), 4294967295u));
    var var_3 = reverseBits(vec4<u32>(abs(func_4(Struct_1(-1142f), Struct_2(global0[_wgslsmith_index_u32(1u, 28u)], vec3<f32>(-1212f, -1007f, 234f), vec4<f32>(178f, 1325f, -435f, -1162f), 38923u))), 72277u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, max(4294967295u, 7536u), firstTrailingBit(4294967295u))), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, 1u)), ~var_3.x), vec2<u32>(4294967295u, 42463u) ^ firstLeadingBit(var_3.yx)), var_3.x, ~0u);
}

