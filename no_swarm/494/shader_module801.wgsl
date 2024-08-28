struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = !select(vec2<bool>(!(arg_0.e.x > arg_0.e.x), !any(vec2<bool>(arg_0.b.x, false))), var_0.b.zx, !vec2<bool>(var_0.b.x, true));
    global0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.c, _wgslsmith_add_vec2_i32(var_0.c, arg_0.c)), (i32(-1i) * -var_0.a.a) ^ -2147483647i);
    var var_2 = Struct_1(select(_wgslsmith_mult_i32(-max(-1546i, var_0.c.x), _wgslsmith_sub_i32(arg_0.c.x, abs(13345i))), firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.c.x, -1i, arg_0.c.x, 32692i)), vec4<i32>(8201i, arg_0.a.a, arg_0.d, var_0.d))), arg_0.b.x), 1u, firstTrailingBit(firstLeadingBit(abs(3168u) | u_input.c.x)));
    var var_3 = ~(i32(-1i) * -41794i) | var_0.d;
    return var_0.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(33481i << (arg_2.x % 32u)), -1i), _wgslsmith_add_vec2_i32(-arg_0.xw, arg_0.yz)));
    global0 = _wgslsmith_div_i32(-2147483647i, arg_1.a);
    let var_1 = 28393u;
    var_0 = arg_0.x;
    var var_2 = vec2<i32>(-1i, arg_1.a);
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    global0 = arg_1.a.a;
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_1.a.a, -42670i, 10900i), select(vec4<i32>(arg_1.c.x, arg_1.d, arg_1.a.a, arg_1.c.x), vec4<i32>(-2147483647i, -11976i, arg_1.c.x, 1i), vec4<bool>(false, arg_1.b.x, true, false))), firstTrailingBit(vec4<i32>(-52605i, -2147483647i, 1i, _wgslsmith_sub_i32(77873i, -1i)))), max(firstLeadingBit(-vec4<i32>(arg_1.c.x, -23437i, 1i, 2147483647i)), countOneBits(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-1310i, arg_1.d, 36315i, 9666i)), vec4<i32>(2147483647i, 2147483647i, arg_1.d, -2147483647i)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.e))) - vec4<f32>(559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-372f)) + _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.e.x)), -324f)), _wgslsmith_f_op_f32(-arg_1.e.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.e.x + arg_1.e.x), _wgslsmith_f_op_f32(1063f * arg_1.e.x), -567f, _wgslsmith_f_op_f32(-1425f * 578f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_1.e * _wgslsmith_f_op_vec4_f32(arg_1.e + vec4<f32>(292f, arg_2.x, arg_1.e.x, 1446f))))), vec4<bool>(any(!vec4<bool>(false, false, arg_1.b.x, false)), select(true, false, arg_1.b.x) & any(vec3<bool>(true, false, true)), all(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(-188f * 1353f) < _wgslsmith_f_op_f32(sign(-2086f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(534f, arg_2.x, _wgslsmith_f_op_f32(-arg_1.e.x), arg_1.e.x) + _wgslsmith_f_op_vec4_f32(-arg_1.e))));
    let var_1 = all(arg_1.b);
    return arg_1;
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_3(func_4(_wgslsmith_div_vec3_u32(select(~u_input.a.xyx, u_input.a.yzx, all(vec4<bool>(true, false, false, true))), ~u_input.c.yxx), Struct_2(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 403i, 8990i, -1i), vec4<i32>(-1i, 0i, 2147483647i, 1i)), func_2(Struct_2(Struct_1(22238i, 51726u, arg_0.x), vec3<bool>(true, true, false), vec2<i32>(-2147483647i, 2147483647i), -51208i, vec4<f32>(460f, 1183f, -122f, -914f))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.c.x, 4294967295u), u_input.a)), vec3<bool>(true, all(vec2<bool>(false, true)), true), -min(vec2<i32>(-33116i, 0i), vec2<i32>(-2147483647i, -7455i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -49811i, -1i, 3483i)), vec4<i32>(-29978i, 0i, 1i, -21942i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1585f, -159f, -538f, 1000f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-136f, _wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_div_f32(-569f, -648f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -187f, 1241f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1972f, -459f)))), _wgslsmith_f_op_f32(745f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1062f, -630f), -736f))), 220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1099f, -723f)))), func_3(abs(vec4<i32>(_wgslsmith_clamp_i32(-51432i, -37683i, -1i), ~0i, i32(-1i) * -1i, 1i)), func_4(max(~u_input.a.yyy, abs(vec3<u32>(0u, arg_0.x, 4294967295u))), func_4(vec3<u32>(1u, 12256u, 52121u), Struct_2(Struct_1(-32266i, 1u, 67117u), vec3<bool>(true, false, false), vec2<i32>(23310i, 11953i), 18142i, vec4<f32>(1705f, 745f, -1000f, 800f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1737f, -790f, -718f) - vec3<f32>(-139f, -415f, -1892f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, 194f, -1900f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(959f, 1595f, -230f), vec3<f32>(-220f, 728f, -800f))))).a, vec4<u32>(0u, u_input.b, 6823u, 22u)), vec2<i32>(~12176i, -1i));
    var_0 = Struct_3(Struct_2(var_0.a.a, vec3<bool>(!(u_input.c.x < arg_0.x), all(select(vec2<bool>(var_0.a.b.x, var_0.a.b.x), vec2<bool>(true, var_0.a.b.x), var_0.a.b.x)), var_0.a.b.x), -vec2<i32>(var_0.c.a | var_0.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(14757i, var_0.a.a.a, 0i), vec3<i32>(var_0.d.x, var_0.d.x, var_0.c.a))), abs(var_0.d.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.e.x - var_0.b.x))), _wgslsmith_f_op_f32(-var_0.a.e.x))), vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, -1008f)), -186f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.e.x - -382f)))), func_3(-firstLeadingBit(min(vec4<i32>(1i, 66038i, 1i, var_0.a.d), vec4<i32>(var_0.d.x, var_0.c.a, -37450i, var_0.d.x))), Struct_1(var_0.d.x & 1i, reverseBits(_wgslsmith_clamp_u32(19341u, arg_0.x, 1u)), ~(~u_input.a.x)), countOneBits(abs(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(arg_0.x, arg_0.x, u_input.c.x, 19326u))))), var_0.d);
    global0 = var_0.c.a;
    var var_1 = var_0.a;
    var_0 = Struct_3(func_4(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(arg_0.x, 0u, var_0.a.a.b), u_input.c.zwy, var_0.a.b.x), vec3<u32>(var_0.a.a.c, arg_0.x, u_input.a.x)), Struct_2(Struct_1(var_1.d, ~u_input.b, 4294967295u), select(!var_0.a.b, select(vec3<bool>(var_1.b.x, true, var_0.a.b.x), vec3<bool>(true, var_0.a.b.x, var_1.b.x), var_1.b.x), true), _wgslsmith_div_vec2_i32(select(vec2<i32>(var_1.c.x, 1i), var_0.a.c, vec2<bool>(var_1.b.x, true)), vec2<i32>(-22515i, var_0.d.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_1.c.x, var_1.d), vec4<i32>(var_1.a.a, -23638i, var_0.a.c.x, var_0.d.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(-var_1.e.x), 519f, _wgslsmith_f_op_f32(var_0.b.x * -245f))), var_0.b.wzw), vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(exp2(var_0.a.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(249f, 808f))), -296f), var_0.a.a, vec2<i32>(~(~(-var_0.a.c.x)), _wgslsmith_dot_vec2_i32(var_1.c, firstLeadingBit(vec2<i32>(-38984i, 1i)))));
    return _wgslsmith_div_vec3_f32(var_0.b.ywz, vec3<f32>(var_0.a.e.x, _wgslsmith_f_op_f32(exp2(var_1.e.x)), _wgslsmith_div_f32(var_0.b.x, 1595f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(-32344i, ~u_input.a.x, min(_wgslsmith_add_u32(~1u, u_input.a.x), 544u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_sub_vec2_u32(u_input.c.xw, u_input.c.yx)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-429f, -701f, -344f) - vec3<f32>(1336f, -1034f, -1025f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(-969f)), -1105f, -142f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1418f, -1265f, -536f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(-1456f, -1018f)), _wgslsmith_f_op_f32(step(-755f, -1908f)), _wgslsmith_div_f32(-461f, -164f)))));
    var_0 = false;
    var var_3 = Struct_1((i32(-1i) * -2147483647i) >> (_wgslsmith_sub_u32(abs(abs(u_input.c.x)), abs(1u)) % 32u), ~(~u_input.b), countOneBits(1u));
    var var_4 = ~select(u_input.a.zyx, vec3<u32>(var_3.b, _wgslsmith_add_u32(46325u, 0u), ~u_input.b), vec3<bool>(true, true, true));
    var var_5 = Struct_3(Struct_2(func_2(Struct_2(func_3(vec4<i32>(-2147483647i, 46937i, -5926i, -9347i), Struct_1(var_3.a, var_1.b, u_input.c.x), u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), ~vec2<i32>(-53339i, -17313i), min(var_3.a, var_1.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(210f, 1000f, -263f, var_2.x), vec4<f32>(866f, var_2.x, var_2.x, -1030f))))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec2<bool>(false, false))), vec2<i32>(min(var_3.a, var_3.a & var_1.a), 2147483647i), var_3.a, vec4<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f + 470f)), var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1167f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -168f, var_2.x, var_2.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 391f, -367f, var_2.x) * vec4<f32>(1340f, var_2.x, -1095f, var_2.x)))))), func_4(select(vec3<u32>(var_1.c, max(var_4.x, var_3.c), _wgslsmith_dot_vec3_u32(u_input.c.yzw, u_input.a.wzz)), abs(~vec3<u32>(u_input.b, var_4.x, 23739u)), func_4(u_input.a.yxy, Struct_2(Struct_1(-2147483647i, 42647u, u_input.c.x), vec3<bool>(true, false, true), vec2<i32>(var_3.a, 17515i), var_3.a, vec4<f32>(420f, 520f, -322f, 983f)), vec3<f32>(var_2.x, -191f, var_2.x)).b), func_4(_wgslsmith_sub_vec3_u32(~u_input.a.wzx, u_input.a.xwx), func_4(vec3<u32>(1u, 4294967295u, u_input.c.x), Struct_2(Struct_1(var_1.a, 66933u, 4294967295u), vec3<bool>(true, true, false), vec2<i32>(78595i, 97084i), 16824i, vec4<f32>(var_2.x, -866f, -141f, var_2.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, 1724f), vec3<f32>(var_2.x, 1385f, var_2.x), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, -112f, var_2.x), vec3<f32>(var_2.x, -1119f, 1285f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-272f * 1596f), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(219f, 901f, -219f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1485f, var_2.x, var_2.x)))), vec3<bool>(true, var_3.a > var_3.a, true)))).a, vec2<i32>(-abs(var_3.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, var_3.a, -2147483647i), vec3<i32>(-21317i, 0i, -1i))) | _wgslsmith_sub_vec2_i32(select(-vec2<i32>(var_1.a, var_1.a), firstTrailingBit(vec2<i32>(var_3.a, var_3.a)), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(var_1.a, var_1.a)), vec2<i32>(var_3.a, var_1.a))));
    var_3 = func_3(-_wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(vec4<i32>(0i, var_3.a, -60135i, var_3.a))), _wgslsmith_add_vec4_i32(vec4<i32>(41586i, 47945i, 2147483647i, var_3.a), vec4<i32>(12714i, 0i, var_1.a, var_3.a)) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_5.a.c.x, var_1.a, var_5.c.a, var_3.a), vec4<i32>(37466i, -1i, -60579i, 13797i)), ~select(vec4<i32>(var_3.a, -2147483647i, var_5.a.d, var_5.c.a), vec4<i32>(-33593i, -2147483647i, var_5.d.x, -1i), vec4<bool>(var_5.a.b.x, var_5.a.b.x, var_5.a.b.x, var_5.a.b.x))), Struct_1(-36209i, countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.b, 0u, 1u), 13452u >> (var_1.b % 32u))), abs(max(u_input.a.x & 4294967295u, 1u))), firstTrailingBit(u_input.c) >> (reverseBits(~(~u_input.c)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_div_f32(-612f, 2777f), _wgslsmith_f_op_f32(-569f * -736f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.a.e.zwx)))));
}

