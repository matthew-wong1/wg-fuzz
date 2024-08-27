struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = !(!vec4<bool>(!arg_0.b, !(!arg_0.b), all(select(vec3<bool>(arg_2.x, arg_0.b, true), vec3<bool>(false, true, false), global0.b)), true));
    global0 = arg_0;
    global0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1183f - _wgslsmith_f_op_f32(-arg_0.c.x)))));
    let var_2 = _wgslsmith_f_op_f32(sign(arg_0.c.x));
    return var_0;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2;
    var var_1 = countOneBits(u_input.a.x);
    global0 = Struct_1(global0.a, !all(!func_3(Struct_1(66936i, global0.b, global0.c), -217f, vec2<bool>(arg_2.a, arg_2.a), Struct_3(u_input.a, global0.a, vec3<i32>(-518i, global0.a, global0.a)))), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(ceil(-1262f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f * global0.c.x)))), -1098f));
    var var_2 = firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(global0.a, global0.a, -2147483647i)), -select(vec3<i32>(global0.a, 0i, global0.a), vec3<i32>(global0.a, global0.a, global0.a), vec3<bool>(false, true, global0.b))), ~vec3<i32>(global0.a, global0.a, -global0.a)));
    let var_3 = Struct_3(min(~(~u_input.a | firstLeadingBit(vec3<u32>(arg_1, 986u, 1u))), arg_0 ^ ~arg_0), -38273i, vec3<i32>(~(~(23012i | var_2.x)), min(~var_2.x, var_2.x), global0.a));
    return var_3.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = any(!vec2<bool>(1347f < _wgslsmith_f_op_f32(min(-1326f, global0.c.x)), func_3(Struct_1(30045i, true, global0.c), global0.c.x, func_3(Struct_1(global0.a, global0.b, vec4<f32>(-513f, 342f, global0.c.x, 790f)), global0.c.x, vec2<bool>(true, false), Struct_3(vec3<u32>(u_input.a.x, arg_0.x, 53190u), 33958i, arg_1.c)).yy, arg_1).x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.c.xw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.yx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, 1042f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2535f, global0.c.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.c.xw))));
    let var_2 = Struct_2(true);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a | (i32(-1i) * -15631i), ~(-25388i) << (_wgslsmith_dot_vec2_u32(arg_1.a.zz, vec2<u32>(0u, 1u)) % 32u), _wgslsmith_div_i32(~arg_1.b, global0.a), ~countOneBits(arg_1.c.x)), vec4<i32>(~global0.a >> (4294967295u % 32u), firstLeadingBit(~2147483647i), max(2147483647i, arg_1.b) >> (~arg_1.a.x % 32u), arg_1.b)), func_3(Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.c)))), -2197f, select(vec2<bool>(false, global0.b), vec2<bool>(false & global0.b, global0.b), var_2.a), arg_1).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -124f, global0.c.x, global0.c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, -583f, -808f, global0.c.x)), vec4<f32>(global0.c.x, global0.c.x, var_1.x, var_1.x), !vec4<bool>(var_2.a, false, true, true)))))));
    let var_4 = vec4<bool>(all(vec2<bool>(!var_2.a, true)), true, false, true);
    return Struct_1(-2147483647i, func_3(var_3, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(335f + -488f)), !select(var_4.zw, vec2<bool>(true, var_4.x), vec2<bool>(false, false)), arg_1).x, vec4<f32>(_wgslsmith_f_op_f32(step(-781f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_3.c.x)))))), -409f, var_1.x, global0.c.x));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global0 = func_4(~(~vec2<u32>(func_2(u_input.a, 20413u, Struct_2(true)), 105913u)), Struct_3(vec3<u32>(~35424u << (~4294967295u % 32u), u_input.a.x, func_2(select(u_input.a, u_input.a, arg_0.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(global0.b))), 1i, firstLeadingBit(vec3<i32>(global0.a, 9176i, i32(-1i) * -1i))));
    return _wgslsmith_div_f32(global0.c.x, global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, global0.c.x, -1795f));
    let var_1 = vec4<f32>(1712f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-685f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, -391f) + -330f)) - global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1309f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x * -1227f)))) + _wgslsmith_f_op_f32(select(-150f, _wgslsmith_f_op_f32(f32(-1f) * -193f), global0.a <= (global0.a & -1i)))));
    global0 = Struct_1(1i, true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, global0.b, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - var_1.x)), 524f, _wgslsmith_f_op_f32(639f - var_0.x)), _wgslsmith_f_op_vec4_f32(-global0.c)));
    global0 = Struct_1(1i, global0.b, var_1);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) * global0.c)), select(select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), select(vec4<bool>(true, global0.b, global0.b, global0.b), vec4<bool>(true, true, false, true), vec4<bool>(global0.b, true, false, global0.b)), !vec4<bool>(global0.b, true, false, true)), func_3(func_4(vec2<u32>(u_input.a.x, u_input.a.x), Struct_3(vec3<u32>(0u, 0u, 4294967295u), 1i, vec3<i32>(global0.a, global0.a, global0.a))), _wgslsmith_f_op_f32(-var_0.x), select(vec2<bool>(global0.b, false), vec2<bool>(false, global0.b), global0.b), Struct_3(u_input.a, 37777i, vec3<i32>(global0.a, global0.a, 1i))), vec4<bool>(global0.b, global0.b, true, global0.b)))), _wgslsmith_add_i32(-2147483647i, abs(_wgslsmith_mod_i32(-1i, abs(5380i)))), -max(vec2<i32>(-1i ^ global0.a, global0.a), -vec2<i32>(50881i, 22423i) | (vec2<i32>(global0.a, -9549i) >> (u_input.a.xz % vec2<u32>(32u)))));
}

