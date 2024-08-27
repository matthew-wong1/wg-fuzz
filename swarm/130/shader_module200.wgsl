struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    global0 = array<bool, 25>();
    var var_0 = Struct_1(-1171f, arg_0);
    let var_1 = Struct_3(Struct_2(firstLeadingBit(~firstTrailingBit(arg_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-968f, var_0.a), _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(ceil(-298f)), _wgslsmith_f_op_f32(var_0.a * -1000f)), vec4<f32>(825f, _wgslsmith_f_op_f32(min(324f, var_0.a)), var_0.a, 1312f), -u_input.d.x != _wgslsmith_mult_i32(4731i, -27396i)))), Struct_2(var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1517f, var_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(abs(var_0.a)))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(var_0.a + -647f)), _wgslsmith_f_op_f32(-var_0.a))), Struct_2(abs(var_0.b), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, 1243f, -1094f)), Struct_2(0u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(310f, var_0.a, 195f, var_0.a), vec4<f32>(var_0.a, var_0.a, var_0.a, 989f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1625f, var_0.a, 790f)))))));
    let var_2 = ~_wgslsmith_clamp_u32(52665u, countOneBits(_wgslsmith_mult_u32(97415u, arg_0)), max(1u, firstLeadingBit(arg_1.x)));
    let var_3 = vec3<i32>(u_input.c.x, countOneBits(1i), _wgslsmith_add_i32(52964i, u_input.c.x));
    return -1075f;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = !vec4<bool>(!(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 25u)], global0[_wgslsmith_index_u32(arg_0.b, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])) | any(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(30258u, 25u)]))), !any(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(19574u, 25u)]), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(arg_0.b, 25u)]), true)), true, true);
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_1 = vec4<bool>(var_0.x, all(var_0.wxx), true, any(var_0.zyz));
    let var_2 = u_input.c;
    return _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_0.b, vec2<u32>(u_input.a.x, arg_0.b)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1086f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0)) + _wgslsmith_f_op_f32(round(-528f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(428f, 1000f, arg_0.a)))))));
    var var_1 = var_0.yy;
    var var_2 = select(!select(select(!vec3<bool>(arg_1.x, false, arg_1.x), select(vec3<bool>(false, false, arg_1.x), vec3<bool>(global0[_wgslsmith_index_u32(55840u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), arg_1.x), vec3<bool>(false, true, false)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(41774u, 25u)], arg_1.x)), arg_1.x), !select(vec3<bool>(arg_1.x, arg_1.x, true), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 25u)], arg_1.x)), select(vec3<bool>(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(arg_0.b, 25u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.b, 25u)], global0[_wgslsmith_index_u32(18457u, 25u)]), false)), vec3<bool>(!arg_1.x, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 49174u), 25u)], all(select(!vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 25u)], arg_1.x, arg_1.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false, true))))));
    let var_3 = Struct_1(-261f, ~u_input.b);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f + _wgslsmith_f_op_f32(floor(-534f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(func_3(~max(var_3.b | u_input.b, arg_0.b & 1u), reverseBits(vec2<u32>(firstTrailingBit(var_3.b), var_3.b)))), var_1.x);
    return reverseBits(countOneBits(vec2<u32>(max(abs(0u), var_3.b), _wgslsmith_mod_u32(~72253u, 4294967295u))));
}

fn func_4(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = any(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(27753u, 25u)], true, global0[_wgslsmith_index_u32(4294967295u, 25u)]))));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(~(~vec3<u32>(1u, u_input.b, 0u))), reverseBits(u_input.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1318f)), 2066f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-983f - -1626f), _wgslsmith_f_op_f32(round(1265f)))), 476f)));
    global0 = array<bool, 25>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-var_1.b.x), arg_0.x & ~0u))), _wgslsmith_f_op_f32(floor(var_1.b.x)));
    let var_3 = global0[_wgslsmith_index_u32(~1u, 25u)];
    return !(!select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(~u_input.e.x, 25u)]), select(!vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], false, global0[_wgslsmith_index_u32(arg_0.x, 25u)])), vec3<bool>(true, false, !global0[_wgslsmith_index_u32(var_1.a, 25u)])));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_3(Struct_2(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -894f, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0)))), -650f, arg_0)), Struct_2(arg_1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 365f, -991f, arg_0)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -892f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -907f, 323f)))), Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2054f, 393f, -234f, arg_0))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1062f, -629f, arg_0, arg_0), vec4<f32>(-1347f, arg_0, arg_0, arg_0)))))), Struct_2(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(769f, 222f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 679f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(426f, -530f)))));
    let var_1 = -2147483647i;
    var var_2 = Struct_2(~0u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1362f), arg_0, _wgslsmith_f_op_f32(arg_0 + 1467f), _wgslsmith_f_op_f32(-var_0.d.b.x))))));
    let var_3 = !(true & all(arg_2.xy));
    let var_4 = any(!select(vec2<bool>(true, any(vec3<bool>(false, global0[_wgslsmith_index_u32(26432u, 25u)], false))), vec2<bool>(true, var_3), vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], false, true, true)), arg_0 != 642f)));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = select(vec3<bool>(var_0.x, func_5(_wgslsmith_f_op_f32(f32(-1f) * -566f), u_input.e, func_4(func_1(Struct_1(-905f, u_input.e.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0.x))), -(u_input.d >> (u_input.e.xy % vec2<u32>(32u)))), (-2147483647i ^ u_input.d.x) < 0i), func_4(u_input.e.zx), vec3<bool>(func_4(abs(u_input.e.xz)).x, var_0.x, false));
    var var_2 = Struct_2(2714u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(func_2(Struct_1(-431f, 0u))))), -1146f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-625f, -1683f)), -772f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) + -1306f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2428f, -435f) - _wgslsmith_f_op_f32(-1361f - 182f)), -359f, _wgslsmith_f_op_f32(f32(-1f) * -1956f))));
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), var_2.a), ~u_input.e.x, ~_wgslsmith_mult_u32(~var_2.a, countOneBits(0u))), vec4<u32>(~_wgslsmith_mult_u32(1u, var_2.a), var_2.a, firstLeadingBit(u_input.e.x), 4294967295u) >> (countOneBits(~firstLeadingBit(vec4<u32>(u_input.e.x, var_2.a, 1u, 0u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(641f, vec3<f32>(_wgslsmith_f_op_f32(select(var_2.b.x, -1626f, !global0[_wgslsmith_index_u32(~4126u, 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), -931f), var_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1773f, var_2.b.x)), var_2.b.ww)), _wgslsmith_f_op_vec2_f32(-var_2.b.zz))) - vec2<f32>(_wgslsmith_f_op_f32(286f - _wgslsmith_f_op_f32(-var_2.b.x)), var_2.b.x)));
}

