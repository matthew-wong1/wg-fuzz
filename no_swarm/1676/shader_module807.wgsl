struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(8720u, 20884u, 4294967295u, 4294967295u), vec4<u32>(30785u, 1u, 4344u, 1u), vec4<u32>(61173u, 1u, 1u, 74594u), vec4<u32>(35637u, 73140u, 57918u, 44795u), vec4<u32>(29438u, 0u, 84149u, 0u), vec4<u32>(4294967295u, 4294967295u, 22808u, 4294967295u), vec4<u32>(18u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 5518u, 74596u, 34817u), vec4<u32>(100774u, 88271u, 0u, 36200u), vec4<u32>(4294967295u, 519u, 4294967295u, 22105u), vec4<u32>(1u, 4294967295u, 7412u, 4294967295u), vec4<u32>(13749u, 1u, 1u, 12188u), vec4<u32>(0u, 93263u, 23363u, 6016u), vec4<u32>(40870u, 37318u, 44765u, 20227u), vec4<u32>(30496u, 24513u, 79975u, 1u), vec4<u32>(4294967295u, 0u, 25916u, 5700u), vec4<u32>(4294967295u, 2295u, 16902u, 0u), vec4<u32>(30229u, 8624u, 3212u, 26888u), vec4<u32>(1u, 1u, 66717u, 104685u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(1u, 26217u, 0u, 1119u), vec4<u32>(1u, 0u, 41743u, 1u), vec4<u32>(101788u, 1u, 2054u, 15469u), vec4<u32>(4294967295u, 11824u, 65382u, 98476u), vec4<u32>(11972u, 1u, 28837u, 41744u), vec4<u32>(42226u, 0u, 1u, 43984u), vec4<u32>(15806u, 1u, 1u, 0u), vec4<u32>(108495u, 40584u, 11687u, 4294967295u), vec4<u32>(4294967295u, 1u, 15280u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(3113u, 4294967295u, 0u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> vec4<i32> {
    let var_0 = !arg_1;
    let var_1 = ~(~_wgslsmith_mult_vec2_i32(u_input.b, u_input.b << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))));
    var var_2 = select(select(vec4<bool>(true, true, arg_1, all(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, false, false), arg_1))), select(!(!vec4<bool>(var_0, true, arg_1, arg_1)), !vec4<bool>(arg_1, var_0, false, true), var_0), true | var_0), select(vec4<bool>(-var_1.x < -1i, (true || arg_1) & arg_1, false, arg_1 & false), vec4<bool>(!(!arg_1), false, !all(vec2<bool>(false, arg_1)), all(select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, false, arg_1), var_0))), false), !(!select(!vec4<bool>(var_0, arg_1, false, var_0), vec4<bool>(true, false, var_0, var_0), any(vec2<bool>(true, false)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(439f, 799f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1735f)), 946f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1019f, -546f, 410f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-639f, -273f, -646f))))))));
    var var_4 = vec3<u32>(arg_0.x ^ ~(~25934u), 4723u, select(arg_0.x, ~arg_0.x, all(!select(vec4<bool>(var_0, false, true, true), vec4<bool>(var_2.x, var_0, false, arg_1), var_2.x))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 40927i, var_1.x, 1i), abs(vec4<i32>(14486i, ~u_input.c, var_1.x, ~var_1.x)) ^ vec4<i32>(min(var_1.x, firstLeadingBit(var_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-24864i, u_input.c, -34275i), _wgslsmith_sub_vec3_i32(vec3<i32>(-60271i, var_1.x, var_1.x), vec3<i32>(-1i, 50709i, 80813i))), var_1.x, _wgslsmith_mult_i32(1413i, min(1i, var_1.x))));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = max(_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, 11013i)), max(vec4<i32>(2147483647i, -1i, u_input.c, u_input.d.x), vec4<i32>(12213i, -77895i, -4159i, u_input.c)) >> (~global0[_wgslsmith_index_u32(1u, 31u)] % vec4<u32>(32u))), vec4<i32>((-10408i | u_input.c) >> (_wgslsmith_add_u32(u_input.e, 36867u) % 32u), (u_input.b.x >> (0u % 32u)) << ((22170u & u_input.e) % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(8534i, u_input.a), -u_input.a), -(u_input.c ^ u_input.b.x))) | (~(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -1i)) | _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, 8548i), vec4<i32>(u_input.a, -3045i, u_input.d.x, u_input.b.x)), func_3(vec4<u32>(u_input.e, 4568u, 4294967295u, 40773u), true) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, 26809i, u_input.d.x))));
    var var_1 = !(!arg_0);
    let var_2 = 1779f;
    var_1 = true;
    var var_3 = vec3<u32>(35154u, 1u, u_input.e);
    return select(select(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, arg_0))), !vec2<bool>(arg_0, true), select(vec2<bool>(!arg_0, !arg_0), vec2<bool>(true, true), arg_0)), !select(!select(vec2<bool>(true, arg_0), vec2<bool>(true, false), false), !vec2<bool>(arg_0, arg_0), !(!vec2<bool>(arg_0, true))), !select(!(!vec2<bool>(true, arg_0)), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), !(!vec2<bool>(arg_0, false))));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = ~(~0u);
    var_0 = _wgslsmith_div_u32(select(~(abs(6457u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e, 0u), vec3<u32>(u_input.e, 1u, u_input.e)) % 32u)), ~firstTrailingBit(u_input.e), false), u_input.e);
    var var_1 = u_input.e;
    let var_2 = arg_0.x;
    var var_3 = Struct_1(26254u, u_input.e, vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(~u_input.d, _wgslsmith_div_vec2_i32(u_input.d, ~vec2<i32>(-23598i, u_input.c))), u_input.d.x, 22601i << (u_input.e % 32u)));
    return Struct_1(27922u ^ _wgslsmith_clamp_u32(select(1u, select(25452u, 1u, var_2), false), var_3.b, _wgslsmith_div_u32(u_input.e, 94563u) & ~4294967295u), var_3.b, min(abs(max(vec4<i32>(9345i, var_3.c.x, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, var_3.c.x, -2147483647i, var_3.c.x))), ~firstLeadingBit(vec4<i32>(0i, u_input.d.x, -26293i, u_input.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_2(all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(trunc(-1000f));
    let var_2 = func_4(!(!func_2(true)));
    var_0 = func_4(select(func_2(func_2(true).x), func_2(!all(vec3<bool>(true, false, true))), true));
    var var_3 = arg_2.c.x;
    return arg_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    let var_0 = func_5(func_4(func_2(arg_0.x)), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e) & vec2<u32>(u_input.e, u_input.e), ~vec2<u32>(0u, u_input.e)), ~u_input.e), firstTrailingBit(~10662u), vec4<i32>(_wgslsmith_div_i32(arg_1, _wgslsmith_mod_i32(28415i, u_input.a)), u_input.a, countOneBits(-arg_1), (77664i ^ arg_1) & u_input.c)), func_4(select(arg_0, !arg_0, vec2<bool>(true, true))));
    var var_1 = vec2<u32>(~min(1u, 11520u), firstLeadingBit(countOneBits(var_0.a)));
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    let var_2 = -(var_0.c.wy >> (select(select(_wgslsmith_mult_vec2_u32(vec2<u32>(70907u, u_input.e), vec2<u32>(var_0.a, var_1.x)), firstLeadingBit(vec2<u32>(42874u, var_0.a)), arg_0), abs(vec2<u32>(8142u, u_input.e)) ^ ~vec2<u32>(0u, u_input.e), arg_0.x) % vec2<u32>(32u)));
    return _wgslsmith_div_f32(316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1163f + 145f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(972f - 1303f), -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-924f * _wgslsmith_f_op_f32(round(244f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(615f, 1437f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1975f, _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), 1i))));
}

