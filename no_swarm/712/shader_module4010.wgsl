struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global0 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(round(1f));
    var var_1 = ~u_input.a.x;
    global1 = array<vec4<u32>, 14>();
    var var_2 = countOneBits(reverseBits(-vec3<i32>(arg_0.b.x, 0i, 2176i)));
    return max(arg_0.a, _wgslsmith_div_vec4_i32(~(arg_0.a ^ select(arg_0.a, arg_0.a, global0.c)), global0.a));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = Struct_2(firstLeadingBit(func_3(Struct_2(vec4<i32>(-2147483647i, 55263i, u_input.c, 40292i) & vec4<i32>(34588i, global0.b.x, 13376i, -15836i), ~vec2<i32>(50752i, global0.b.x), any(vec2<bool>(global0.c, arg_1)), global0.d))), select(global0.a.zz, u_input.e.zz, true), any(!select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, true, true, global0.d.x), arg_1)) & global0.c, global0.d);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))) + -189f);
    global1 = array<vec4<u32>, 14>();
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-342f)))), 330f)))));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_i32(global0.a ^ vec4<i32>(func_3(Struct_2(global0.a, vec2<i32>(-2147483647i, -1i), arg_1, global0.d)).x, max(u_input.e.x, -2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(-20993i, global0.a.x))), vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, max(-2147483647i, -1i)), func_3(Struct_2(vec4<i32>(u_input.e.x, global0.b.x, u_input.c, global0.b.x), global0.b, arg_1, vec2<bool>(arg_1, arg_1))).x, ~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, global0.b.x), vec3<i32>(0i, u_input.e.x, 0i)))), vec2<i32>(u_input.e.x, ~_wgslsmith_div_i32(14274i, -1i)), arg_1, !select(select(global0.d, !global0.d, !global0.c), vec2<bool>(global0.c, arg_1 | arg_1), all(!vec3<bool>(arg_1, arg_1, global0.d.x))));
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.d.x;
    global1 = array<vec4<u32>, 14>();
    var var_1 = Struct_2(~(~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global0.a, global0.a), vec4<i32>(u_input.e.x, 0i, u_input.c, global0.a.x))), ~vec2<i32>(min(~global0.b.x, -23549i), global0.b.x), true, !global0.d);
    let var_2 = arg_1;
    global0 = Struct_2(vec4<i32>(-5301i, ~global0.b.x, u_input.c, -abs(-2147483647i)), -(~firstTrailingBit(u_input.e.xy)), any(!(!(!vec2<bool>(arg_3, true)))), vec2<bool>(!var_1.d.x, true));
    return Struct_2(vec4<i32>(var_1.a.x, u_input.e.x, 0i, u_input.e.x) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 14u)], ~vec4<u32>(var_0, u_input.b.x, 58998u, var_0)), global1[_wgslsmith_index_u32(~(~50265u), 14u)]) % vec4<u32>(32u)), select(u_input.e.xz, vec2<i32>(min(1i, ~global0.a.x), ~firstTrailingBit(1i)), select(select(select(vec2<bool>(true, global0.d.x), vec2<bool>(true, arg_3), global0.d), !var_1.d, vec2<bool>(arg_3, arg_3)), global0.d, !(!global0.d))), all(select(!(!vec4<bool>(false, false, arg_3, global0.c)), select(!vec4<bool>(true, true, false, arg_3), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.d.x, false, arg_3, arg_3), vec4<bool>(false, global0.d.x, arg_3, false), vec4<bool>(global0.c, true, false, false))), true)), global0.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: bool) -> vec3<f32> {
    global1 = array<vec4<u32>, 14>();
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1246f, -888f), vec2<f32>(-291f, -498f), vec2<bool>(global0.c, true)))))), _wgslsmith_f_op_f32(840f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(201f, 743f, arg_2)) * -483f)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, -491f, -1073f) * vec3<f32>(-617f, 770f, 417f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1151f, -871f, 439f) + vec3<f32>(139f, -288f, 787f)), !vec3<bool>(global0.d.x, arg_2, global0.d.x)))), true), true);
    let var_0 = 562f;
    var var_1 = ~(~(~(abs(vec4<i32>(16012i, u_input.e.x, -2147483647i, 37486i)) << (vec4<u32>(7677u, 23053u, u_input.b.x, arg_0.x) % vec4<u32>(32u)))));
    let var_2 = u_input.e.x;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1926f, var_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1526f, 674f, 1163f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(reverseBits(global0.a)), select(_wgslsmith_mod_vec2_i32(~u_input.e.xy, -vec2<i32>(-1i, u_input.c)) << (firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.d.ww, u_input.d.xx)) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), min(u_input.e.yy, vec2<i32>(1i, 1i))), select(select(!vec2<bool>(global0.d.x, false), vec2<bool>(false, global0.c), select(global0.d, vec2<bool>(true, global0.d.x), global0.d)), global0.d, !select(vec2<bool>(false, false), vec2<bool>(global0.c, true), false))), global0.d.x, select(vec2<bool>(false, any(!vec4<bool>(false, true, false, global0.d.x))), vec2<bool>(global0.c, true), !any(vec2<bool>(global0.c, global0.c)) & true));
    let var_1 = abs(64862u);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) * -1545f), var_0.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)))), 452f));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2.a))))));
    global1 = array<vec4<u32>, 14>();
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(firstLeadingBit(u_input.a), 9106i << (1u % 32u), !global0.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, var_2.a.x, var_2.a.x) * _wgslsmith_f_op_vec3_f32(trunc(var_2.a))))));
    var_3 = var_2;
    var var_4 = func_4(var_2.a.yy, var_3.a.x, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.a, u_input.e.x, global0.d.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1336f, 275f, 752f)))), any(vec2<bool>(global0.c, !global0.c))), false);
    var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_3.a.x, var_3.a.x, 1216f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a.x, var_3.a.x, -1427f, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1009f, var_2.a.x, var_2.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f))) - var_3.a.x), _wgslsmith_f_op_vec3_f32(min(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a)), var_0.c).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x - var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_2.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1220f, var_3.a.x, var_3.a.x)) - vec4<f32>(var_2.a.x, var_2.a.x, -163f, var_3.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1157f, -490f, var_3.a.x, 627f) + vec4<f32>(var_3.a.x, var_2.a.x, var_3.a.x, -431f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_2.a.x, var_2.a.x, var_3.a.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.a.x, 584f, var_3.a.x, -949f)))), vec4<f32>(-485f, _wgslsmith_f_op_f32(ceil(-271f)), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_3.a.x)), true | var_0.d.x)))), 290f);
}

