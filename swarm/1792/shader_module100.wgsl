struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, false, true, false);

var<private> global1: array<i32, 4> = array<i32, 4>(i32(-2147483648), i32(-2147483648), -6123i, 7369i);

var<private> global2: f32 = -756f;

var<private> global3: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = any(!select(vec3<bool>(global0[_wgslsmith_index_u32(select(4294967295u, 6099u, global0[_wgslsmith_index_u32(1u, 4u)]), 4u)], true, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true), vec3<bool>(true, true, false), true || global0[_wgslsmith_index_u32(34126u, 4u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], false))));
    global1 = array<i32, 4>();
    let var_2 = firstLeadingBit(u_input.a);
    let var_3 = true;
    return abs(_wgslsmith_sub_u32(firstTrailingBit(~_wgslsmith_mod_u32(var_2.x, 1u)), u_input.b));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(~func_3(Struct_1(vec2<i32>(u_input.c, -3146i)), Struct_1(arg_1), _wgslsmith_f_op_vec2_f32(sign(arg_3.zy))), 4u)], !any(vec4<bool>(global0[_wgslsmith_index_u32(15100u, 4u)], false, false, true)) && global0[_wgslsmith_index_u32(30662u, 4u)], global0[_wgslsmith_index_u32(max(0u, ~u_input.a.x & 21482u), 4u)], true);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(ceil(-1681f)));
    var var_1 = arg_0.zyw;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1803f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), 817f, _wgslsmith_f_op_f32(trunc(-742f)), var_1.x)))))));
    return firstTrailingBit(~(-arg_1));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = array<i32, 4>();
    let var_0 = vec4<bool>(!global0[_wgslsmith_index_u32(~abs(52537u) | _wgslsmith_div_u32(0u, countOneBits(u_input.b)), 4u)], !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(100962u, arg_3), u_input.a) | ~1u, 4u)], true, any(!vec3<bool>(arg_1.x, any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])), any(arg_1.yy))));
    let var_1 = arg_2;
    global0 = array<bool, 4>();
    var var_2 = arg_2;
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_div_i32(select(arg_1.x, arg_0, false), abs(u_input.c)) | _wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(~0u, 4u)]), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_dot_vec2_i32(func_2(vec4<f32>(-659f, 778f, 1263f, 461f), vec2<i32>(arg_0, 24585i), Struct_1(u_input.d), vec4<f32>(-252f, -180f, -877f, -554f)), u_input.d), -(~23519i)), min(u_input.c, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, 11678u), 4u)])), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], false, any(vec2<bool>(false, global0[_wgslsmith_index_u32(8656u, 4u)]))), !select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], false, true), vec3<bool>(true, false, true), select(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)], false)), true), Struct_1(vec2<i32>(arg_1.x, _wgslsmith_dot_vec3_i32(arg_1.yxz, arg_1.xyy)) | (reverseBits(vec2<i32>(u_input.d.x, 49171i)) ^ (u_input.d & vec2<i32>(global1[_wgslsmith_index_u32(38826u, 4u)], 2147483647i)))), select(~_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b, true));
    var var_1 = (vec3<u32>(_wgslsmith_mult_u32(~52434u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~u_input.a.x, u_input.a.x) >> (firstTrailingBit(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b, 1u, 59606u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<u32>(u_input.a.x, u_input.a.x, 37802u))) % vec3<u32>(32u))) ^ ~((_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.b)) << (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u))) >> (~firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b, 5338u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(abs(110f));
    var var_3 = 1i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2030f) + 644f))));
    return Struct_1(vec2<i32>(-1i) * -max(-vec2<i32>(u_input.d.x, -9366i), _wgslsmith_sub_vec2_i32(arg_1.yy, vec2<i32>(45206i, u_input.d.x))));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-791f, -1828f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(105f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1646f) - _wgslsmith_div_f32(-286f, _wgslsmith_f_op_f32(f32(-1f) * -261f))))));
    var var_1 = !select(vec2<bool>(true, !global0[_wgslsmith_index_u32(46068u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(69449u), 4u)], global0[_wgslsmith_index_u32(50874u, 4u)]), vec2<bool>(!select(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), select(true, true, false)));
    let var_2 = 14242i;
    let var_3 = arg_0;
    global1 = array<i32, 4>();
    return countOneBits(-32873i);
}

