struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, false, false, false, true, true, false, false, false, true, true, false, false, true, true, true, false, true, false, false, true, false, true, false, false);

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    global0 = array<bool, 26>();
    global1 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), 585f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.e.x, 26u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2531f, -533f, global0[_wgslsmith_index_u32(27007u, 26u)])) * arg_0))));
    var var_1 = u_input.e.x & 4294967295u;
    var var_2 = Struct_1(reverseBits(~(~(u_input.e.x | u_input.e.x))), vec2<f32>(-673f, arg_0), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_0.xyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.ywy) * vec3<f32>(arg_0, arg_0, -356f))))), min(abs((vec2<i32>(8847i, u_input.a) | u_input.c.yx) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a))), u_input.c.xw), global0[_wgslsmith_index_u32(55121u, 26u)]);
    return vec3<u32>(4294967295u, ~(~u_input.e.x & 9015u), 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(~u_input.e, u_input.e)), vec3<u32>(_wgslsmith_div_u32(arg_2.a, arg_1.a), ~arg_2.a, _wgslsmith_div_u32(0u, 34163u)) & ~func_3(arg_3.c.x)), _wgslsmith_f_op_vec2_f32(-arg_2.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.c)))), arg_3.d, any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 26u)] || false, global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(abs(0u), 26u)]), vec4<bool>(arg_1.e, arg_2.e, true, true), (arg_3.c.x != arg_2.c.x) & (arg_3.e || arg_1.e))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, u_input.e.x, var_0.a, 13984u) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(6291u, var_0.a, arg_2.a, u_input.e.x), vec4<u32>(1u, 59483u, 6668u, arg_1.a), vec4<u32>(54525u, u_input.e.x, arg_3.a, 4294967295u)), select(vec4<u32>(~4294967295u, arg_1.a, ~arg_1.a, func_3(arg_3.b.x).x), select(abs(vec4<u32>(11433u, 57219u, arg_2.a, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.a, arg_1.a, u_input.e.x, var_0.a), vec4<u32>(56485u, 4294967295u, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, var_0.a, 4294967295u, arg_2.a)), vec4<bool>(true, false, arg_3.e, global0[_wgslsmith_index_u32(56987u, 26u)])), select(vec4<bool>(arg_1.e, true, false, global0[_wgslsmith_index_u32(arg_3.a, 26u)]), vec4<bool>(arg_1.e, true, var_0.e, arg_2.e), false))), var_0.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 448f, arg_2.c.x))), _wgslsmith_add_vec2_i32(-select(vec2<i32>(-2800i, arg_0), max(vec2<i32>(16087i, -2147483647i), vec2<i32>(arg_1.d.x, arg_1.d.x)), select(vec2<bool>(arg_3.e, false), vec2<bool>(false, false), vec2<bool>(false, true))), arg_2.d), !(arg_1.c.x < _wgslsmith_f_op_f32(-1000f - -1607f)) & true);
    let var_2 = ((_wgslsmith_div_u32(var_1.a, arg_2.a | arg_1.a) & func_3(165f).x) & _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.xy, _wgslsmith_div_vec2_u32(u_input.e.yy, vec2<u32>(u_input.e.x, var_1.a))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a, arg_3.a), u_input.e.zz), u_input.e.zz))) < 49578u;
    global1 = array<Struct_1, 3>();
    var var_3 = _wgslsmith_mult_i32(var_0.d.x, _wgslsmith_add_i32(select(-11769i, arg_2.d.x, var_1.e), arg_0 | arg_0) << (abs(7635u) % 32u)) >> (10829u % 32u);
    return select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(5849u, 26u)], true, arg_3.e, true), vec4<bool>(true, var_0.b.x != arg_3.c.x, true, arg_2.e), !vec4<bool>(true, var_1.e, var_0.e, arg_1.e)), select(select(!vec4<bool>(false, true, arg_2.e, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_1.e, false, false), vec4<bool>(arg_2.e, arg_1.e, true, var_2)), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 26u)], global0[_wgslsmith_index_u32(21965u, 26u)], true)), select(select(vec4<bool>(var_0.e, true, true, arg_2.e), vec4<bool>(true, true, arg_3.e, arg_3.e), vec4<bool>(true, true, arg_1.e, true)), !vec4<bool>(arg_3.e, false, arg_1.e, arg_3.e), vec4<bool>(true, var_0.e, var_1.e, arg_3.e)), !all(vec4<bool>(arg_3.e, global0[_wgslsmith_index_u32(u_input.e.x, 26u)], arg_1.e, false))), all(select(vec3<bool>(arg_3.e, false, arg_2.e), vec3<bool>(true, true, arg_2.e), vec3<bool>(arg_2.e, false, true))) && (_wgslsmith_sub_u32(51841u, 15647u) < _wgslsmith_sub_u32(76915u, var_1.a))), !vec4<bool>(arg_1.e, !(850f > arg_3.c.x), true, select(var_2 || arg_3.e, !var_2, arg_1.e)), vec4<bool>(!any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], true, arg_2.e)), true, !(52026u <= (arg_1.a ^ 0u)), arg_3.e));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(508f, 1530f)), _wgslsmith_f_op_f32(-1152f + _wgslsmith_f_op_f32(arg_1 + arg_1)), !arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1, arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(458f)))))));
    var_0 = u_input.d.x;
    var var_2 = Struct_1(func_3(1f).x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1616f, -2307f), var_1, arg_2.wz)), vec2<f32>(1115f, arg_1))), _wgslsmith_f_op_vec2_f32(-var_1)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1697f, -591f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-558f, 918f, arg_1), vec3<f32>(arg_1, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, 1973f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, 1000f, arg_1))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 911f, arg_1), vec3<f32>(var_1.x, 587f, -1336f))), arg_2.yyy))), vec2<i32>(-firstLeadingBit(u_input.c.x), 54773i), true);
    let var_3 = true;
    return Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)), _wgslsmith_div_vec3_f32(var_2.c, var_2.c), var_2.d, true);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = !(!vec3<bool>(false, (i32(-1i) * -1i) < u_input.c.x, false));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_1 = vec3<i32>(-1i, ~11444i, arg_0.d.x);
    return func_4(!(!any(select(vec3<bool>(true, arg_0.e, global0[_wgslsmith_index_u32(u_input.e.x, 26u)]), vec3<bool>(false, arg_1, var_0.x), vec3<bool>(true, arg_1, arg_1)))), 769f, select(select(!func_2(u_input.b, Struct_1(u_input.e.x, arg_0.b, vec3<f32>(-488f, 750f, -163f), vec2<i32>(var_1.x, arg_0.d.x), global0[_wgslsmith_index_u32(arg_0.a, 26u)]), Struct_1(4294967295u, vec2<f32>(-1477f, arg_0.c.x), vec3<f32>(2036f, arg_0.c.x, -460f), u_input.c.zy, global0[_wgslsmith_index_u32(4294967295u, 26u)]), global1[_wgslsmith_index_u32(arg_0.a, 3u)]), !(!vec4<bool>(false, var_0.x, arg_0.e, arg_0.e)), select(!vec4<bool>(arg_1, true, false, true), vec4<bool>(true, true, var_0.x, var_0.x), arg_1)), vec4<bool>(select(arg_0.e && arg_0.e, false | arg_1, !global0[_wgslsmith_index_u32(12644u, 26u)]), func_4(true, arg_0.b.x, select(vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(arg_0.a, 26u)], arg_0.e), vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], var_0.x, false, true), arg_0.e)).e, any(!vec3<bool>(arg_0.e, arg_1, false)), _wgslsmith_f_op_f32(arg_0.c.x - -1934f) >= arg_0.b.x), any(select(var_0.yx, var_0.yz, select(var_0.xx, var_0.zx, var_0.zz)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<bool, 26>();
    global1 = array<Struct_1, 3>();
    var var_0 = func_5(func_4(!(38661u == u_input.e.x), arg_0, select(func_2(-u_input.c.x, Struct_1(u_input.e.x, vec2<f32>(-287f, -683f), vec3<f32>(arg_0, arg_0, -2519f), vec2<i32>(u_input.b, -8104i), true), Struct_1(u_input.e.x, vec2<f32>(arg_0, -508f), vec3<f32>(-167f, arg_0, 1400f), vec2<i32>(-22880i, u_input.c.x), true), Struct_1(31631u, vec2<f32>(1000f, arg_0), vec3<f32>(arg_0, -618f, -231f), u_input.d, global0[_wgslsmith_index_u32(u_input.e.x, 26u)])), func_2(u_input.d.x, Struct_1(1u, vec2<f32>(arg_0, arg_0), vec3<f32>(-384f, -112f, -1106f), vec2<i32>(15525i, u_input.c.x), global0[_wgslsmith_index_u32(0u, 26u)]), Struct_1(u_input.e.x, vec2<f32>(-656f, 986f), vec3<f32>(1000f, arg_0, arg_0), u_input.d, global0[_wgslsmith_index_u32(1u, 26u)]), Struct_1(u_input.e.x, vec2<f32>(arg_0, -1313f), vec3<f32>(arg_0, 1413f, -178f), u_input.d, false)), false)), global0[_wgslsmith_index_u32(~(~u_input.e.x), 26u)]);
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    return Struct_1(_wgslsmith_sub_u32(u_input.e.x, 97783u & (u_input.e.x & 1u)), var_0.b, func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(27172u, ~var_0.a), 26u)] && var_0.e, _wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2275f, arg_0))), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(43839u, 26u)], var_0.e, global0[_wgslsmith_index_u32(90567u, 26u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], var_0.e, true, false), var_0.e), !select(vec4<bool>(var_0.e, false, global0[_wgslsmith_index_u32(u_input.e.x, 26u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 26u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(63524u, 26u)], global0[_wgslsmith_index_u32(5349u, 26u)], global0[_wgslsmith_index_u32(3839u, 26u)], var_0.e)), true)).c, vec2<i32>(-14082i, _wgslsmith_sub_i32(~reverseBits(-3670i), u_input.d.x)), all(vec2<bool>(true, true)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = vec4<i32>(-1i, 0i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(func_4(arg_1.e, -2066f, vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a, 26u)], true, true, arg_1.e)).d.x, -47794i, -arg_1.d.x, -2147483647i)) ^ u_input.a, 4825i);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(52894u, arg_1.a), 3u)];
    let var_2 = countOneBits(~arg_0);
    var var_3 = func_1(475f);
    var_0 = u_input.c;
    return countOneBits(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, var_1.a, 0u, 4294967295u))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a, 0u, 10094u, 1u), vec4<u32>(1u, arg_0, 0u, 0u)), ~vec4<u32>(4294967295u, 1u, 4294967295u, 84107u), firstTrailingBit(~vec4<u32>(u_input.e.x, 1u, arg_0, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(abs(68660u), 1u << (~u_input.e.x % 32u), 1u, reverseBits(u_input.e.x)), countOneBits(firstLeadingBit(~vec4<u32>(u_input.e.x, 103575u, 4294967295u, u_input.e.x)))), func_6(~(u_input.e.x | u_input.e.x) >> (7477u % 32u), func_1(-1105f), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(10810i, u_input.b, 5795i, 0i), u_input.c & vec4<i32>(2147483647i, -2147483647i, u_input.a, 12231i)), global1[_wgslsmith_index_u32(~min(u_input.e.x, 0u), 3u)], global1[_wgslsmith_index_u32(1u, 3u)], func_5(func_1(-1026f), !global0[_wgslsmith_index_u32(1u, 26u)])))), 26u)];
    var var_1 = (u_input.c.wxw >> (select(u_input.e | select(u_input.e, vec3<u32>(u_input.e.x, 15400u, 4294967295u), false), ~_wgslsmith_mult_vec3_u32(u_input.e, u_input.e), select(global0[_wgslsmith_index_u32(1u, 26u)], true, true)) % vec3<u32>(32u))) & vec3<i32>(u_input.b, ~13976i, _wgslsmith_mod_i32(~u_input.a, reverseBits(u_input.a)));
    global1 = array<Struct_1, 3>();
    var var_2 = vec2<i32>(var_1.x, _wgslsmith_mod_i32(reverseBits(~var_1.x), u_input.a));
    var_2 = vec2<i32>(var_1.x, -firstTrailingBit((0i << (u_input.e.x % 32u)) << (u_input.e.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-28322i, abs(~(var_2.x & var_1.x))), 1i, ~u_input.e.xx, u_input.e.x << (~(~select(1u, 0u, global0[_wgslsmith_index_u32(u_input.e.x, 26u)])) % 32u));
}

