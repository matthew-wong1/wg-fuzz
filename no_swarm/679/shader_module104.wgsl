struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 82665u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = global0.a;
    global0 = Struct_3(Struct_2(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.b * global0.a.b))), var_0.c), Struct_1(vec3<i32>(-max(global0.c.a.x, global0.c.a.x), global0.b.a.x, ~global0.b.a.x), global0.b.b, !vec4<bool>(!global0.c.c.x, all(vec2<bool>(false, false)), all(vec4<bool>(true, false, arg_1, false)), arg_0)), global0.c, ~_wgslsmith_mod_vec4_u32(global0.d | (global0.d >> (vec4<u32>(u_input.a.x, 1u, global0.c.b, 1u) % vec4<u32>(32u))), global0.d));
    var var_1 = true;
    var var_2 = ~firstTrailingBit(u_input.a.x << (u_input.a.x % 32u));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1387f - 893f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), global0.a.b))));
    return global0.c.a.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_5(_wgslsmith_sub_i32(global0.b.a.x, func_3(global0.a.a, true) >> (reverseBits(~3682u) % 32u)), global0.c.a.x, global0.a, (global0.d.wzx ^ vec3<u32>(max(u_input.a.x, 6059u), reverseBits(6129u), 86981u)) >> (select(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, global0.d.x)), abs(~global0.d.yww), true) % vec3<u32>(32u)));
    global1 = u_input.a.x;
    let var_1 = Struct_5(var_0.b, ~(-_wgslsmith_add_i32(var_0.a << (var_0.d.x % 32u), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -358i))), var_0.c, global0.d.zwy);
    var_0 = var_1;
    global1 = select(u_input.a.x, abs(firstLeadingBit(global0.d.x)), all(vec4<bool>(var_0.c.c.x && (var_1.c.c.x | true), (var_0.a ^ -2147483647i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -30654i), global0.b.a), false, global0.b.c.x)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(747f, 696f, true)), _wgslsmith_f_op_f32(-var_1.c.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.b, global0.a.b)))))));
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) - global0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a.b, global0.a.b)))), -1416f)));
    let var_1 = -1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.b, max(max(1u, u_input.a.x), countOneBits(21779u))), vec2<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(70477u, 22917u, 26190u, 0u), vec4<u32>(u_input.a.x, global0.b.b, global0.d.x, 0u))))) % 32u);
    let var_2 = all(!select(select(!vec3<bool>(false, global0.b.c.x, false), global0.b.c.wzx, any(vec4<bool>(arg_0.c.x, arg_0.a, arg_0.c.x, arg_0.c.x))), vec3<bool>(true, true, select(false, false, false)), 1u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.b.b, global0.c.b, u_input.a.x), global0.d)));
    var var_3 = -1i;
    var_3 = global0.b.a.x;
    return min(~(-2147483647i), func_3(true, true));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> f32 {
    global0 = arg_1.a;
    var var_0 = Struct_1(~(-(~vec3<i32>(-2147483647i, -37125i, global0.c.a.x))), global0.d.x, !(!select(arg_1.a.b.c, select(vec4<bool>(global0.a.c.x, arg_1.a.a.a, global0.c.c.x, arg_1.a.b.c.x), global0.a.c, arg_1.a.c.c.x), !arg_1.a.b.c)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(579f * -364f), _wgslsmith_f_op_f32(exp2(global0.a.b)), arg_1.a.a.b, 577f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(874f, global0.a.b, -359f, arg_1.a.a.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(281f * arg_1.a.a.b), _wgslsmith_f_op_f32(-1740f - -1654f), _wgslsmith_f_op_f32(646f - global0.a.b)) + vec4<f32>(_wgslsmith_f_op_f32(1344f - -439f), -1755f, _wgslsmith_f_op_f32(-global0.a.b), -884f)))));
    let var_2 = arg_1.a.a;
    var_0 = arg_1.a.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-448f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(global0.b.b, u_input.a.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b, global0.a.b, global0.a.b, _wgslsmith_f_op_f32(func_4(func_1(global0.a), Struct_4(Struct_3(Struct_2(global0.c.c.x, -1759f, vec4<bool>(global0.a.a, global0.b.c.x, global0.c.c.x, global0.c.c.x)), Struct_1(vec3<i32>(global0.c.a.x, global0.c.a.x, 0i), global0.d.x, vec4<bool>(false, false, global0.a.a, true)), Struct_1(vec3<i32>(global0.b.a.x, global0.c.a.x, global0.c.a.x), 1u, vec4<bool>(true, global0.c.c.x, true, true)), vec4<u32>(global0.d.x, 1053u, 0u, 87983u)), 1u), _wgslsmith_mult_u32(u_input.a.x, 4294967295u)))))));
    let var_1 = Struct_5(func_3(false, all(vec2<bool>(!global0.b.c.x, all(global0.a.c.xwz)))), -1i, Struct_2(all(!select(vec2<bool>(false, global0.a.a), vec2<bool>(global0.a.a, global0.c.c.x), global0.b.c.yz)), _wgslsmith_f_op_f32(-193f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1270f * var_0.x), _wgslsmith_f_op_f32(global0.a.b - global0.a.b))), select(vec4<bool>(all(global0.b.c.xwz), true, true, false), vec4<bool>(global0.b.c.x, false, true, global0.c.c.x), false)), vec3<u32>(_wgslsmith_dot_vec4_u32(~global0.d, global0.d ^ ~vec4<u32>(4294967295u, global0.b.b, 4294967295u, global0.c.b)), 59411u, global0.b.b));
    let var_2 = var_1.d.x;
    global0 = Struct_3(global0.a, Struct_1(global0.c.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~var_1.d.yy, vec2<u32>(108009u, 110251u)), 59607u), !(!global0.a.c)), global0.c, ~_wgslsmith_clamp_vec4_u32(select(~global0.d, vec4<u32>(global0.d.x, 37197u, 1u, global0.c.b), global0.a.c), global0.d, ~select(global0.d, vec4<u32>(u_input.a.x, var_2, var_2, 43227u), global0.b.c.x)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1371f + var_1.c.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -116f), var_1.c.b, any(vec3<bool>(false, true, false)) && true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -616f)))))));
    global0 = Struct_3(global0.a, global0.c, Struct_1(max(global0.c.a, vec3<i32>(var_1.b, min(var_1.b, 2795i), _wgslsmith_clamp_i32(var_1.a, var_1.b, 1i))), ~(~(~var_1.d.x)), select(global0.c.c, global0.b.c, global0.b.c)), firstTrailingBit(_wgslsmith_add_vec4_u32(global0.d, countOneBits(global0.d))));
    var_3 = _wgslsmith_f_op_f32(-var_1.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(-10065i));
}

