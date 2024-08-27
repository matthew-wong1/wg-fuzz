struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(4294967295u, 41492u, 2417u, 16063u, 1u, 0u, 40808u, 0u, 0u, 6048u, 1u, 4294967295u, 51734u, 750u);

var<private> global1: f32;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: bool) -> vec2<f32> {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(~arg_0, _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(19681u, 14u)])), vec2<u32>(39452u, ~0u)), global0[_wgslsmith_index_u32(arg_0, 14u)], abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 14u)], 0u, 2444u), vec3<u32>(1u, arg_0, 40259u)), vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 14u)], 4294967295u), 13045u, ~0u))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(773f, arg_2))) * vec2<f32>(666f, 349f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, _wgslsmith_f_op_f32(step(arg_2, -214f)))))), vec4<u32>(firstLeadingBit(var_0.x), arg_1, ~(~_wgslsmith_clamp_u32(14406u, arg_1, 6221u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0, global0[_wgslsmith_index_u32(39103u, 14u)]), vec3<u32>(global0[_wgslsmith_index_u32(6529u, 14u)], 56339u, global0[_wgslsmith_index_u32(arg_1, 14u)]), vec3<u32>(var_0.x, 4294967295u, arg_0)) & (vec3<u32>(arg_1, var_0.x, global0[_wgslsmith_index_u32(arg_1, 14u)]) | vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 14u)], var_0.x, arg_1)), _wgslsmith_mult_vec3_u32(~var_0, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11824u, 14u)], 14u)], arg_1, global0[_wgslsmith_index_u32(0u, 14u)])))), Struct_2(global2[_wgslsmith_index_u32(16841u, 11u)], Struct_1(~u_input.a, select(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_3, arg_3, true, arg_3), vec4<bool>(arg_3, arg_3, true, true)), vec4<bool>(false, true, arg_3, false), !arg_3), reverseBits(-1i)), ~reverseBits(firstLeadingBit(vec4<u32>(31363u, 92202u, arg_1, arg_0))), !(!vec2<bool>(arg_3, arg_3)), vec2<f32>(-1115f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(trunc(arg_2))))));
    var_1 = Struct_3(var_1.c.e, ~(~var_1.c.c >> (~(vec4<u32>(var_1.b.x, global0[_wgslsmith_index_u32(var_0.x, 14u)], var_0.x, global0[_wgslsmith_index_u32(7558u, 14u)]) & vec4<u32>(arg_0, 27888u, 4294967295u, arg_1)) % vec4<u32>(32u))), var_1.c);
    let var_2 = all(select(!(!vec2<bool>(var_1.c.a.b.x, true)), vec2<bool>(arg_3, true), var_1.c.b.b.yz));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(min(var_1.c.e, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(1338f)), _wgslsmith_f_op_f32(sign(-1000f))))))), vec4<u32>(max(~min(0u, 46155u), ~_wgslsmith_mult_u32(4294967295u, arg_0)), firstLeadingBit(4294967295u), global0[_wgslsmith_index_u32((~0u | var_1.b.x) >> (max(1u, ~arg_1) % 32u), 14u)], _wgslsmith_sub_u32(22268u, _wgslsmith_mod_u32(4294967295u, arg_0) & ~4294967295u)), var_1.c);
    return var_1.c.e;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = arg_0.a;
    global0 = array<u32, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_0.c.e, arg_0.c.e), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, var_0.x), var_0))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), -287f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1886f, arg_0.c.e.x, _wgslsmith_f_op_f32(arg_0.a.x + -1190f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-654f, 904f, 107f) * vec3<f32>(-807f, -1002f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, var_1.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.x, var_1.x)), !(!arg_3.b.wyz))))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1593f + -769f) * -1360f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-605f))))));
    return vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(339f + var_2.x)) + var_1.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(arg_0.x, 11u)];
    global1 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(785f + _wgslsmith_f_op_f32(step(1509f, _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(46042u, 4294967295u, arg_2.x, false)), _wgslsmith_f_op_vec2_f32(-arg_2.yy)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(6649u, arg_0.x, 89063u, global0[_wgslsmith_index_u32(arg_0.x, 14u)])), vec4<u32>(24475u, global0[_wgslsmith_index_u32(arg_1, 14u)], 33749u, global0[_wgslsmith_index_u32(arg_1, 14u)])), Struct_2(Struct_1(u_input.a, var_0.b, -35616i), Struct_1(u_input.a, vec4<bool>(false, var_0.b.x, true, true), var_0.c), firstTrailingBit(vec4<u32>(1u, 1u, 9557u, arg_1)), !vec2<bool>(var_0.b.x, false), _wgslsmith_div_vec2_f32(arg_2.yw, vec2<f32>(1541f, 1190f)))), 0i, select(select(select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, false), vec4<bool>(true, var_0.b.x, true, true)), vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, true)), !(!vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)), any(!var_0.b)), Struct_1(u_input.a, vec4<bool>(true, true, arg_2.x <= arg_2.x, false), 0i)))));
    global1 = var_1.x;
    global0 = array<u32, 14>();
    return Struct_2(Struct_1(vec3<i32>(-40817i, -6339i, u_input.a.x), !var_0.b, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a.x, -29659i, u_input.a.x, -2147483647i)), vec4<i32>(-10977i, var_0.c, 1669i, u_input.a.x)), abs(select(var_0.c, 751i, var_0.b.x)))), Struct_1(_wgslsmith_clamp_vec3_i32(var_0.a, vec3<i32>(abs(u_input.b), ~var_0.c, -25333i), var_0.a), var_0.b, _wgslsmith_mult_i32(1i, i32(-1i) * -56878i)), ~vec4<u32>(1u, _wgslsmith_clamp_u32(countOneBits(80890u), _wgslsmith_mod_u32(27583u, 4294967295u), global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, arg_1), max(1u, arg_0.x)), ~global0[_wgslsmith_index_u32(67752u, 14u)]), select(select(select(vec2<bool>(false, true), var_0.b.zz, var_0.b.xx), var_0.b.yz, var_0.b.xx), var_0.b.ww, var_0.b.zx), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(arg_1, _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(80838u, 14u)], _wgslsmith_add_u32(arg_1, 0u)), 1f, true)).x, _wgslsmith_f_op_vec2_f32(func_3(~(~0u), global0[_wgslsmith_index_u32(~25330u, 14u)] >> (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(func_4(Struct_3(var_1, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 14u)], 14u)], 0u, 26924u, 1u), Struct_2(global2[_wgslsmith_index_u32(1376u, 11u)], global2[_wgslsmith_index_u32(70246u, 11u)], vec4<u32>(arg_0.x, 1u, arg_1, 58579u), vec2<bool>(var_0.b.x, true), var_1)), _wgslsmith_mult_i32(u_input.b, 1i), var_0.b, global2[_wgslsmith_index_u32(~8149u, 11u)])).x, var_0.b.x)).x));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = u_input.a.zy;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1018f)), arg_1.e.x), vec4<u32>(~arg_2.c.c.x, arg_1.c.x | arg_1.c.x, arg_2.c.c.x, ~global0[_wgslsmith_index_u32(1u, 14u)]), arg_1), abs(countOneBits(arg_1.a.a.x)), func_2(reverseBits(arg_1.c.ww ^ arg_1.c.wz), ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.x, -721f, 958f, -2130f), vec4<f32>(-1448f, 851f, 1083f, arg_1.e.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1347f, -1039f, arg_2.a.x, arg_2.a.x))))).a.b, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, arg_2.c.a.a.x, 9131i), u_input.a) ^ select(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b, u_input.b, u_input.a.x), arg_1.a.b.yyz), arg_1.a.b, -arg_1.a.c))) - _wgslsmith_f_op_vec2_f32(-arg_2.a));
    let var_2 = arg_2.c.a.b.zww;
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(559f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(695f, -275f) - var_1.x)))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-829f, -1186f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(false, func_2(vec2<u32>(15688u, 4294967295u), 71079u, vec4<f32>(-2056f, -298f, 1646f, 551f)), Struct_3(vec2<f32>(2090f, 374f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 11u)], Struct_1(vec3<i32>(38430i, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, false), u_input.b), vec4<u32>(45155u, 79373u, 0u, global0[_wgslsmith_index_u32(130705u, 14u)]), vec2<bool>(true, true), vec2<f32>(-1380f, 1495f)))))))));
    global0 = array<u32, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 324f, 1085f) - vec3<f32>(-445f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2259f, var_0.x, var_0.x), vec3<f32>(var_0.x, 378f, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -483f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2147f)), _wgslsmith_f_op_f32(155f + _wgslsmith_f_op_f32(exp2(var_0.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-245f, var_1.x, var_0.x), vec3<f32>(var_1.x, var_1.x, -1689f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1770f, -618f, var_1.x), vec3<f32>(-1403f, var_1.x, var_1.x), true)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, var_0.x, 1317f)))))));
    let var_2 = max(vec4<u32>(~0u, ~_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(29095u, 14u)], 79009u), 91214u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec3<u32>(global0[_wgslsmith_index_u32(60320u, 14u)], 24216u, global0[_wgslsmith_index_u32(1u, 14u)]))) | _wgslsmith_mod_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83856u, 14u)], 14u)], 1u, 4294967295u, 1u) ^ vec4<u32>(global0[_wgslsmith_index_u32(88538u, 14u)], 37311u, global0[_wgslsmith_index_u32(3659u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<u32>(19514u, min(1u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42782u, 14u)], 14u)], 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(106783u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(49458u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81344u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(15769u, 14u)])))), max(min(_wgslsmith_mult_vec4_u32(vec4<u32>(6660u, 5920u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 14u)], 1u), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 10706u, 0u)), abs(vec4<u32>(6425u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], global0[_wgslsmith_index_u32(28344u, 14u)], 36854u))) ^ func_2(reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 5459u)), global0[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(157f, var_0.x, var_1.x, var_1.x), vec4<f32>(-338f, var_0.x, -1516f, var_0.x), false))).c, min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], 8860u, 55641u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5592u, 14u)], 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9442u, 14u)], 14u)], global0[_wgslsmith_index_u32(68347u, 14u)], 47080u))), vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], ~34362u, 4294967295u, 36868u))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.zx, var_0)))))), vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 14u)], 14u)], 100840u, 0u, ~global0[_wgslsmith_index_u32(0u, 14u)]), func_2(vec2<u32>(func_2(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28742u, 14u)], 14u)], global0[_wgslsmith_index_u32(1u, 14u)])), abs(0u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_1.x, -455f, var_1.x), vec4<f32>(611f, var_0.x, 1000f, var_0.x), true))).c.x, ~global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)]), 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~13646u, ~4294967295u), 14u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1760f, var_1.x, 1311f, var_0.x) - vec4<f32>(485f, -517f, var_1.x, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-615f, -566f, 367f, 200f), vec4<f32>(-274f, -607f, var_1.x, -364f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~reverseBits(~(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(25838u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73930u, 14u)], 14u)], global0[_wgslsmith_index_u32(40882u, 14u)]))));
    let var_1 = func_1();
    var var_2 = var_1.c;
    let var_3 = var_1.c.d.x;
    global1 = _wgslsmith_f_op_f32(sign(var_2.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.c.a.c, var_1.c.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 26697i, var_1.c.a.c), vec4<i32>(u_input.b, var_1.c.a.a.x, 1i, u_input.a.x)) >> (select(global0[_wgslsmith_index_u32(33012u, 14u)], var_1.b.x, false) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_2.b.a.xx, vec2<i32>(var_2.b.a.x, var_1.c.a.a.x)), abs(vec2<i32>(0i, 24343i))), countOneBits(-55836i)), ~(vec4<i32>(var_2.a.a.x, var_2.b.a.x, 0i, u_input.a.x) | vec4<i32>(-14534i, var_2.b.c, u_input.a.x, var_2.b.c)) << (var_0 % vec4<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-652f, var_2.e.x))), _wgslsmith_div_f32(var_2.e.x, -1380f)), u_input.b);
}

