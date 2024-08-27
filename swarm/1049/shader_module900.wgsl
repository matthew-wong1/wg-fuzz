struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_1(false, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), vec3<u32>(u_input.a.x, ~(~_wgslsmith_add_u32(44159u, arg_0)), 1u), arg_0, -2147483647i);
    let var_1 = any(!vec3<bool>(var_0.b, true, var_0.a));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(f32(-1f) * -498f));
    var var_3 = var_0;
    var_3 = var_0;
    return vec4<bool>(true, true, true, false);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 7>();
    let var_0 = abs(vec3<i32>(~firstTrailingBit(min(26852i, 8624i)), -u_input.b, _wgslsmith_sub_i32(-2147483647i, u_input.b)));
    let var_1 = vec4<i32>(abs(~(i32(-1i) * -8434i)), max(u_input.b, ~(-2147483647i)), var_0.x, -countOneBits(_wgslsmith_mod_i32(~2147483647i, arg_3.x ^ arg_0.x)));
    var var_2 = global1[_wgslsmith_index_u32(max(arg_2 | reverseBits(~1u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, u_input.a.x), u_input.a), vec2<u32>(46623u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)))), 5u)];
    global0 = array<Struct_1, 7>();
    return !(!vec4<bool>(!var_2.b | var_2.a, false, false, any(vec3<bool>(var_2.a, var_2.b, true)) && select(false, false, true)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 7>();
    let var_0 = !(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), func_2(u_input.a.x)), func_3(vec4<i32>(15853i, -1i, -5268i, 1i), _wgslsmith_f_op_f32(sign(496f)), 21536u, min(vec2<i32>(65654i, u_input.b), vec2<i32>(u_input.c.x, u_input.c.x))), true));
    var var_1 = u_input.c.x;
    let var_2 = u_input.a;
    let var_3 = !vec3<bool>(all(var_0.zw), (false & all(vec3<bool>(false, false, true))) & true, var_0.x);
    return global0[_wgslsmith_index_u32(abs(max(54415u, 10023u)), 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.c.yz, arg_0.c.zy), func_1().c.yz, firstLeadingBit(~vec2<u32>(31310u, 125188u))), ~min(_wgslsmith_sub_vec2_u32(~arg_2.c.zx, max(vec2<u32>(0u, u_input.a.x), arg_0.c.yy)), arg_0.c.yx)), 7u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 1291f) + _wgslsmith_f_op_f32(1555f * var_1));
    let var_3 = vec2<bool>(!(arg_2.e < _wgslsmith_clamp_i32(arg_2.e, _wgslsmith_add_i32(-5128i, u_input.c.x), max(-2147483647i, arg_0.e))), var_0.a);
    return !(!var_3);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<f32> {
    global0 = array<Struct_1, 7>();
    let var_0 = func_1();
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    let var_1 = func_1();
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-822f, 1063f, -2077f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1018f, -1788f, arg_2.x))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = !(!(!vec3<bool>(any(vec4<bool>(false, true, true, false)), select(false, true, true), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1278f, 1139f)) * 2900f) * 1815f), -324f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f)) * -1668f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-993f, -591f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1454f, 530f, -1193f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-761f + -430f) + _wgslsmith_f_op_f32(sign(-1319f))), _wgslsmith_f_op_f32(f32(-1f) * -1442f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f + -616f) + _wgslsmith_f_op_f32(sign(-470f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(func_5(select(select(var_1.zy, select(vec2<bool>(false, false), !vec2<bool>(var_1.x, true), select(var_1.zz, var_1.zz, vec2<bool>(var_1.x, var_1.x))), all(!vec4<bool>(var_1.x, false, false, var_1.x))), select(var_1.xx, select(var_1.yx, var_1.xx, var_1.zy), true), func_4(func_1(), Struct_1(var_1.x, true, vec3<u32>(var_0, 4294967295u, u_input.a.x) << (vec3<u32>(0u, 74705u, 1u) % vec3<u32>(32u)), ~71070u, i32(-1i) * -1i), Struct_1(false, var_1.x, func_1().c, ~4294967295u, -u_input.c.x), -vec4<i32>(u_input.c.x, -1i, u_input.b, 0i) ^ ~vec4<i32>(-1i, u_input.c.x, 77518i, u_input.b))), global0[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.zz, var_2.zx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -1000f), var_1.xx))));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(283f, var_2.x, -821f, 632f), vec4<f32>(var_2.x, var_2.x, 1164f, var_2.x)), vec4<f32>(276f, -654f, var_2.x, 661f), 1i > u_input.c.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.yy, var_2.xz)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1055f, -1836f) + var_2.xy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_5(select(var_1.xx, var_3.zz, vec2<bool>(false, var_1.x)), global1[_wgslsmith_index_u32(var_0, 5u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, 259f)))).zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.xy, var_2.zx, var_3.xz))))), (select(_wgslsmith_add_u32(26506u, 46484u), 61951u >> (u_input.a.x % 32u), true) & 2738u) | u_input.a.x);
}

