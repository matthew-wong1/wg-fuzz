struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global0 = array<Struct_2, 2>();
    var var_0 = select(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-1i, arg_0, 1i, -752i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(18358i, u_input.a, 11274i, arg_1.x), arg_1, vec4<i32>(arg_0, arg_0, u_input.a, arg_0))), _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(arg_1, arg_1, vec4<i32>(u_input.a, 1i, 1i, arg_0)), vec4<i32>(0i, -18872i, 1i, _wgslsmith_mult_i32(arg_0, 0i)))), arg_1, (i32(-1i) * -arg_0) != _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.x, 1i), abs(_wgslsmith_clamp_i32(u_input.a, 10454i, u_input.a))));
    var var_1 = Struct_2(Struct_1(u_input.b, 358f, vec2<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(0u, 13729u)))), vec2<bool>(!(all(vec2<bool>(arg_3.x, true)) & all(vec3<bool>(false, arg_3.x, arg_3.x))), arg_3.x), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mod_i32(48284i, ~arg_0)), abs(countOneBits(-59179i) >> (abs(1u) % 32u))), vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-arg_2))), arg_3);
    let var_2 = global0[_wgslsmith_index_u32(u_input.b & _wgslsmith_add_u32(min(min(1u, countOneBits(66846u)), u_input.b), ~_wgslsmith_dot_vec2_u32(var_1.a.c, countOneBits(vec2<u32>(var_1.a.a, u_input.b)))), 2u)];
    global0 = array<Struct_2, 2>();
    return _wgslsmith_mod_i32(arg_1.x, ~_wgslsmith_add_i32(var_0.x, -var_0.x));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    let var_0 = ~vec4<i32>(_wgslsmith_div_i32(reverseBits(u_input.a), -8656i), func_3(1i, vec4<i32>(u_input.a, -2147483647i, reverseBits(-2147483647i), -7133i & u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false))), u_input.a, _wgslsmith_mult_i32(i32(-1i) * -u_input.a, -18608i));
    var var_1 = Struct_3(Struct_1(4294967295u, arg_1, select(vec2<u32>(u_input.b, ~u_input.b), _wgslsmith_sub_vec2_u32(arg_2.xy ^ arg_2.yx, abs(arg_2.zy)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false), true))), select(vec2<bool>(true, false), vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, all(vec4<bool>(false, false, true, false)) || all(vec4<bool>(true, false, true, false)))), Struct_1(~arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 687f)))), arg_2.zz), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, -1i, -2147483647i, u_input.a), var_0, vec4<bool>(false, true, true, true)), var_0), var_0.x));
    var var_2 = arg_0;
    var_2 = _wgslsmith_f_op_f32(floor(arg_1));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * -275f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_u32(reverseBits(countOneBits(~1u)), arg_1.x);
    var_0 = ~(~(~u_input.b));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(abs(~12643u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))), -1444f)), ~(~arg_1 ^ vec2<u32>(13892u, 0u))), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), 9066i, arg_3.zw, select(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(false, true), vec2<bool>(false, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_u32(~u_input.b, u_input.b), -1734f, ~(~(~arg_1))), var_1.b, var_1.a, 0i);
    var var_3 = var_1.e;
    return Struct_1(min(~(~4294967295u), 4294967295u), 406f, _wgslsmith_div_vec2_u32(~select(_wgslsmith_mult_vec2_u32(arg_0, arg_0), vec2<u32>(arg_1.x, 4294967295u), !vec2<bool>(true, var_3.x)), vec2<u32>(firstTrailingBit(509u), _wgslsmith_clamp_u32(reverseBits(var_2.c.c.x), ~0u, ~u_input.b))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_3(arg_2.a, arg_3.b, arg_2.a, ~u_input.a);
    global0 = array<Struct_2, 2>();
    var_0 = arg_3;
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), arg_0.b)), -1080f));
    return -abs(var_0.d);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1116f, _wgslsmith_f_op_f32(-239f + -592f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1940f)) + _wgslsmith_f_op_f32(-393f + -1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -937f))));
    let var_1 = func_5(func_4(vec2<u32>(0u, u_input.b), ~(~reverseBits(vec2<u32>(50437u, u_input.b))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -450f) - _wgslsmith_f_op_f32(var_0 + var_0)), 1237f, ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-640f, -817f, 335f, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(-552f, 1195f, var_0, 855f), vec4<bool>(true, false, true, false)))), select(false, false, false) & true))), func_4(~abs(min(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 4294967295u))), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(20235u, 81025u), vec2<u32>(u_input.b, 1u))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), 1564f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 1000f, 498f, 1410f))) + vec4<f32>(var_0, 986f, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, 1710f, var_0, -1033f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 466f)))))), global0[_wgslsmith_index_u32(min(40113u, ~(0u & firstTrailingBit(u_input.b))), 2u)], Struct_3(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(40803u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(6264u, 0u), vec2<u32>(u_input.b, u_input.b))), ~(vec2<u32>(0u, 0u) ^ vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(610f, 343f) + var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, -1306f, -1048f, -1123f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -376f, var_0, var_0))))), vec2<bool>(true, true), Struct_1(0u, _wgslsmith_f_op_f32(-var_0), abs(vec2<u32>(1u, u_input.b))), arg_0));
    global0 = array<Struct_2, 2>();
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-47386i, _wgslsmith_mult_i32(u_input.a >> (4294967295u % 32u), -var_1), 32940i, ~(-2147483647i)), vec4<i32>(~(~u_input.a), u_input.a, -34597i, ~(0i | u_input.a)), -(~vec4<i32>(var_1, arg_0, var_1, -2147483647i) | abs(vec4<i32>(var_1, -10455i, u_input.a, u_input.a)))) >> (~(((vec4<u32>(u_input.b, 34261u, 0u, 67718u) | vec4<u32>(16142u, u_input.b, u_input.b, 4294967295u)) ^ (vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) << (vec4<u32>(u_input.b, u_input.b, 3731u, 1u) % vec4<u32>(32u)))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(0u, 0u, u_input.b, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = array<Struct_2, 2>();
    return min(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_2.wx, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(var_1, 2183i), var_2.wy)), ~var_2.yx << ((vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(select(var_2.yw, vec2<i32>(u_input.a, -1389i), true), var_2.zy), var_2.wx)) << (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a) | select(vec2<i32>(u_input.a, -2143i), vec2<i32>(u_input.a, u_input.a), true)), func_1(-2147483647i)));
    var_0 = reverseBits(-vec2<i32>(max(u_input.a | 48542i, 60956i), 1i));
    global0 = array<Struct_2, 2>();
    var var_1 = Struct_3(func_4(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.b, 49824u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(42183u, 1u))), abs(~(~vec2<u32>(u_input.b, 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, -565f, false)), 200f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-521f, -1166f, 976f, 1147f))), vec4<f32>(_wgslsmith_f_op_f32(abs(626f)), _wgslsmith_f_op_f32(floor(-1317f)), _wgslsmith_f_op_f32(sign(394f)), _wgslsmith_f_op_f32(trunc(-687f))))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), -_wgslsmith_sub_i32(-2147483647i, var_0.x) != (_wgslsmith_sub_i32(var_0.x, var_0.x) ^ var_0.x)), Struct_1(u_input.b, 718f, (~vec2<u32>(u_input.b, u_input.b) << (~vec2<u32>(4294967295u, 31671u) % vec2<u32>(32u))) & ~vec2<u32>(22723u, 69009u)), ~var_0.x);
    var_1 = Struct_3(func_4(~_wgslsmith_add_vec2_u32(~var_1.a.c, ~vec2<u32>(51082u, 0u)), min(vec2<u32>(~u_input.b, var_1.c.a), ~reverseBits(var_1.c.c)), 738f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1267f * 1000f) - 1f), var_1.a.b, 2122f, 1371f)), vec2<bool>(var_1.b.x, any(vec3<bool>(false, true, any(vec2<bool>(false, var_1.b.x))))), func_4(vec2<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(49461u, u_input.b, 38065u), vec3<u32>(0u, 21153u, u_input.b))), ~(~0u)), vec2<u32>(~(38834u >> (var_1.a.c.x % 32u)), min(firstLeadingBit(u_input.b), 26267u >> (var_1.a.a % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * var_1.c.b))), vec4<f32>(-338f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1307f - -1176f))), _wgslsmith_f_op_f32(step(var_1.a.b, var_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b + var_1.a.b) * var_1.a.b))), 0i);
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(138f)), 1405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.b, var_1.a.b))))), 3304i, vec2<f32>(var_1.c.b, _wgslsmith_f_op_f32(2230f - _wgslsmith_div_f32(var_1.a.b, var_1.a.b))));
}

