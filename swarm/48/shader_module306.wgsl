struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(35368u, 1u, 1u);

var<private> global1: vec2<u32> = vec2<u32>(49458u, 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    global0 = ~_wgslsmith_mod_vec3_u32(select(~vec3<u32>(19298u, u_input.c, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global0.x, global1.x), vec3<u32>(0u, 4294967295u, 56221u)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), vec3<u32>(62274u, 33936u, u_input.c) >> (vec3<u32>(42688u, 1u, u_input.a) % vec3<u32>(32u))) ^ select(~select(vec3<u32>(22480u, global0.x, u_input.b) >> (vec3<u32>(77034u, global0.x, global0.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(u_input.b, 30110u, u_input.a), vec3<u32>(global0.x, 18264u, global1.x)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), ~abs(vec3<u32>(35124u, 15882u, 1u)), false);
    global1 = vec2<u32>(firstTrailingBit(31541u ^ _wgslsmith_add_u32(global0.x >> (4294967295u % 32u), global1.x >> (6373u % 32u))), firstLeadingBit(33855u));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(~vec2<u32>(74897u, 2497u)) ^ max(~global0.zz, vec2<u32>(1u, u_input.c))), Struct_1(494f, ~vec2<u32>(0u, 7217u) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(17166u, 0u), vec2<u32>(36918u, global1.x))), Struct_1(-270f, vec2<u32>(global0.x, global0.x)), Struct_1(539f, vec2<u32>(~(~4294967295u), 1u)));
    let var_1 = ~4062i;
    global0 = reverseBits(abs(firstTrailingBit(~firstLeadingBit(vec3<u32>(30297u, u_input.c, var_0.b.b.x)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f))), _wgslsmith_f_op_f32(ceil(var_0.a.a)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = any(!vec2<bool>(arg_1.a >= -307f, false));
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.yy, _wgslsmith_f_op_vec2_f32(func_3()), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(-arg_0.xy)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, arg_1.a), arg_0.xx))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1270f)), _wgslsmith_f_op_f32(max(-467f, 514f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1711f))), -126f), countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(global0.yz, global0.xy), vec2<u32>(arg_1.b.x, 1u), vec2<u32>(var_1, 1u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-110f)) - arg_1.a) + _wgslsmith_div_f32(923f, _wgslsmith_f_op_f32(arg_1.a + arg_0.x))), arg_1.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x * 1f)), ~arg_1.b | firstTrailingBit(arg_1.b)), arg_1);
    return var_3.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global0 = min(firstLeadingBit(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global1.x, u_input.c, 101108u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, global0.x, global0.x), ~vec3<u32>(0u, arg_2.a.b.x, 36832u)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~global0.x, abs(global1.x), global0.x), ~vec3<u32>(arg_2.c.b.x, u_input.a, 1u)), abs(vec3<u32>(45756u, 1u, u_input.a) & _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 1u, 29762u), vec3<u32>(global0.x, 0u, arg_2.b.b.x))), ~(vec3<u32>(u_input.c, 4294967295u, 24909u) | vec3<u32>(arg_3.b.x, 1u, 8628u)) & firstTrailingBit(reverseBits(vec3<u32>(arg_2.d.b.x, 4294967295u, 0u)))));
    global1 = global0.zz;
    var var_0 = any(!select(select(vec4<bool>(arg_0.x, true, arg_0.x, false), select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, false, arg_0.x), true), !vec4<bool>(arg_0.x, arg_0.x, true, false)), vec4<bool>(true, true, false, all(vec4<bool>(true, true, arg_0.x, arg_0.x))), vec4<bool>(1196f <= arg_3.a, !arg_0.x, true, true)));
    global0 = _wgslsmith_div_vec3_u32(max(select(abs(~vec3<u32>(0u, 4294967295u, 43019u)), vec3<u32>(~4294967295u, ~4294967295u, 29978u), select(!vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x))), reverseBits(countOneBits(vec3<u32>(global0.x, 1608u, arg_3.b.x) << (vec3<u32>(u_input.c, 50130u, u_input.b) % vec3<u32>(32u))))), firstLeadingBit(vec3<u32>(abs(0u), ~arg_2.a.b.x, arg_2.b.b.x << (4294967295u % 32u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(40653u, global0.x, arg_2.d.b.x), vec3<u32>(78482u, global0.x, 19067u))));
    let var_1 = vec4<i32>(countOneBits(1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2076u, arg_1.x, arg_2.a.b.x), ~vec3<u32>(global0.x, 32327u, arg_1.x)) % 32u)), 1i, max(0i, -9308i), -8652i);
    return true;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> f32 {
    global1 = abs(select(min(~(global0.zy ^ vec2<u32>(u_input.a, 31247u)), select(vec2<u32>(global1.x, 4294967295u) ^ global0.zx, global0.yz >> (global0.zx % vec2<u32>(32u)), all(vec2<bool>(true, false)))), _wgslsmith_mult_vec2_u32(global0.zy, global0.xy), vec2<bool>(true, true)));
    var var_0 = !select(func_4(vec2<bool>(true, true), vec2<u32>(reverseBits(40261u), u_input.c), Struct_2(func_2(vec4<f32>(-269f, -148f, arg_0, arg_0), Struct_1(arg_0, global0.zz), vec3<i32>(14332i, 87649i, 0i)), Struct_1(592f, vec2<u32>(u_input.b, 116351u)), Struct_1(arg_0, global0.yx), Struct_1(arg_1, global0.zz)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1109f, 2069f, -362f, -1016f)), Struct_1(-1119f, vec2<u32>(u_input.a, global1.x)), select(vec3<i32>(arg_2, -74377i, 57028i), vec3<i32>(arg_2, arg_2, arg_2), false))), (_wgslsmith_mod_u32(global1.x, u_input.b) >> (~global1.x % 32u)) >= ~(~global1.x), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_0 = true;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1026f, arg_1, -549f) * vec4<f32>(-624f, arg_0, 243f, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 656f, -963f, -1125f) + vec4<f32>(-356f, arg_0, 1000f, arg_0)), select(false, true, false))))))), Struct_1(arg_0, ~vec2<u32>(max(u_input.b, global1.x), 0u)), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2 << (4294967295u % 32u), 0i ^ arg_2, _wgslsmith_add_i32(arg_2, arg_2)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(arg_2, arg_2, 1i), vec3<i32>(-2299i, -2147483647i, arg_2)), firstLeadingBit(vec3<i32>(2147483647i, -2395i, 57941i)))));
    var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-arg_0), -830f, _wgslsmith_f_op_f32(1000f + var_1.a)) + vec4<f32>(arg_0, -507f, -884f, -188f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, 1000f, 566f, var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1.a, arg_1, var_1.a)))))), func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-594f - 597f), _wgslsmith_f_op_f32(-arg_0), 919f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-387f, arg_0, -892f, -423f), vec4<f32>(var_1.a, arg_1, var_1.a, -392f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1000f, arg_1, arg_0) + vec4<f32>(arg_0, var_1.a, arg_1, var_1.a))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -373f, 1000f, -668f))), func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 315f, var_1.a, arg_1))), Struct_1(arg_1, vec2<u32>(32946u, 4294967295u)), ~vec3<i32>(-12181i, 0i, arg_2)), vec3<i32>(arg_2, arg_2, arg_2) & -vec3<i32>(-7458i, arg_2, -18859i)), reverseBits(-max(vec3<i32>(arg_2, arg_2, -27896i), vec3<i32>(arg_2, arg_2, arg_2)))), abs(-vec3<i32>(14275i, 1i >> (u_input.a % 32u), reverseBits(9557i))));
    return _wgslsmith_f_op_f32(exp2(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~32u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-215f, 283f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, 2586f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x * -1294f)), _wgslsmith_f_op_f32(abs(1000f))))));
    let var_2 = true;
    let var_3 = Struct_1(1000f, global0.xx ^ (~(~vec2<u32>(4294967295u, 31112u)) & abs(global0.yy)));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(741f + _wgslsmith_f_op_f32(f32(-1f) * -664f)), 1008f), vec2<f32>(_wgslsmith_f_op_f32(trunc(-973f)), 214f));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1226f))))), var_1.x));
    let var_4 = var_3;
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(select(-1000f, -1223f, var_2)), abs(2147483647i))) - -1000f), vec2<u32>(~56346u, _wgslsmith_clamp_u32(global1.x, global1.x, 68753u)) ^ reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 49727u), var_3.b))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f - var_3.a) - _wgslsmith_f_op_f32(min(var_1.x, 609f))), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), all(vec3<bool>(true, var_2, var_2)))))), reverseBits(vec2<u32>(var_4.b.x, 35598u) & vec2<u32>(u_input.b, global0.x)) >> (var_3.b % vec2<u32>(32u))), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, 681f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1094f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, var_1.x, var_4.a, 1036f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_4.a, var_4.a, var_3.a, var_4.a), vec4<f32>(273f, var_4.a, var_1.x, -585f))), false)), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-758f, 810f, var_4.a, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(822f, -1085f, var_4.a, var_1.x), vec4<f32>(1204f, -909f, 627f, -833f)), false)), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.a, var_3.a, -546f, var_4.a))), var_3, vec3<i32>(-27833i, 0i, 0i)), vec3<i32>(2147483647i, ~1i, 1i)), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 29288i, 60877i), vec3<i32>(1i, 1i, 1i)))), func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 207f, var_3.a, 1000f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1173f, var_3.a, var_3.a, -546f)))))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1215f, var_4.a, var_1.x, var_4.a))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a, -296f, var_4.a, var_1.x)))), Struct_1(_wgslsmith_f_op_f32(-var_3.a), vec2<u32>(36250u, global1.x) | global0.zy), -select(vec3<i32>(13516i, 0i, 6134i), vec3<i32>(-13459i, 23580i, 0i), vec3<bool>(false, var_2, var_2))), vec3<i32>(_wgslsmith_mult_i32(~12471i, max(1i, -2273i)), 2147483647i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(3671u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_div_f32(357f, var_3.a))) * _wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_f32(-var_1.x)));
}

