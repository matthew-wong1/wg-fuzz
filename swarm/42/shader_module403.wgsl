struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<i32, 27>;

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 52661u), vec2<u32>(0u, 0u), vec2<u32>(35867u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 96802u), vec2<u32>(0u, 37623u), vec2<u32>(0u, 11485u), vec2<u32>(1u, 50950u), vec2<u32>(92907u, 10066u), vec2<u32>(7350u, 0u), vec2<u32>(0u, 1u), vec2<u32>(28847u, 38281u), vec2<u32>(9133u, 100207u), vec2<u32>(26493u, 26517u), vec2<u32>(10729u, 64359u), vec2<u32>(59538u, 29585u), vec2<u32>(0u, 1u), vec2<u32>(13988u, 68499u), vec2<u32>(4294967295u, 23113u), vec2<u32>(0u, 1u), vec2<u32>(61412u, 4294967295u), vec2<u32>(60581u, 145511u), vec2<u32>(14470u, 1u), vec2<u32>(83972u, 1u), vec2<u32>(7043u, 1u), vec2<u32>(21866u, 0u), vec2<u32>(5462u, 0u), vec2<u32>(1u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> vec4<u32> {
    global0 = array<u32, 7>();
    let var_0 = 604f;
    return arg_0.d.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = arg_0.x;
    var var_1 = all(!vec3<bool>(~global0[_wgslsmith_index_u32(u_input.a, 7u)] > ~6242u, false, false));
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(abs(vec4<i32>(~(-2147483647i), abs(global1[_wgslsmith_index_u32(u_input.a, 27u)]), arg_1, 1i)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], arg_1, arg_1, -22251i), -vec4<i32>(-51229i, arg_0.x, global1[_wgslsmith_index_u32(8902u, 27u)], -2147483647i)))), func_3(Struct_3(u_input.b.x, vec3<u32>(4294967295u, 24974u, ~u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_1(vec3<i32>(arg_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 27u)], 14988i) << (vec3<u32>(0u, u_input.a, 25741u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, -1645f, 773f)), ~vec4<u32>(0u, 0u, 62011u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)])), true && all(vec4<bool>(true, true, true, false))), -151f, global1[_wgslsmith_index_u32(u_input.a, 27u)]), -352f);
    var var_3 = -1000f;
    let var_4 = Struct_4(Struct_3(0i, _wgslsmith_mult_vec3_u32(vec3<u32>(func_3(Struct_3(arg_1, var_2.b.yyy, vec4<bool>(false, false, false, false), Struct_1(vec3<i32>(10605i, var_0, 34169i), vec3<f32>(var_2.c, 165f, var_2.c), var_2.b), true), var_2.c, arg_1).x, 54963u, max(u_input.a, global0[_wgslsmith_index_u32(81377u, 7u)])), var_2.b.yzw), vec4<bool>(false, all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), _wgslsmith_div_f32(var_2.c, var_2.c) < -997f), Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(39415i, var_2.a.x, var_0), vec3<i32>(var_2.a.x, -39312i, arg_1) ^ u_input.b, ~u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(885f, var_2.c, var_2.c)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, 176f, 1488f), vec3<f32>(1000f, 1301f, var_2.c))), select(~vec4<u32>(var_2.b.x, 0u, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.x, 83078u, 64949u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(7681u, 7u)], 4294967295u, 19726u, 1u)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))), any(vec2<bool>(all(vec3<bool>(true, true, true)), false))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, _wgslsmith_add_i32(-1i, arg_1), -2147483647i, -abs(1i)), arg_0, abs(arg_0)), Struct_3(_wgslsmith_mult_i32(arg_0.x, ~_wgslsmith_sub_i32(u_input.b.x, 1i)), ~select(vec3<u32>(global0[_wgslsmith_index_u32(var_2.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a), firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(32738u, 7u)], 2933u, var_2.b.x)), vec3<bool>(true, true, true)), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 7u)] < 62287u, true), Struct_1(arg_0.xwx, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 1054f, 685f) - vec3<f32>(var_2.c, 467f, var_2.c)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.c, var_2.c, 1751f))))), vec4<u32>(4294967295u, max(6617u, var_2.b.x), _wgslsmith_mult_u32(72307u, 54100u), var_2.b.x)), true), Struct_2(vec4<i32>(~arg_1, firstLeadingBit(var_2.a.x), arg_0.x, ~_wgslsmith_clamp_i32(6763i, 46717i, arg_0.x)), max(var_2.b, var_2.b), -1000f));
    return var_4.c;
}

