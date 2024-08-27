struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 24647i, -42291i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = _wgslsmith_mult_vec3_i32(abs(-select(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x), arg_2.e.b) & -(~vec3<i32>(global0.x, -1i, 0i))), ~vec3<i32>(-20449i, _wgslsmith_sub_i32(-1i, global0.x), _wgslsmith_add_i32(-2147483647i & global0.x, _wgslsmith_clamp_i32(-1i, -1i, -33292i))));
    let var_0 = Struct_2(0u, select(arg_1.a.ww, select(vec2<bool>(arg_2.b.x, true), arg_1.b.xy, false), !select(arg_0 == 13481u, true, any(vec4<bool>(false, arg_2.e.a.x, arg_1.a.x, false)))), ~select(countOneBits(vec2<u32>(4294967295u, 4294967295u) & vec2<u32>(arg_2.c.x, arg_2.a)), ~arg_2.c, !select(arg_2.e.b.yy, vec2<bool>(arg_2.b.x, false), arg_2.b)), arg_2.d, Struct_1(vec4<bool>(false, _wgslsmith_f_op_f32(-arg_1.e) >= _wgslsmith_f_op_f32(arg_1.e - arg_2.e.c), arg_2.d.b.x, true), select(vec3<bool>(any(vec3<bool>(arg_1.b.x, arg_2.b.x, true)), all(vec2<bool>(arg_2.b.x, arg_1.a.x)), false), select(arg_1.b, arg_1.a.zxz, true), false), -228f, arg_2.e.d, -932f));
    var var_1 = var_0.e;
    var_1 = Struct_1(!var_1.a, vec3<bool>(true & !(true | var_1.a.x), arg_2.d.a.x, var_0.e.b.x), _wgslsmith_f_op_f32(586f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-429f)) + _wgslsmith_f_op_f32(select(var_0.e.e, _wgslsmith_f_op_f32(-var_1.c), !arg_1.a.x)))), 129281u, -319f);
    global0 = reverseBits(~(~vec3<i32>(-global0.x, -global0.x, -2147483647i)));
    return _wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(round(var_0.d.c)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = select(arg_0.a.x, false, any(!vec4<bool>(global0.x < global0.x, arg_0.b.x, select(arg_0.b.x, false, arg_0.a.x), arg_0.a.x)));
    var var_1 = Struct_1(select(vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, arg_0.a.x)), true), arg_0.a, arg_0.a), select(!(!arg_0.a.yzy), select(!arg_0.a.zwx, select(select(arg_0.b, vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_0.b), arg_0.b, true), arg_0.a.x), arg_0.a.zyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2288f) + arg_1));
    let var_2 = vec2<bool>((_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, arg_0.d), max(arg_0.d, 65165u)) & (~var_1.d >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u))) >= var_1.d, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(58446u, arg_0, Struct_2(127360u, vec2<bool>(var_1.b.x, false), vec2<u32>(37883u, 13980u), arg_0, arg_0))), _wgslsmith_f_op_f32(max(var_1.e, -1388f))) + 1465f), 1000f, 1980f, var_1.c));
    var var_4 = Struct_2(43904u, vec2<bool>(~countOneBits(9915u) != (4294967295u >> (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u)), all(select(vec2<bool>(var_2.x, false), vec2<bool>(arg_0.b.x, arg_0.b.x), !var_2.x))), _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_0.d, var_1.d)) >> (~firstLeadingBit(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)), reverseBits(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(arg_0.d, arg_0.d)), ~vec2<u32>(17120u, u_input.a)))), Struct_1(arg_0.a, vec3<bool>(arg_0.b.x, all(vec3<bool>(var_2.x, true, arg_0.a.x)) & any(vec4<bool>(var_1.b.x, var_2.x, false, true)), all(vec2<bool>(true, var_2.x))), _wgslsmith_f_op_f32(-var_3.x), ~39498u ^ _wgslsmith_div_u32(0u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.x - arg_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * -1365f))), arg_0);
    return 0u;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(func_4(Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(u_input.a), 228f), _wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), 147f, u_input.a, 790f), Struct_2(27890u, vec2<bool>(false, true), vec2<u32>(1u, 0u), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), 1885f, u_input.a, 1201f), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), 1000f, 47329u, -741f))))), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 12346u, u_input.a), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 95001u), min(u_input.a, u_input.a), min(32881u, u_input.a), u_input.a))), select(!vec2<bool>(true, u_input.a <= 17974u), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), all(vec3<bool>(true, true, true))), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))), abs(~(~vec2<u32>(u_input.a, 1438u))), Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec3<bool>(false, true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false), 1114f, u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1613f)))))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, true), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f * _wgslsmith_f_op_f32(f32(-1f) * -1056f))), abs(u_input.a), _wgslsmith_div_f32(-1180f, -1511f)));
    let var_1 = var_0.d;
    var var_2 = Struct_2(12600u, !var_0.d.a.yw, vec2<u32>(abs(var_0.e.d), ~(~1177u)), Struct_1(vec4<bool>(var_1.b.x, true, any(vec4<bool>(false, var_1.a.x, var_0.b.x, var_0.e.a.x)), var_0.d.b.x), vec3<bool>(any(var_0.e.a.xyw), true, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) - _wgslsmith_f_op_f32(f32(-1f) * -1230f)), 1u, var_1.c), var_0.d);
    var_0 = Struct_2(41365u, var_2.e.b.yy, ~_wgslsmith_mod_vec2_u32(~(~var_0.c), abs(select(var_2.c, vec2<u32>(8258u, 66092u), vec2<bool>(false, var_0.d.b.x)))), var_0.d, var_0.d);
    var_2 = Struct_2(var_2.c.x, !var_1.b.xz, _wgslsmith_clamp_vec2_u32(var_0.c, ~(~var_2.c), vec2<u32>(_wgslsmith_clamp_u32(var_0.c.x, 1u, 0u ^ var_1.d), var_0.a)), Struct_1(var_0.d.a, vec3<bool>(var_1.a.x, any(!var_0.e.a), var_2.d.b.x && (-347f <= var_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.e))) + -1074f), 41071u, _wgslsmith_f_op_f32(sign(-369f))), Struct_1(!var_0.e.a, vec3<bool>(any(select(vec3<bool>(false, false, var_0.d.b.x), vec3<bool>(var_1.b.x, var_1.b.x, false), true)), all(select(vec4<bool>(var_1.a.x, true, var_2.b.x, true), vec4<bool>(false, false, var_1.a.x, var_0.e.b.x), var_2.d.a.x)), any(var_1.a.yww)), var_0.d.c, reverseBits(abs(_wgslsmith_sub_u32(var_2.e.d, var_1.d))), _wgslsmith_f_op_f32(f32(-1f) * -1416f)));
    return -14174i;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = !vec2<bool>(!(!select(true, arg_3.d.a.x, arg_3.b.x)), true);
    global0 = max(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(arg_0, -14493i, 1i)) ^ ~vec3<i32>(global0.x, arg_1.x, 1i), _wgslsmith_mod_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, -1i), vec3<i32>(61i, global0.x, global0.x)), vec3<i32>(_wgslsmith_mod_i32(1i, 34033i), 2147483647i, _wgslsmith_sub_i32(arg_1.x, global0.x)))), ~abs(vec3<i32>(global0.x, -2147483647i, 2147483647i) & vec3<i32>(0i, global0.x, 1i)) | ~(~vec3<i32>(2147483647i, global0.x, arg_0)));
    let var_1 = !all(!arg_3.d.a);
    let var_2 = arg_3.e.a.ywz;
    var_0 = vec2<bool>(var_0.x, any(select(select(vec2<bool>(var_2.x, false), vec2<bool>(true, var_0.x), true), select(arg_3.b, !vec2<bool>(var_1, var_0.x), true && var_2.x), select(var_2.zz, vec2<bool>(var_1, var_0.x), true))));
    return _wgslsmith_add_vec3_i32(vec3<i32>(15721i, firstLeadingBit(2147483647i), 2147483647i), -vec3<i32>(arg_1.x, func_2(arg_1.x) | reverseBits(-64234i), global0.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    global0 = vec3<i32>(0i, -18605i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(func_5(func_2(6685i), vec2<i32>(21914i, -18316i), _wgslsmith_f_op_f32(trunc(-1936f)), Struct_2(u_input.a, vec2<bool>(false, true), vec2<u32>(13403u, u_input.a), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), -1215f, u_input.a, 822f), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), 361f, u_input.a, 382f))), arg_0.zyy), _wgslsmith_div_i32(-68012i, ~(~(-76910i)))));
    let var_0 = Struct_1(!vec4<bool>(select(any(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, true, true)), 41964u > u_input.a), any(vec2<bool>(false, true)), false, false), !select(vec3<bool>(true, u_input.a < u_input.a, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1390f))))), select(_wgslsmith_mod_u32(u_input.a, 73712u & ~u_input.a), u_input.a, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-278f, 1716f)) - -440f));
    let var_1 = 1u;
    let var_2 = arg_0.x;
    var var_3 = select(var_0.b.yz, select(var_0.b.yz, vec2<bool>(var_0.a.x, reverseBits(4294967295u) < var_1), !select(vec2<bool>(false, var_0.b.x), var_0.a.xw, var_0.b.x)), var_0.b.zy);
    return -1i ^ _wgslsmith_clamp_i32(arg_0.x, -select(firstTrailingBit(-20192i), arg_1, any(vec2<bool>(true, var_3.x))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.x, 1i, global0.x), vec4<i32>(global0.x, 2147483647i, -13962i, 2147483647i) << (vec4<u32>(u_input.a, 22449u, u_input.a, 77657u) % vec4<u32>(32u))), reverseBits(25131i)) | _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, func_1(vec4<i32>(global0.x, -1i, -2147483647i, global0.x), -1i)), 3723i), _wgslsmith_add_i32(-5093i, global0.x), -abs(-34185i));
    var var_0 = select(~reverseBits((vec3<u32>(4294967295u, 10427u, 2769u) >> (vec3<u32>(0u, u_input.a, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 1192u)), vec3<u32>(firstLeadingBit(2300u), _wgslsmith_mult_u32(65072u, u_input.a), 2453u)), ~(-43407i) == func_1(-(vec4<i32>(global0.x, 0i, -35075i, 45179i) << (vec4<u32>(91986u, 0u, u_input.a, 0u) % vec4<u32>(32u))), i32(-1i) * -global0.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-331f * -647f), _wgslsmith_f_op_f32(ceil(1017f)), _wgslsmith_f_op_f32(-1288f - 1339f), _wgslsmith_f_op_f32(step(-758f, -1148f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(625f, 1000f, -701f, 373f), vec4<f32>(279f, 424f, -667f, 1582f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1298f, -1000f, -268f, -1109f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))))))));
    global0 = vec3<i32>(10851i, _wgslsmith_clamp_i32(abs(1i), global0.x, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(global0.xy, global0.zy), 16146i)), global0.x);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -995f)));
    var var_3 = 16219i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-452f + _wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))));
}

