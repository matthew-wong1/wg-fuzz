struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(10884u, vec4<bool>(true, false, true, false), vec3<i32>(-1i, 49571i, 5463i)));

var<private> global1: array<vec3<u32>, 31>;

var<private> global2: vec2<bool>;

var<private> global3: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> f32 {
    global3 = u_input.a;
    let var_0 = global0.a;
    var var_1 = Struct_3(Struct_1(global0.a.a, !var_0.b, (abs(vec3<i32>(var_0.c.x, arg_1.x, 1i)) | vec3<i32>(-2147483647i, var_0.c.x, -22496i)) | global0.a.c), _wgslsmith_mod_i32(arg_1.x, global0.a.c.x), !select(global0.a.b.zyx, vec3<bool>(all(vec3<bool>(var_0.b.x, false, var_0.b.x)), false, global0.a.a > 0u), vec3<bool>(all(vec3<bool>(global2.x, global2.x, false)), var_0.a <= var_0.a, true)), vec2<f32>(523f, arg_0.x));
    global1 = array<vec3<u32>, 31>();
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0.a), 31u)] ^ ~(~global1[_wgslsmith_index_u32(var_0.a, 31u)]), min(vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_0.a), 4294967295u << (var_1.a.a % 32u), ~8815u), vec3<u32>(~97852u, ~37810u, 1u))), select(vec4<bool>(global0.a.c.x == arg_1.x, all(select(vec3<bool>(true, global2.x, global0.a.b.x), vec3<bool>(var_0.b.x, global0.a.b.x, global2.x), global0.a.b.x)), false, false), !var_1.a.b, vec4<bool>(!(var_0.b.x | global2.x), var_1.a.a >= u_input.a, false, true)), firstTrailingBit(vec3<i32>(~global0.a.c.x, ~arg_1.x, _wgslsmith_div_i32(var_0.c.x, arg_1.x)) & arg_1.xxx));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-240f)) - _wgslsmith_f_op_f32(min(102f, _wgslsmith_f_op_f32(var_1.d.x + -1070f))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(global0.a, ~2147483647i, !(!(!select(global0.a.b.wyw, global0.a.b.yxw, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -2161f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1382f, -576f), vec2<f32>(arg_0, 1822f))), vec2<f32>(1457f, arg_0))) - vec2<f32>(_wgslsmith_f_op_f32(734f * arg_0), -1728f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_0.d, ~vec4<i32>(var_0.a.c.x, global0.a.c.x, global0.a.c.x, 16398i))))), -2473f, any(!var_0.c) | var_0.c.x)));
    global0 = Struct_2(Struct_1(~global0.a.a, vec4<bool>(!(0i >= global0.a.c.x), true, false, !all(global0.a.b.zz)), firstLeadingBit(abs(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.c.x, global0.a.c.x, global0.a.c.x), vec3<i32>(var_0.b, 0i, var_0.b))))));
    var var_2 = Struct_1(41179u, vec4<bool>(true, !(true | global2.x) | false, !(false | var_0.a.b.x), all(vec3<bool>(false, -531f <= arg_0, true))), vec3<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(39461i, 1i, var_0.a.c.x, global0.a.c.x), vec4<i32>(var_0.a.c.x, global0.a.c.x, -8832i, global0.a.c.x)) << (_wgslsmith_clamp_u32(u_input.a, 4294967295u, 38657u) % 32u)) ^ reverseBits(min(0i, var_0.a.c.x)), 0i, global0.a.c.x));
    var var_3 = vec2<u32>(global0.a.a, min(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, 0u), vec2<u32>(var_2.a, var_2.a)), select(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.a, 102881u), vec2<u32>(112667u, var_0.a.a)), ~vec2<u32>(5012u, 4294967295u), select(vec2<bool>(global0.a.b.x, false), var_2.b.yx, global2.x))), 98687u));
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(abs(i32(-1i) * -49214i), _wgslsmith_sub_i32(arg_0.a.c.x, select(2147483647i, _wgslsmith_div_i32(arg_1.c.x, arg_1.c.x), 3688u == arg_1.a)), ~(-2147483647i)), _wgslsmith_mult_vec3_i32(min(min(abs(vec3<i32>(-2147483647i, 1i, global0.a.c.x)), vec3<i32>(arg_0.a.c.x, arg_1.c.x, 2147483647i)), min(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, -2147483647i), arg_1.c), _wgslsmith_mult_vec3_i32(vec3<i32>(18421i, 2147483647i, 42551i), arg_0.a.c))), arg_1.c));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.a, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.a.a, global0.a.a), vec4<u32>(arg_1.a, 0u, arg_0.a.a, arg_1.a)))), ~u_input.a), u_input.a ^ 2257u);
    let var_2 = arg_2.wzx;
    global1 = array<vec3<u32>, 31>();
    global3 = 306u;
    return Struct_3(Struct_1(arg_0.a.a, !select(!vec4<bool>(global2.x, false, global0.a.b.x, arg_1.b.x), arg_0.a.b, select(global0.a.b, arg_0.a.b, vec4<bool>(false, arg_1.b.x, arg_0.a.b.x, true))), -vec3<i32>(var_0.x, arg_0.a.c.x, arg_1.c.x) << (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a, u_input.a, 1u), vec3<u32>(global0.a.a, arg_1.a, 4294967295u), global1[_wgslsmith_index_u32(u_input.a, 31u)]), global1[_wgslsmith_index_u32(u_input.a, 31u)] >> (global1[_wgslsmith_index_u32(37480u, 31u)] % vec3<u32>(32u))) % vec3<u32>(32u))), ~func_2(_wgslsmith_f_op_f32(775f + 1172f)).a.c.x, select(arg_0.a.b.ywy, func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1095f, arg_2.x))).a.b.xxx, !vec3<bool>(all(vec4<bool>(true, global2.x, global2.x, false)), true, !arg_1.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1273f, 528f)) - _wgslsmith_f_op_f32(-581f - 1000f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_2 {
    global3 = arg_1.x;
    global2 = global0.a.b.xy;
    var var_0 = vec3<bool>(all(global0.a.b.xy), global2.x, all(!global0.a.b.wxx));
    var var_1 = func_4(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-441f + 911f)))))), global0.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1486f))) + _wgslsmith_div_f32(1107f, -1000f)), 1446f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-654f + 379f), -1075f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f + -922f))));
    let var_2 = var_1.a.b;
    return func_2(var_1.d.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global0.a.c.x, arg_0, arg_1.c.x, 15992i) & vec4<i32>(1i, arg_0, arg_1.c.x, 1i)), abs(vec4<i32>(select(arg_1.c.x, global0.a.c.x, arg_1.b.x), -global0.a.c.x, countOneBits(-44339i), func_1(vec4<i32>(-16473i, 38586i, -2147483647i, -2147483647i), vec2<u32>(34132u, 0u)).a.c.x))), firstTrailingBit(~vec2<u32>(_wgslsmith_sub_u32(19778u, arg_1.a), firstLeadingBit(0u)))).a.b.x;
    var var_1 = arg_1.b.x;
    var var_2 = any(arg_1.b.ywy);
    global1 = array<vec3<u32>, 31>();
    let var_3 = Struct_2(arg_3.a);
    return arg_3;
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = !func_1((vec4<i32>(global0.a.c.x, global0.a.c.x, -2147483647i, 13859i) & ~vec4<i32>(-1i, global0.a.c.x, 18646i, arg_1.a.c.x)) << (_wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_1.a.a, arg_1.a.a, 45429u, global0.a.a), vec4<u32>(0u, 19272u, arg_0, u_input.a)), vec4<u32>(19249u, arg_1.a.a, u_input.a, 0u) & vec4<u32>(8454u, u_input.a, 38921u, 46466u)) % vec4<u32>(32u)), vec2<u32>(firstTrailingBit(4294967295u), ~66928u) | vec2<u32>(37953u, 76431u)).a.b.yyx;
    var var_1 = func_1(vec4<i32>(min(func_1(vec4<i32>(0i, 1i, arg_1.a.c.x, arg_1.a.c.x), vec2<u32>(global0.a.a, arg_1.a.a)).a.c.x & (-1i ^ arg_1.a.c.x), arg_1.a.c.x), ~0i, countOneBits(global0.a.c.x), select(_wgslsmith_clamp_i32(39288i, firstTrailingBit(42407i), 2147483647i), global0.a.c.x, !all(vec2<bool>(false, arg_1.a.b.x)))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(arg_1.a.a, arg_1.a.a) >> (vec2<u32>(global0.a.a, 0u) % vec2<u32>(32u))) >> (min(vec2<u32>(4294967295u, arg_0), ~vec2<u32>(0u, 12837u)) % vec2<u32>(32u)), abs(vec2<u32>(min(4294967295u, arg_0), abs(u_input.a))))).a;
    global3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(vec2<u32>(0u, global0.a.a) & vec2<u32>(arg_1.a.a, global0.a.a)), min(vec2<u32>(var_1.a, arg_1.a.a), ~vec2<u32>(4294967295u, u_input.a))), ~(vec2<u32>(27911u, arg_1.a.a) ^ ~vec2<u32>(1u, var_1.a)));
    let var_2 = func_4(arg_1, arg_1.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(883f, -948f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1283f) - 1055f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(434f * -614f) - _wgslsmith_f_op_f32(trunc(2421f))), _wgslsmith_f_op_f32(sign(-1999f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(818f, -1139f, 444f, -159f) * vec4<f32>(1178f, 1182f, 2205f, -838f))))));
    let var_3 = !(all(!var_2.c) || true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_mult_u32(global0.a.a, 20825u) ^ global0.a.a, func_5(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-34331i, global0.a.c.x & -2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.c.x, 28811i), vec2<i32>(1i, -2147483647i)), max(global0.a.c.x, 0i))), Struct_1(_wgslsmith_mult_u32(4294967295u, u_input.a) >> (36361u % 32u), global0.a.b, -global0.a.c), global0.a.c.x != min(countOneBits(global0.a.c.x), _wgslsmith_clamp_i32(global0.a.c.x, global0.a.c.x, -38434i)), func_1(vec4<i32>(_wgslsmith_mult_i32(global0.a.c.x, 13065i), global0.a.c.x, global0.a.c.x, _wgslsmith_mult_i32(global0.a.c.x, -1i)), vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), 4294967295u))));
    global2 = vec2<bool>(any(vec4<bool>(global0.a.b.x, any(vec3<bool>(global0.a.b.x, true, global2.x)), !(!global0.a.b.x), global2.x)), global0.a.b.x);
    var var_0 = !(!select(global0.a.b.x, !any(vec3<bool>(true, global2.x, global2.x)), global2.x));
    var var_1 = vec4<bool>(false, false, global0.a.b.x, true);
    let var_2 = ~vec3<i32>(0i, func_6(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(42460u, 0u, u_input.a), vec3<u32>(global0.a.a, 0u, 14126u)), vec3<u32>(4294967295u, global0.a.a, 1u)), Struct_2(Struct_1(0u, global0.a.b, global0.a.c))).a.c.x, ~_wgslsmith_sub_i32(global0.a.c.x, 29037i));
    global3 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, firstLeadingBit(abs(~1u))), ~abs(vec2<u32>(1u, global0.a.a | global0.a.a)));
    var_0 = 0i <= global0.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1655f))), _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(-387f + -1110f))))).a.c.zx);
}

