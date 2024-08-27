struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), 0i, 0i, -1i, -1i, -44100i, 0i, 20085i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(18281i, u_input.a), _wgslsmith_mult_i32(_wgslsmith_sub_i32(8644i, 1i), global0[_wgslsmith_index_u32(~1u, 8u)] << (0u % 32u)), u_input.b.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1937f, -564f)))), _wgslsmith_f_op_f32(-348f * 755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)))));
    var var_2 = _wgslsmith_f_op_f32(trunc(1317f));
    var var_3 = true;
    var var_4 = any(select(select(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)), reverseBits(u_input.a) <= var_0.x));
    return 1u;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-510f, -1261f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, -649f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1030f, -748f)))))));
    let var_1 = select(~vec4<u32>(~(~44458u), select(firstLeadingBit(7442u), ~12735u, all(vec3<bool>(true, false, true))), 0u, func_3()), abs(~countOneBits(vec4<u32>(32986u, 0u, 66032u, 777u))), select(!vec4<bool>(any(vec2<bool>(true, true)), true, select(true, false, true), var_0.x > -810f), !vec4<bool>(select(true, true, false), true, false, true), (_wgslsmith_div_i32(-2147483647i, u_input.b.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -27799i), u_input.b)) >= firstTrailingBit(reverseBits(u_input.b.x))));
    let var_2 = Struct_2(reverseBits(min(1u, var_1.x & 4294967295u)) | ~_wgslsmith_clamp_u32(~4294967295u, 0u, _wgslsmith_sub_u32(var_1.x, 31292u)));
    var var_3 = Struct_1(any(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), firstTrailingBit(var_1.x) > select(var_2.a, 14392u, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2431f, -262f)) * vec2<f32>(922f, -305f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-174f, -920f))))), vec4<i32>(_wgslsmith_sub_i32(~0i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 8u)]) & 1i, 0i, ~global0[_wgslsmith_index_u32(4294967295u, 8u)], 19879i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x)), (select(false, any(vec3<bool>(false, false, true)), false) && any(vec4<bool>(true, false, true, false))) & any(vec3<bool>(true, true, true)));
    let var_4 = var_2;
    return ~_wgslsmith_mult_i32(-69457i, ~u_input.a);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(64825u, 8u)], 2147483647i, u_input.a), vec3<i32>(min(0i, 498i), func_2(), u_input.b.x)), _wgslsmith_add_i32(~(~(-global0[_wgslsmith_index_u32(1u, 8u)])), ~(i32(-1i) * -11863i)));
    var_0 = -(abs(~u_input.b) | (-vec2<i32>(18020i, 5154i) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(86567u, 33116u, 32724u, 106165u), vec4<u32>(4294967295u, 0u, 4294967295u, 1736u)), abs(1u)) % vec2<u32>(32u))));
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(344f, -915f), vec2<f32>(-463f, 459f))), vec2<f32>(1257f, -1039f)), vec2<f32>(_wgslsmith_f_op_f32(561f - 754f), _wgslsmith_f_op_f32(-973f * 770f)), all(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), arg_0)))))), ~(vec4<i32>(-var_0.x, -1i, 0i, 2147483647i) << (~(~vec4<u32>(4294967295u, 1u, 8203u, 84448u)) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 163f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(968f, -1386f, 769f))))), vec3<f32>(1f, -131f, -988f))), false);
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 24629u), max(vec2<u32>(1u, 0u), vec2<u32>(0u, 1u))), ~abs(55854u)), max(~1u, 14430u)));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(-var_0.c.x, min(-17175i, 0i)), -_wgslsmith_clamp_vec2_i32(arg_0.c.yy | abs(vec2<i32>(41910i, -2147483647i)), arg_0.c.xx, vec2<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), func_1(var_0.a).c.x)));
    let var_3 = Struct_2(1u);
    var_1 = var_3;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
}

