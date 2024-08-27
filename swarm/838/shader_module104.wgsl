struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(965i, 1i);

var<private> global1: Struct_2 = Struct_2(1235f, i32(-2147483648), vec2<u32>(9915u, 32408u), 0i, vec3<bool>(true, true, false));

var<private> global2: array<Struct_1, 18>;

var<private> global3: vec4<i32> = vec4<i32>(26039i, i32(-2147483648), 2147483647i, -7687i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~global1.c.x), select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(18987u, arg_0.x), u_input.a.x << (36200u % 32u)), arg_2.x, all(select(global1.e, vec3<bool>(true, true, global1.e.x), arg_1)))), 18u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), ~min(select(~global0.x, global1.d, all(global1.e)), ~(global1.d ^ global1.b)), _wgslsmith_mult_vec2_u32(u_input.a.zz, global1.c), _wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global3.ww, vec2<i32>(2147483647i, u_input.b.x)), abs(vec2<i32>(34600i, 17037i))), global3.zy)), select(!(!global1.e), global1.e, arg_0.x >= u_input.c));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-503f))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) + _wgslsmith_f_op_f32(global1.a + 430f)) - global1.a)), _wgslsmith_add_i32(2147483647i, firstLeadingBit(-global3.x)), ~(~(~global1.c)) >> (vec2<u32>(global1.c.x, global1.c.x) % vec2<u32>(32u)), ~max(global3.x, u_input.b.x), !vec3<bool>(arg_1, false, arg_1));
    let var_0 = global1.e.x;
    var var_1 = Struct_2(385f, -1i, u_input.a.yw, _wgslsmith_mult_i32(global0.x, 0i >> (abs(global1.c.x) % 32u)) ^ global3.x, vec3<bool>(true, arg_1, !all(vec4<bool>(true, global1.e.x, global1.e.x, true))));
    global1 = Struct_2(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0, ~0u, _wgslsmith_mult_u32(arg_0 << (0u % 32u), ~64210u)), !arg_1, ~(~u_input.a) ^ min(countOneBits(u_input.a), abs(vec4<u32>(4294967295u, 4294967295u, global1.c.x, 18457u))))), reverseBits(-(i32(-1i) * -1i) & _wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_sub_i32(-1194i, global0.x))), u_input.a.yx, ~1995i, !var_1.e);
    let var_2 = !(!(!vec3<bool>(false, var_1.e.x, false)));
    return Struct_1(_wgslsmith_div_u32(1u, countOneBits(arg_0) >> (_wgslsmith_mod_u32(61792u, u_input.c) % 32u)), abs(19635u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, 1691f, var_1.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, 1028f, var_1.a), vec3<f32>(-1100f, 264f, 984f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 2167f, var_1.a)), var_1.e))))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = func_2(48308u, any(!(!global1.e.xx)));
    var var_1 = var_0.c.xz;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(898f, arg_3, -1960f, _wgslsmith_div_f32(116f, 479f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, -1649f, arg_2.c.x, 2132f) - vec4<f32>(776f, var_0.c.x, -2120f, -3047f)), vec4<f32>(arg_3, 306f, 1264f, 104f), true)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-265f)), -362f, 361f, _wgslsmith_div_f32(global1.a, var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1166f, var_1.x, 796f, 396f), vec4<f32>(var_0.c.x, var_0.c.x, -312f, -193f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, -1083f, arg_2.c.x, var_0.c.x)), vec4<bool>(false, false, global1.e.x, true))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, arg_3, global1.a, 283f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, var_0.c.x, var_1.x, global1.a)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(-1623f, _wgslsmith_f_op_f32(-1108f + var_1.x), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-199f + var_0.c.x))), _wgslsmith_f_op_f32(global1.a + 149f)), vec4<f32>(var_1.x, arg_2.c.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) - -799f)))));
    let var_3 = select(select(vec4<bool>(true, all(vec2<bool>(false, global1.e.x)), !(!global1.e.x), any(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x))), select(select(vec4<bool>(global1.e.x, true, global1.e.x, global1.e.x), select(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), vec4<bool>(false, false, true, global1.e.x), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x)), true), select(!vec4<bool>(false, global1.e.x, false, global1.e.x), vec4<bool>(true, true, false, true), vec4<bool>(global1.e.x, global1.e.x, false, false)), true), select(vec4<bool>(!global1.e.x, false, global1.e.x || global1.e.x, true), !(!vec4<bool>(false, true, false, global1.e.x)), true)), !select(select(!vec4<bool>(global1.e.x, true, global1.e.x, global1.e.x), vec4<bool>(true, global1.e.x, true, global1.e.x), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, true)), select(!vec4<bool>(global1.e.x, false, global1.e.x, global1.e.x), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, false), select(vec4<bool>(global1.e.x, true, true, global1.e.x), vec4<bool>(false, false, false, global1.e.x), global1.e.x)), (93796i << (arg_2.a % 32u)) >= _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(10732i, global0.x, -19984i, -2147483647i))), select(!vec4<bool>(any(vec4<bool>(false, global1.e.x, global1.e.x, global1.e.x)), !global1.e.x, 1u == arg_1.x, all(global1.e)), select(!(!vec4<bool>(false, global1.e.x, global1.e.x, false)), select(select(vec4<bool>(false, false, global1.e.x, false), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), vec4<bool>(false, global1.e.x, true, false)), select(vec4<bool>(global1.e.x, global1.e.x, false, global1.e.x), vec4<bool>(true, global1.e.x, true, true), false), select(vec4<bool>(false, global1.e.x, false, false), vec4<bool>(true, global1.e.x, global1.e.x, false), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, false))), select(!vec4<bool>(false, global1.e.x, true, true), !vec4<bool>(false, false, false, global1.e.x), !vec4<bool>(global1.e.x, true, false, true))), !select(vec4<bool>(global1.e.x, true, true, false), vec4<bool>(global1.e.x, false, true, global1.e.x), false)));
    return Struct_2(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(step(-446f, global1.a)))), u_input.b.x, ~select(~arg_1.zx, vec2<u32>(26237u, ~arg_2.a), !all(vec4<bool>(true, false, false, var_3.x))), _wgslsmith_clamp_i32(~(-(i32(-1i) * -12847i)), _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b) ^ abs(select(global1.b, 1i, global1.e.x)), 1i ^ abs(global0.x)), vec3<bool>(global1.a <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1060f))), var_3.x, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = func_2(~(~(~arg_0.c.x)), true);
    let var_1 = select(vec3<bool>(!all(vec2<bool>(arg_1.x, arg_0.e.x)), !(-2147483647i <= arg_0.b), false), arg_0.e, arg_1.zwx);
    global3 = vec4<i32>(_wgslsmith_clamp_i32(25518i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, -1i), global3.yx)), ~vec2<i32>(u_input.b.x, 13072i) | reverseBits(u_input.b.xw))), global3.x, global1.b >> (~reverseBits(0u) % 32u), 0i);
    let var_2 = arg_0;
    var var_3 = global2[_wgslsmith_index_u32(func_1(~106679u, u_input.a, func_2(3012u, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.zzy << (~vec3<u32>(arg_0.c.x, var_2.c.x, 13078u) % vec3<u32>(32u)), true && arg_1.x, vec4<u32>(arg_0.c.x ^ 30378u, ~var_0.b, 0u, 0u))))).c.x, 18u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))))), global1.a)) + 370f);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    global0 = -vec2<i32>(~1i, global3.x);
    let var_0 = _wgslsmith_sub_vec4_i32(~u_input.b, vec4<i32>(8346i, _wgslsmith_dot_vec2_i32(global3.yy, vec2<i32>(arg_2.b, ~2147483647i)), ~(-64550i), ~(~2147483647i)));
    let var_1 = -vec2<i32>(0i, global1.b & arg_1.x);
    let var_2 = -(var_0.xwx << (vec3<u32>(19403u, _wgslsmith_dot_vec4_u32(vec4<u32>(73403u, global1.c.x, u_input.a.x, global1.c.x), ~vec4<u32>(u_input.a.x, 1u, 2150u, 3283u)), 15141u) % vec3<u32>(32u)));
    global2 = array<Struct_1, 18>();
    return global1.e;
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = u_input.b;
    let var_1 = u_input.a.yyz;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1(u_input.a.x, u_input.a, Struct_1(0u, var_1.x, vec3<f32>(global1.a, -539f, global1.a)), global1.a).a, _wgslsmith_f_op_f32(1708f * 114f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a)))))), -908f));
    let var_3 = global2[_wgslsmith_index_u32(func_1(_wgslsmith_mod_u32(1u, ~global1.c.x), u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u & ~global1.c.x, ~func_1(_wgslsmith_sub_u32(u_input.a.x, u_input.c), firstLeadingBit(vec4<u32>(global1.c.x, var_1.x, 58302u, var_1.x)), global2[_wgslsmith_index_u32(reverseBits(87768u), 18u)], _wgslsmith_f_op_f32(global1.a - global1.a)).c.x), 18u)], _wgslsmith_f_op_f32(407f * _wgslsmith_f_op_f32(func_3(u_input.a.zxx, true, vec4<u32>(_wgslsmith_mod_u32(33098u, var_1.x), max(u_input.c, 89883u), 4294967295u, 73453u))))).c.x, 18u)];
    var var_4 = func_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_3.a, global1.c.x) | min(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(45271u, var_1.x, 35757u)), firstLeadingBit(_wgslsmith_mult_vec3_u32(var_1, vec3<u32>(var_1.x, 22586u, 4294967295u))))), ~u_input.a, func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_3.a), vec2<u32>(u_input.c, var_1.x)), reverseBits(var_1.xx)), ~vec2<u32>(4294967295u, var_1.x)), !arg_1.x), global1.a);
    return StorageBuffer(var_0.x, var_1 ^ _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_1, var_1, vec3<u32>(u_input.a.x, global1.c.x, 40677u)), ~max(vec3<u32>(var_3.b, var_1.x, var_4.c.x), vec3<u32>(u_input.c, var_3.b, 87810u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(global1.c.x, _wgslsmith_div_u32(global1.c.x, u_input.c)), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, _wgslsmith_f_op_f32(global1.a - 1f), -210f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -961f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-325f, 1215f, global1.a) - vec3<f32>(global1.a, -542f, global1.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -2576f)))));
    var var_1 = global1.e.x;
    let x = u_input.a;
    s_output = func_6(false, func_5(select(!global1.e.xz, global1.e.yx, vec2<bool>(true, !global1.e.x)), -(~vec2<i32>(-14536i, global3.x) << (vec2<u32>(30422u, 114813u) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(func_4(func_1(1u, vec4<u32>(36673u, 4294967295u, 4294967295u, 4294967295u), Struct_1(u_input.c, var_0.b, vec3<f32>(492f, var_0.c.x, var_0.c.x)), -1566f), !vec4<bool>(global1.e.x, false, global1.e.x, false), global1.e.x, 2580f)), global0.x, _wgslsmith_div_vec2_u32(global1.c, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(var_0.b, var_0.b))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(22571i, global0.x, 13500i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.d, global3.x, u_input.b.x, 3277i), vec4<i32>(1i, global0.x, global0.x, global3.x))), vec3<bool>(true, global1.e.x, !global1.e.x))), ~_wgslsmith_mult_vec3_i32(~(~vec3<i32>(69710i, u_input.b.x, global3.x)), vec3<i32>(_wgslsmith_add_i32(0i, global1.d), ~31804i, _wgslsmith_mult_i32(global3.x, -2147483647i))));
}

