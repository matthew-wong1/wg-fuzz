struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 13>;

var<private> global2: array<vec3<bool>, 17>;

var<private> global3: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2266f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1637f - 883f)))), 756f);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> bool {
    global1 = array<i32, 13>();
    let var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~u_input.a, ~u_input.a), u_input.a), vec2<u32>(u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)) % 32u), u_input.a), (~vec2<u32>(0u, 1u) ^ ~vec2<u32>(108052u, u_input.a)) & reverseBits(~vec2<u32>(u_input.a, u_input.a)));
    let var_1 = !all(!select(select(arg_1, arg_0, vec2<bool>(arg_0.x, arg_1.x)), vec2<bool>(true, false), arg_0.x || arg_1.x));
    let var_2 = Struct_2(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_mult_u32(select(max(reverseBits(4294967295u), var_0.x), _wgslsmith_mod_u32(firstTrailingBit(u_input.a), 1u), arg_0.x), u_input.a), ~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(4512u, var_0.x), vec2<u32>(var_0.x, 1u))), true);
    var var_3 = 59108i;
    return true;
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(!vec4<bool>(true, _wgslsmith_div_u32(0u, u_input.a) != _wgslsmith_clamp_u32(1u, u_input.a, 0u), func_3(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(true, arg_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-260f, -917f, -805f, 1482f)))), ~21005i >= global1[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1455f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, -1040f, -2093f, -826f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1329f, -834f, 1104f, -1114f) + vec4<f32>(1353f, -150f, -906f, -1071f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(112f, -1590f, 1000f, -1002f) * vec4<f32>(1512f, -271f, 222f, -1797f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    return ~(-24409i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(356f))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec4<u32>(31671u, 0u, u_input.a, 0u), u_input.d, vec4<bool>(true, false, false, true), u_input.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1398f)))), any(select(vec4<bool>(false, true, false, any(vec2<bool>(true, false))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true || all(vec3<bool>(false, true, true)))));
    var var_1 = func_4(func_2(false), Struct_1(select(!select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(true, true, true, var_0.x), false), vec4<bool>(var_0.x || true, false, !var_0.x, var_0.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f - 1413f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2388f, 557f, -470f, -346f)))))), 45451u);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1037f, 1321f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f - 226f)), var_0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(649f, -1277f))))), 457f, _wgslsmith_clamp_u32(~(~0u), 1u >> (u_input.a % 32u), u_input.a & u_input.a) << (_wgslsmith_sub_u32(countOneBits(abs(u_input.a)), 36550u) % 32u), firstTrailingBit(vec2<u32>(u_input.a, _wgslsmith_add_u32(firstTrailingBit(1u), min(u_input.a, u_input.a)))), all(!vec4<bool>(var_0.x, false, !var_0.x, var_0.x)));
    global2 = array<vec3<bool>, 17>();
    var var_3 = false;
    let var_4 = Struct_3(Struct_2(249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1891f - 1404f)), _wgslsmith_mod_u32(~var_2.c, firstTrailingBit(4294967295u)), reverseBits(abs(select(vec2<u32>(u_input.a, var_2.d.x), var_2.d, var_2.e))), !(func_2(false).c.x > _wgslsmith_f_op_f32(162f + 1200f))), _wgslsmith_mult_vec3_u32(~firstLeadingBit(~vec3<u32>(var_2.d.x, u_input.a, var_2.d.x)), select(_wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, u_input.a, 2567u), vec3<u32>(var_2.d.x, 0u, u_input.a)), ~vec3<u32>(u_input.a, 56340u, 1u)), vec3<u32>(~62229u, u_input.a | u_input.a, ~u_input.a), var_0)), Struct_1(vec4<bool>(!(false | var_2.e), var_0.x, true, false), var_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, var_2.b, var_2.a, -1890f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1500f, var_2.b, -669f, -176f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2684f, 464f, var_2.a, 1010f))))), Struct_2(764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), u_input.a, ~var_2.d, !var_2.e | var_0.x));
    let var_5 = var_4.b.x;
    var var_6 = vec3<bool>(var_0.x, any(!vec4<bool>(var_0.x, true, true, !var_4.c.a.x)), global1[_wgslsmith_index_u32(~(~var_4.a.d.x | max(var_4.d.d.x, var_4.a.d.x)), 13u)] != global1[_wgslsmith_index_u32(~countOneBits(0u), 13u)]);
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec4<i32>(-1i, u_input.e, -6216i, global1[_wgslsmith_index_u32(49297u, 13u)]) | vec4<i32>(-24216i, global1[_wgslsmith_index_u32(37868u, 13u)], global1[_wgslsmith_index_u32(var_7.a.d.x, 13u)], 10567i)) ^ vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(1u, 13u)] ^ -16886i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 68107u, 638u), 13u)], 1i)), firstLeadingBit(_wgslsmith_mult_u32(min(38768u, var_5 ^ 2297u), var_2.d.x | (var_4.a.c | var_2.d.x))), 80999u, -361f);
}

