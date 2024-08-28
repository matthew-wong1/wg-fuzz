struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(35400u, 4294967295u), vec2<f32>(-1000f, -1000f), false, false, vec4<f32>(-596f, 537f, -200f, 272f));

var<private> global1: array<vec3<bool>, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(~vec2<u32>(global0.a.x, ~1638u) ^ ~countOneBits(vec2<u32>(global0.a.x, global0.a.x)), _wgslsmith_f_op_vec2_f32(global0.b * global0.b), global0.c, all(!vec3<bool>(global0.d, !global0.d, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.e.x, 656f, 1338f, 284f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, global0.e.x, global0.b.x), vec4<f32>(-678f, 154f, -758f, global0.e.x))))));
    let var_1 = vec4<bool>(all(select(select(vec4<bool>(global0.c, true, true, true), vec4<bool>(var_0.d, true, global0.c, false), vec4<bool>(true, global0.c, global0.d, var_0.c)), select(vec4<bool>(global0.c, global0.c, global0.d, false), vec4<bool>(true, var_0.c, var_0.d, var_0.c), vec4<bool>(true, false, false, var_0.c)), true & var_0.c)) || true, var_0.c, global0.d | true, true);
    var_0 = Struct_1(~(~abs(~var_0.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, -346f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e.zw), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1158f, var_0.e.x) - global0.e.wz)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.e.x, 842f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - global0.e.x), _wgslsmith_f_op_f32(max(var_0.b.x, global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -2304f))) >= global0.e.x, global0.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, global0.e.x, var_1.x))), var_0.b.x), _wgslsmith_f_op_f32(-858f * var_0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + global0.b.x)), -1374f)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -345f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(var_0.e.xxz, global0.e.yzz, !select(select(var_1.wxx, select(vec3<bool>(true, false, global0.d), vec3<bool>(true, var_0.d, false), vec3<bool>(var_0.d, true, global0.c)), select(global1[_wgslsmith_index_u32(var_0.a.x, 31u)], global1[_wgslsmith_index_u32(global0.a.x, 31u)], vec3<bool>(var_0.d, var_1.x, true))), !(!vec3<bool>(var_0.c, false, global0.d)), vec3<bool>(true, false, global0.d | var_1.x))));
    let var_3 = Struct_1(global0.a & vec2<u32>(~_wgslsmith_mod_u32(36865u, global0.a.x), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(466f, var_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1875f, -271f)), var_0.b, vec2<bool>(false, false))))), any(vec3<bool>(u_input.c.x <= _wgslsmith_mod_i32(19131i, u_input.b), select(global0.a.x >= var_0.a.x, !var_1.x, any(var_1.yx)), global0.d)), var_0.d, _wgslsmith_f_op_vec4_f32(global0.e - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e + global0.e) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(320f, 2052f, global0.e.x, global0.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1143f, var_0.b.x, global0.b.x, global0.e.x) + vec4<f32>(1000f, -514f, -113f, global0.b.x))))));
    return _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(315f, _wgslsmith_f_op_f32(var_2.x * -617f)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = u_input.c.x;
    let var_1 = ~(~(~(~(global0.a.x >> (0u % 32u)))));
    var_0 = 2147483647i;
    var_0 = firstLeadingBit(i32(-1i) * -14201i);
    var_0 = ~u_input.d;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f + arg_3.x))), arg_3.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), arg_2))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -502f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.x, 832f))), _wgslsmith_f_op_vec2_f32(-global0.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(188f, 611f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, global0.e.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, -1050f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, global0.e.x) - _wgslsmith_f_op_vec2_f32(func_2(-127f, 3472u, global0.b.x, vec3<f32>(global0.e.x, global0.e.x, -221f))))))));
    var var_1 = Struct_1(~global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e.x, 905f) * -506f), -912f)), true, global0.d, global0.e);
    let var_2 = -select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -13894i, -1006i, arg_0), u_input.c, u_input.c) >> (vec4<u32>(53816u, 4294967295u << (var_1.a.x % 32u), 54619u, max(1u, global0.a.x)) % vec4<u32>(32u)), ~(u_input.c >> (select(vec4<u32>(26371u, 1u, 16591u, 134008u), vec4<u32>(global0.a.x, var_1.a.x, global0.a.x, var_1.a.x), vec4<bool>(global0.d, var_1.c, true, var_1.c)) % vec4<u32>(32u))), select(select(!vec4<bool>(true, global0.d, global0.d, global0.d), !vec4<bool>(false, true, false, global0.d), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_1.c, global0.d, global0.c, var_1.c), vec4<bool>(var_1.c, var_1.d, false, true), true), var_1.c));
    var_1 = Struct_1(~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(75487u, var_1.a.x)), vec2<u32>(~var_1.a.x, 4294967295u)), var_1.e.wx, true, true, global0.e);
    var_1 = Struct_1(global0.a, _wgslsmith_div_vec2_f32(var_0, vec2<f32>(var_0.x, _wgslsmith_f_op_vec2_f32(func_2(1313f, ~36632u, _wgslsmith_f_op_f32(select(var_1.e.x, var_1.e.x, var_1.c)), var_1.e.yyx)).x)), !global0.c, any(vec4<bool>(true, var_1.d, _wgslsmith_add_i32(arg_0, arg_0) >= firstLeadingBit(var_2.x), all(vec2<bool>(global0.c, var_1.d)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-226f, var_1.e.x, global0.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-109f - var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1685f)) + _wgslsmith_f_op_f32(-global0.e.x))))));
    return Struct_1(vec2<u32>(var_1.a.x, _wgslsmith_mult_u32(~var_1.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, 18319u, var_1.a.x), vec3<u32>(43243u, 4294967295u, global0.a.x), vec3<u32>(global0.a.x, global0.a.x, var_1.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(31511u, global0.a.x, global0.a.x), vec3<u32>(19984u, 0u, global0.a.x), vec3<u32>(var_1.a.x, 31217u, var_1.a.x))))), vec2<f32>(564f, _wgslsmith_f_op_f32(sign(global0.b.x))), true, true, _wgslsmith_f_op_vec4_f32(-global0.e));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-arg_0.e.xw), reverseBits(global0.a.x) != 10004u, true, vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(arg_0.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.e.x)) * _wgslsmith_div_f32(global0.e.x, 916f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.e.x)))));
    let var_0 = false;
    global1 = array<vec3<bool>, 31>();
    let var_1 = arg_0;
    global0 = Struct_1(_wgslsmith_add_vec2_u32(~min(var_1.a, countOneBits(vec2<u32>(global0.a.x, var_1.a.x))), _wgslsmith_mult_vec2_u32(arg_0.a, vec2<u32>(~4294967295u, _wgslsmith_div_u32(global0.a.x, arg_0.a.x)))), global0.b, !(!(!any(vec4<bool>(arg_0.c, global0.c, global0.c, var_1.d)))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(arg_0.e)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), arg_0.e.x, _wgslsmith_f_op_f32(exp2(global0.e.x)), _wgslsmith_f_op_f32(-1000f + -1000f)), !var_0 | (u_input.e <= 5393i)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(vec2<u32>(global0.a.x ^ 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 1u, global0.a.x, 5600u), vec4<u32>(16752u, 72033u, global0.a.x, global0.a.x))) | global0.a), global0.b, false, !(!(!any(global1[_wgslsmith_index_u32(63713u, 31u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e, global0.e))))));
    global1 = array<vec3<bool>, 31>();
    let var_0 = any(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, global0.d), vec2<bool>(global0.d, true)), !vec2<bool>(global0.c, false), !global0.d), vec2<bool>(global0.d, !(global0.c & true)), false));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, global0.b.x, -2578f))) - global0.e.zwx) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1538f)), global0.e.x, _wgslsmith_div_f32(global0.e.x, -771f))))));
    global0 = func_4(func_1(select(min(u_input.b, u_input.e) & (-30819i & u_input.b), 1i, all(select(vec2<bool>(global0.d, var_0), vec2<bool>(false, var_0), var_0))), u_input.a));
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(exp2(global0.e.yx)), !(!func_4(Struct_1(global0.a, var_1.zx, global0.d, global0.d, vec4<f32>(global0.e.x, global0.b.x, -540f, -322f))).d), _wgslsmith_mod_u32(countOneBits(min(global0.a.x, 4294967295u)), func_4(func_4(Struct_1(global0.a, vec2<f32>(global0.b.x, -295f), true, true, global0.e))).a.x) >= global0.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_vec2_f32(func_3()).x) + -2613f), _wgslsmith_f_op_f32(step(680f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))), _wgslsmith_f_op_f32(exp2(global0.e.x)), var_0)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(vec3<u32>(_wgslsmith_div_u32(var_2.a.x, global0.a.x), abs(119155u), var_2.a.x)), max(abs(~vec3<u32>(global0.a.x, var_2.a.x, 18946u)), abs(~vec3<u32>(global0.a.x, var_2.a.x, global0.a.x))), all(vec4<bool>(var_2.d, all(vec4<bool>(var_2.d, global0.d, var_0, false)), 1u == var_2.a.x, true))), var_2.b.x);
}

