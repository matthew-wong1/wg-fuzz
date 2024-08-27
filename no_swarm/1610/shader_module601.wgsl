struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    return -62941i;
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<bool>((any(vec3<bool>(true, true, true)) & (true && (u_input.a.x != u_input.a.x))) & true, false, (i32(-1i) * -_wgslsmith_clamp_i32(46795i, u_input.c, 1i)) > _wgslsmith_add_i32(~u_input.b.x, func_3(Struct_5(vec2<u32>(1u, 606u)), Struct_1(u_input.b.x, vec2<f32>(472f, -1579f), 4294967295u), u_input.a) >> (u_input.a.x % 32u)));
    let var_1 = vec3<bool>(all(vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, false, false, var_0.x))), any(vec3<bool>(false, var_0.x, true)) || var_0.x, true)), any(!vec4<bool>(var_0.x, false, select(var_0.x, var_0.x, true), true)), true);
    var_0 = select(!var_1, vec3<bool>(var_0.x, !any(vec4<bool>(var_1.x, true, var_1.x, true)), any(!vec3<bool>(var_0.x, false, true))), var_0.x);
    let var_2 = u_input.a.x;
    var var_3 = false;
    return Struct_3(_wgslsmith_mod_u32(1u, var_2), reverseBits(firstTrailingBit(vec2<i32>(u_input.c, u_input.c))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-1290f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(arg_1, 327f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-599f, arg_1) * vec2<f32>(arg_2, 1035f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1097f, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1228f, arg_2) * vec2<f32>(arg_1, arg_2)), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(336f, arg_2) + vec2<f32>(arg_1, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1275f, -2396f) * vec2<f32>(980f, 788f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_1, arg_1), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)) * vec2<f32>(1000f, -696f))))));
    var var_2 = -1643f;
    var var_3 = Struct_3(0u, arg_3.b.b);
    var var_4 = reverseBits(abs(abs(u_input.a)));
    return ~(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, var_3.a, var_3.a, arg_3.b.a), firstTrailingBit(vec4<u32>(4294967295u, var_4.x, var_0.a, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, firstTrailingBit(u_input.a.x), reverseBits(u_input.a.x) >> ((5362u >> (u_input.a.x % 32u)) % 32u), ~0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(116445u, 113428u, 32470u, u_input.a.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 62265u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 4294967295u, 46822u)), func_1(74749u, 1f, _wgslsmith_f_op_f32(-469f - 121f), Struct_4(u_input.a.x, Struct_3(1u, u_input.b.xz), -1i)), max(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 56683u), vec4<u32>(u_input.a.x, 1u, 55116u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))), vec4<u32>(u_input.a.x, u_input.a.x >> ((firstTrailingBit(u_input.a.x) & select(73921u, 24425u, false)) % 32u), _wgslsmith_div_u32(u_input.a.x, 39439u), _wgslsmith_mod_u32(_wgslsmith_div_u32(min(37958u, 4294967295u), abs(u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, ~0u))));
    var var_1 = vec3<f32>(-1822f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -597f))), 463f);
    var var_2 = 4294967295u;
    var_2 = 4294967295u;
    let var_3 = func_2().b;
    var var_4 = any(select(vec2<bool>(true, true), vec2<bool>(!(0u <= var_0.x), select(true, false, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(468f, var_1.x, -1425f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -841f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1558f), vec3<f32>(var_1.x, 390f, var_1.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-985f, var_1.x, -209f) + _wgslsmith_div_vec3_f32(vec3<f32>(429f, 719f, var_1.x), vec3<f32>(639f, -717f, var_1.x))))));
    var var_5 = Struct_1(var_3.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xy)), !select(vec2<bool>(false, false), vec2<bool>(false, false), true))))), 71555u << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(253f, _wgslsmith_f_op_f32(sign(var_5.b.x))) * _wgslsmith_f_op_vec2_f32(max(var_1.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.b.x, -1547f) * var_1.yy)))), var_1.zx));
}

