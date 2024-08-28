struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 18> = array<bool, 18>(true, true, false, true, true, false, false, false, false, true, false, false, true, true, true, false, true, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    var var_0 = select(arg_0.zwx, arg_0.wyx, vec3<bool>(true, true, select(true, global1.c & true, all(vec4<bool>(false, false, false, false))))) ^ arg_0.zxx;
    var var_1 = vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(arg_0.x, var_0.x)), 18u)], global2[_wgslsmith_index_u32(~14037u, 18u)], any(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, false, arg_1), all(vec2<bool>(arg_1, global2[_wgslsmith_index_u32(arg_0.x, 18u)])))));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(-(~global1.a >> (vec2<u32>(8588u, var_0.x) % vec2<u32>(32u))), u_input.a), abs(~vec2<i32>(u_input.a.x, global1.b.x)), global1.c & all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(105796u, 18u)]), select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 18u)], arg_1), arg_1), !var_1.xz)), ~(global1.a.x ^ global1.a.x));
    var_2 = Struct_1(~reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(14078i, var_2.b.x), u_input.a | var_2.a)), max(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(0i, u_input.a.x), -12401i >> (arg_0.x % 32u))), select(~firstLeadingBit(vec2<i32>(var_2.d, 10832i)), global1.a ^ (u_input.a | u_input.a), u_input.a.x <= ~(-66255i))), any(vec4<bool>(-583f > _wgslsmith_f_op_f32(floor(502f)), !all(vec2<bool>(true, global2[_wgslsmith_index_u32(14901u, 18u)])), any(!vec3<bool>(false, arg_1, false)), true)), select(u_input.a.x, select(5380i, min(var_2.b.x, 1i), global2[_wgslsmith_index_u32(var_0.x, 18u)] || true), any(vec3<bool>(true, true, true))));
    var_0 = vec3<u32>(55509u, arg_0.x, ~(var_0.x | _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(4294967295u, var_0.x))));
    return max(arg_0.x, ~101011u);
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_mult_u32(~1u, 1u) << ((func_3(~vec4<u32>(4294967295u, 4294967295u, 1u, 33248u), !(!global1.c)) ^ max(1u, 52222u)) % 32u);
    global1 = Struct_1(u_input.a, global1.a | _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(-global1.a, -vec2<i32>(-10006i, -1i)), min(firstTrailingBit(u_input.a), abs(u_input.a))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), global1.c & true), select(vec2<bool>(global1.c, true), vec2<bool>(false, false), true), vec2<bool>(global1.c, true))), global1.b.x | _wgslsmith_sub_i32((u_input.a.x & -22014i) ^ u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(u_input.a.x, -38358i)))));
    let var_1 = select(vec4<i32>(global1.d, 2147483647i, abs((77624i & global1.a.x) & global1.a.x), u_input.a.x), ~min(firstLeadingBit(vec4<i32>(u_input.a.x, 1i, -2147483647i, global1.a.x)), firstTrailingBit(max(vec4<i32>(-1i, 1i, 1i, u_input.a.x), vec4<i32>(global1.d, 34488i, global1.b.x, u_input.a.x)))), select(vec4<bool>(false & (global1.c & global1.c), !global2[_wgslsmith_index_u32(firstTrailingBit(15241u), 18u)], true, any(!vec4<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], false, false))), !(!(!vec4<bool>(true, global1.c, global2[_wgslsmith_index_u32(17337u, 18u)], global1.c))), false));
    global0 = array<vec4<u32>, 9>();
    var var_2 = any(!vec3<bool>(true, !(31182u == var_0), false));
    return vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1158f))) * -737f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_i32(-((arg_3.b ^ vec2<i32>(1i, -23203i)) << (min(arg_1.a.yy, arg_1.a.xy) % vec2<u32>(32u))), vec2<i32>(1600i, -u_input.a.x)) & u_input.a;
    let var_1 = !vec2<bool>(global1.c, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1.a.x, 18u)], false), vec3<bool>(global1.c, global1.c, true), global1.c), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_1.a.x, 18u)]))));
    global0 = array<vec4<u32>, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, _wgslsmith_div_f32(arg_0.x, 240f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-619f, 1952f) * _wgslsmith_f_op_vec2_f32(floor(arg_0))), _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 1412f), vec2<f32>(arg_0.x, -1254f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 0u), global0[_wgslsmith_index_u32(arg_1.a.x, 9u)]), 18u)])), true)), vec2<bool>(false & all(vec3<bool>(arg_3.c, arg_3.c, true)), !all(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 18u)], true)))))));
    var var_3 = !var_1;
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global2 = array<bool, 18>();
    global0 = array<vec4<u32>, 9>();
    global1 = func_4(_wgslsmith_f_op_vec2_f32(func_2()), Struct_2(~(~(~vec3<u32>(0u, arg_1, 87947u)))), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 8128i, global1.d), vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), vec3<i32>(arg_2.d, global1.a.x, u_input.a.x))), global1.a.x, arg_2.b.x << (func_3(~global0[_wgslsmith_index_u32(4294967295u, 9u)], select(true, global1.c, false)) % 32u)), Struct_1(~global1.a, ~(reverseBits(global1.a) | u_input.a), false, (~global1.d >> (1u % 32u)) >> (~abs(3271u) % 32u)));
    global1 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(299f, arg_0), vec2<f32>(242f, 1162f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(987f - -474f), _wgslsmith_f_op_f32(arg_0 + -542f)), -1000f))), Struct_2((~vec3<u32>(arg_3, 1u, 1u) << (~vec3<u32>(arg_3, 1u, arg_1) % vec3<u32>(32u))) << (~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_3, 0u), vec3<u32>(arg_3, 6587u, arg_1)) % vec3<u32>(32u))), -27511i, func_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(arg_0 * 301f))), 367f), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), abs(vec3<u32>(arg_3, arg_1, arg_1)))), -arg_2.b.x, Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -40535i), firstLeadingBit(arg_2.a)), global1.a & -u_input.a, true, -11413i)));
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(arg_2.b, _wgslsmith_add_vec2_i32(vec2<i32>(global1.a.x, -15931i), _wgslsmith_sub_vec2_i32(global1.a, vec2<i32>(arg_2.a.x, 2147483647i)) & abs(arg_2.b))), _wgslsmith_sub_vec2_i32(~vec2<i32>(~global1.d, -u_input.a.x), arg_2.a), all(vec4<bool>(true && all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 18u)], true)), any(select(vec3<bool>(global2[_wgslsmith_index_u32(8837u, 18u)], false, true), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_1, 18u)], arg_2.c), vec3<bool>(false, false, false))), global1.c, true)), i32(-1i) * -u_input.a.x);
    return Struct_2(vec3<u32>(arg_1, ~arg_3, arg_3));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    var var_0 = arg_2.a.zy;
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(min(u_input.a << (~vec2<u32>(230u, 6413u) % vec2<u32>(32u)), u_input.a), global1.a), global1.b, true, arg_0.b.x);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -753f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(select(-811f, 1058f, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f - 623f)))), _wgslsmith_f_op_f32(floor(706f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-905f * -1000f), _wgslsmith_f_op_f32(ceil(-2032f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2042f)), _wgslsmith_f_op_f32(sign(-102f)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(147f, 408f) * vec2<f32>(-694f, 1418f))), arg_2, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.d, global1.b.x), vec2<i32>(var_1.a.x, var_1.b.x)), arg_1.a), arg_1).c)));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = func_4(_wgslsmith_div_vec2_f32(arg_0.yy, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(195f)), 1432f)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_add_u32(20155u | arg_2.a.x, _wgslsmith_mod_u32(~0u, arg_2.a.x >> (arg_2.a.x % 32u))), func_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1667f), arg_2, -38992i, func_4(arg_0.xw, func_1(-826f, arg_2.a.x, arg_1, 57892u), arg_1.a.x | 39183i, arg_1)), arg_2.a.x), func_4(_wgslsmith_div_vec2_f32(arg_0.wx, _wgslsmith_f_op_vec2_f32(arg_0.xw + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(436f, arg_0.x), vec2<f32>(arg_0.x, arg_0.x))))), arg_2, global1.d, arg_1).b.x, arg_1);
    var_0 = Struct_1(vec2<i32>(1i, -(i32(-1i) * -2147483647i)), ~(-vec2<i32>(-32343i, 57787i)), true, -5158i);
    let var_1 = vec4<bool>(all(select(!vec4<bool>(var_0.c, false, true, global1.c), !vec4<bool>(true, global1.c, true, false), all(vec4<bool>(arg_1.c, false, false, false)))), !any(vec4<bool>(global1.c, true, !var_0.c, true)), arg_2.a.x <= ~func_1(_wgslsmith_f_op_f32(-arg_0.x), ~arg_2.a.x, arg_1, ~arg_2.a.x).a.x, false);
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.zy, vec2<f32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1207f) - arg_0.zz), select(var_1.xx, vec2<bool>(arg_1.c, false), var_1.x)))) - arg_0.wy), arg_2, max(global1.d, reverseBits(0i)), arg_1);
    var var_3 = ~firstLeadingBit(vec3<u32>(30792u, max(4294967295u, countOneBits(16323u)), _wgslsmith_sub_u32(firstTrailingBit(arg_2.a.x), ~arg_2.a.x)));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f * -828f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1566f - 1360f), -265f))) + _wgslsmith_f_op_f32(-1279f - -263f)));
    let var_1 = Struct_1(select(func_6(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(global1.a, vec2<i32>(u_input.a.x, global1.a.x), false, global1.b.x), Struct_1(global1.b, global1.a, true, global1.b.x), func_1(361f, 18467u, Struct_1(vec2<i32>(-984i, global1.a.x), vec2<i32>(u_input.a.x, global1.d), global1.c, global1.d), 1u))), Struct_1(reverseBits(vec2<i32>(-30460i, -25310i)), -u_input.a, global1.c, -u_input.a.x), Struct_2(~vec3<u32>(27269u, 0u, 7746u))), _wgslsmith_div_vec2_i32(vec2<i32>(~global1.d, abs(-1i)), u_input.a << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 46983u), vec2<u32>(87642u, 1u)) % vec2<u32>(32u))), select(vec2<bool>(select(global1.c, true, true), all(vec2<bool>(true, global2[_wgslsmith_index_u32(36290u, 18u)]))), vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(42759u, 18u)])), any(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(15575u, 18u)]))), true)), _wgslsmith_div_vec2_i32(func_4(vec2<f32>(-1000f, 212f), Struct_2(vec3<u32>(0u, 33067u, 22144u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a) << (~65425u % 32u), func_4(vec2<f32>(1000f, 1134f), Struct_2(vec3<u32>(1u, 91026u, 4294967295u)), -global1.b.x, Struct_1(u_input.a, u_input.a, global1.c, u_input.a.x))).b, vec2<i32>(1i, 1i) | global1.a), true, _wgslsmith_mod_i32(0i, -max(u_input.a.x, 0i)) << (min(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 4294967295u), 3305u)) % 32u));
    let var_2 = select(vec3<bool>(true, !select(false, any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 18u)])), global1.c), false), select(!(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 18u)], true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], true, global1.c), true)), vec3<bool>(global1.c, all(select(vec2<bool>(var_1.c, false), vec2<bool>(false, false), false)), all(select(vec3<bool>(global2[_wgslsmith_index_u32(1695u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], var_1.c), vec3<bool>(false, global1.c, var_1.c), vec3<bool>(true, global2[_wgslsmith_index_u32(75886u, 18u)], false)))), true), !(!(!(!vec3<bool>(var_1.c, true, true)))));
    let var_3 = var_2;
    var var_4 = Struct_2(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1601f, -1324f, -1467f, -1000f), vec4<f32>(1551f, 337f, -1000f, -2269f))) + vec4<f32>(882f, 604f, _wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_vec4_f32(func_5(Struct_1(vec2<i32>(u_input.a.x, -61139i), vec2<i32>(var_1.d, 2147483647i), true, u_input.a.x), var_1, Struct_2(var_4.a))).x)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(689f, 394f, -242f, -1116f) - vec4<f32>(1000f, 1040f, 175f, -1654f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1536f, -548f, -153f, -859f)) * vec4<f32>(-526f, -617f, 685f, -130f))))), countOneBits(~(~(~vec3<i32>(-1i, u_input.a.x, 1i)))));
}

