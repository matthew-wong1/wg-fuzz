struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global0 = vec2<bool>(arg_0, global0.x);
    var var_0 = vec2<u32>(~37524u, 26943u);
    var var_1 = reverseBits(u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1637f, 452f))), _wgslsmith_f_op_f32(floor(-136f)), 453f, -226f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1636f), _wgslsmith_f_op_f32(1144f + _wgslsmith_f_op_f32(1000f - -444f)), _wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(1125f - 100f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-420f + 1309f), -792f, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1202f, -1236f, -476f, -894f) - vec4<f32>(748f, 328f, -1660f, 452f)))));
    var var_3 = u_input.c.xx;
    return !select(vec2<bool>(global0.x, true), select(vec2<bool>(all(vec3<bool>(true, global0.x, false)), false), select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), global0.x), !vec2<bool>(true, global0.x), vec2<bool>(false, true)), vec2<bool>(true, true)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(global0.x, true), vec2<bool>(false, false))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = array<vec2<i32>, 1>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(3311f, -301f, 504f, 1000f), vec4<f32>(1000f, 2439f, -2108f, 730f), !vec4<bool>(true, false, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1079f + 502f), -489f, -1319f, _wgslsmith_f_op_f32(f32(-1f) * -273f))), true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-998f + var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)))), 936f)));
    global0 = !vec2<bool>(true, arg_1);
    let var_2 = select(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-37171i, u_input.b.x, u_input.b.x) ^ vec3<i32>(2147483647i, 2032i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(64914i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a, -2147483647i, 67824i)), any(vec2<bool>(true, true))), ~vec3<i32>(u_input.b.x, u_input.b.x, -9471i) >> (abs(vec3<u32>(0u, 29974u, u_input.c.x)) % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(reverseBits(abs(vec3<i32>(11134i, u_input.a, 7564i))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -78879i), vec3<i32>(-5875i, u_input.a, u_input.a))), -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 13172i, u_input.a) & vec3<i32>(-32846i, u_input.b.x, -1i), -vec3<i32>(38045i, u_input.b.x, u_input.b.x))), false != !(!all(vec2<bool>(false, true))));
    return -u_input.b.x;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(~17214u), Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(~u_input.c, ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))), global0.x);
    var var_1 = vec3<i32>(arg_0, countOneBits(0i), ~(-arg_0));
    let var_2 = u_input.b.x;
    var var_3 = ~u_input.c.x;
    return func_1(true);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32) -> vec2<i32> {
    global0 = func_4(func_3(Struct_1(40865u & u_input.c.x), false));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(102f, -234f))) + _wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(566f * -1259f))) - -892f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f + -597f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1722f))))));
    let var_1 = -636f;
    var var_2 = all(vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1, -171f)))) <= _wgslsmith_f_op_f32(var_1 + var_0.x), true));
    global0 = !select(!vec2<bool>(global0.x, !arg_0), func_1(global0.x), func_1(global0.x).x);
    return vec2<i32>(0i, (_wgslsmith_clamp_i32(26403i, arg_1, arg_1) ^ 35706i) >> (77583u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!func_1(all(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, false)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1413f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(329f, -674f), -1741f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(704f, -1341f)))) + 826f));
    let var_1 = func_2(!all(!(!vec4<bool>(global0.x, global0.x, false, global0.x))), u_input.a, firstTrailingBit(firstTrailingBit(u_input.c.x)));
    var_0 = -636f;
    let var_2 = func_1(true);
    var var_3 = ~(-var_1) >> (max(abs(min(u_input.c.zx, u_input.c.yz) | vec2<u32>(37244u, 17944u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 3453u, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x))), select(u_input.c.x, u_input.c.x, true) ^ reverseBits(0u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(firstTrailingBit(~31556u), ~(~u_input.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-249f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1715f, 669f) - _wgslsmith_f_op_f32(trunc(-723f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f))))));
}

