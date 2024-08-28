struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    global0 = array<vec2<u32>, 14>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1039f))) * _wgslsmith_f_op_f32(select(-604f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 1524f))), -2390f)), arg_1)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(659f));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f - _wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(f32(-1f) * -1784f)))), _wgslsmith_f_op_f32(select(arg_1.d.x, var_0, all(arg_1.a.zxw))), _wgslsmith_f_op_f32(func_3(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -240f)) >= _wgslsmith_f_op_f32(floor(1018f)), arg_1.c)), var_0);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<u32>, 14>();
    global0 = array<vec2<u32>, 14>();
    var var_0 = Struct_1(!select(select(vec4<bool>(arg_0, arg_0, false, false), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, arg_0, true)), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(arg_0, false, false, true), true), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, true, true))), arg_0), ~u_input.c, u_input.a.zx, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -361f, _wgslsmith_f_op_f32(-1000f * arg_2.x), _wgslsmith_f_op_f32(arg_2.x * 1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1601f), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(474f, arg_2.x) * _wgslsmith_f_op_f32(trunc(1631f))), arg_2.x))), any(!(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, false)))));
    global0 = array<vec2<u32>, 14>();
    global0 = array<vec2<u32>, 14>();
    return Struct_1(var_0.a, reverseBits(-abs(u_input.b)) << (~(~(~17934u)) % 32u), ~(abs(vec2<i32>(var_0.b, u_input.a.x)) >> (vec2<u32>(1u & arg_1, arg_1) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, 159f, 1885f, -873f), var_0.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, 253f, 1184f, -1028f) * arg_2)))), all(var_0.a.wx));
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    global0 = array<vec2<u32>, 14>();
    let var_0 = func_4(arg_0, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(arg_0, false), Struct_1(vec4<bool>(arg_0, arg_0, true, false), u_input.a.x, vec2<i32>(-1i, -2147483647i), vec4<f32>(755f, 1285f, 549f, arg_1), arg_0)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1486f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -1545f, 1000f, arg_1)))))));
    global0 = array<vec2<u32>, 14>();
    global0 = array<vec2<u32>, 14>();
    var var_1 = vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(func_3(true & any(var_0.a), var_0.a.x, -vec2<i32>(0i, u_input.a.x << (4294967295u % 32u)))), func_4(any(select(var_0.a.wxx, vec3<bool>(var_0.e, true, var_0.a.x), vec3<bool>(false, false, false))), min(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(87772u, 4294967295u)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 23725u), 14u)]), ~(~0u)), var_0.d).d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + var_0.d.x))))));
    return (!var_0.a.x || !arg_0) & false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = 1u;
    var var_2 = vec2<bool>(((1u | _wgslsmith_div_u32(var_1, 1u)) < _wgslsmith_add_u32(var_1, 0u)) && true, func_1(false, _wgslsmith_div_f32(-1000f, -1021f)));
    var_2 = !select(select(vec2<bool>(false, false), select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, false)), func_4(var_2.x, var_1, vec4<f32>(120f, 1450f, 376f, -877f)).a.yz, !vec2<bool>(var_2.x, false)), vec2<bool>(true, all(vec4<bool>(var_2.x, var_2.x, true, false)))), !vec2<bool>(false, var_1 != var_1), !select(vec2<bool>(true, true), vec2<bool>(true, false), false));
    var var_3 = 2147483647i;
    let var_4 = Struct_1(vec4<bool>(!(!all(vec2<bool>(true, true))), var_2.x, false | any(vec2<bool>(var_2.x, var_2.x)), var_2.x), max(24311i, u_input.c), u_input.a.xx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1049f, -859f, 1489f))) * _wgslsmith_f_op_vec4_f32(func_4(var_2.x, 1u, vec4<f32>(-918f, 2147f, 392f, 937f)).d * _wgslsmith_f_op_vec4_f32(vec4<f32>(-708f, 986f, 2190f, 1000f) * vec4<f32>(-1412f, -503f, 1979f, -101f)))), vec4<f32>(-1459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-544f, 931f, var_2.x)) + _wgslsmith_f_op_f32(-1983f * 645f)), _wgslsmith_f_op_vec4_f32(func_2(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x)), Struct_1(vec4<bool>(var_2.x, true, false, var_2.x), u_input.b, vec2<i32>(u_input.b, 2147483647i), vec4<f32>(-340f, -236f, -2038f, -704f), var_2.x))).x, -685f))), !(1i <= func_4(any(vec2<bool>(var_2.x, var_2.x)), var_1, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(564f, 895f, -1425f, 584f)))).c.x));
    var var_5 = var_4.d.x;
    var var_6 = Struct_2(var_4, func_4(false, var_1, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(247f, var_4.d.x, var_4.d.x, var_4.d.x) - vec4<f32>(-1134f, -852f, -1627f, 970f))))), !(!(!(-1227f <= var_4.d.x))), vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.c, 1i), var_4.b), ~(-14720i)), _wgslsmith_clamp_vec2_i32(-reverseBits(~u_input.a.zx), vec2<i32>(-1i, u_input.a.x << ((52373u & var_1) % 32u)), u_input.a.yy));
    var var_7 = func_4(!any(select(!vec4<bool>(true, true, var_4.e, true), !vec4<bool>(true, var_2.x, false, var_4.e), !var_6.a.a)), var_1, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.c.x, ~(countOneBits(u_input.b) >> (~select(var_1, var_1, false) % 32u)));
}