fn func_1() -> i32 {
    let var_0 = Struct_4(Struct_3(-19075i, ~(~select(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 0u), vec3<bool>(true, true, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), Struct_1(countOneBits(firstLeadingBit(vec3<i32>(1837i, global1[_wgslsmith_index_u32(4294967295u, 27u)], 0i))), vec3<f32>(_wgslsmith_f_op_f32(-275f - -788f), _wgslsmith_f_op_f32(739f + -853f), 1279f), select(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a), reverseBits(vec4<u32>(15420u, u_input.a, global0[_wgslsmith_index_u32(52397u, 7u)], u_input.a)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-682f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(922f * 223f))), ~vec4<i32>(2147483647i, -2147483647i, ~(-9992i), -(27732i | global1[_wgslsmith_index_u32(1u, 27u)])), func_2(-((vec4<i32>(-31994i, u_input.b.x, 47571i, global1[_wgslsmith_index_u32(u_input.a, 27u)]) & vec4<i32>(1i, -11015i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)])) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], 48204u, global0[_wgslsmith_index_u32(0u, 7u)], u_input.a) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)]), 27u)] << (65701u % 32u)), Struct_2(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 27u)], u_input.b.x, -32516i), max(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 27u)], 1i, 1i), vec4<i32>(-2147483647i, -1i, -11621i, 31120i)))), vec4<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 7u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 7u)]) >> (u_input.a % 32u), 1438u, min(0u, 1u), global0[_wgslsmith_index_u32(68838u, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)))));
    global0 = array<u32, 7>();
    global1 = array<i32, 27>();
    let var_1 = u_input.a;
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~min(11948u, var_0.d.b.x), 27u)] & global1[_wgslsmith_index_u32(select(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 0u)), ~4294967295u | firstTrailingBit(4294967295u), var_0.d.a.x <= u_input.b.x), 27u)], abs(~var_0.d.b.www), !(!vec4<bool>(false, true, true, var_0.a.e)), var_0.c.d, any(vec2<bool>(true, false)));
    return _wgslsmith_dot_vec2_i32(~countOneBits(min(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], var_0.c.a), ~var_0.c.d.a.zz)), ~vec2<i32>(var_2.a, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(84992i, 0i, var_0.c.d.a.x), -23159i, u_input.b.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    var var_0 = 2147483647i;
    var var_1 = u_input.b.x | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.x, u_input.b.x), arg_2.b.zx), -(vec2<i32>(u_input.b.x, -2147483647i) ^ u_input.b.zy)), _wgslsmith_clamp_vec2_i32(max(u_input.b.xy, u_input.b.zy) << (arg_1.b.wz % vec2<u32>(32u)), vec2<i32>(-33650i, ~(-1i)), -vec2<i32>(-55279i, 58136i) & (vec2<i32>(33747i, -48154i) >> (global2[_wgslsmith_index_u32(0u, 29u)] % vec2<u32>(32u)))));
    let var_2 = Struct_2(arg_1.a, _wgslsmith_div_vec4_u32(vec4<u32>(abs(~arg_2.d.b.x), abs(50214u), u_input.a, 1u), arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1392f * arg_1.c)))));
    var var_3 = !func_2(vec4<i32>(select(arg_1.a.x, var_2.a.x, arg_0 & arg_0), -abs(31780i), ~global1[_wgslsmith_index_u32(firstTrailingBit(0u), 27u)], 40282i), max(-1i, ~(-37463i) & (-27980i << (arg_2.a.b.x % 32u)))).c;
    var_1 = u_input.b.x;
    return Struct_4(arg_2.a, countOneBits(vec4<i32>(-2147483647i, arg_2.c.a, _wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(-17508i, 0i, arg_2.c.a, 1i)), var_2.a.x)), func_2(~abs(var_2.a << (vec4<u32>(31410u, 4294967295u, arg_2.d.b.x, 0u) % vec4<u32>(32u))), abs(-global1[_wgslsmith_index_u32(14742u, 27u)]) | ~(~global1[_wgslsmith_index_u32(u_input.a, 27u)])), arg_1);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_0.a.d.a.x;
    global1 = array<i32, 27>();
    let var_1 = arg_0.d.b.x;
    var var_2 = vec3<i32>(_wgslsmith_div_i32(arg_0.b.x, -abs(-1i)), _wgslsmith_add_i32(-func_2(-arg_0.b, firstTrailingBit(1i)).a, arg_3.a.x | abs(2147483647i)), -2147483647i);
    global1 = array<i32, 27>();
    return !func_4(true, arg_3, arg_0).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-778f, -637f, true)))))) - 337f);
    let var_2 = func_5(func_4(false, Struct_2(vec4<i32>(func_1(), 16823i, u_input.b.x, -1i), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, 1054u), vec4<u32>(0u, 34828u, 1u, global0[_wgslsmith_index_u32(u_input.a, 7u)]) ^ vec4<u32>(0u, global0[_wgslsmith_index_u32(46644u, 7u)], u_input.a, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1165f)), Struct_4(func_2(vec4<i32>(-1i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 27u)]), u_input.b.x), vec4<i32>(2147483647i, -1i, u_input.b.x, -63546i), func_2(vec4<i32>(4429i, 38531i, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 27u)]), countOneBits(u_input.b.x)), Struct_2(vec4<i32>(u_input.b.x, 2147483647i, global1[_wgslsmith_index_u32(60306u, 27u)], -37653i) & vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 27u)], u_input.b.x, u_input.b.x), vec4<u32>(52595u, u_input.a, global0[_wgslsmith_index_u32(75636u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), -783f))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(381f * _wgslsmith_f_op_f32(-956f + 1108f)))), _wgslsmith_div_f32(-339f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-401f, -2096f)))), true, func_4(false, Struct_2(vec4<i32>(func_2(vec4<i32>(u_input.b.x, 22145i, 24139i, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a, 27u)]).d.a.x, -28116i, 1i, abs(u_input.b.x)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24948u, 7u)], 7u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1394f)))), Struct_4(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], 106668u, u_input.a)), 27u)], vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 7u)], 1u) >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a, 4294967295u) % vec3<u32>(32u)), vec4<bool>(true, true, true, true), func_4(true, Struct_2(vec4<i32>(28555i, 53339i, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 32302u, global0[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a), -642f), Struct_4(Struct_3(global1[_wgslsmith_index_u32(0u, 27u)], vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a), vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(1i, u_input.b.x, 0i), vec3<f32>(272f, 536f, -278f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25064u, 7u)], 7u)], 21045u, u_input.a, u_input.a)), true), vec4<i32>(2147483647i, u_input.b.x, 8045i, u_input.b.x), Struct_3(u_input.b.x, vec3<u32>(63154u, global0[_wgslsmith_index_u32(u_input.a, 7u)], 4294967295u), vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(u_input.b.x, -31962i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 27u)]), vec3<f32>(-1000f, -1524f, -197f), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), true), Struct_2(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(39379u, 27u)], -16258i, -42250i), vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 7u)], 1u, 44772u), -129f))).c.d, true), vec4<i32>(3732i, global1[_wgslsmith_index_u32(4294967295u, 27u)], 1i, 2147483647i) >> (vec4<u32>(16561u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 1u, 4294967295u) % vec4<u32>(32u)), Struct_3(-54071i, ~vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<bool>(true, false, false, true), Struct_1(u_input.b, vec3<f32>(1972f, -2087f, -448f), vec4<u32>(0u, global0[_wgslsmith_index_u32(2561u, 7u)], global0[_wgslsmith_index_u32(85714u, 7u)], 2739u)), false), func_4(true, Struct_2(vec4<i32>(u_input.b.x, 41970i, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.a, 0u, global0[_wgslsmith_index_u32(4294967295u, 7u)]), 797f), Struct_4(Struct_3(-1i, vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(21367u, 7u)]), vec4<bool>(false, false, false, true), Struct_1(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 27u)], -4556i), vec3<f32>(-1937f, 2032f, -949f), vec4<u32>(8694u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(112870u, 7u)], 7u)], global0[_wgslsmith_index_u32(1u, 7u)], 29138u)), true), vec4<i32>(u_input.b.x, -975i, 1i, 1i), Struct_3(u_input.b.x, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(20725u, 27u)], -26631i, 2147483647i), vec3<f32>(-621f, 333f, 1444f), vec4<u32>(23855u, 81552u, u_input.a, 4294967295u)), true), Struct_2(vec4<i32>(u_input.b.x, 1i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(1531u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(1u, 7u)]), 342f))).d)).d);
    var_0 = !var_2.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1349f, 1348f, -401f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1117f, -643f, -1365f) + vec3<f32>(171f, -668f, 129f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-127f, -462f, -1038f))), vec3<f32>(817f, 1624f, 279f))) + vec3<f32>(_wgslsmith_f_op_f32(max(-751f, -908f)), _wgslsmith_f_op_f32(-1411f + -1206f), 1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1214f, 807f, -2495f)));
    var var_4 = reverseBits(u_input.a);
    let var_5 = _wgslsmith_mult_u32(13755u, ~abs(_wgslsmith_mult_u32(u_input.a, global0[_wgslsmith_index_u32(0u, 7u)]))) ^ ~_wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.a, ~24391u), 4294967295u);
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-u_input.b, vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 27u)]), ~(-1i)), -u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1106f)));
}

