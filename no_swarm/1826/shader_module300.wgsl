struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1327f;

var<private> global1: array<bool, 9>;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1418f, 488f, 946f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(168f, 294f, -1041f)))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2110f, 978f))), 1f)));
    global2 = array<Struct_1, 10>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-465f, _wgslsmith_f_op_f32(var_0.x * -882f), _wgslsmith_f_op_f32(var_0.x * var_0.x)), vec3<f32>(557f, 2578f, _wgslsmith_f_op_f32(trunc(var_0.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, var_0.x)), vec3<f32>(672f, -466f, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-779f, -1682f, var_0.x) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1707f, -814f, 1025f), vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    var var_1 = abs(u_input.b.yyw) ^ ~firstTrailingBit(_wgslsmith_div_vec3_u32(~u_input.b.wyx, vec3<u32>(u_input.a.x, 9555u, u_input.a.x)));
    let var_2 = Struct_3(~(~vec4<u32>(var_1.x, 1u, 101504u, min(u_input.b.x, 27700u))), Struct_1(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(ceil(var_0.x))), false, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 47802u, u_input.a.x), _wgslsmith_sub_vec3_u32(u_input.b.xxx, vec3<u32>(1u, var_1.x, 27100u)), vec3<u32>(24669u, 4294967295u, 31123u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(414f, 153f, -187f) - vec3<f32>(-921f, var_0.x, -904f)))))), countOneBits(~vec4<i32>(1i, 1i, max(-50911i, 1i), 2147483647i)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(abs(u_input.b.x), 9u)], global1[_wgslsmith_index_u32(4294967295u | (u_input.b.x | 57824u), 9u)], !global1[_wgslsmith_index_u32(abs(u_input.b.x), 9u)]), vec4<bool>(_wgslsmith_mod_u32(var_1.x, 1u) < countOneBits(var_1.x), true, global1[_wgslsmith_index_u32(~var_1.x, 9u)], true), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), !vec2<bool>(false, global1[_wgslsmith_index_u32(27358u, 9u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(34420u, 9u)])))), global2[_wgslsmith_index_u32(42183u, 10u)]);
    return 37501i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    let var_0 = arg_2;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1142f) + _wgslsmith_f_op_f32(abs(824f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) - _wgslsmith_f_op_f32(floor(arg_1.x))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-arg_1.x)) - 432f))));
    global2 = array<Struct_1, 10>();
    let var_1 = Struct_1(vec2<i32>(firstTrailingBit(~func_3()), 2147483647i), _wgslsmith_f_op_f32(round(arg_1.x)), true, ~(~u_input.b.zww >> (firstLeadingBit(u_input.b.yyw) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.a.x) & vec3<u32>(28698u, u_input.a.x, arg_0.x), arg_0), arg_1);
    var var_2 = var_1.c;
    return _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, var_1.d.x, 95467u, u_input.a.x) >> (u_input.b % vec4<u32>(32u)), vec4<u32>(0u, 68096u, 1u, 71507u) << (u_input.b % vec4<u32>(32u)))), countOneBits(~u_input.b));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    global0 = 434f;
    var var_0 = func_2(firstLeadingBit(vec3<u32>(73389u, ~0u, arg_3.x)), vec3<f32>(arg_0, -943f, -2566f), ~59714i);
    var_0 = ~func_2(u_input.b.yxy, vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), -46015i);
    let var_1 = Struct_3(firstLeadingBit(u_input.b), Struct_1(firstTrailingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, 21196i), vec2<i32>(6482i, -1i), arg_1), -vec2<i32>(14866i, -1i))), _wgslsmith_div_f32(-1199f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 465f), _wgslsmith_f_op_f32(-arg_0)))), global1[_wgslsmith_index_u32(1u, 9u)], u_input.b.xzx, vec3<f32>(1481f, _wgslsmith_f_op_f32(1326f - -806f), -791f)), _wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(8575i, 2147483647i, 20850i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-35525i, _wgslsmith_clamp_i32(1i, -1i, -2147483647i), -71121i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, 28789i)), vec4<i32>(32332i, ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -39734i, -39474i, 81383i), vec4<i32>(-2147483647i, -2147483647i, -15931i, -17830i)), func_3()), ~vec4<i32>(33741i, 2147483647i, 47817i, 7885i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-3913i, -9713i, 28675i, 30398i), vec4<i32>(53442i, -1i, -32764i, 54765i), vec4<i32>(56323i, 0i, 25440i, 2147483647i)))), select(select(!(!vec4<bool>(global1[_wgslsmith_index_u32(16814u, 9u)], true, arg_1.x, arg_2)), vec4<bool>(arg_1.x, arg_1.x && arg_2, !arg_1.x, true), !(!vec4<bool>(false, arg_2, arg_1.x, arg_2))), select(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_1.x, global1[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_1.x, false, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 9u)], true, arg_1.x, false)), select(vec4<bool>(false, arg_2, global1[_wgslsmith_index_u32(arg_3.x, 9u)], arg_2), select(vec4<bool>(false, arg_1.x, global1[_wgslsmith_index_u32(0u, 9u)], false), vec4<bool>(global1[_wgslsmith_index_u32(34848u, 9u)], false, false, arg_2), vec4<bool>(false, arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_1.x)), all(vec2<bool>(false, arg_2))), all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(79946u, 9u)]))), -1i > _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -1i, 23599i), vec3<i32>(1i, 1i, 1i))), Struct_1(abs(firstLeadingBit(vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(arg_0 - arg_0), true, ~u_input.b.xxz, vec3<f32>(638f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -486f))), arg_0)));
    let var_2 = Struct_2(var_1.e, var_1.b, global2[_wgslsmith_index_u32(countOneBits(min(arg_3.x, firstLeadingBit(var_1.b.d.x))) ^ var_1.a.x, 10u)], Struct_1(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.x, -1i), vec2<i32>(var_1.c.x, var_1.c.x), var_1.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2080f * _wgslsmith_f_op_f32(-arg_0))), any(vec3<bool>(var_1.e.c, any(vec3<bool>(var_1.e.c, false, var_1.d.x)), true)), abs(vec3<u32>(1598u, ~0u, ~26963u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1376f), _wgslsmith_f_op_f32(714f * 517f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.e.e.x)), _wgslsmith_f_op_f32(var_1.e.e.x + 240f), -1366f)))), var_1.b.e.yy);
    return var_2.c;
}

