struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(1i, 5673i, 1i, 17669i, i32(-2147483648), 6195i, -11658i, 6968i, -22662i, 1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    return Struct_1(vec2<u32>(u_input.c.x, 85587u));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(u_input.c.x, 1u, 4294967295u, 4294967295u))), max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 15076u, u_input.a), ~u_input.c, vec4<u32>(1u, 125426u, u_input.a, 4294967295u) >> (u_input.c % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(u_input.c, u_input.c)));
    var var_2 = u_input.c;
    var var_3 = func_1(!vec4<bool>(false, true, true, any(vec2<bool>(true, true))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), true), vec3<bool>(true, true, all(vec3<bool>(false, false, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, false)), true)), !vec3<bool>(false, true, any(vec4<bool>(true, false, false, false))), vec3<bool>(select(true, true, true), true, false)));
    return !(!select(vec4<bool>(true, true, var_3.a.x >= var_2.x, true), vec4<bool>(true, true, false, true), false));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    let var_1 = 1255f;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(max(-26408i, u_input.b), max(u_input.b, 2147483647i), u_input.b)), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(~arg_2.x, 10u)], 61057i)), 24738i, -global0[_wgslsmith_index_u32(1u, 10u)] ^ -20736i, firstLeadingBit(global0[_wgslsmith_index_u32(1u, 10u)] ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(20958i, u_input.b), vec2<i32>(global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], global0[_wgslsmith_index_u32(arg_0.a.x, 10u)])), firstLeadingBit(-1i), -24561i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)));
    let var_4 = func_1(select(select(vec4<bool>(false, false, true, any(vec2<bool>(false, var_0.x))), select(func_3(6437i, 2312i), vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, false), false)), !select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true))), !vec4<bool>(all(var_0), true, var_0.x, var_0.x), select(!func_3(global0[_wgslsmith_index_u32(arg_2.x, 10u)], 1596i), !select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false), var_3 < var_3)), var_0);
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_2.x | 60127u), _wgslsmith_add_u32(max(arg_2.x, 0u), ~1u), _wgslsmith_add_u32(0u, ~76916u), 1u), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~(~(var_0.x & 42926u))), abs((24234u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(15422u, 0u), var_0.zw)) << (func_2(func_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, false)), func_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(8221u, u_input.a, var_0.x), vec3<u32>(u_input.c.x, var_0.x, var_0.x), var_0.wzz)) % 32u)), ~_wgslsmith_div_u32(select(1u, var_0.x, false) | 12188u, _wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 30198u, 0u), vec4<u32>(u_input.c.x, var_0.x, var_0.x, 42866u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a), 4294967295u, 1u << (~u_input.c.x % 32u)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 0u, 66853u), _wgslsmith_add_vec3_u32(var_0.wxx, var_0.wwy), ~vec3<u32>(1705u, u_input.c.x, u_input.c.x)))));
    var var_1 = firstTrailingBit(~(~u_input.c));
    let var_2 = func_1(vec4<bool>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(var_0.x, 34300u), vec2<bool>(false, false)), ~var_1.wz) > 10158u, true, !(var_1.x >= func_2(Struct_1(var_1.xz), Struct_1(var_1.yx), var_1.zzx)), !(true == any(vec3<bool>(false, true, false)))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), all(vec3<bool>(true, true, false)))));
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(3664u, 0u, var_2.a.x, 4294967295u), vec4<u32>(4294967295u, var_0.x, var_1.x, 41u)), vec4<u32>(u_input.a, 41570u, 30157u, u_input.a)) << (countOneBits(_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(var_2.a.x, 25186u, var_0.x, var_2.a.x), u_input.c)) % vec4<u32>(32u)), (~u_input.c | vec4<u32>(1u, 14877u, 0u, 1u)) & (min(vec4<u32>(1u, var_1.x, u_input.a, 4294967295u), vec4<u32>(var_2.a.x, u_input.a, 0u, u_input.c.x)) & ~u_input.c)) ^ ~(~(~u_input.c | select(u_input.c, u_input.c, false)));
    let var_3 = min(~(u_input.c >> (vec4<u32>(27626u, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u))), ~(~select(u_input.c, vec4<u32>(11423u, var_1.x, var_1.x, u_input.a), false))) ^ ~u_input.c;
    var var_4 = func_1(vec4<bool>(!(!all(vec4<bool>(true, false, true, true))), true, true, false), vec3<bool>(false, !any(func_3(u_input.b, global0[_wgslsmith_index_u32(25967u, 10u)])), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(118f, 992f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(774f, -733f) + vec2<f32>(-1848f, -1000f))))), vec2<i32>(-1i) * -reverseBits(~vec2<i32>(-2147483647i, -1i)), -vec3<i32>(-_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(var_1.x, 10u)]), ~(-32314i), -92287i), vec3<i32>(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(var_0.x, 9429u)), 10u)], -global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(2211u, var_1.x), var_2.a), 10u)], select((u_input.b ^ 13168i) | u_input.b, -1i, true)));
}

