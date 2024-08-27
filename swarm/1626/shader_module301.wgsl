struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(1144f, 578f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<f32> {
    global0 = ~(u_input.a << ((~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 0u)) ^ abs(u_input.b)) % 32u));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1538f, _wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1437f, -898f)) + vec2<f32>(global1.x, 420f))), vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-361f, var_0.x)))))))));
}

fn func_2() -> f32 {
    global0 = u_input.b;
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(global1.x, global1.x)) * vec2<f32>(global1.x, global1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))) + vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -1055f)))));
    global0 = _wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(min(~1u, ~0u), ~(~u_input.b)), u_input.a), u_input.a >> (~(~u_input.b) % 32u), 17075u);
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(554f, global1.x))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(110f * global1.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1815f)))));
    let var_0 = Struct_4(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), true, false)), !select(false, false, all(vec3<bool>(true, true, false)))));
    return global1.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_2())), 1365f)));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, global1.x, true)), 691f))), vec2<f32>(global1.x, _wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global1.x) - vec2<f32>(620f, var_0.x))) - vec2<f32>(var_0.x, _wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, 582f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))))));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(1326f)))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(1000f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * -1546f))), true, all(vec3<bool>(true, true | (var_0.x == var_0.x), all(vec2<bool>(true, false)))));
    let var_2 = any(vec3<bool>(any(vec2<bool>(any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), false)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), var_1.x), var_1.wxy, vec3<bool>(true, true, true))), all(var_1.wzw)));
    return _wgslsmith_sub_vec3_i32(-firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -15161i, 1i), vec3<i32>(-1i, -40155i, 33029i))) & (vec3<i32>(1i, -2147483647i, 0i) & (vec3<i32>(1i, 1i, 1i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(29146i, -2147483647i, -1i), vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(-1i, -13608i, 68308i)))), (max(countOneBits(vec3<i32>(-2147483647i, 10055i, 20227i)), vec3<i32>(37514i, 1i, -19029i) << (vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u))) & countOneBits(select(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(2147483647i, 16056i, -10773i), true))) & firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(-41084i, 1i), -2147483647i, i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_2 {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -630f)) - 383f))));
    let var_0 = Struct_1(func_1().x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, global1.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + 1977f)), !(!vec2<bool>(arg_2, arg_2)))), -30849i & arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1000f))), -499f));
    let var_1 = vec2<bool>(true, !arg_2);
    global1 = var_0.d.zy;
    let var_2 = arg_1.a;
    return Struct_2(!(var_0.d.x < global1.x), vec4<i32>(var_0.a, arg_3, arg_0.x, _wgslsmith_div_i32(1i, 5629i)) & max(firstTrailingBit(vec4<i32>(28476i, arg_0.x, 1i, -21282i)), abs(vec4<i32>(2147483647i, var_0.c, arg_3, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(~vec3<i32>(-3440i, 1i, -1i) ^ (func_1() | ~vec3<i32>(2147483647i, 36925i, -2147483647i))), Struct_3(vec2<u32>(u_input.b, u_input.a) | vec2<u32>(11525u, 16918u >> (u_input.a % 32u))), true, -max(i32(-1i) * -2147483647i, firstLeadingBit(1i)));
    let var_1 = vec2<bool>(any(select(!(!vec3<bool>(true, var_0.a, var_0.a)), vec3<bool>(true, all(vec3<bool>(var_0.a, var_0.a, false)), var_0.a), select(!vec3<bool>(var_0.a, true, true), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, false, var_0.a), false), true))), select(false, global1.x >= _wgslsmith_f_op_f32(global1.x + -1020f), true));
    let var_2 = ~0u & max(~(~_wgslsmith_sub_u32(u_input.a, u_input.b)), u_input.b);
    var var_3 = false;
    let var_4 = 0i;
    let var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.x, -1157f))));
    var var_6 = 4294967295u;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -801f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1211f, _wgslsmith_f_op_f32(f32(-1f) * -1152f), any(vec3<bool>(var_1.x, var_1.x, true)))), _wgslsmith_f_op_f32(step(-1499f, 1097f)))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-var_5)));
    let var_7 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 0u, u_input.a, 52135u) ^ vec4<u32>(1u, var_2, 0u, 77697u), vec4<u32>(1u, u_input.a, 1u, var_2) << (vec4<u32>(29058u, var_2, 47338u, 0u) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 0u, var_2), vec4<u32>(23922u, u_input.b, var_2, u_input.a)), ~(~vec4<u32>(27037u, u_input.b, 34121u, 72886u)) >> (vec4<u32>(abs(4294967295u), u_input.a, countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(1u, 0u, u_input.b, 0u))) % vec4<u32>(32u)), select(!select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_1.x, true), var_0.a), !select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(false, false, true, var_0.a), vec4<bool>(false, var_0.a, var_1.x, var_1.x)), !(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)))), firstTrailingBit(~firstTrailingBit(~vec4<u32>(1u, 12853u, 1u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-1268f, vec2<i32>(var_4, var_4), ~vec4<u32>(var_2, firstTrailingBit(min(var_7, 19025u)), firstTrailingBit(firstLeadingBit(9602u)), 1u), ~vec4<u32>(71002u, 18074u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(60693u, var_2), vec2<u32>(u_input.b, var_2), true), vec2<u32>(var_7, u_input.b)), u_input.a));
}