fn func_1() -> bool {
    global2 = array<Struct_1, 10>();
    global2 = array<Struct_1, 10>();
    global1 = array<bool, 9>();
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1333f, _wgslsmith_f_op_f32(-411f - -1414f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1180f - -580f))), vec2<bool>(global1[_wgslsmith_index_u32(func_2(u_input.b.zyy, vec3<f32>(-318f, 592f, -456f), 36853i) & u_input.b.x, 9u)], true), !global1[_wgslsmith_index_u32(u_input.b.x, 9u)], ~vec2<u32>(u_input.b.x, ~u_input.b.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1170f))), !(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), true, ~vec2<u32>(4294967295u, 27581u)), Struct_1(abs(select(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(340f)), true, select(u_input.b.wxy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) ^ firstTrailingBit(u_input.b.wxy), select(vec3<bool>(global1[_wgslsmith_index_u32(82239u, 9u)], false, true), select(vec3<bool>(global1[_wgslsmith_index_u32(43405u, 9u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<bool>(true, true, false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), !global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), func_4(-139f, vec2<bool>(true, true), false, u_input.a).e.x, -2277f))), Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-53824i, -2147483647i), _wgslsmith_mod_i32(-47528i, 1i)), select(_wgslsmith_add_i32(-2147483647i, 1i), reverseBits(-37367i), global1[_wgslsmith_index_u32(u_input.b.x, 9u)])), 206f, !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 84741u), 9u)] | global1[_wgslsmith_index_u32(u_input.a.x, 9u)], ~u_input.b.xxy, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1024f, 1000f, 734f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-520f, -1735f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2333f, -126f), vec2<f32>(1827f, -405f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1636f, -377f) - vec2<f32>(757f, -2717f))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1115f, -1125f), vec2<f32>(1000f, -1000f))), func_4(_wgslsmith_div_f32(-346f, 769f), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], true), true), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(11839u, 9u)], true, true)), ~vec2<u32>(18936u, u_input.b.x)).e.zz))));
    var var_1 = var_0.c.a.x;
    return all(select(select(vec3<bool>(any(vec3<bool>(var_0.d.c, global1[_wgslsmith_index_u32(var_0.a.d.x, 9u)], global1[_wgslsmith_index_u32(13417u, 9u)])), var_0.a.a.x >= -9287i, var_0.d.c), vec3<bool>(var_0.d.a.x == -67488i, true, var_0.b.a.x < -16947i), true), select(!select(vec3<bool>(true, true, var_0.d.c), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], true, var_0.b.c), var_0.d.c), !select(vec3<bool>(var_0.a.c, global1[_wgslsmith_index_u32(var_0.b.d.x, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<bool>(true, var_0.b.c, var_0.b.c), true), select(!vec3<bool>(true, var_0.a.c, false), vec3<bool>(true, true, false), false)), vec3<bool>(var_0.d.c, true, true)));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(u_input.b.x, 1u) << (_wgslsmith_add_u32(1u, 5255u) % 32u))), 10u)];
    let var_1 = 26035u;
    global0 = -349f;
    var var_2 = Struct_3(u_input.b, Struct_1(vec2<i32>(var_0.a.x, -var_0.a.x & _wgslsmith_add_i32(var_0.a.x, 19588i)), var_0.b, 2147483647i <= ~var_0.a.x, var_0.d >> (~(~var_0.d) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-585f)))), _wgslsmith_f_op_f32(round(-267f)), _wgslsmith_f_op_f32(-var_0.b))), -(~(~vec4<i32>(var_0.a.x, -1i, var_0.a.x, var_0.a.x) >> (~vec4<u32>(60353u, u_input.b.x, arg_0.x, var_1) % vec4<u32>(32u)))), vec4<bool>(true, arg_1, -_wgslsmith_mod_i32(var_0.a.x, 56509i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(var_0.a.x, 43341i)), arg_1), Struct_1(vec2<i32>(var_0.a.x, -2147483647i), _wgslsmith_f_op_f32(floor(var_0.b)), all(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 9u)], global1[_wgslsmith_index_u32(10108u, 9u)]), vec2<bool>(true, false)), vec2<bool>(true, true), any(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 9u)], false, global1[_wgslsmith_index_u32(63669u, 9u)])))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 49565u), ~arg_0.x, 0u), select(countOneBits(vec3<u32>(4294967295u, 36195u, var_1)), ~vec3<u32>(var_1, var_1, 42022u), arg_1)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, -755f, var_0.b) + vec3<f32>(var_0.b, -193f, 467f))), _wgslsmith_div_vec3_f32(var_0.e, _wgslsmith_f_op_vec3_f32(-var_0.e))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.e.yz) * var_0.e.yy));
    return Struct_2(func_4(var_2.e.b, var_2.d.yw, false, ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, arg_0.x, var_2.e.d.x), vec4<u32>(17374u, 1u, 9364u, var_1)), ~var_0.d.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -829f)))), vec2<bool>(all(vec2<bool>(var_2.b.c, var_2.d.x)) | (global1[_wgslsmith_index_u32(14291u, 9u)] & false), true), true, firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_2.e.d.zx, arg_0), vec2<u32>(var_0.d.x, u_input.b.x)))), func_4(_wgslsmith_f_op_f32(exp2(var_0.b)), !vec2<bool>(var_2.c.x != var_2.e.a.x, var_2.e.c), var_0.c, vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.b.xz), 5143u)), func_4(var_2.b.b, var_2.d.yx, var_2.e.c, firstLeadingBit(~vec2<u32>(0u, var_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b, var_2.b.b) * var_0.e.xy), _wgslsmith_f_op_vec2_f32(var_2.b.e.yy * vec2<f32>(var_2.b.b, var_3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_5(u_input.a, !select(!any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(8889u, 9u)], false)), false, func_1() && !global1[_wgslsmith_index_u32(u_input.b.x, 9u)]));
    let var_2 = var_1;
    global2 = array<Struct_1, 10>();
    var_0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.b, _wgslsmith_div_f32(1520f, var_1.b.e.x))), _wgslsmith_f_op_f32(exp2(func_5(var_1.d.d.yy, true).e.x)))), select(!select(select(vec2<bool>(var_2.b.c, false), vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.c.d.x, 9u)]), true), vec2<bool>(global1[_wgslsmith_index_u32(var_1.c.d.x, 9u)], false), true), vec2<bool>(any(vec2<bool>(var_1.a.c, false)), var_1.d.d.x < var_2.d.d.x), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(~var_1.b.d.x, 9u)], var_2.d.c), false)), var_1.d.c, var_2.c.d.xx).c;
    var var_3 = Struct_3(u_input.b, var_2.d, vec4<i32>(func_3(), ~(-(~60797i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_2.a.a.x, 12282i), -30705i, var_2.b.a.x) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.d.x, 4294967295u), vec2<u32>(9446u, 4294967295u)) ^ ~36315u) % 32u), func_4(var_2.d.e.x, vec2<bool>(func_1(), true), true, ~(vec2<u32>(u_input.a.x, var_2.a.d.x) & vec2<u32>(34208u, 1u))).a.x), select(!vec4<bool>(false || var_1.a.c, any(vec3<bool>(false, var_1.b.c, false)), func_1(), !global1[_wgslsmith_index_u32(var_2.d.d.x, 9u)]), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(var_2.a.c, true, global1[_wgslsmith_index_u32(57361u, 9u)], true), vec4<bool>(var_2.a.c, var_1.a.c, false, var_2.b.c))), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.d.d.x, 9u)], var_1.c.c, true, var_1.a.c), vec4<bool>(var_2.a.c, false, var_2.d.c, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1.b.d.x, 9u)], false)), vec4<bool>(true, false, true, var_1.d.c), select(vec4<bool>(false, true, var_2.d.c, global1[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(true, false, var_2.a.c, true), var_1.d.c))), func_4(var_1.a.e.x, select(!(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 9u)], var_1.a.c)), vec2<bool>(true, true), select(!vec2<bool>(var_2.d.c, false), select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.c.d.x, 9u)]), vec2<bool>(true, var_2.b.c)), any(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 9u)], var_2.c.c, var_2.a.c)))), var_2.b.a.x != var_1.c.a.x, _wgslsmith_clamp_vec2_u32(var_1.c.d.yy, vec2<u32>(_wgslsmith_mult_u32(80710u, var_2.a.d.x), 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(17558u, var_2.d.d.x), max(vec2<u32>(35013u, 39127u), var_1.c.d.zx), firstLeadingBit(u_input.a)))));
    var var_4 = Struct_3(firstTrailingBit(abs(vec4<u32>(~var_1.b.d.x, _wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(var_1.a.d.x, 4294967295u, 4294967295u, 14769u)), abs(44858u), 4294967295u))), func_5(u_input.a, any(select(!vec3<bool>(true, var_1.b.c, var_3.d.x), var_3.d.xxy, global1[_wgslsmith_index_u32(var_3.b.d.x, 9u)]))).a, -vec4<i32>(reverseBits(var_3.c.x), 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_3.c.zxz, var_3.c.wwx), ~(-1i)), var_3.b.a.x), !(!var_3.d), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.xzy);
}

