struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(1u);

var<private> global2: array<i32, 22> = array<i32, 22>(1i, 2147483647i, 1160i, 0i, -2760i, 2147483647i, 1i, 8324i, -1i, i32(-2147483648), 2147483647i, -5453i, 1i, -1i, 18007i, 0i, -37292i, 0i, -16777i, 23195i, 0i, -1i);

var<private> global3: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-37808i, 27920i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(56552i, -34739i), vec2<i32>(28109i, 0i), vec2<i32>(64841i, 2147483647i), vec2<i32>(-21431i, 2147483647i), vec2<i32>(-47783i, -1i), vec2<i32>(-1i, 25858i), vec2<i32>(-3458i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-11020i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 3073i), vec2<i32>(26170i, 1i), vec2<i32>(-30292i, 1i), vec2<i32>(0i, 0i), vec2<i32>(1i, 14772i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-15953i, i32(-2147483648)), vec2<i32>(20329i, 0i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), -33480i), vec2<i32>(-16399i, -25003i), vec2<i32>(-28953i, 29422i), vec2<i32>(-1i, -18128i), vec2<i32>(-1i, 25018i), vec2<i32>(0i, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f));
    return ~firstTrailingBit(~26665u);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = u_input.d;
    let var_1 = select(vec4<bool>(!arg_0, arg_0, any(vec3<bool>(!arg_0, var_0.x < 0u, arg_0)), ~reverseBits(4294967295u) == firstTrailingBit(1u)), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, false, arg_0, false)), true), !(!select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, false, false, arg_0), all(vec3<bool>(arg_0, arg_0, arg_0)))));
    global0 = var_1.x;
    global0 = !select(true, true, true) | (!select(!arg_0, all(vec2<bool>(false, var_1.x)), !var_1.x) && any(select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), true), var_1.zx, false)));
    let var_2 = (var_0 << (~(~abs(var_0)) % vec3<u32>(32u))) ^ vec3<u32>(~u_input.c.x, abs(72671u), _wgslsmith_mult_u32(4294967295u, var_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 1f, arg_0)) - 436f);
}

fn func_2() -> u32 {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));
    var var_1 = Struct_1(~abs(select(~global1.a, ~4294967295u, true)));
    global3 = array<vec2<i32>, 26>();
    global3 = array<vec2<i32>, 26>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, 443f) * vec2<f32>(-1000f, -764f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1165f, -700f), vec2<f32>(-1530f, 1576f)))), vec2<f32>(-1676f, _wgslsmith_f_op_f32(func_3(var_0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1193f, 466f) + vec2<f32>(1671f, 527f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, 1136f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1226f, 200f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1875f, -103f) * vec2<f32>(-352f, -1000f)), select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), vec2<bool>(false, false)))))));
    return ~abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), var_1.a)) >> (78640u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 26>();
    var var_0 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(countOneBits(func_1()), 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)]) & global2[_wgslsmith_index_u32(func_2(), 22u)];
    var var_1 = abs(min(-1i, ~(~0i)));
    global3 = array<vec2<i32>, 26>();
    let var_2 = vec4<bool>(true, true, true, !(u_input.b == (~u_input.c.x << (1u % 32u))));
    var var_3 = global2[_wgslsmith_index_u32(~abs(4294967295u), 22u)];
    let var_4 = Struct_1(_wgslsmith_add_u32(u_input.b, global1.a));
    global0 = all(!var_2);
    let var_5 = vec4<f32>(-647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1442f) * 315f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(1213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(160f - 114f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x * var_5.x)))), _wgslsmith_f_op_f32(f32(-1f) * -757f)));
}

