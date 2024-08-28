struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(80065u, 1u, 22167u, 1u));

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 4294967295u), vec2<u32>(68939u, 45728u), vec2<u32>(58350u, 1u), vec2<u32>(14155u, 4294967295u), vec2<u32>(2206u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 29635u), vec2<u32>(17030u, 1u), vec2<u32>(0u, 39794u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1407u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(8277u, 61057u), vec2<u32>(4294967295u, 14785u), vec2<u32>(25060u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 49336u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 40016u), vec2<u32>(4294967295u, 12889u), vec2<u32>(1u, 3138u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(70985u, 1u), vec2<u32>(1u, 50106u), vec2<u32>(0u, 51035u));

var<private> global3: array<u32, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    return ~u_input.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global3 = array<u32, 27>();
    var var_0 = vec4<i32>(select(-global0.a.b, _wgslsmith_mod_i32(-arg_0.x, ~(-1i)), any(!vec2<bool>(true, global0.c.a))), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1180f, -549f, -1188f, -1546f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, -1944f, 1331f, 1699f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1037f, -1435f, -2176f, -1456f) - vec4<f32>(1048f, -1050f, 1297f, -143f))))), abs(arg_0.x & global0.a.c.x), reverseBits(-2147483647i ^ (u_input.a << (1u % 32u))));
    global2 = array<vec2<u32>, 30>();
    return Struct_2(Struct_1(global0.b, _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(1i, global0.a.c.x, arg_0.x, var_0.x)), vec4<i32>(~var_0.x, var_0.x ^ var_0.x, -14104i, 1i)), global0.c.c, false, vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(11315u, 1u)), ~(48945u | global3[_wgslsmith_index_u32(1u, 27u)]))), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, global0.a.d, global0.b), vec4<bool>(false, global0.a.d, false, true), vec4<bool>(global0.a.d, global0.a.a, global0.b, false)), !vec4<bool>(global0.c.d, false, true, global0.c.a))), Struct_1(select(true, !global0.a.d && (global0.b || global0.a.d), any(vec3<bool>(global0.c.d, true, global0.c.d))), global0.a.c.x, vec2<i32>(-u_input.a, global0.a.b) ^ select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(3283i, var_0.x), vec2<bool>(global0.b, global0.b)), (any(vec2<bool>(true, true)) != select(true, true, true)) || true, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(2039u, 12149u), global0.a.e), vec2<u32>(global3[_wgslsmith_index_u32(global0.c.e.x, 27u)], global3[_wgslsmith_index_u32(global0.a.e.x, 27u)])) ^ min(vec2<u32>(global0.d, global3[_wgslsmith_index_u32(970u, 27u)]), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40445u, 27u)] & 0u, 30u)])), min(1u, max(27400u, 1u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(~u_input.a, arg_1.d.a.b);
    global0 = func_2(vec2<i32>(~(~u_input.a), -1i) | ~min(countOneBits(global0.a.c), arg_1.a.c));
    global1 = array<vec4<u32>, 1>();
    let var_1 = Struct_3(func_2(vec2<i32>(-6513i ^ u_input.a, 13521i)).c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-249f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 553f) * 840f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1294f)), _wgslsmith_f_op_f32(arg_1.b.x * 1000f))))), all(vec3<bool>(arg_1.a.a, arg_1.d.a.d, arg_1.a.a == arg_1.c)) & arg_1.d.c.d, func_2(_wgslsmith_sub_vec2_i32(func_2(vec2<i32>(-32950i, global0.c.c.x) | arg_1.a.c).a.c, -reverseBits(arg_1.d.c.c))));
    var var_2 = -6225i;
    return func_2(reverseBits(var_1.d.c.c)).c;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    global1 = array<vec4<u32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f - arg_0.b.x)) - arg_0.b.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) + arg_0.b.x)))));
    let var_1 = arg_0;
    var var_2 = select(vec4<i32>(~_wgslsmith_div_i32(1i, _wgslsmith_div_i32(arg_0.d.a.c.x, arg_3.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(59343i, 0i, -7479i)), _wgslsmith_div_vec3_i32(arg_3.yww, arg_3.zzy)), vec3<i32>(arg_3.x << (var_1.d.d % 32u), _wgslsmith_add_i32(arg_0.a.c.x, -2147483647i), _wgslsmith_div_i32(27074i, -48945i))), _wgslsmith_sub_i32(~firstTrailingBit(-2147483647i), func_2(_wgslsmith_div_vec2_i32(arg_3.yw, vec2<i32>(global0.c.b, arg_0.d.c.c.x))).c.c.x), -12328i), arg_3 << (~(global1[_wgslsmith_index_u32(~global0.c.e.x, 1u)] & vec4<u32>(var_1.d.a.e.x, global0.c.e.x, 18734u, arg_2)) % vec4<u32>(32u)), !select(!(!vec4<bool>(var_1.a.a, true, true, true)), !vec4<bool>(global0.b, true, global0.b, true), false));
    let var_3 = vec2<u32>(global0.a.e.x, 13148u);
    return Struct_3(var_1.d.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, arg_0.b.x, var_0))) * _wgslsmith_f_op_vec3_f32(-arg_0.b))) + arg_0.b), var_1.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(890f + var_1.b.x), -255f, arg_0.a.c.x != -29228i)) + -352f), Struct_2(Struct_1(select(true, !global0.b, false), -49791i, vec2<i32>(arg_3.x, -2147483647i) | -vec2<i32>(58756i, 0i), true, ~(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4106u, 27u)], 30u)] ^ var_3)), !select(true, true, false), arg_0.a, firstTrailingBit(1u)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    global3 = array<u32, 27>();
    global1 = array<vec4<u32>, 1>();
    let var_0 = func_5(Struct_3(func_4(vec3<f32>(-702f, _wgslsmith_f_op_f32(f32(-1f) * -1990f), 937f), Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(877f, 1000f, -1138f) + vec3<f32>(169f, -1437f, 926f)), arg_0, func_2(vec2<i32>(global0.a.b, u_input.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + 884f), _wgslsmith_f_op_f32(-243f - 1933f), _wgslsmith_f_op_f32(-1514f - 264f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(274f, -1395f, 762f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1207f, -393f, -387f))))), true, Struct_2(global0.c, func_2(vec2<i32>(1i, -31586i)).b, func_4(vec3<f32>(1f, 1f, 1f), Struct_3(Struct_1(global0.b, global0.c.c.x, vec2<i32>(u_input.a, -1897i), global0.a.a, vec2<u32>(1u, 34767u)), vec3<f32>(1365f, -588f, 255f), arg_0, Struct_2(Struct_1(arg_0, 31969i, vec2<i32>(-1i, u_input.a), arg_0, global2[_wgslsmith_index_u32(4576u, 30u)]), true, global0.a, global0.a.e.x))), 4463u)), ~max(vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], _wgslsmith_div_u32(4294967295u, 4294967295u), func_4(vec3<f32>(985f, -170f, -1053f), Struct_3(global0.a, vec3<f32>(838f, 2498f, 140f), false, Struct_2(Struct_1(arg_0, 1i, vec2<i32>(-1i, -40220i), true, global2[_wgslsmith_index_u32(4294967295u, 30u)]), true, global0.c, global0.a.e.x))).e.x), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global0.c.e.x, global3[_wgslsmith_index_u32(4294967295u, 27u)], 9410u), vec3<u32>(global3[_wgslsmith_index_u32(global0.d, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], 4294967295u)))), global3[_wgslsmith_index_u32(~(~0u), 27u)], firstLeadingBit(min(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 2147483647i, 0i, u_input.a), -vec4<i32>(arg_1.x, 41703i, -40291i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 25260i, -54227i, u_input.a) ^ vec4<i32>(-2147483647i, u_input.a, arg_1.x, global0.c.c.x), vec4<i32>(1i, u_input.a, u_input.a, global0.a.c.x)))));
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), var_0), func_4(_wgslsmith_f_op_vec3_f32(-var_0.b), var_0).d, func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)))), func_5(var_0, (vec3<u32>(1u, global0.c.e.x, 59138u) << (vec3<u32>(66063u, global3[_wgslsmith_index_u32(2113u, 27u)], global3[_wgslsmith_index_u32(var_0.a.e.x, 27u)]) % vec3<u32>(32u))) & ~vec3<u32>(17380u, 1u, global3[_wgslsmith_index_u32(12795u, 27u)]), ~1u, abs(vec4<i32>(0i, 2147483647i, var_0.d.c.c.x, arg_1.x)) & ~vec4<i32>(u_input.a, 2147483647i, var_0.a.b, arg_1.x))), firstTrailingBit(global3[_wgslsmith_index_u32(func_2(arg_1).a.e.x, 27u)]));
    var var_2 = Struct_5(var_0.a.d, max(~(var_0.a.e >> (global0.a.e % vec2<u32>(32u))), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], reverseBits(var_0.d.d))) << (_wgslsmith_clamp_vec2_u32(global0.c.e, vec2<u32>(global0.d, 4294967295u) << (vec2<u32>(var_0.d.a.e.x, var_0.d.c.e.x) % vec2<u32>(32u)), firstLeadingBit(var_0.a.e) & vec2<u32>(0u, 9996u)) % vec2<u32>(32u)));
    return var_1;
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_2) -> f32 {
    global0 = func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), reverseBits(vec2<i32>(u_input.a, 2147483647i)) & (_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.c.x, arg_3.c.b), global0.c.c) ^ ~arg_3.a.c), vec2<i32>(func_4(vec3<f32>(-292f, 1370f, 314f), Struct_3(Struct_1(arg_3.b, -3142i, vec2<i32>(u_input.a, -18039i), arg_2.a, vec2<u32>(1u, 0u)), vec3<f32>(1055f, -1000f, 1194f), true, Struct_2(Struct_1(false, 2147483647i, arg_3.a.c, true, arg_3.c.e), false, Struct_1(arg_2.a, global0.a.c.x, arg_3.a.c, true, arg_2.b), 2229u))).c.x, 47019i)));
    var var_0 = vec2<bool>(global0.c.d, false);
    let var_1 = vec4<bool>(false, !(241f <= _wgslsmith_f_op_f32(sign(-748f))), all(!select(vec3<bool>(global0.c.a, arg_2.a, arg_2.a), vec3<bool>(false, arg_3.c.d, false), false)) == true, var_0.x);
    var var_2 = Struct_5(select(arg_3.c.a, true, true), ~(~func_1(arg_3.c.d, vec2<i32>(global0.a.c.x, u_input.a)).c.e) ^ (vec2<u32>(max(global0.c.e.x, arg_2.b.x), arg_3.a.e.x) | ~(~arg_3.a.e)));
    var var_3 = Struct_3(Struct_1(!(true && arg_2.a), global0.c.b, firstTrailingBit(vec2<i32>(-u_input.a, global0.c.c.x)), var_0.x, ~select(select(vec2<u32>(var_2.b.x, 83188u), vec2<u32>(0u, arg_3.a.e.x), vec2<bool>(var_1.x, true)), vec2<u32>(66424u, 29827u), !var_1.xx)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-536f, -2805f, 848f), vec3<f32>(-2229f, 1033f, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1883f, 913f, -222f), vec3<f32>(-1011f, 1000f, -1000f))))))), any(vec3<bool>(true, func_5(Struct_3(Struct_1(var_2.a, -12128i, arg_3.c.c, false, var_2.b), vec3<f32>(375f, 1209f, -726f), arg_3.b, Struct_2(Struct_1(true, -2147483647i, arg_3.a.c, true, vec2<u32>(1u, 25784u)), true, Struct_1(true, global0.c.c.x, global0.a.c, arg_3.b, vec2<u32>(arg_2.b.x, arg_2.b.x)), arg_0)), vec3<u32>(arg_1.b.x, 4294967295u, 23948u), 44102u, vec4<i32>(0i, 1i, arg_3.c.b, global0.c.c.x)).a.a, global0.a.d)) && true, func_1(true, global0.a.c));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global3 = array<u32, 27>();
    let var_1 = Struct_2(global0.c, ~global3[_wgslsmith_index_u32(global0.d, 27u)] == 4294967295u, Struct_1(all(vec2<bool>(false, false)), _wgslsmith_add_i32(global0.a.c.x, _wgslsmith_sub_i32(1i, global0.a.c.x)), global0.a.c, !(u_input.a <= -global0.a.b), global2[_wgslsmith_index_u32(0u, 30u)]), 8255u);
    global2 = array<vec2<u32>, 30>();
    global2 = array<vec2<u32>, 30>();
    global3 = array<u32, 27>();
    var var_2 = all(select(!select(vec2<bool>(var_1.c.a, false), vec2<bool>(true, true), vec2<bool>(var_1.c.d, false)), vec2<bool>(true, true), var_1.b & global0.c.a)) | (_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1881f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(232f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1083f))) < _wgslsmith_f_op_f32(func_6(17461u, Struct_5(var_1.a.d, ~global2[_wgslsmith_index_u32(0u, 30u)]), Struct_5(!var_1.b, global2[_wgslsmith_index_u32(global0.d, 30u)] >> (vec2<u32>(global0.d, 1u) % vec2<u32>(32u))), func_1(!global0.b, global0.a.c))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(776f, -1652f, -510f, 651f), vec4<f32>(1522f, 1161f, 692f, -1026f))), vec4<f32>(-343f, -1018f, -150f, -2324f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1193f, -778f, 1054f, 202f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(231f, 969f)), _wgslsmith_f_op_f32(step(1377f, 1000f)), 1550f, func_5(Struct_3(global0.c, vec3<f32>(320f, -341f, 728f), var_1.c.a, var_1), vec3<u32>(var_1.a.e.x, 0u, global3[_wgslsmith_index_u32(18418u, 27u)]), 63475u, vec4<i32>(u_input.a, var_1.c.c.x, var_1.c.b, u_input.a)).b.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(639f, 1492f, 1000f, -884f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, abs(min(~_wgslsmith_add_vec3_i32(vec3<i32>(-41845i, u_input.a, global0.a.c.x), vec3<i32>(0i, u_input.a, u_input.a)), min(-vec3<i32>(-13597i, -1i, -2147483647i), abs(vec3<i32>(-33036i, var_1.c.b, -2147483647i))))), 1584f);
}

