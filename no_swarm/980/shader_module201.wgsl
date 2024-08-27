struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-441f, 825f, 248f, 1751f, -298f, -1730f, 1630f, -866f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0.c.c.x));
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let var_2 = arg_1;
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_3(Struct_2(61469u << (u_input.d % 32u), vec3<i32>(u_input.e, u_input.c, u_input.b.x), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec2<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -745f), true, vec4<i32>(-5172i, u_input.b.x, u_input.b.x, 5427i)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), true), abs(-36544i)) << ((u_input.d << (4294967295u % 32u)) % 32u), 8u)] + -603f);
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_mod_u32(abs(u_input.a.x), ~u_input.d), -768f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 8u)] + global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), global0[_wgslsmith_index_u32(~14648u, 8u)]))), true, vec4<i32>(~firstTrailingBit(-55946i), -u_input.b.x, _wgslsmith_clamp_i32(20418i, -2147483647i, -56083i), 0i)), Struct_2(~18198u, vec3<i32>((-45479i >> (u_input.a.x % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(65184u, u_input.d, 41000u), u_input.a.yzy) % 32u), countOneBits(0i) >> (1u % 32u), u_input.e), Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 8u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 8u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 8u)], 1648f) - vec2<f32>(-1075f, -1006f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-184f, -878f), vec2<f32>(1576f, -717f), vec2<bool>(false, false)))), false, max(-vec4<i32>(u_input.e, -27804i, u_input.e, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, 2147483647i, 0i, u_input.e), vec4<i32>(-1i, -46894i, 23124i, u_input.b.x)))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)))));
    return var_1.b;
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = Struct_4(arg_0.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(396f, arg_0.c.b, 857f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c.c.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-619f, global0[_wgslsmith_index_u32(u_input.d, 8u)], arg_0.d.x)), 1187f, 754f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(147u, 8u)], global0[_wgslsmith_index_u32(arg_0.a, 8u)])))))));
    let var_1 = ~(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.xw)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(49822u, arg_0.c.a)), func_3(Struct_2(u_input.a.x, arg_0.b, arg_0.c, arg_0.d, false), arg_0.b.x), ~4294967295u), firstTrailingBit(firstTrailingBit(u_input.a))) % 32u));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b) * vec3<f32>(arg_0.c.c.x, -113f, _wgslsmith_f_op_f32(-658f + var_0.b.x)))));
    var_0 = Struct_4(!(!(!var_0.a)), vec3<f32>(global0[_wgslsmith_index_u32(~79155u, 8u)], arg_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 1000f) - var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -622f))));
    let var_2 = arg_0.c.d;
    return false;
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_4(vec4<bool>(!(_wgslsmith_div_u32(26174u, u_input.d) >= _wgslsmith_mod_u32(63925u, 78255u)), true, func_4(func_2()), func_4(func_2())), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 292f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 8u)] + global0[_wgslsmith_index_u32(arg_0.x, 8u)]), global0[_wgslsmith_index_u32(arg_0.x, 8u)] <= global0[_wgslsmith_index_u32(3759u, 8u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-914f, 1283f))), _wgslsmith_f_op_f32(-802f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 8u)])))));
    global0 = array<f32, 8>();
    var var_1 = u_input.a.zz;
    var_1 = countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(23797u, 44299u), reverseBits(u_input.a.wx), u_input.a.xw));
    let var_2 = Struct_3(func_2().c, func_2());
    return Struct_4(vec4<bool>(false, all(vec4<bool>(func_2().e, var_2.b.e, any(vec3<bool>(var_0.a.x, var_2.a.d, true)), var_2.a.d | var_2.b.e)), all(func_2().d.zw) && (~u_input.b.x < u_input.b.x), var_2.a.d && var_2.b.e), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let var_0 = func_1(~((~vec3<u32>(0u, u_input.d, u_input.d) ^ vec3<u32>(696u, u_input.d, 77819u)) ^ vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~10322u)));
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(48531u);
}

