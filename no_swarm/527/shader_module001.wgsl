struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), countOneBits(18666u), max(arg_0, arg_0), abs(u_input.a)), vec4<u32>(firstTrailingBit(4294967295u), min(u_input.c, u_input.c), 1u, ~u_input.a)), vec4<u32>(u_input.c ^ abs(firstTrailingBit(u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, ~25896u), _wgslsmith_add_u32(13847u, 14702u) << (u_input.a % 32u), 35108u), 2525u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 36242u, 0u), select(vec4<u32>(4294967295u, arg_0, 1u, 3632u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), false)) % 32u), 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, -1580f, _wgslsmith_f_op_f32(trunc(-334f))));
    var var_2 = arg_0 > arg_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(1011f));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(arg_0, _wgslsmith_div_u32(u_input.c, arg_0)), firstLeadingBit(77207u)), select(~vec2<u32>(u_input.c | 66400u, arg_0), firstTrailingBit(vec2<u32>(u_input.a, 93027u << (arg_0 % 32u))), true)), 19u)];
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)), var_4.b));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(69287u >> (_wgslsmith_dot_vec3_u32(countOneBits(select(vec3<u32>(43712u, u_input.a, 9673u), vec3<u32>(u_input.a, u_input.a, 25038u), true)), vec3<u32>(u_input.c, _wgslsmith_mult_u32(u_input.a, u_input.c), u_input.a)) % 32u)));
    var var_1 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var_1 = select(select(select(select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), true), !(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(false, var_1.x, var_1.x | var_1.x, var_1.x)), vec4<bool>(var_1.x, true, select(true, true, false), true), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), !vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x)), vec4<bool>(any(vec3<bool>(false, false, false)), any(vec2<bool>(var_1.x, false)), var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), vec4<bool>(any(var_1.ww), var_1.x, var_1.x, var_1.x))), select(select(select(!vec4<bool>(var_1.x, false, false, true), !vec4<bool>(false, true, var_1.x, true), !vec4<bool>(true, var_1.x, var_1.x, true)), vec4<bool>(all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), var_1.x, var_1.x, false), vec4<bool>(!var_1.x, var_1.x, all(var_1.zy), true)), vec4<bool>(var_1.x, ~4294967295u <= u_input.a, select(var_1.x | true, any(var_1.yyw), false), -194f == var_0.x), select(vec4<bool>(all(vec4<bool>(false, false, var_1.x, true)), true != var_1.x, var_0.x >= 131f, select(var_1.x, true, false)), select(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), !vec4<bool>(var_1.x, false, var_1.x, true), var_1.x), !select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, false, true, true)))), vec4<bool>(!(_wgslsmith_f_op_f32(var_0.x - var_0.x) >= _wgslsmith_f_op_f32(var_0.x + var_0.x)), var_1.x, any(!(!var_1.wzy)), any(vec3<bool>(var_1.x && true, true, true))));
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(select(u_input.c, u_input.a, true), u_input.a, ~77587u) >> (u_input.a % 32u)), 19u)];
    let var_3 = var_0.x;
    return 15617i;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_0.x;
    let var_1 = ~arg_0;
    var var_2 = Struct_1(arg_1, _wgslsmith_f_op_f32(-arg_3.b), 1u, vec2<u32>(var_1.x, 4294967295u), vec2<i32>(func_2(), 1i & -_wgslsmith_add_i32(arg_2.x, u_input.b)));
    var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(935u), 19u)];
    var var_3 = var_1.yyx;
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = u_input.b;
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1842f, -468f)) + _wgslsmith_div_f32(924f, 2147f))) - -1830f), select(abs(u_input.a), var_0 & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(1u, 1u) | vec2<u32>(var_0, u_input.a)), true || (~u_input.b != (u_input.b >> (u_input.a % 32u)))), vec2<u32>(abs(4294967295u), func_1(vec4<u32>(var_0 >> (var_0 % 32u), _wgslsmith_mod_u32(u_input.c, 0u), u_input.a, reverseBits(102353u)), firstTrailingBit(75063u) >= abs(4294967295u), select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), var_0 == u_input.c), Struct_1(true, -484f, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(var_0, var_0)), ~vec2<u32>(27206u, 4294967295u), firstTrailingBit(vec2<i32>(u_input.b, -1i))))), ~vec2<i32>(1i, firstLeadingBit(u_input.b)));
    let var_3 = global0[_wgslsmith_index_u32(var_2.c, 19u)];
    var_1 = -30012i;
    var var_4 = global0[_wgslsmith_index_u32(2106u, 19u)];
    var_1 = var_4.e.x;
    let var_5 = global0[_wgslsmith_index_u32(0u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.x, ~u_input.a, vec2<i32>(~(~(-7231i)), reverseBits(u_input.b) >> (var_5.c % 32u)), var_5.b, ~vec4<u32>(var_3.c, ~var_3.d.x, var_4.c, ~var_2.c) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, u_input.a, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_4.c), vec2<u32>(68262u, var_2.d.x))), vec4<u32>(1u, ~u_input.c, var_2.c | 4294967295u, 1u)));
}

