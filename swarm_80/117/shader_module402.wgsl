struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2;

var<private> global2: vec4<u32> = vec4<u32>(1u, 2928u, 0u, 55919u);

var<private> global3: array<f32, 2>;

var<private> global4: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(0u, 79290u, 2111u), vec3<u32>(23621u, 4294967295u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(48147u, 15561u, 4913u), vec3<u32>(58093u, 13600u, 1u), vec3<u32>(1u, 0u, 34042u), vec3<u32>(0u, 1u, 28949u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(19844u, 9450u, 2582u), vec3<u32>(103948u, 0u, 51225u), vec3<u32>(4294967295u, 77945u, 124894u), vec3<u32>(0u, 0u, 65353u), vec3<u32>(84765u, 10516u, 38965u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(52144u, 1u, 1u), vec3<u32>(74116u, 0u, 4294967295u), vec3<u32>(3724u, 84675u, 0u), vec3<u32>(46474u, 36369u, 64507u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = ~arg_3.c.d.x;
    var var_1 = arg_0.e;
    var var_2 = (_wgslsmith_dot_vec3_i32(-global1.c.d, vec3<i32>(~(-2147483647i), _wgslsmith_mod_i32(-2147483647i, global0.a.c.d.x), global1.c.d.x)) ^ -2147483647i) ^ global0.a.c.a;
    global4 = array<vec3<u32>, 20>();
    let var_3 = Struct_2(global2.ww, -480f, Struct_1(var_1.a, -2147483647i, arg_0.a.c.e | vec3<u32>(~global0.b, global1.d, global2.x), ~vec3<i32>(-11962i, arg_2.a, -13861i) | abs(~vec3<i32>(global1.c.a, arg_0.a.c.b, arg_0.a.c.b)), global2.xwy), select(firstLeadingBit(min(arg_1, arg_3.d)), 9124u, true) >> (0u % 32u));
    return arg_0.a.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_1 {
    global1 = Struct_2(min(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 4294967295u), vec2<u32>(global2.x, global1.a.x))), arg_2.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, 132f)) - global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, global0.d, arg_2.x), vec3<u32>(1u, 23694u, global1.a.x) << (global0.a.c.e % vec3<u32>(32u))), 2u)]) + -141f), global0.a.c, _wgslsmith_clamp_u32(~(~(~global1.d)), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, ~global2.x), global2.x), _wgslsmith_dot_vec2_u32(abs(func_3(Struct_4(Struct_2(global0.a.a, global1.b, global1.c, 23670u), u_input.b.x, global0.a.d, 54100u, global0.e), arg_2.x, Struct_3(arg_0.x, global0.e.c, global0.e.c), Struct_2(arg_2.xx, global0.a.b, Struct_1(arg_0.x, global0.a.c.d.x, global2.xzz, vec3<i32>(arg_0.x, 35959i, -1i), vec3<u32>(global0.b, 4294967295u, 1u)), 46131u))), arg_2.zw)));
    global0 = Struct_4(global0.a, 4294967295u, global0.b, reverseBits(~(~(~15795u))), Struct_3(14978i, true, ~(~arg_2.x) != (global0.b ^ firstTrailingBit(27384u))));
    global2 = u_input.b & firstLeadingBit(abs(~(~arg_2)));
    let var_0 = Struct_4(global0.a, _wgslsmith_mult_u32(63742u, u_input.a.x), arg_2.x, 4294967295u, Struct_3(5122i, any(!(!vec3<bool>(global0.e.c, false, global0.e.b))), true || global0.e.b));
    var var_1 = ~(abs(global4[_wgslsmith_index_u32(countOneBits(global1.c.c.x), 20u)]) >> (var_0.a.c.e % vec3<u32>(32u))) & ~var_0.a.c.e;
    return Struct_1(arg_0.x, arg_0.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, 94667u, _wgslsmith_dot_vec4_u32(arg_2, arg_2)), select(~vec3<u32>(global2.x, arg_2.x, var_1.x), vec3<u32>(22130u, 24098u, 36968u), all(vec2<bool>(global0.e.b, true)))), arg_0, _wgslsmith_div_vec3_u32(global0.a.c.c, ~vec3<u32>(_wgslsmith_add_u32(40361u, arg_2.x), _wgslsmith_add_u32(var_0.b, var_0.b), _wgslsmith_add_u32(var_0.b, 21838u))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> Struct_4 {
    var var_0 = ~(~7879u);
    global0 = Struct_4(global0.a, ~(~_wgslsmith_add_u32(58819u, ~global2.x)), ~(~global1.c.e.x) | firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.c.x, global0.c), 1u)), _wgslsmith_div_u32(min(50868u | func_2(global0.a.c.d, global1.c.d.zz, vec4<u32>(arg_1.c.x, global0.d, 0u, global1.c.c.x)).e.x, 1u), firstLeadingBit(u_input.a.x)), Struct_3(-countOneBits(select(-64493i, -17000i, false)), true, true));
    let var_1 = Struct_3(_wgslsmith_clamp_i32(global0.a.c.b, _wgslsmith_sub_i32(reverseBits(arg_1.d.x), firstTrailingBit(~global0.a.c.b)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, global0.e.a, -1i, -27192i)), vec4<i32>(132871i, -1i, -1i, 13039i) ^ vec4<i32>(global1.c.b, global1.c.b, -16535i, -2147483647i)) | global1.c.a), !(!select(global1.a.x <= 16406u, false, arg_2.x)), any(!select(select(vec3<bool>(true, false, global0.e.b), vec3<bool>(true, global0.e.b, global0.e.c), arg_0), !vec3<bool>(true, false, global0.e.b), any(arg_2))));
    var_0 = 1u;
    var var_2 = -1000f;
    return Struct_4(Struct_2(_wgslsmith_add_vec2_u32(global1.a, vec2<u32>(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, 29238u, 0u, 0u), vec4<u32>(48334u, arg_1.c.x, global2.x, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.b, _wgslsmith_div_f32(global0.a.b, arg_3)))), Struct_1(2147483647i, func_2(global1.c.d, -vec2<i32>(-58833i, arg_1.b), vec4<u32>(global0.d, 27001u, u_input.a.x, 4294967295u)).a, func_2(global0.a.c.d >> (global1.c.e % vec3<u32>(32u)), global0.a.c.d.xz, ~u_input.b).e, global0.a.c.d, vec3<u32>(~1u, _wgslsmith_sub_u32(26274u, arg_1.c.x), 0u)), ~global0.b), ~(~global0.a.a.x ^ global2.x) & arg_1.e.x, u_input.a.x << (4294967295u % 32u), ~(global2.x & func_3(Struct_4(global0.a, global2.x, 71108u, 44369u, Struct_3(1i, true, false)), u_input.a.x, Struct_3(-1i, global0.e.b, false), Struct_2(global0.a.a, arg_3, Struct_1(0i, -2147483647i, vec3<u32>(64919u, 1u, global2.x), global0.a.c.d, arg_1.e), global1.d)).x), var_1);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, -1261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2141f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b))))));
    global0 = Struct_4(Struct_2(_wgslsmith_mult_vec2_u32(global2.xw, ~vec2<u32>(0u, 66869u) ^ ~vec2<u32>(arg_2.c, 67090u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(684f + arg_2.a.b)))), Struct_1(global0.a.c.b, global1.c.b, global4[_wgslsmith_index_u32(arg_0, 20u)], vec3<i32>(~(-5700i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.a, global1.c.d.x, global1.c.d.x, -7441i), vec4<i32>(0i, 13710i, 1i, global0.a.c.b)), 0i), select(vec3<u32>(51486u, 74137u, 0u), global1.c.e, false) >> (func_4(true, global0.a.c, arg_3.yz, -418f).a.c.c % vec3<u32>(32u))), 109040u), _wgslsmith_mod_u32(global1.c.c.x, 1u ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(global2.x, global2.x), abs(1u))), global1.d, ~1u, Struct_3(1i >> (~u_input.a.x % 32u), all(arg_3), all(vec2<bool>(true, arg_2.e.b)) && false));
    let var_1 = arg_2.a;
    global4 = array<vec3<u32>, 20>();
    let var_2 = firstLeadingBit(~(~4294967295u ^ ~arg_0)) > arg_0;
    return arg_2;
}

