struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = 67102u != _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(abs(u_input.b), abs(u_input.b)), abs(firstLeadingBit(max(1u, 24639u))));
    var_0 = !(u_input.a > -u_input.a);
    let var_1 = ~(~(~(~(~vec4<u32>(11374u, u_input.b.x, u_input.c, u_input.c)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-830f))), 2268f, _wgslsmith_f_op_f32(select(318f, -352f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1503f)))))));
    let var_3 = Struct_2(reverseBits(vec2<u32>(u_input.b.x, var_1.x)), vec2<bool>(true, true));
    return vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(~29761u, _wgslsmith_sub_u32(u_input.c, var_1.x))), var_3.a.x & var_1.x), _wgslsmith_dot_vec3_u32(u_input.b, var_1.xzw));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(func_3(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(0i, u_input.a, 0i, u_input.a), firstTrailingBit(vec4<i32>(0i, u_input.a, -29818i, -1i))), min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 6581i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, -2147483647i, -27257i)), vec4<i32>(29213i, u_input.a, u_input.a, -40319i) << (vec4<u32>(u_input.c, 12837u, u_input.c, u_input.c) % vec4<u32>(32u))), -(vec4<i32>(26288i, 8605i, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a)))), !(!vec2<bool>(u_input.c == 1u, true)));
    let var_1 = var_0.b;
    let var_2 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(false, var_1.x), var_1), vec2<bool>(true, false), var_0.b.x), select(select(!vec2<bool>(true, var_0.b.x), var_0.b, false), var_1, !select(var_0.b.x, var_1.x, var_1.x)), !var_0.b);
    let var_3 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(12154i, max(u_input.a, -6589i)), firstTrailingBit(select(vec2<i32>(u_input.a, -57769i), vec2<i32>(1310i, u_input.a), var_1.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), ~vec2<i32>(u_input.a, u_input.a))) ^ vec2<i32>(-1i, -1i));
    let var_4 = Struct_2(~vec2<u32>(select(u_input.c, 84903u, false), func_3(vec4<i32>(var_3.x, -10826i, u_input.a, var_3.x)).x), select(var_1, var_0.b, var_1.x));
    return ~((u_input.c >> (4294967295u % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(abs(6553u), u_input.b.x, 87020u), vec3<u32>(~u_input.b.x, 58455u >> (var_4.a.x % 32u), ~27239u)));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, 4294967295u, u_input.b.x) << (vec4<u32>(u_input.c, u_input.b.x, 11229u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(34714u, u_input.b.x, u_input.c, 48493u), vec4<u32>(1u, u_input.c, 12474u, u_input.c))), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(u_input.c, u_input.b.x), u_input.c >> (u_input.b.x % 32u), u_input.c)));
    var_0 = ~(~vec4<u32>(var_0.x, _wgslsmith_sub_u32(4060u, func_2()), var_0.x & ~var_0.x, countOneBits(~u_input.c)));
    var_0 = vec4<u32>(u_input.b.x, 38920u, 40820u, _wgslsmith_div_u32(4294967295u, ~func_2()));
    var var_1 = _wgslsmith_mod_vec2_i32(~(~max(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-2147483647i, u_input.a))), vec2<i32>(3616i, 1i) << ((~_wgslsmith_mod_vec2_u32(u_input.b.xz, vec2<u32>(4294967295u, u_input.c)) | countOneBits(vec2<u32>(0u, 38854u))) % vec2<u32>(32u)));
    let var_2 = vec4<bool>(any(vec2<bool>(!arg_0, !arg_0)), all(select(vec4<bool>(!arg_0, true, false | arg_0, any(vec3<bool>(false, arg_0, arg_0))), vec4<bool>(true, all(vec2<bool>(true, arg_0)), true, arg_0 || true), vec4<bool>(true, arg_0, any(vec4<bool>(true, arg_0, false, true)), arg_0))), _wgslsmith_mod_u32(~u_input.c, min(_wgslsmith_dot_vec3_u32(var_0.yzx, u_input.b), ~30347u)) < var_0.x, arg_0);
    return -1125f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1133f)), 1833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1553f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(467f, 459f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f - 715f)) * _wgslsmith_f_op_f32(f32(-1f) * -1165f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1298f + -1900f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 160f, var_0.x, 1895f) * vec4<f32>(1035f, -2465f, var_0.x, 149f)) * vec4<f32>(-360f, var_0.x, 519f, -151f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(430f * -1620f), _wgslsmith_f_op_f32(526f * 202f), -567f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(1612f, -841f)), var_0.x, 1310f, -903f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, -1392f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1636f, var_0.x, var_0.x, 794f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, 389f, _wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(-var_0.x)), -1487f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_1(true))), -1525f, -1474f, -149f);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -872f)))), var_0.x))), _wgslsmith_div_f32(-1066f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, 775f)))), _wgslsmith_f_op_f32(min(var_0.x, -1122f)));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(var_0.yzy))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(-1093f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-181f)), -554f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(all(vec4<bool>(true, false, false, true)))) - var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, -1379f)) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -568f))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))));
    let var_4 = max(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(abs(77124u), ~u_input.c, u_input.b.x >> (u_input.c % 32u)), _wgslsmith_mod_u32(firstTrailingBit(u_input.c), ~4294967295u), 1u, 0u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x), vec4<u32>(28738u, u_input.b.x, 1u, 45459u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(1u, u_input.c, 0u, 1u)) >> (countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, 38904u)) % vec4<u32>(32u)), firstTrailingBit(select(vec4<u32>(u_input.b.x, u_input.c, 70247u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.b.x, 62137u), true)))), select(~firstLeadingBit(vec4<u32>(u_input.c, 13898u, 47699u, u_input.c)), vec4<u32>(~(u_input.b.x ^ 16523u), _wgslsmith_sub_u32(~u_input.c, min(u_input.c, 4294967295u)), func_2(), func_3(vec4<i32>(-27483i, u_input.a, u_input.a, 2147483647i)).x), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, min(~_wgslsmith_mod_i32(-1i, 503i), u_input.a) << (_wgslsmith_sub_u32(func_3(-vec4<i32>(2147483647i, u_input.a, 9970i, -1i)).x, 0u) % 32u), vec4<u32>(~(~(~0u)), countOneBits(~(~u_input.b.x)), reverseBits(1u), 1u), var_1.yx, _wgslsmith_mult_u32(u_input.c, 16052u & ~(u_input.c | 91473u)));
}