fn func_6(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    var var_0 = select(select(select(select(!vec4<bool>(arg_3, true, false, true), !vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], false, true, false)), select(!vec4<bool>(arg_3, true, true, global0[_wgslsmith_index_u32(0u, 4u)]), !vec4<bool>(global0[_wgslsmith_index_u32(85503u, 4u)], false, arg_3, false), !vec4<bool>(arg_3, true, global0[_wgslsmith_index_u32(34684u, 4u)], false)), select(!vec4<bool>(false, arg_3, true, global0[_wgslsmith_index_u32(0u, 4u)]), vec4<bool>(arg_3, true, arg_3, true), arg_3)), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec2<bool>(arg_3, false)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, arg_2.x), 4u)], true, any(vec2<bool>(arg_3, false)))), !(!vec4<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(39178u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], arg_3)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34080u, 62779u, arg_2.x, 0u), vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)), 4u)], global0[_wgslsmith_index_u32(~5583u, 4u)], true)), true);
    var var_1 = Struct_1(select(~(-u_input.d), select(u_input.d, select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, global1[_wgslsmith_index_u32(u_input.b, 4u)]), u_input.d), ~vec2<i32>(arg_1, -1i), 8687u != arg_2.x), vec2<bool>(!arg_3, true)), vec2<bool>(!all(var_0.xxy), var_0.x)));
    var var_2 = func_4(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(16906i, arg_1 | var_1.a.x), var_1.a.x, u_input.c, _wgslsmith_div_i32(func_5(Struct_1(var_1.a)), -2147483647i)), vec4<i32>(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, 37674i, u_input.d.x), vec4<i32>(15325i, arg_1, -4537i, arg_1)), vec3<bool>(global0[_wgslsmith_index_u32(18859u, 4u)], false, global0[_wgslsmith_index_u32(u_input.b, 4u)]), Struct_1(vec2<i32>(arg_1, -1i)), _wgslsmith_div_u32(u_input.b, u_input.b)).a.x, 0i, arg_1, 1i)), !select(var_0.zxw, vec3<bool>(true, arg_3, arg_2.x > arg_2.x), vec3<bool>(any(var_0.xz), !var_0.x, true)), func_4(-select(vec4<i32>(u_input.c, 1i, global1[_wgslsmith_index_u32(1u, 4u)], -1i), vec4<i32>(0i, arg_1, arg_1, var_1.a.x), vec4<bool>(false, arg_3, var_0.x, false)) ^ _wgslsmith_add_vec4_i32(min(vec4<i32>(var_1.a.x, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(var_1.a.x, u_input.c, arg_1, u_input.d.x)), vec4<i32>(-2147483647i, -1i, -27025i, 0i)), var_0.zxz, Struct_1(vec2<i32>(firstLeadingBit(u_input.c), _wgslsmith_div_i32(20024i, var_1.a.x))), ~firstTrailingBit(arg_2.x)), arg_2.x);
    var_2 = func_4(-vec4<i32>(-reverseBits(arg_1), global1[_wgslsmith_index_u32(firstLeadingBit(16963u), 4u)], ~arg_1, 1i), !vec3<bool>(true, true, arg_3), func_1(20483i, vec4<i32>(func_1(-global1[_wgslsmith_index_u32(1u, 4u)], vec4<i32>(1i, var_2.a.x, var_2.a.x, 8836i)).a.x, var_1.a.x, -var_1.a.x, firstLeadingBit(~var_2.a.x))), arg_2.x);
    let var_3 = Struct_1(~var_1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -314f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(vec2<f32>(1f, 1f), -func_5(func_1(15260i, vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], -1i, 2147483647i, u_input.d.x))), u_input.a, ((global0[_wgslsmith_index_u32(36773u, 4u)] | true) | false) || any(vec2<bool>(true, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(112f)) * -289f))));
    let var_0 = ~u_input.c;
    let var_1 = true;
    var var_2 = Struct_1(-func_1(~u_input.d.x, countOneBits(-vec4<i32>(2147483647i, u_input.c, 23782i, var_0))).a);
    global1 = array<i32, 4>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1251f)))));
    let var_3 = Struct_1(vec2<i32>(~abs(~(-1i)), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(select(4294967295u, 1u, var_1) ^ u_input.a.x, 4u)], 52927i)));
    let var_4 = !vec4<bool>(false, 2147483647i > (-1i >> (_wgslsmith_sub_u32(47972u, u_input.b) % 32u)), select(false, true, all(vec4<bool>(var_1, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true, var_1)) & var_1), -var_0 < _wgslsmith_add_i32(-2147483647i, firstLeadingBit(var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1064f, -596f, -235f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, 1244f, -357f, 561f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, 963f, -2673f, -1111f)))), _wgslsmith_add_i32(var_0 >> (u_input.a.x % 32u), global1[_wgslsmith_index_u32(4294967295u, 4u)]), firstLeadingBit(1u));
}

