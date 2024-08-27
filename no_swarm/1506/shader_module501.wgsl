struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), vec2<bool>(false, true));

var<private> global3: array<vec4<u32>, 14>;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    global4 = u_input.d.x;
    global2 = Struct_1(!global2.b.yz, global2.b, select(select(vec2<bool>(all(vec2<bool>(arg_0.b.x, arg_0.a.x)), all(vec4<bool>(false, arg_0.b.x, global0.x, false))), arg_0.b.yz, any(vec3<bool>(true, true, true))), !select(select(vec2<bool>(global0.x, true), vec2<bool>(true, true), global0.xz), vec2<bool>(true, true), !vec2<bool>(global0.x, true)), any(select(vec4<bool>(true, global2.b.x, global0.x, arg_0.c.x), !vec4<bool>(arg_0.b.x, false, global2.a.x, false), !vec4<bool>(false, global2.c.x, arg_0.b.x, true)))));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -530f)));
    let var_1 = arg_0;
    let var_2 = max((_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_1.x, 11110u, u_input.c.x, 98367u)), ~global3[_wgslsmith_index_u32(arg_1.x, 14u)]) << (~(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 4294967295u) & u_input.c) % vec4<u32>(32u))) | global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, (arg_1.x << (4294967295u % 32u)) << (25752u % 32u)), 14u)], _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x | arg_1.x, _wgslsmith_mod_u32(45258u, 36066u), u_input.c.x, 78311u >> (arg_1.x % 32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(45234u, 336u, u_input.c.x, 1u), select(global3[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 14u)], _wgslsmith_add_vec4_u32(vec4<u32>(66705u, 51127u, arg_1.x, 14034u), vec4<u32>(35125u, u_input.c.x, u_input.c.x, arg_1.x)), !vec4<bool>(true, var_1.b.x, var_1.b.x, false)))));
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    global3 = array<vec4<u32>, 14>();
    global4 = ~max(_wgslsmith_add_i32(_wgslsmith_add_i32(max(-43795i, u_input.b), ~u_input.a.x), u_input.a.x), func_3(Struct_1(vec2<bool>(false, arg_2.x), vec3<bool>(true, false, true), vec2<bool>(arg_0.c.x, true)), ~u_input.c.www) & -(u_input.a.x << (56531u % 32u)));
    let var_0 = Struct_1(vec2<bool>(select(arg_2.x, !all(global2.b.xz), true | global2.b.x), true), !(!vec3<bool>(!arg_0.b.x, !arg_2.x, true)), select(arg_2, vec2<bool>(true, true), false || (u_input.b < (u_input.d.x ^ u_input.b))));
    var var_1 = var_0;
    global0 = vec3<bool>(all(vec2<bool>(!var_0.a.x, global2.c.x)), ~_wgslsmith_dot_vec3_u32(u_input.c.zzx, u_input.c.yyx) <= ~u_input.c.x, !var_1.b.x);
    return Struct_1(select(select(global0.yz, !select(arg_2, arg_0.c, global0.yx), arg_2), vec2<bool>(true, true), !select(arg_2, var_0.c, false & var_0.b.x)), select(arg_0.b, vec3<bool>(all(!arg_0.c), true, true), select(vec3<bool>(true, any(vec4<bool>(true, global0.x, false, false)), !var_1.c.x), vec3<bool>(false, !var_0.b.x, global2.c.x), select(select(vec3<bool>(arg_0.a.x, true, false), var_1.b, arg_0.b), var_1.b, select(var_1.b, arg_0.b, false)))), !(!select(!vec2<bool>(var_0.b.x, false), select(vec2<bool>(false, arg_2.x), vec2<bool>(false, var_0.b.x), var_1.a.x), arg_3 != -651f)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzw, u_input.c.wwx), max(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.ww))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c.wz, vec2<u32>(arg_0, arg_0)), ~vec2<u32>(1u, 382u)), u_input.c.wz));
    var_0 = firstLeadingBit(countOneBits(_wgslsmith_mod_u32(6546u, ~1u)));
    var var_2 = 1i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-541f, 799f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -525f))))) != -442f;
    return global0.x;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(select(310f, -1627f, false)), !global0.x))))));
    let var_1 = func_2(func_2(Struct_1(!(!arg_2.yz), arg_2.wyz, vec2<bool>(1u < u_input.c.x, arg_3.c.x | true)), -1351f, global2.a, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1928f)) - var_0), select(global2.c, !select(!vec2<bool>(arg_3.b.x, true), !global0.zy, all(arg_2)), !(!arg_3.c)), _wgslsmith_f_op_f32(-var_0));
    global3 = array<vec4<u32>, 14>();
    let var_2 = -(~arg_1);
    var var_3 = func_2(Struct_1(select(select(vec2<bool>(global0.x, false), vec2<bool>(false, var_1.c.x), global0.xz), global0.xz, arg_3.c.x), func_2(Struct_1(vec2<bool>(true, arg_2.x), vec3<bool>(arg_2.x, global0.x, global2.a.x), vec2<bool>(true, true)), var_0, select(vec2<bool>(true, false), vec2<bool>(var_1.b.x, true), func_2(Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), global0.zy), var_0, vec2<bool>(true, true), -1220f).b.xy), var_0).b, global0.zy), 1056f, vec2<bool>(all(global0.yy), global2.a.x), -723f);
    return func_2(func_2(func_2(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f)), vec2<bool>(!arg_2.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1043f) * var_0)), var_0, !(!(!global0.xz)), _wgslsmith_div_f32(-440f, var_0)), _wgslsmith_div_f32(var_0, var_0), vec2<bool>(!(!any(arg_2)), var_1.a.x), var_0);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = select(all(!vec3<bool>(true, global0.x, any(vec4<bool>(true, global2.b.x, global0.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-891f))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(774f)))), true);
    global2 = func_5(4294967295u, u_input.a.x, vec4<bool>(global0.x, !any(vec4<bool>(true, var_0, global2.a.x, global2.c.x)), true, !func_4(u_input.c.x, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), func_2(Struct_1(vec2<bool>(global2.a.x, false), vec3<bool>(global2.c.x, false, var_0), global2.c), 805f, global0.xz, 1646f))), func_2(Struct_1(global0.xx, vec3<bool>(func_4(arg_0.x, vec3<u32>(0u, arg_0.x, arg_0.x), Struct_1(vec2<bool>(true, false), vec3<bool>(global0.x, true, true), global2.a)), true, true), global2.c), -1633f, vec2<bool>(var_0 || (global0.x | true), true), 402f));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1488f, 1f, -1129f, _wgslsmith_f_op_f32(ceil(-817f))) - vec4<f32>(1757f, _wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(799f * 339f), -948f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-795f, -897f, 183f, 1000f), vec4<f32>(-1593f, -533f, -748f, -714f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, -1000f, 1000f, -1430f)))))));
    var var_2 = -(firstTrailingBit(u_input.a.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.c, arg_0, ~vec4<u32>(u_input.c.x, arg_0.x, 46566u, arg_0.x)), arg_0) % 32u));
    global3 = array<vec4<u32>, 14>();
    return func_2(Struct_1(func_5(~1u, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -15322i), u_input.d.zz), !(!vec4<bool>(var_0, false, var_0, true)), func_2(Struct_1(global2.a, vec3<bool>(global0.x, false, true), vec2<bool>(var_0, global2.b.x)), _wgslsmith_f_op_f32(ceil(1109f)), global2.c, _wgslsmith_f_op_f32(-var_1.x))).b.xx, !select(!vec3<bool>(global0.x, true, true), select(vec3<bool>(true, false, false), global2.b, vec3<bool>(false, global2.a.x, false)), true), vec2<bool>((true | var_0) & (var_0 | false), true)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1289f * _wgslsmith_f_op_f32(min(-640f, -1792f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), !vec2<bool>(true, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f * var_1.x)) + 636f));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !func_2(Struct_1(!(!vec2<bool>(global0.x, false)), arg_3.b, vec2<bool>(global2.a.x, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-200f, -391f)))))), vec2<bool>(any(func_5(u_input.c.x, -2147483647i, vec4<bool>(arg_0.b.x, arg_3.b.x, true, global0.x), Struct_1(global2.c, arg_3.b, vec2<bool>(false, global2.c.x))).b.yz), false), -2230f).c.x;
    var var_1 = Struct_1(!(!func_2(func_1(vec4<u32>(u_input.c.x, u_input.c.x, 45182u, u_input.c.x)), _wgslsmith_f_op_f32(153f + 209f), vec2<bool>(global2.c.x, arg_0.c.x), _wgslsmith_div_f32(554f, 536f)).a), vec3<bool>(arg_0.c.x, true, -1030f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-367f * 176f)))), vec2<bool>(-489f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1223f))), arg_0.a.x));
    global0 = vec3<bool>(func_5(~34862u, _wgslsmith_div_i32(u_input.b, i32(-1i) * -u_input.d.x), vec4<bool>(func_4(4294967295u, vec3<u32>(u_input.c.x, u_input.c.x, 1u), arg_0) && var_1.c.x, arg_2.a.x, !global0.x & any(vec4<bool>(arg_2.b.x, arg_0.c.x, false, arg_2.b.x)), true), arg_0).b.x, func_4(~u_input.c.x, vec3<u32>(_wgslsmith_div_u32(26909u, u_input.c.x), min(u_input.c.x, 0u), firstTrailingBit(4294967295u)), arg_0) & arg_2.a.x, arg_3.b.x);
    let var_2 = func_1(~vec4<u32>(abs(38769u), min(u_input.c.x, countOneBits(u_input.c.x)), u_input.c.x, _wgslsmith_clamp_u32(countOneBits(29477u), abs(50371u), u_input.c.x)));
    var_1 = var_2;
    return var_1.a;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global0 = !vec3<bool>(arg_0.c.x, global2.b.x, arg_0.a.x);
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(u_input.a.x, -7135i, u_input.b, u_input.d.x) ^ vec4<i32>(46139i, -1i, u_input.a.x, 1i), select(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -15004i), vec4<i32>(u_input.a.x, -1i, 17571i, 47791i), true), !vec4<bool>(false, false, global2.c.x, false)), ~(vec4<i32>(u_input.d.x, 0i, u_input.b, u_input.b) ^ vec4<i32>(13485i, -2433i, u_input.d.x, -26103i))), vec4<i32>(countOneBits(-2147483647i), ~(u_input.b | 17994i), _wgslsmith_clamp_i32(~1i, min(_wgslsmith_sub_i32(u_input.d.x, 0i), -57527i), _wgslsmith_dot_vec3_i32(u_input.a, -u_input.d)), -7413i));
    let var_1 = u_input.b;
    let var_2 = arg_0;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(374f - 1057f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f * 111f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-975f, 245f, true))))) < _wgslsmith_f_op_f32(389f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-715f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1477f, -135f))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_1(global2.c, vec3<bool>(false, global0.x, true), func_6(Struct_1(select(vec2<bool>(true, true), vec2<bool>(global2.a.x, true), global2.a.x), vec3<bool>(global0.x, false, true), vec2<bool>(true, global0.x)), countOneBits(-vec4<i32>(u_input.d.x, 9632i, 33884i, 2147483647i)), func_1(u_input.c), func_2(func_1(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -192f), vec2<bool>(true, true), _wgslsmith_f_op_f32(271f * 534f)))));
    var var_1 = global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.d.zy, vec2<i32>(-48664i, -32937i) >> (u_input.c.xy % vec2<u32>(32u))) ^ _wgslsmith_add_i32(-u_input.a.x, i32(-1i) * -9873i), u_input.b, -(u_input.d.x & -2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-12522i, -53786i, u_input.b, u_input.a.x), vec4<i32>(u_input.a.x, u_input.d.x, u_input.d.x, 0i) << (vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.d.x, u_input.b, u_input.a.x)))), 1i, ~1i & u_input.b);
}

