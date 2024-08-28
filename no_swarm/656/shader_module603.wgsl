struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<u32, 8> = array<u32, 8>(0u, 4294967295u, 4294967295u, 45450u, 40689u, 4294967295u, 0u, 27932u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global0 = array<u32, 8>();
    var var_0 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(497f - _wgslsmith_f_op_f32(142f - 343f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, 615f, true)))))) <= 533f) & !(!(_wgslsmith_f_op_f32(241f * 2910f) < _wgslsmith_f_op_f32(select(641f, 391f, false))));
    global0 = array<u32, 8>();
    let var_1 = -select(select(2147483647i & firstTrailingBit(-2147483647i), -2147483647i, false | any(vec3<bool>(true, false, false))), firstLeadingBit(~max(u_input.a.x, u_input.a.x)), true);
    let var_2 = reverseBits(-1658i);
    return all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), 1u == _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(28055u, 8u)], u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42164u, 8u)], 8u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 527u))), !all(vec2<bool>(true, false))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: u32) -> bool {
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -828f);
    var var_1 = Struct_5(Struct_4(arg_1.b, Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, -926f, 633f, -129f), vec4<f32>(arg_2.x, arg_2.x, var_0, 1000f), arg_3 <= 4294967295u)), ~(arg_1.a.x | u_input.a.x), arg_1.b), _wgslsmith_f_op_vec2_f32(-arg_2.zy), func_3()), u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)) - _wgslsmith_f_op_f32(var_1.a.c.x * _wgslsmith_f_op_f32(-var_1.a.c.x))), var_1.a.c.x, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2, arg_2))), true));
    var_1 = Struct_5(Struct_4(Struct_1(vec3<u32>(4294967295u, 52247u, 7837u)), Struct_2(var_1.a.b.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 34057i), u_input.a), Struct_1(~var_1.a.b.c.a)), var_1.a.c, true), _wgslsmith_dot_vec2_u32(arg_1.b.a.zz, ~var_1.a.a.a.xy) ^ (arg_1.b.a.x ^ arg_0.a.x));
    return -u_input.b < (arg_1.a.x << (9039u % 32u));
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = ~1u ^ ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-235f, -541f), _wgslsmith_f_op_f32(f32(-1f) * -749f), 624f, _wgslsmith_f_op_f32(f32(-1f) * -304f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(432f + -1538f), -1483f, !arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-615f)), _wgslsmith_div_f32(1059f, 607f)))))));
    var var_2 = !(!vec3<bool>(arg_0.x, false, true));
    var var_3 = var_2.x;
    let var_4 = -2147483647i;
    return Struct_3(~select(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 9790i, 12409i), vec3<i32>(u_input.b, 2147483647i, u_input.a.x))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_4, -1i), vec3<i32>(u_input.a.x, -5652i, u_input.b)), select(arg_0.zzy, select(vec3<bool>(true, false, false), vec3<bool>(false, true, arg_0.x), false), var_2.x)), Struct_1(~vec3<u32>(u_input.c.x | 0u, ~global0[_wgslsmith_index_u32(u_input.c.x, 8u)], _wgslsmith_clamp_u32(4294967295u, 5700u, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.b.a.x;
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(false, true, true, true)), arg_0.b.a.x != u_input.c.x), vec3<bool>(true, true, true)), select(vec3<bool>(func_2(Struct_1(arg_0.b.a), arg_0, vec4<f32>(309f, 788f, -1000f, 458f), 43575u), func_3(), 1u < u_input.c.x), vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.c.x >= 80042u)), true), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), func_2(arg_0.b, Struct_3(vec3<i32>(arg_0.a.x, arg_0.a.x, 43418i), Struct_1(arg_0.b.a)), vec4<f32>(1174f, -392f, 549f, 194f), var_0)), vec3<bool>(select(false, false, true), true, true)), vec3<bool>(false, 13715u < func_4(vec4<bool>(true, false, true, false)).b.a.x, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))), select(vec3<bool>(arg_0.a.x != -2147483647i, true, select(true, true, false)), vec3<bool>(all(vec3<bool>(true, true, false)), false, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))));
    var_1 = vec3<bool>(true, var_1.x, false);
    global0 = array<u32, 8>();
    var_1 = vec3<bool>(false, !var_1.x, (u_input.c.x <= _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0, 40852u, 4294967295u, var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 8u)], 1u, var_0, global0[_wgslsmith_index_u32(var_0, 8u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 38843u, var_0, 22002u)))) & func_2(Struct_1(~vec3<u32>(var_0, 1u, 0u)), Struct_3(~vec3<i32>(arg_0.a.x, arg_0.a.x, 2147483647i), func_4(vec4<bool>(var_1.x, false, false, var_1.x)).b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1068f, 485f, 1006f, 412f) + vec4<f32>(-489f, 727f, -162f, 876f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1377f, -578f, 1093f, -835f))), arg_0.b.a.x));
    return Struct_1(vec3<u32>(64886u, ~select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, arg_0.b.a.x), 8u)], countOneBits(var_0), true), _wgslsmith_div_u32(u_input.c.x, 44444u)));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    var var_0 = true & all(vec4<bool>(select(true, false, true), true, true, false));
    let var_1 = func_5(func_4(!vec4<bool>(func_2(Struct_1(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64378u, 8u)], 8u)], u_input.c.x)), Struct_3(vec3<i32>(-1i, -3840i, 35652i), Struct_1(vec3<u32>(1u, u_input.c.x, u_input.c.x))), vec4<f32>(-935f, -1210f, -1662f, 225f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)]), true, true, any(vec2<bool>(false, false)))));
    var_0 = arg_0 != _wgslsmith_div_i32(u_input.b, -1i);
    var var_2 = all(vec4<bool>(true, true, true, true));
    let var_3 = -926f;
    return vec3<f32>(-438f, 246f, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_i32(select(0i, 1i, true), 0i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)] % 32u)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(862f, 791f, 996f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-588f, -1229f, -106f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1004f, 1035f), vec3<f32>(-1000f, -1989f, 377f), vec3<bool>(true, true, false))))))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(select(464f, -927f, true))), 141f)));
    let var_1 = !vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(13987u, 8u)])), Struct_3(vec3<i32>(-1i, 34780i, u_input.a.x), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), vec4<f32>(var_0.x, var_0.x, 1032f, var_0.x), global0[_wgslsmith_index_u32(4294967295u, 8u)]))), !(global0[_wgslsmith_index_u32(u_input.c.x, 8u)] == firstLeadingBit(87872u)));
    let var_2 = Struct_1(min(~(~(~vec3<u32>(0u, u_input.c.x, 1u))), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(21438u, 8u)]), u_input.c.x)));
    let var_3 = u_input.b;
    var var_4 = var_2;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1370f, _wgslsmith_f_op_f32(sign(var_0.x)), 1518f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, -1446f, var_0.x))))));
    let var_5 = var_0.x;
    var var_6 = any(select(vec4<bool>(true, var_1.x, false | var_1.x, true), vec4<bool>(var_1.x, false, !(var_0.x < var_0.x), false && (var_1.x == var_1.x)), var_1.x));
    let var_7 = Struct_4(Struct_1(~(firstLeadingBit(vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 8u)], 6182u)) | select(vec3<u32>(var_2.a.x, 0u, u_input.c.x), var_2.a, false))), Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-196f, var_0.x, 770f, 1622f))), ~firstLeadingBit(-35552i) << (0u % 32u), Struct_1(vec3<u32>(_wgslsmith_div_u32(0u, 20503u), u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 1u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_1(min(var_3, var_3))).x, -968f) + vec2<f32>(_wgslsmith_f_op_f32(max(326f, _wgslsmith_f_op_f32(exp2(var_0.x)))), -1092f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(797f, 176f, var_1.x | true))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f - var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(0i, var_7.b.b));
}

