struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_1(true, vec3<i32>(min(-2147483647i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(-2147483647i, 15958i, 0i))), _wgslsmith_clamp_i32(~u_input.a, -16612i, 0i), max(_wgslsmith_sub_i32(min(u_input.a, -2147483647i), ~u_input.a), 1i)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(select(select(vec4<i32>(2147483647i, 2147483647i, var_0.b.x, 10745i), vec4<i32>(2147483647i, var_0.b.x, 20772i, var_1.b.x), false), ~vec4<i32>(0i, var_0.b.x, 1i, var_1.b.x), select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, false, true, true), vec4<bool>(var_0.a, true, false, var_0.a))), abs(vec4<i32>(-1i, 1i, u_input.a, 6866i) >> (vec4<u32>(59129u, 0u, 1238u, 4294967295u) % vec4<u32>(32u)))), firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.b.x, u_input.a, -59296i), ~vec4<i32>(var_1.b.x, 0i, 1i, var_1.b.x)), vec4<i32>(-var_1.b.x, var_0.b.x, -2147483647i, 14511i | var_0.b.x))), vec4<i32>(var_0.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 63341i) << (vec4<u32>(78694u, 1u, 0u, 97273u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 23529i, u_input.a, u_input.a), vec4<i32>(29820i, 5611i, var_0.b.x, -1i))), var_1.b.x, var_1.b.x));
    let var_3 = true;
    let var_4 = vec3<u32>(~5164u, reverseBits(92088u), ~(~_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(0u, 6892u, 2183u))));
    return _wgslsmith_div_vec4_u32(abs(~(~abs(vec4<u32>(var_4.x, var_4.x, var_4.x, var_4.x)))), _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(var_4.x, var_4.x, var_4.x, var_4.x))), ~firstLeadingBit(vec4<u32>(var_4.x, var_4.x, 54380u, 13880u) & vec4<u32>(var_4.x, var_4.x, 0u, 1249u))));
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(~1u > ~firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 140482u, 61694u)), ~vec3<i32>(2147483647i, u_input.a >> (~48641u % 32u), _wgslsmith_sub_i32(-1i, -3561i) & -u_input.a));
    var_0 = Struct_1(true, var_0.b & vec3<i32>(11914i, countOneBits(u_input.a), _wgslsmith_sub_i32(2632i, var_0.b.x) & -22234i));
    var_0 = Struct_1(all(!select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), var_0.a))), vec3<i32>(-abs(1i) | u_input.a, ~select(1i, 1i, all(vec3<bool>(var_0.a, var_0.a, true))), -u_input.a));
    var var_1 = ~(~(~vec4<u32>(20547u, 4294967295u, 4294967295u, 4294967295u)) >> (~func_3(vec3<f32>(-916f, 169f, -416f)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(abs(56877u), ~1u, 7948u, 1u) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 59297u, 45535u, 11300u), vec4<u32>(12594u, 3453u, 0u, 1u), vec4<u32>(1u, 0u, 47823u, 14373u)), select(~(~vec4<u32>(29519u, 0u, 23643u, 1962u)), ~firstLeadingBit(vec4<u32>(4294967295u, 12988u, 4294967295u, 54363u)), !all(vec3<bool>(var_0.a, var_0.a, false))));
    var_0 = Struct_1(all(!vec3<bool>(any(vec4<bool>(false, var_0.a, var_0.a, var_0.a)), var_0.a, any(vec2<bool>(var_0.a, true)))), ~vec3<i32>(-42i & var_0.b.x, abs(var_0.b.x), u_input.a) << (var_1.xyy % vec3<u32>(32u)));
    return vec4<i32>(-u_input.a, ~firstTrailingBit(32008i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(~u_input.a, ~var_0.b.x, 20224i)), ~vec3<i32>(_wgslsmith_sub_i32(var_0.b.x, u_input.a), firstTrailingBit(u_input.a), countOneBits(u_input.a))), u_input.a);
}

fn func_1() -> vec3<bool> {
    let var_0 = select(firstLeadingBit(vec4<i32>(1i, min(u_input.a, 1i), -2147483647i, reverseBits(u_input.a))), abs(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 0i, 0i, u_input.a), max(func_2(), ~vec4<i32>(u_input.a, u_input.a, 1i, 27329i)))), select(vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)) && all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, false, true))), true), true));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1547f - 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f - -953f))) * _wgslsmith_f_op_f32(f32(-1f) * -309f))));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1487f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1294f * -741f), -147f)), _wgslsmith_f_op_f32(ceil(-869f))))));
    var_1 = _wgslsmith_f_op_f32(floor(-377f));
    return !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), true & any(vec3<bool>(false, false, false))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_1(arg_0.x, -select(vec3<i32>(abs(u_input.a), _wgslsmith_mod_i32(u_input.a, 0i), -55236i), vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a, u_input.a), select(arg_0, arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
    return ~35900u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~1u, 0u, ~1u, func_4(func_1()));
    let var_1 = Struct_1(true, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_mult_i32(-2147483647i, u_input.a), ~2147483647i), -countOneBits(vec3<i32>(u_input.a, -21512i, u_input.a)))));
    var var_2 = var_1;
    let var_3 = 1192f;
    var_2 = Struct_1(_wgslsmith_f_op_f32(-1000f + 850f) == _wgslsmith_f_op_f32(-var_3), -_wgslsmith_clamp_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(u_input.a, var_2.b.x, u_input.a))), var_1.b, var_2.b));
    var_2 = Struct_1(!func_1().x, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.ww, ~vec2<u32>(_wgslsmith_mult_u32(var_0.x, 23843u), var_0.x >> (var_0.x % 32u))));
}

