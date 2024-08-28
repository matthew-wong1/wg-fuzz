struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: vec4<u32> = vec4<u32>(93384u, 4294967295u, 4294967295u, 46766u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(countOneBits(global1.x)), u_input.a), 18u)] + -1245f);
    let var_1 = ~abs(~reverseBits(u_input.c.x >> (5628u % 32u)));
    var var_2 = ~_wgslsmith_mult_u32(1u, 40140u);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.x, 18u)])), var_0)))))));
    var_2 = global1.x;
    return -u_input.b.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = select(!select(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), true & any(vec4<bool>(true, false, true, false))), true, !(~firstTrailingBit(3858u) == 4294967295u));
    let var_1 = Struct_2(arg_1.c, arg_1.b, arg_2.a, -arg_2.a.d, max(~arg_1.a.e.xw, vec2<u32>(max(_wgslsmith_mod_u32(4294967295u, 1u), 4294967295u), u_input.e)));
    var var_2 = firstTrailingBit(4294967295u);
    let var_3 = !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)));
    var var_4 = Struct_2(arg_2.c, vec3<i32>(_wgslsmith_div_i32(8619i ^ arg_0, arg_0) >> ((min(27821u, 16522u) & var_1.e.x) % 32u), -16975i, arg_1.b.x), Struct_1(-u_input.b.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(713f * -467f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(456f + var_1.c.b.x)), _wgslsmith_f_op_vec4_f32(-var_1.c.b))), ~1u, ~u_input.b.x, arg_2.c.e), ~17115i, countOneBits(vec2<u32>(1u, 29138u)));
    return var_3;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    global0 = array<f32, 18>();
    global1 = u_input.c;
    global0 = array<f32, 18>();
    return _wgslsmith_mod_vec4_u32(select(u_input.c, ~_wgslsmith_mod_vec4_u32(~arg_1.e, vec4<u32>(15891u, 10976u, 4294967295u, 4294967295u)), !(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(95516u, 18u)], arg_1.b.x, arg_0.x)) < arg_1.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, select(arg_1.e.x >> (68412u % 32u), u_input.a, any(vec4<bool>(arg_2, arg_0.x, arg_0.x, true))), ~4294967295u, ~abs(arg_1.e.x)), arg_1.e));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = -_wgslsmith_add_i32(_wgslsmith_add_i32(-45134i, 21809i), _wgslsmith_mult_i32(19809i, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 0i), ~u_input.b.x)));
    var_0 = u_input.b.x;
    global1 = u_input.c;
    global1 = func_5(func_4(~func_3(), Struct_2(Struct_1(_wgslsmith_clamp_i32(2147483647i, arg_0.x, 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)])), u_input.a << (global1.x % 32u), arg_0.x, ~vec4<u32>(u_input.c.x, global1.x, 10232u, 1u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), arg_0.xxy, vec3<i32>(arg_0.x, -50645i, arg_0.x)), Struct_1(_wgslsmith_add_i32(2147483647i, u_input.b.x), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 134f, global0[_wgslsmith_index_u32(93560u, 18u)], 1964f), u_input.e, -1i, vec4<u32>(20686u, global1.x, u_input.a, 55013u)), _wgslsmith_div_i32(arg_0.x, 32440i) & (i32(-1i) * -21081i), u_input.c.zy), Struct_2(Struct_1(max(1i, u_input.b.x), vec4<f32>(-448f, global0[_wgslsmith_index_u32(4268u, 18u)], -340f, 753f), ~global1.x, abs(1766i), ~vec4<u32>(u_input.d, u_input.d, u_input.d, global1.x)), -vec3<i32>(arg_0.x, u_input.b.x, 2147483647i), Struct_1(_wgslsmith_mult_i32(-1i, -2147483647i), vec4<f32>(344f, -276f, 1000f, global0[_wgslsmith_index_u32(u_input.e, 18u)]), _wgslsmith_mult_u32(global1.x, 1u), u_input.b.x, _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.d, u_input.d, 24434u, 37735u))), 1i, ~vec2<u32>(38474u, 66963u))), Struct_1(~(i32(-1i) * -2147483647i), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1346f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x, 18u)] + -1370f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f - -1394f)), _wgslsmith_f_op_f32(-1412f + global0[_wgslsmith_index_u32(u_input.a, 18u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c.x, 18u)]))))), u_input.d, firstLeadingBit(func_3() ^ max(u_input.b.x, u_input.b.x)), u_input.c), select(!(11693i > _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, 7344i))), true, select(global1.x != (28728u & global1.x), any(vec4<bool>(true, true, true, true)), true)));
    global1 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, global1.x, u_input.c.x, global1.x), vec4<u32>(34u, u_input.a, 105307u, 24468u)), u_input.c) ^ (u_input.c >> (vec4<u32>(~global1.x, global1.x, 7507u, global1.x) % vec4<u32>(32u))));
    return Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1095f, global0[_wgslsmith_index_u32(u_input.a, 18u)], -354f, 668f))) * vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], 1000f, global0[_wgslsmith_index_u32(global1.x, 18u)], -1639f))))), 0u, firstLeadingBit(_wgslsmith_add_i32(~u_input.b.x, u_input.b.x)), func_5(vec3<bool>(true, true, true), Struct_1(select(-76959i, -47698i, select(false, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)], -360f, global0[_wgslsmith_index_u32(22659u, 18u)]), vec4<f32>(-1419f, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.e, 18u)]))), _wgslsmith_mult_u32(~29593u, u_input.c.x), (i32(-1i) * -1i) >> (~global1.x % 32u), vec4<u32>(53105u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(72834u, 37272u), global1.yx), 4294967295u)), true));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    return arg_1.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    var var_0 = 57208u;
    let var_1 = true;
    var var_2 = func_6(global1.x, Struct_2(func_2(firstLeadingBit(-vec4<i32>(2147483647i, -1i, 2147483647i, 13806i))), abs(-vec3<i32>(-2147483647i, -9741i, u_input.b.x)), Struct_1(reverseBits(1i), vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.x, 18u)])), _wgslsmith_f_op_f32(abs(arg_1.x)), global0[_wgslsmith_index_u32(~global1.x, 18u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(53213u, 18u)] * arg_1.x)), global1.x, ~reverseBits(u_input.b.x), ~u_input.c), func_2(vec4<i32>(-6988i, -2147483647i, 4075i, _wgslsmith_clamp_i32(u_input.b.x, -10443i, 1i))).d, vec2<u32>(0u << (func_2(vec4<i32>(u_input.b.x, 16899i, 36110i, -2758i)).e.x % 32u), ~arg_0.x)), u_input.b.x, _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(arg_0.x, global1.x, 92370u), _wgslsmith_div_u32(u_input.a, arg_0.x), ~_wgslsmith_div_u32(40416u, 65517u), global1.x), u_input.c ^ ~arg_0));
    global0 = array<f32, 18>();
    var_2 = Struct_1(15396i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(-arg_1)))), arg_0.x, 2147483647i, select(~vec4<u32>(0u, abs(arg_0.x), min(4294967295u, 61498u), global1.x), firstTrailingBit(var_2.e), vec4<bool>(true, true, func_4(6294i, Struct_2(Struct_1(-31854i, vec4<f32>(global0[_wgslsmith_index_u32(var_2.c, 18u)], arg_1.x, -904f, -1746f), u_input.a, -2147483647i, var_2.e), vec3<i32>(var_2.a, 1i, var_2.a), Struct_1(-31277i, var_2.b, 0u, u_input.b.x, var_2.e), var_2.a, vec2<u32>(u_input.c.x, u_input.c.x)), Struct_2(Struct_1(var_2.d, var_2.b, global1.x, u_input.b.x, arg_0), vec3<i32>(71851i, u_input.b.x, var_2.d), Struct_1(4747i, vec4<f32>(arg_1.x, arg_1.x, -699f, 1784f), 0u, -23314i, arg_0), u_input.b.x, vec2<u32>(1u, 29689u))).x, !all(arg_2))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(2147483647i, ~(~max(-u_input.b.x, func_1(vec4<u32>(40373u, 74743u, global1.x, 1u), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)], 1719f, 677f), vec3<bool>(false, true, false), true))), u_input.b.x);
    global0 = array<f32, 18>();
    let var_1 = Struct_2(Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 18u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 18u)] - 207f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(81203u, 18u)], global0[_wgslsmith_index_u32(u_input.d, 18u)])), global0[_wgslsmith_index_u32(1u, 18u)])), 28571u, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(17431i, u_input.b.x)), vec4<u32>(max(select(u_input.c.x, u_input.c.x, true), _wgslsmith_clamp_u32(global1.x, 8186u, u_input.d)), _wgslsmith_clamp_u32(~global1.x, reverseBits(11189u), min(u_input.c.x, u_input.e)), ~min(28611u, 0u), firstTrailingBit(~u_input.c.x))), select(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.x, u_input.b.x) ^ vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(var_0.x, u_input.b.x, var_0.x) ^ vec3<i32>(29271i, u_input.b.x, 13743i), max(vec3<i32>(var_0.x, u_input.b.x, 1i), vec3<i32>(-1i, -27308i, -1i)))), vec3<i32>(~func_1(vec4<u32>(77267u, 1u, 1u, global1.x), vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], -978f, -606f, -2313f), vec3<bool>(true, true, false), true), reverseBits(u_input.b.x), _wgslsmith_div_i32(func_6(global1.x, Struct_2(Struct_1(-2147483647i, vec4<f32>(-1036f, 1000f, 537f, -1004f), 19418u, u_input.b.x, vec4<u32>(u_input.e, u_input.e, u_input.a, 51873u)), vec3<i32>(u_input.b.x, u_input.b.x, var_0.x), Struct_1(var_0.x, vec4<f32>(-1421f, 824f, global0[_wgslsmith_index_u32(41938u, 18u)], 357f), 0u, var_0.x, vec4<u32>(global1.x, global1.x, 2686u, 4294967295u)), var_0.x, vec2<u32>(u_input.c.x, 15347u)), -1i, u_input.c).d, -75969i)), vec3<bool>(all(vec2<bool>(false, false)) & (1u >= u_input.e), any(vec2<bool>(true, true)), true)), func_6(~global1.x >> (global1.x % 32u), Struct_2(Struct_1(abs(var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(837f, global0[_wgslsmith_index_u32(425u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)]))), ~global1.x, var_0.x, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global1.x, 1u, 86238u), vec4<u32>(global1.x, 5288u, u_input.d, global1.x))), abs(vec3<i32>(1i, var_0.x, -80877i) << (global1.yyy % vec3<u32>(32u))), Struct_1(firstTrailingBit(9321i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(139700u, 18u)], 383f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], -1000f, 647f)), func_5(vec3<bool>(false, false, true), Struct_1(u_input.b.x, vec4<f32>(-878f, 1000f, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], 876f), 18565u, -1423i, u_input.c), true).x, -10269i, vec4<u32>(global1.x, u_input.e, 35335u, 35220u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, var_0.x), vec4<i32>(-17327i, -17310i, 3502i, 2147483647i)) | _wgslsmith_mult_i32(u_input.b.x, var_0.x), select(u_input.c.wz, vec2<u32>(17273u, u_input.e), false) & ~vec2<u32>(global1.x, u_input.a)), 35667i, ~vec4<u32>(global1.x, 33312u, u_input.e, ~4294967295u)), abs(u_input.b.x), select(_wgslsmith_clamp_vec2_u32(~u_input.c.wy, vec2<u32>(~global1.x, min(25924u, u_input.c.x)), vec2<u32>(_wgslsmith_sub_u32(global1.x, 30785u), 1u)), ~(~vec2<u32>(global1.x, u_input.d)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var var_2 = ~abs(_wgslsmith_add_u32(u_input.d, u_input.a));
    var var_3 = (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(130959u, u_input.d, 0u, global1.x), ~vec4<u32>(var_1.e.x, global1.x, 1u, 1u), vec4<u32>(u_input.e, 4294967295u, 1u, u_input.d)), ~(~vec4<u32>(78240u, var_1.c.e.x, u_input.c.x, 0u)), true) << (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, 40544u, global1.x, u_input.e)), func_5(vec3<bool>(true, false, true), func_2(vec4<i32>(2147483647i, -27281i, -1911i, 2147483647i)), true)) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, 0u, _wgslsmith_mod_u32(func_6(1u, var_1, var_0.x & u_input.b.x, ~u_input.c).e.x, ~u_input.a ^ select(67041u, var_1.a.e.x, false)), u_input.c.x) % vec4<u32>(32u));
    let var_4 = _wgslsmith_sub_i32(-702i, _wgslsmith_div_i32(var_1.b.x, 104019i));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.d | 4294967295u, 18u)])))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) * global0[_wgslsmith_index_u32(~1u, 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_1.b.zx, ~(~(~(~u_input.c))), 4294967295u);
}

