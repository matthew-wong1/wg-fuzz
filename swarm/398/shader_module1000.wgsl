struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global4: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> Struct_3 {
    global4 = array<vec3<bool>, 15>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(ceil(arg_0)), -1000f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1328f)) * vec3<f32>(arg_0, -1676f, arg_0)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 491f, arg_0) * vec3<f32>(arg_0, -1741f, 645f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(-472f)))), -1080f, _wgslsmith_f_op_f32(f32(-1f) * -1123f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2642f), arg_0, -737f)));
    let var_1 = u_input.b | u_input.a;
    var var_2 = global0.x | !(global2.x & true);
    global3 = array<vec3<bool>, 27>();
    return Struct_3(_wgslsmith_f_op_f32(-arg_0) == var_0.x);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_2.d;
    global4 = array<vec3<bool>, 15>();
    global4 = array<vec3<bool>, 15>();
    let var_1 = -553f;
    var var_2 = vec3<bool>(!any(!select(vec2<bool>(global2.x, global0.x), global2.yy, arg_2.d.a)), !global2.x, !global0.x);
    return Struct_2(arg_2.b, -(_wgslsmith_clamp_i32(u_input.b, 2147483647i, ~u_input.a) & -u_input.a), arg_2.b, firstTrailingBit(-31520i), arg_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = max(vec2<i32>(arg_1, -5227i), abs(arg_2.yz));
    return Struct_4(1u, func_3(countOneBits(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(4294967295u, 0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(55297u, 4294967295u, 9305u, 41038u), vec4<u32>(83475u, 44309u, 1u, 4294967295u)))), countOneBits(select(~vec3<i32>(arg_1, u_input.a, arg_1), ~vec3<i32>(arg_1, var_0.x, 5353i), true)), Struct_4(~_wgslsmith_clamp_u32(17799u, 21630u, 4294967295u), Struct_1(arg_0.a.a, global3[_wgslsmith_index_u32(0u, 27u)], !global0.x), max(vec4<u32>(63915u, 1u, 62831u, 31394u), abs(vec4<u32>(38946u, 1u, 7598u, 40597u))), Struct_3(global2.x), 1u), global1[_wgslsmith_index_u32(4294967295u, 15u)]).a, _wgslsmith_div_vec4_u32(max(abs(vec4<u32>(0u, 103299u, 45401u, 12426u)), vec4<u32>(1u, 4294967295u, 1u, 3144u)) & select(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(36440u, 0u, 1u, 29720u)), select(vec4<bool>(global2.x, global0.x, true, false), vec4<bool>(global2.x, true, false, global2.x), arg_0.c.b.x)), ~(~max(vec4<u32>(68579u, 22471u, 1u, 6500u), vec4<u32>(1u, 47843u, 0u, 1u)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1508f * 1435f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a)))), _wgslsmith_add_u32(4294967295u, ~4294967295u));
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    let var_0 = Struct_2(arg_0.b, func_3(firstTrailingBit(~arg_0.c.x), vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(27092i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 33780i), vec3<i32>(-1i, u_input.b, -7834i))), -u_input.a), Struct_4(1u, arg_0.b, max(vec4<u32>(1u, arg_0.a, arg_0.c.x, 21350u), arg_0.c), func_4(func_3(30429u, vec3<i32>(u_input.b, u_input.b, u_input.a), Struct_4(4294967295u, Struct_1(169f, vec3<bool>(global0.x, false, true), true), arg_0.c, arg_0.d, arg_0.c.x), vec3<u32>(arg_0.c.x, 1u, 14677u)), -39815i, -vec3<i32>(u_input.a, 1i, u_input.a)).d, ~12579u), global1[_wgslsmith_index_u32(31085u, 15u)]).e, arg_0.b, -2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(u_input.b, -122i, -39022i))), vec3<i32>(u_input.b, -32382i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.a), vec3<i32>(u_input.b, -1i, u_input.b)))), reverseBits(2147483647i ^ u_input.a)));
    var var_1 = func_4(var_0, ~u_input.a << (20601u % 32u), vec3<i32>(u_input.a << (arg_0.c.x % 32u), -_wgslsmith_clamp_i32(1i, abs(2147483647i), max(var_0.e, 0i)), ~var_0.d)).b;
    let var_2 = 19543i;
    global0 = !func_4(var_0, var_2, ~(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_0.d, var_2), vec3<i32>(var_0.d, -54073i, var_2)) ^ vec3<i32>(0i, 0i, var_0.b))).b.b;
    let var_3 = func_3(abs(func_4(Struct_2(Struct_1(var_1.a, vec3<bool>(true, true, var_1.b.x), false), var_2, Struct_1(-1186f, vec3<bool>(true, var_1.c, global0.x), false), u_input.b, 2147483647i), var_0.d, vec3<i32>(-35142i, var_0.e, var_0.e)).e >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.c.x, arg_0.e, 17610u, 1u), arg_0.c, true), ~arg_0.c) % 32u)), select(-vec3<i32>(0i, 0i, 39782i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(var_2, -19546i, var_0.b), vec3<i32>(var_0.b, var_0.e, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 0i, -51586i), vec3<i32>(67525i, u_input.b, -8064i)), vec3<bool>(arg_0.d.a, false, global0.x)) << (vec3<u32>(arg_0.a >> (4294967295u % 32u), _wgslsmith_div_u32(11996u, arg_0.a), ~0u) % vec3<u32>(32u)), false), arg_0, abs(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(6248u, arg_0.c.x, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.e, 4294967295u), vec3<u32>(arg_0.a, 488u, arg_0.e))))));
    return var_3;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_5(func_4(func_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(3388u, 4294967295u, 6395u, 8408u), vec4<u32>(0u, 0u, 0u, 1u)), firstLeadingBit(min(vec3<i32>(-139304i, -2147483647i, 28229i), vec3<i32>(76244i, u_input.a, u_input.b))), Struct_4(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 15u)], vec3<u32>(46842u, 4294967295u, 4294967295u)), Struct_1(arg_0, vec3<bool>(global0.x, global0.x, global2.x), global0.x), vec4<u32>(1u, 1u, 1u, 1u), func_2(-1861f), 47759u), ~reverseBits(global1[_wgslsmith_index_u32(12286u, 15u)])), _wgslsmith_add_i32(~u_input.b, 4822i), -(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.a, 2147483647i, 2147483647i)) << (select(vec3<u32>(4294967295u, 21170u, 0u), vec3<u32>(4294967295u, 4294967295u, 11632u), global4[_wgslsmith_index_u32(9458u, 15u)]) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 126f));
    let var_2 = _wgslsmith_mult_vec2_i32(-(~(~vec2<i32>(30198i, u_input.b) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-57929i, -2918i), vec2<i32>(28858i, var_0.b), vec2<i32>(u_input.b, 1i)))), ~vec2<i32>(var_0.e, ~47847i));
    let var_3 = vec4<i32>(firstLeadingBit(var_2.x), -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.b, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_0.e), var_2) & -var_2), u_input.a) | vec4<i32>(-u_input.a, -(var_0.b & 2147483647i) & var_2.x, u_input.b, -_wgslsmith_dot_vec4_i32(-vec4<i32>(-50212i, 1i, 1i, var_0.b), vec4<i32>(-2147483647i, 10516i, 11764i, -4823i)));
    var var_4 = func_5(Struct_4(4294967295u, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), vec3<bool>(func_4(Struct_2(Struct_1(808f, global3[_wgslsmith_index_u32(32110u, 27u)], false), 0i, var_0.c, -1i, var_2.x), 0i, var_3.wzy).d.a, func_2(var_1.x).a, var_0.a.b.x), true), vec4<u32>(62885u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 60232u), global1[_wgslsmith_index_u32(115256u, 15u)]), 1u, firstTrailingBit(1u)), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(335f, var_1.x)))), firstTrailingBit(~firstLeadingBit(55173u)))).c.c;
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = min(~(~arg_2.c | func_4(Struct_2(Struct_1(arg_2.b.a, vec3<bool>(true, true, true), false), -1i, Struct_1(-1000f, vec3<bool>(arg_0.a.c, false, false), false), 0i, arg_0.e), u_input.a, vec3<i32>(-5020i, 0i, -9757i)).c) >> (vec4<u32>(_wgslsmith_clamp_u32(1u, func_4(arg_0, u_input.b, vec3<i32>(27441i, 2147483647i, arg_0.b)).c.x, 1u), 18335u, arg_2.c.x, _wgslsmith_dot_vec2_u32(arg_2.c.yz, arg_2.c.zw)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(arg_2.c, abs(arg_2.c)));
    let var_1 = u_input.b;
    global4 = array<vec3<bool>, 15>();
    let var_2 = func_4(arg_0, arg_0.e, abs(vec3<i32>(2147483647i, u_input.a, -(-9542i & u_input.a))));
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-1822f * arg_1.x)))) - _wgslsmith_f_op_f32(exp2(arg_0.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false & global2.x;
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(func_6(func_1(-2301f), vec4<f32>(1f, 1f, 1f, 1f), Struct_4(~9781u, func_3(firstTrailingBit(1u), vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_4(7794u, Struct_1(-696f, vec3<bool>(false, global2.x, true), false), vec4<u32>(0u, 1u, 38110u, 0u), Struct_3(true), 63021u), vec3<u32>(68666u, 36434u, 1u)).a, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 17830u, 8542u, 28635u), vec4<u32>(38176u, 4294967295u, 0u, 6789u), ~vec4<u32>(2191u, 65489u, 1u, 0u)), Struct_3(true), 4294967295u))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(ceil(-1398f))))), 1000f, !(!global0.x)));
    var var_3 = func_4(Struct_2(func_5(Struct_4(1u, func_5(Struct_4(16496u, Struct_1(-2384f, vec3<bool>(false, global2.x, true), true), vec4<u32>(0u, 14772u, 4429u, 1u), Struct_3(true), 11084u)).a, ~vec4<u32>(0u, 61862u, 43537u, 21343u), func_4(Struct_2(Struct_1(1000f, global4[_wgslsmith_index_u32(110773u, 15u)], global0.x), 27055i, Struct_1(1000f, global3[_wgslsmith_index_u32(39895u, 27u)], global0.x), var_1, 0i), var_1, vec3<i32>(var_1, u_input.b, var_1)).d, ~1u)).c, _wgslsmith_add_i32(~abs(-46881i), var_1), func_5(Struct_4(68891u, Struct_1(-241f, global4[_wgslsmith_index_u32(1u, 15u)], global2.x), reverseBits(vec4<u32>(24418u, 4294967295u, 1u, 81311u)), Struct_3(global2.x), 0u << (1u % 32u))).c, _wgslsmith_div_i32(-39261i, -(i32(-1i) * -52503i)), var_1), ~0i >> ((27196u & firstTrailingBit(1u)) % 32u), ~(-vec3<i32>(-47610i, u_input.a, 1i))).d.a;
    let var_4 = (vec2<u32>(~1u, ~(~74158u)) ^ vec2<u32>(37259u, func_4(func_5(Struct_4(42034u, Struct_1(1000f, vec3<bool>(global0.x, true, global2.x), true), vec4<u32>(0u, 0u, 13651u, 0u), Struct_3(global2.x), 42182u)), firstTrailingBit(-43757i), vec3<i32>(u_input.b, -2147483647i, -1i)).a)) ^ vec2<u32>(42180u, ~1u);
    global0 = !global3[_wgslsmith_index_u32(~(1u ^ select(firstTrailingBit(42694u), 1u, true)), 27u)];
    global0 = vec3<bool>(false, -793f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1375f, -329f)))))), func_2(-411f).a);
    global3 = array<vec3<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(var_4.x, 34659u, var_4.x)), 15u)]);
}

