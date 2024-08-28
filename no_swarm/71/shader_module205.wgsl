struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-23125i, i32(-2147483648)), vec2<i32>(-1i, -10741i), vec2<i32>(-24967i, 38338i));

var<private> global1: array<f32, 11> = array<f32, 11>(911f, -1817f, 990f, -1109f, 2074f, -1000f, 142f, 519f, 735f, 1999f, 1490f);

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 6560u, 12167u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    global0 = array<vec2<i32>, 3>();
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(i32(-1i) * -u_input.a), ~(~u_input.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(global0[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(global2.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), 7863i), _wgslsmith_clamp_i32(max(0i, 34178i), 51346i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(u_input.b, u_input.b)))), (vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 53546i, u_input.b, u_input.b), vec4<i32>(1i, -2147483647i, u_input.b, 1i))) >> ((min(~vec4<u32>(global2.x, 48297u, 0u, 1419u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(4294967295u, 4294967295u, 0u, 1u))) | reverseBits(vec4<u32>(global2.x, global2.x, global2.x, global2.x))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(-u_input.b), -16958i, u_input.a, ~u_input.b), -(firstTrailingBit(vec4<i32>(u_input.a, -33763i, 69210i, 20259i)) >> (~vec4<u32>(0u, 1u, global2.x, global2.x) % vec4<u32>(32u)))));
    let var_1 = ~abs(~vec4<u32>(global2.x, 6830u, 4294967295u, global2.x)) | (_wgslsmith_mod_vec4_u32(~vec4<u32>(global2.x, 4294967295u, global2.x, 4294967295u) << (~vec4<u32>(global2.x, global2.x, 50786u, global2.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, global2.x, global2.x)), vec4<u32>(46870u, global2.x, 40428u, 1u), ~vec4<u32>(global2.x, 1u, global2.x, 1u))) ^ ~abs(select(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, 44566u, 0u, global2.x), true)));
    global1 = array<f32, 11>();
    let var_2 = Struct_4(abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(3243i, var_0.x, -1i, u_input.a)) >> ((vec4<u32>(0u, 16308u, 0u, 1u) | vec4<u32>(global2.x, var_1.x, 39625u, 25933u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b, var_0.x, 0i) ^ vec4<i32>(-2147483647i, -38924i, -5933i, -14121i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 32173i, var_0.x, u_input.a), vec4<i32>(24402i, 74903i, u_input.b, 0i))))), vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.x), vec2<i32>(-29456i, var_0.x)), u_input.b), _wgslsmith_mod_i32(-1i, reverseBits(var_0.x) & -6229i), -2147483647i), !(global1[_wgslsmith_index_u32(~(~0u), 11u)] == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 11u)])) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 11u)]))), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !all(vec2<bool>(false, false)), (reverseBits(global2.x) <= countOneBits(global2.x)) || true, true));
    return ~var_2.a;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(select(_wgslsmith_add_u32(global2.x, 1u), abs(1u), false), (global2.x & global2.x) << (global2.x % 32u)), 9565u, 102189u), vec3<u32>(global2.x, _wgslsmith_div_u32(abs(select(global2.x, global2.x, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 5481u) >> (vec4<u32>(global2.x, 54723u, 34889u, global2.x) % vec4<u32>(32u)), ~vec4<u32>(global2.x, global2.x, global2.x, global2.x))), 4294967295u));
    var var_1 = Struct_3(Struct_1(~(func_3() << (19500u % 32u)), -2147483647i, _wgslsmith_sub_i32(func_3(), -max(u_input.a, 1i)), u_input.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~var_0), 11u)] * 1416f)), Struct_1(1i, func_3(), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 48360i, -1i), firstLeadingBit(vec3<i32>(7004i, 2147483647i, 2147483647i))), u_input.a), 37488i, -905f), vec2<i32>(36111i, -_wgslsmith_mult_i32(-5011i, ~u_input.a)), Struct_2(-2147483647i, 1i, Struct_1(_wgslsmith_div_i32(u_input.b, u_input.b) & _wgslsmith_sub_i32(u_input.a, 0i), reverseBits(u_input.b), ~0i, (u_input.a ^ 2147483647i) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(u_input.a, 26164i, u_input.b)), -1000f), ~0u), select(vec2<bool>(false, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    global1 = array<f32, 11>();
    var_1 = Struct_3(Struct_1(~(-2147483647i >> (0u % 32u)), ~(-19242i), firstTrailingBit(firstTrailingBit(var_1.d.b)), -12864i, -446f), var_1.a, vec2<i32>(u_input.b & -1i, u_input.b), Struct_2(max(1i, u_input.a) ^ -32467i, u_input.a, var_1.b, reverseBits(~_wgslsmith_mod_u32(var_1.d.d, var_1.d.d))), vec2<bool>(!select(true, var_1.e.x, !var_1.e.x), var_1.e.x));
    var var_2 = Struct_4(~(firstTrailingBit(u_input.b | var_1.c.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 17752i) & vec2<i32>(2147483647i, var_1.c.x), firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 3u)]))), countOneBits(vec3<i32>(-18072i, max(~1i, ~var_1.a.c), u_input.a)), var_1.e.x, select(vec4<bool>(!(var_1.e.x | true), true, !var_1.e.x, !select(var_1.e.x, true, true)), !vec4<bool>(17098u >= var_0, true, var_1.e.x, global1[_wgslsmith_index_u32(global2.x, 11u)] <= 532f), false));
    return 1u;
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(arg_1.a.e.x, false, all(select(arg_1.a.e, arg_1.a.e, true))), vec3<bool>(!arg_1.a.e.x, select(16210i < arg_1.b, arg_1.a.e.x, all(vec3<bool>(arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x))), true), true), !(!vec3<bool>(arg_1.a.e.x, arg_1.a.e.x, false)), select(vec3<bool>(true, arg_1.a.e.x, false), vec3<bool>(all(arg_1.a.e), !(!arg_1.a.e.x), !arg_1.a.e.x), select(vec3<bool>(true, true, !arg_1.a.e.x), !select(vec3<bool>(true, arg_1.a.e.x, false), vec3<bool>(arg_1.a.e.x, arg_1.a.e.x, true), vec3<bool>(arg_1.a.e.x, true, arg_1.a.e.x)), vec3<bool>(true, any(vec3<bool>(arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x)), true))));
    return arg_1.a.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_2(2147483647i, 1421i, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f - 1559f))), Struct_5(Struct_3(Struct_1(u_input.b, 2849i, u_input.b, u_input.b, -654f), Struct_1(-1i, -2147483647i, u_input.b, 25713i, 1000f), max(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 2147483647i)), Struct_2(u_input.b, u_input.b, Struct_1(u_input.a, 2147483647i, u_input.b, -1i, 396f), arg_1), vec2<bool>(false, false)), _wgslsmith_add_i32(u_input.a, ~u_input.b), func_2())), global2.x);
    global1 = array<f32, 11>();
    global2 = ~vec4<u32>(_wgslsmith_add_u32(~12250u >> (var_0.d % 32u), reverseBits(~1u)), 23299u, global2.x, 49557u);
    var var_1 = vec3<bool>(!(_wgslsmith_dot_vec4_u32(~vec4<u32>(33963u, 104875u, global2.x, global2.x), vec4<u32>(15693u, 13420u, 19878u, 5333u)) >= _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(24508u, arg_1, arg_1, 63637u)), vec4<u32>(global2.x, 7023u, 0u, global2.x) << (vec4<u32>(5875u, 19950u, 4294967295u, var_0.d) % vec4<u32>(32u)))), reverseBits(_wgslsmith_sub_i32(var_0.b, u_input.a) << (arg_1 % 32u)) < (u_input.a >> (62175u % 32u)), arg_2.x);
    let var_2 = Struct_4(firstTrailingBit(var_0.c.c), -((vec3<i32>(u_input.a, u_input.a, var_0.b) & vec3<i32>(-40625i, 0i, var_0.b)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 4294967295u, arg_1), global2.zwy, select(vec3<u32>(arg_1, var_0.d, 68269u), global2.wyw, vec3<bool>(false, false, arg_2.x))) % vec3<u32>(32u))), var_1.x, vec4<bool>(true & all(select(arg_2, arg_2, vec3<bool>(arg_2.x, false, false))), _wgslsmith_div_u32(var_0.d, firstLeadingBit(global2.x)) <= 0u, !any(!vec4<bool>(var_1.x, arg_2.x, true, false)), !arg_2.x));
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = !(_wgslsmith_dot_vec3_u32(reverseBits(~global2.ywy), ~(~vec3<u32>(arg_1.d.d, arg_1.d.d, arg_1.d.d))) > _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.d.d, arg_1.d.d), 1u), arg_1.d.d));
    var var_1 = arg_0.b.x;
    var var_2 = vec4<bool>(true, !select(true, true, !(!var_0)), !((select(-7916i, u_input.b, false) & abs(arg_1.b.c)) >= -11051i), 268f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -212f))));
    var var_3 = arg_1.d.d;
    let var_4 = Struct_3(func_4(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(abs(arg_1.d.d | 16465u), 11u)])), Struct_5(arg_1, i32(-1i) * -17411i, ~min(arg_1.d.d, 36488u))), arg_1.d.c, vec2<i32>(func_3(), 45999i), Struct_2(_wgslsmith_sub_i32(-(~u_input.a), func_4(-319f, Struct_5(Struct_3(arg_1.a, Struct_1(arg_0.b.x, arg_0.b.x, -20628i, -110805i, -1000f), vec2<i32>(-1i, u_input.b), Struct_2(u_input.a, 0i, Struct_1(arg_0.a, arg_0.b.x, -17301i, 2147483647i, arg_1.a.e), global2.x), vec2<bool>(var_0, arg_0.d.x)), 2147483647i, global2.x)).c), arg_1.c.x, Struct_1(firstTrailingBit(~2147483647i), u_input.a, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -1605i) ^ vec3<i32>(arg_1.c.x, u_input.b, 41774i), select(arg_0.b, vec3<i32>(arg_1.a.b, arg_0.a, arg_1.b.a), var_2.x)), -538f), _wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(1u, arg_1.d.d, 4294967295u, global2.x)), vec4<u32>(global2.x, 847u, 15177u, 566u)), firstTrailingBit(~vec4<u32>(arg_1.d.d, arg_1.d.d, arg_1.d.d, 15794u)))), select(func_1(vec2<bool>(var_2.x, all(vec4<bool>(arg_1.e.x, var_2.x, true, true))), arg_1.d.d, arg_0.d.zyw).d.yx, !select(select(vec2<bool>(var_2.x, false), arg_0.d.ww, var_2.zw), arg_0.d.wx, u_input.b >= 0i), false));
    return select(!(!select(vec4<bool>(var_2.x, arg_0.c, var_0, arg_1.e.x), vec4<bool>(false, arg_0.c, arg_0.c, false), true)), !vec4<bool>(var_2.x, true && func_1(arg_1.e, 13481u, vec3<bool>(true, var_4.e.x, var_0)).d.x, false, false), vec4<bool>(any(!(!vec2<bool>(var_0, false))), var_4.e.x, !all(vec3<bool>(true, true, var_2.x)), arg_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<bool>(true, true), 11851u, !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), Struct_3(Struct_1(i32(-1i) * -2147483647i, u_input.b, u_input.b, 20217i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(916f - global1[_wgslsmith_index_u32(global2.x, 11u)]) * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(5651u, 11u)], false)))), func_4(-1059f, Struct_5(Struct_3(Struct_1(0i, 24824i, u_input.b, 10571i, global1[_wgslsmith_index_u32(128554u, 11u)]), Struct_1(0i, u_input.a, u_input.b, u_input.a, 475f), vec2<i32>(u_input.b, 2424i), Struct_2(-55324i, u_input.a, Struct_1(u_input.b, 1i, u_input.b, u_input.b, 1061f), global2.x), vec2<bool>(true, true)), ~u_input.b, abs(41241u))), select(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.a), -1i << (0u % 32u)), select(vec2<i32>(35960i, u_input.b) & global0[_wgslsmith_index_u32(global2.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], true), any(func_1(vec2<bool>(true, true), 0u, vec3<bool>(false, false, true)).d.xw)), Struct_2(-1i, u_input.b, Struct_1(1i, reverseBits(u_input.b), u_input.b, _wgslsmith_div_i32(u_input.a, -1i), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global2.x, 11u)]))), 27488u >> (0u % 32u)), vec2<bool>(true, true)));
    var var_1 = 4294967295u;
    var var_2 = var_0.ww;
    let var_3 = _wgslsmith_sub_i32(45222i, u_input.a);
    var_2 = var_0.xz;
    global1 = array<f32, 11>();
    let var_4 = Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, 4294967295u), 11u)], -382f))), Struct_5(Struct_3(func_4(global1[_wgslsmith_index_u32(1u, 11u)], Struct_5(Struct_3(Struct_1(u_input.b, 14665i, 39412i, u_input.b, 829f), Struct_1(0i, var_3, var_3, var_3, 723f), global0[_wgslsmith_index_u32(global2.x, 3u)], Struct_2(62960i, 1i, Struct_1(-29944i, -26239i, -2147483647i, u_input.a, 772f), 0u), var_0.yx), -1i, 23465u)), func_4(global1[_wgslsmith_index_u32(44553u, 11u)], Struct_5(Struct_3(Struct_1(u_input.b, -2147483647i, u_input.a, var_3, global1[_wgslsmith_index_u32(global2.x, 11u)]), Struct_1(1i, u_input.b, 6438i, u_input.b, global1[_wgslsmith_index_u32(23689u, 11u)]), vec2<i32>(var_3, -2147483647i), Struct_2(var_3, var_3, Struct_1(1i, var_3, -67946i, 1i, -2427f), global2.x), vec2<bool>(var_0.x, true)), 3590i, 49738u)), reverseBits(global0[_wgslsmith_index_u32(8354u, 3u)]), Struct_2(2147483647i, u_input.b, Struct_1(-19132i, u_input.a, var_3, 17025i, 443f), 53652u), func_5(Struct_4(var_3, vec3<i32>(-68683i, var_3, -33083i), var_0.x, vec4<bool>(true, var_0.x, true, var_0.x)), Struct_3(Struct_1(2147483647i, u_input.a, 0i, -43115i, global1[_wgslsmith_index_u32(95664u, 11u)]), Struct_1(-2147483647i, -51879i, var_3, -2147483647i, global1[_wgslsmith_index_u32(global2.x, 11u)]), global0[_wgslsmith_index_u32(24680u, 3u)], Struct_2(var_3, u_input.a, Struct_1(29981i, -51231i, var_3, 1i, global1[_wgslsmith_index_u32(global2.x, 11u)]), 33853u), vec2<bool>(var_0.x, false))).zy), _wgslsmith_clamp_i32(var_3 | -1i, -2147483647i, -1i), 1u)), func_4(_wgslsmith_div_f32(783f, 639f), Struct_5(Struct_3(Struct_1(-28684i, var_3, -36898i, u_input.b, global1[_wgslsmith_index_u32(1u, 11u)]), func_4(global1[_wgslsmith_index_u32(global2.x, 11u)], Struct_5(Struct_3(Struct_1(-2364i, -9087i, u_input.b, var_3, global1[_wgslsmith_index_u32(42268u, 11u)]), Struct_1(var_3, u_input.a, 2147483647i, var_3, 205f), global0[_wgslsmith_index_u32(global2.x, 3u)], Struct_2(-68021i, var_3, Struct_1(var_3, var_3, var_3, 5542i, global1[_wgslsmith_index_u32(global2.x, 11u)]), global2.x), vec2<bool>(true, true)), u_input.b, 25405u)), -vec2<i32>(2147483647i, var_3), Struct_2(var_3, 1i, Struct_1(31589i, -2147483647i, -1i, -231i, global1[_wgslsmith_index_u32(45886u, 11u)]), 29751u), select(vec2<bool>(var_2.x, false), var_0.wx, true)), ~(var_3 | u_input.b), func_2())), countOneBits(global0[_wgslsmith_index_u32(global2.x, 3u)]), Struct_2(-(~1i), 15266i, func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, 4294967295u), 11u)], Struct_5(Struct_3(Struct_1(u_input.a, -2147483647i, var_3, -12965i, 1208f), Struct_1(63573i, var_3, -29466i, u_input.b, 976f), global0[_wgslsmith_index_u32(1u, 3u)], Struct_2(u_input.b, u_input.b, Struct_1(1i, -1i, var_3, var_3, -1208f), global2.x), var_0.xw), var_3, global2.x)), firstLeadingBit(countOneBits(255u))), vec2<bool>(true, true));
    let var_5 = vec2<bool>(func_1(!vec2<bool>(var_4.e.x || false, any(vec4<bool>(true, var_0.x, var_4.e.x, var_0.x))), 69636u, !(!select(vec3<bool>(true, false, var_4.e.x), vec3<bool>(false, var_4.e.x, false), var_0.x))).d.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(global2.xwy ^ global2.xxx, _wgslsmith_div_vec3_u32(~vec3<u32>(var_4.d.d, var_4.d.d, global2.x), global2.wwx & vec3<u32>(global2.x, global2.x, var_4.d.d)), vec3<bool>(any(vec4<bool>(var_4.e.x, var_0.x, var_0.x, var_5.x)), true, false))));
}