fn func_1() -> Struct_1 {
    global0 = func_5(20282u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, -491f, 801f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, global3[_wgslsmith_index_u32(56484u, 2u)], -422f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -1694f, global1.b))))))), func_4(true, func_2(vec3<i32>(global1.c.a, ~global0.e.a, ~global1.c.a), vec2<i32>(-9856i, _wgslsmith_dot_vec2_i32(global1.c.d.yz, vec2<i32>(global0.a.c.b, global0.a.c.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, global2.x, 1u, global0.a.c.e.x) | u_input.b, ~vec4<u32>(u_input.a.x, u_input.a.x, 38650u, global0.a.a.x))), !select(!vec2<bool>(global0.e.b, global0.e.b), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global0.e.b, true), vec2<bool>(global0.e.b, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(2138f)), _wgslsmith_f_op_f32(exp2(global0.a.b))))), select(vec4<bool>(global0.e.c, all(!vec2<bool>(global0.e.c, global0.e.c)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, global0.c), 2u)] == _wgslsmith_f_op_f32(global0.a.b - global3[_wgslsmith_index_u32(1u, 2u)]), false), vec4<bool>((false | global0.e.c) & global0.e.c, true, true == (global1.b <= global1.b), any(vec3<bool>(global0.e.b, false, false))), !select(!vec4<bool>(global0.e.c, false, true, global0.e.c), select(vec4<bool>(false, false, global0.e.b, false), vec4<bool>(global0.e.b, global0.e.c, true, false), false), false)));
    var var_0 = ~global4[_wgslsmith_index_u32(46550u, 20u)];
    let var_1 = global1.c;
    var var_2 = Struct_4(func_4(true, global0.a.c, vec2<bool>(all(select(vec4<bool>(global0.e.b, global0.e.b, false, global0.e.b), vec4<bool>(true, global0.e.c, false, false), global0.e.c)), any(select(vec4<bool>(global0.e.b, global0.e.c, global0.e.b, false), vec4<bool>(global0.e.b, global0.e.b, global0.e.b, false), global0.e.b))), _wgslsmith_f_op_f32(-1f)).a, ~(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 0u, 1u), ~global0.a.a.x)), global2.x, 1u, global0.e);
    var var_3 = false;
    return Struct_1(_wgslsmith_add_i32(-var_2.e.a, _wgslsmith_add_i32(global1.c.a, _wgslsmith_mult_i32(var_1.a, 2147483647i)) ^ -var_1.a), global0.a.c.b, var_1.e, vec3<i32>(1i, global0.e.a, 0i), vec3<u32>(var_0.x, func_3(func_5(6206u, vec3<f32>(-2286f, -244f, 485f), Struct_4(var_2.a, 9380u, 4294967295u, var_2.a.c.e.x, Struct_3(1i, true, true)), vec4<bool>(global0.e.b, false, true, true)), _wgslsmith_mod_u32(global1.c.e.x, u_input.a.x), func_5(74329u, vec3<f32>(639f, -821f, global0.a.b), Struct_4(global0.a, var_1.c.x, global2.x, 35775u, Struct_3(1i, true, global0.e.b)), vec4<bool>(true, false, global0.e.c, true)).e, func_4(false, var_2.a.c, vec2<bool>(false, true), var_2.a.b).a).x & _wgslsmith_mod_u32(global1.a.x, 0u), _wgslsmith_dot_vec4_u32(u_input.b, abs(select(u_input.b, u_input.b, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(Struct_2(vec2<u32>(global2.x, ~(6907u >> (global1.c.c.x % 32u))), 850f, func_1(), global2.x), 4294967295u, global1.c.e.x, _wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global2.x, 4294967295u), u_input.b))), global2.x), global0.e);
    var var_0 = Struct_4(global0.a, ~global1.a.x, _wgslsmith_mod_u32(global2.x, select(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c.d.x, 2147483647i, global1.c.b), global1.c.d), select(vec2<i32>(-13395i, global0.e.a), global0.a.c.d.zy, global0.e.c), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global0.b, 48240u), u_input.b)).c.x, global0.d, global0.e.b)), ~_wgslsmith_div_u32(firstTrailingBit(global2.x), ~(~11081u)), func_5(_wgslsmith_div_u32(global1.a.x, ~global1.d), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-106f, global3[_wgslsmith_index_u32(global2.x, 2u)], global1.b) - vec3<f32>(global0.a.b, 1026f, global1.b)) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.b, global0.a.b, -449f), vec3<f32>(464f, 1449f, 327f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -1521f, -262f)), vec3<f32>(160f, -1003f, 266f)))), func_5(func_5(~global1.c.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-592f, global1.b, global3[_wgslsmith_index_u32(26183u, 2u)])), Struct_4(global0.a, global0.b, global1.a.x, u_input.a.x, Struct_3(global1.c.d.x, false, global0.e.c)), vec4<bool>(true, global0.e.b, global0.e.c, global0.e.c)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global0.a.b, -438f) - vec3<f32>(809f, 2010f, -142f))), func_5(12429u, _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 2u)], global0.a.b, -2047f), vec3<f32>(1186f, global1.b, 669f)), func_5(4294967295u, vec3<f32>(493f, global0.a.b, global0.a.b), Struct_4(global0.a, 6934u, global1.d, u_input.b.x, global0.e), vec4<bool>(global0.e.b, false, global0.e.c, global0.e.c)), vec4<bool>(true, true, true, true)), !vec4<bool>(global0.e.b, false, true, global0.e.b)), select(vec4<bool>(true, false, true, true), !select(vec4<bool>(global0.e.b, global0.e.c, false, global0.e.c), vec4<bool>(true, true, global0.e.b, global0.e.b), vec4<bool>(false, global0.e.b, false, true)), true)).e);
    global0 = Struct_4(Struct_2(var_0.a.a, var_0.a.b, var_0.a.c, func_4(any(!vec2<bool>(global0.e.c, var_0.e.c)), global1.c, vec2<bool>(true, var_0.e.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b))).d), _wgslsmith_mod_u32(global2.x, func_5(1u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(169f, global3[_wgslsmith_index_u32(global0.b, 2u)], var_0.a.b))))), Struct_4(func_4(global0.e.b, Struct_1(-1i, -8459i, global1.c.e, var_0.a.c.d, u_input.b.xxx), vec2<bool>(var_0.e.b, true), global0.a.b).a, ~4294967295u, ~0u, var_0.b, func_5(0u, vec3<f32>(509f, 1952f, -823f), Struct_4(global0.a, global0.c, u_input.b.x, 25364u, global0.e), vec4<bool>(global0.e.c, global0.e.c, true, false)).e), vec4<bool>(global0.e.b || global0.e.c, true, true, !var_0.e.b)).a.d), ~abs(4294967295u) | var_0.d, _wgslsmith_sub_u32(~37782u, u_input.a.x), func_5(~abs(func_3(Struct_4(Struct_2(vec2<u32>(global0.d, global2.x), 1325f, Struct_1(-1103i, 1i, global4[_wgslsmith_index_u32(var_0.a.c.e.x, 20u)], global1.c.d, global2.zyy), u_input.a.x), var_0.d, global1.c.c.x, global0.d, Struct_3(-41001i, true, true)), global2.x, var_0.e, Struct_2(vec2<u32>(global1.c.c.x, global2.x), var_0.a.b, var_0.a.c, global2.x)).x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 684f, 1486f)))))), Struct_4(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(45448u, u_input.a.x), vec2<u32>(0u, global0.a.a.x)), _wgslsmith_f_op_f32(-var_0.a.b), func_4(global0.e.c, Struct_1(79727i, 2147483647i, var_0.a.c.e, global1.c.d, global1.c.e), vec2<bool>(true, false), 1749f).a.c, _wgslsmith_clamp_u32(32371u, 4294967295u, 84245u)), global0.c, 52353u, func_4(!global0.e.c, Struct_1(41601i, global1.c.b, global4[_wgslsmith_index_u32(global1.d, 20u)], vec3<i32>(var_0.a.c.b, var_0.e.a, 21503i), vec3<u32>(3441u, global2.x, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(global0.e.c, false), vec2<bool>(var_0.e.b, true)), 1286f).b, global0.e), !(!select(vec4<bool>(global0.e.b, global0.e.c, global0.e.b, true), vec4<bool>(global0.e.c, var_0.e.c, false, global0.e.b), vec4<bool>(true, var_0.e.c, var_0.e.c, true)))).e);
    var var_1 = var_0.e;
    let var_2 = min(var_0.b, _wgslsmith_mult_u32(global0.b, firstTrailingBit(_wgslsmith_clamp_u32(21620u >> (global0.d % 32u), u_input.a.x, var_0.a.c.e.x))));
    let var_3 = vec2<bool>(true, func_2(firstTrailingBit(var_0.a.c.d | vec3<i32>(var_1.a, var_1.a, -1i)), vec2<i32>(~29796i, -7071i), u_input.b).a <= min(global0.e.a, func_4(!var_1.b, Struct_1(-2147483647i, var_1.a, vec3<u32>(116502u, 89976u, var_2), global0.a.c.d, global1.c.c), !vec2<bool>(global0.e.c, true), _wgslsmith_f_op_f32(global1.b + global1.b)).a.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.c.d.x, 26318i & var_0.e.a, var_0.a.c.d.x, var_1.a), vec4<i32>(select(2147483647i, 0i, true), 0i, _wgslsmith_clamp_i32(14028i, -1i, global0.e.a), global0.e.a)), min(vec4<i32>(func_5(global0.b, vec3<f32>(-1199f, 1000f, -1000f), Struct_4(Struct_2(global2.ww, 673f, Struct_1(-17026i, -40172i, vec3<u32>(0u, 4294967295u, 68475u), vec3<i32>(-8433i, 0i, 2147483647i), global1.c.c), global1.d), 37607u, 14252u, 1u, Struct_3(var_0.a.c.b, var_3.x, true)), vec4<bool>(false, var_1.c, true, global0.e.b)).a.c.d.x, global1.c.b ^ 0i, countOneBits(-1i), global1.c.b), ~reverseBits(vec4<i32>(-2776i, global0.e.a, global1.c.d.x, global0.e.a)))), 16203i);
}

