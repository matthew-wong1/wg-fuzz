struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(19350i, 37196i), vec2<i32>(16341i, -31079i), vec2<i32>(1i, 62155i), vec2<i32>(-21597i, 1i), vec2<i32>(-47377i, 0i), vec2<i32>(10491i, 77743i), vec2<i32>(-1i, 0i), vec2<i32>(1i, -1i), vec2<i32>(0i, 27599i), vec2<i32>(-1i, 43873i), vec2<i32>(i32(-2147483648), -15559i), vec2<i32>(1i, 2147483647i));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, true)));

var<private> global3: f32;

var<private> global4: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1369u, 1u, 0u), vec3<u32>(78u, 1u, 1u), vec3<u32>(65038u, 0u, 85082u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 667u, 57774u), vec3<u32>(1804u, 1u, 27516u), vec3<u32>(16827u, 43984u, 1u), vec3<u32>(26968u, 48993u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: vec2<bool>) -> bool {
    var var_0 = select(global1[_wgslsmith_index_u32(42118u, 12u)], global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(~(30677u >> (arg_1.d.b % 32u)), 41080u ^ arg_1.a.x)), 12u)], select(!vec2<bool>(true, any(arg_1.d.a.a.ww)), arg_3, !(true && (true & arg_1.d.a.a.x))));
    global1 = array<vec2<i32>, 12>();
    var var_1 = (firstTrailingBit(u_input.b.x) ^ 17722u) & ~(~arg_1.d.b);
    global3 = _wgslsmith_f_op_f32(sign(arg_2.x));
    var var_2 = Struct_4(Struct_3(vec3<bool>(any(vec3<bool>(true, arg_1.d.a.a.x, false)) != true, false, !all(vec2<bool>(arg_1.d.a.a.x, false))), _wgslsmith_mod_u32(~30838u, abs(1u)), u_input.c), firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(0u, abs(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.d.b, u_input.b.x), u_input.b, u_input.b), u_input.b))));
    return !all(arg_1.d.a.a.yz);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_sub_u32(u_input.c ^ ~u_input.c, countOneBits(~u_input.c));
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f - 505f))))));
    let var_1 = Struct_4(Struct_3(vec3<bool>(false, func_3(true, Struct_5(vec3<u32>(u_input.b.x, arg_1.b, 41809u), -3284i, vec3<f32>(-567f, -602f, -325f), Struct_2(Struct_1(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x)), arg_1.b, arg_1.c), vec4<u32>(arg_1.b, u_input.b.x, u_input.b.x, u_input.c)), vec2<f32>(333f, 255f), select(arg_1.a.a.zy, arg_1.a.a.yw, true)), any(arg_1.a.a)), 36255u ^ ~(43318u & u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, abs(1u)), arg_1.b)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(3144u, arg_1.b), ~vec2<u32>(70530u, 1737u)));
    global1 = array<vec2<i32>, 12>();
    let var_2 = ~arg_0.yw;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1680f, -961f)), -1361f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-380f, -289f)))), -1395f), -1991f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i), -57939i, -2147483647i, countOneBits(-30842i)), Struct_2(Struct_1(vec4<bool>(arg_1.a.x, true, false, false)), 11765u, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -608f), -514f)));
    global4 = array<vec3<u32>, 8>();
    global4 = array<vec3<u32>, 8>();
    global3 = -1004f;
    var var_1 = _wgslsmith_clamp_vec3_u32(~global4[_wgslsmith_index_u32(~select(59256u, arg_2, arg_1.a.x), 8u)] | max(~global4[_wgslsmith_index_u32(~31640u, 8u)], ~global4[_wgslsmith_index_u32(~28810u, 8u)]), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, 45842u, 4294967295u)), vec3<u32>(~arg_2, ~4294967295u, 16970u)), vec3<u32>(84669u << (_wgslsmith_div_u32(0u, arg_2 ^ arg_2) % 32u), 1u, ~_wgslsmith_mod_u32(max(1u, arg_2), ~u_input.c)));
    return vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec3<bool>(true, all(vec2<bool>(true, true)) == (any(vec3<bool>(true, true, false)) | any(vec2<bool>(false, false))), ~(~38269u) > u_input.c));
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f))))), -1771f));
    let var_1 = !select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), select(select(vec4<bool>(true, true, true, true), func_1(vec2<i32>(u_input.a, 0i), Struct_1(vec4<bool>(false, true, false, false)), 4294967295u), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, select(false, false, true), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    var var_2 = select(func_1(vec2<i32>(_wgslsmith_sub_i32(-63409i, _wgslsmith_sub_i32(u_input.a, u_input.a)), abs(33787i)), global2[_wgslsmith_index_u32(24595u, 25u)], firstLeadingBit(~(~u_input.b.x))), vec4<bool>(true, func_1(vec2<i32>(~16274i, select(u_input.a, 0i, var_1.x)), Struct_1(var_1), ~1u).x, false != var_1.x, select(!(!var_1.x), var_1.x, var_1.x)), !(!(!select(false, var_1.x, var_1.x))));
    let var_3 = Struct_3(!var_2.wzz, 79179u, min(abs(firstTrailingBit(min(u_input.b.x, 0u))), 62636u));
    let var_4 = !select(var_1.yxw, select(var_2.wyw, !select(var_2.xyy, var_1.zwx, true), !(true | var_1.x)), !(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, true, var_1.x), true)));
    let var_5 = var_1.x;
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-444f * 721f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -874f), 181f))), true));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_6.c, 11474u, 1109u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b.x)) ^ ~vec4<u32>(49320u, var_3.c, u_input.c, u_input.b.x), min(~vec4<u32>(1u, var_3.b, 7751u, 1u), firstLeadingBit(vec4<u32>(var_3.b, var_3.c, var_3.c, 8376u)))), abs(vec4<u32>(~var_3.c, 4294967295u, _wgslsmith_add_u32(u_input.b.x, u_input.c), reverseBits(var_6.b)))), ~0u, ~(u_input.b | ~(~u_input.b)));
}

