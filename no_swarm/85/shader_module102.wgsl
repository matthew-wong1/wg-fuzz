struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(175f, -914f, -1062f, -311f, -624f);

var<private> global1: array<u32, 22>;

var<private> global2: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(1627f * global0[_wgslsmith_index_u32(5329u, 5u)])), -2575f), Struct_1(true, vec2<i32>(~(-49658i), _wgslsmith_dot_vec4_i32(vec4<i32>(-10330i, 2147483647i, u_input.a, u_input.a), vec4<i32>(34097i, 28727i, global3.b.x, global3.b.x))), select(!vec2<bool>(global3.c.x, global3.c.x), vec2<bool>(global3.a, global3.a), select(global3.c, vec2<bool>(global3.a, true), true))), select(vec3<bool>(false, true, true), vec3<bool>(true, global3.c.x, global3.c.x), (true == global3.a) & (-345f <= global0[_wgslsmith_index_u32(45076u, 5u)]))), select(-1030f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(34589u, 5u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26919u, 5u)] - global0[_wgslsmith_index_u32(arg_0, 5u)]))), false, global3.a), Struct_1(_wgslsmith_mult_i32(~(-1i), -u_input.a) == u_input.a, firstLeadingBit(abs(global3.b) >> (~vec2<u32>(u_input.b, 6171u) % vec2<u32>(32u))), vec2<bool>(all(!global3.c), !global3.c.x)), ~0u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -843f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(61931u, 5u)])))), Struct_1(global1[_wgslsmith_index_u32(0u, 22u)] != abs(4294967295u), max(abs(vec2<i32>(0i, global3.b.x)), reverseBits(vec2<i32>(-2147483647i, 0i))), vec2<bool>(true, global3.a)), global2[_wgslsmith_index_u32(~(~63470u), 18u)]));
    let var_1 = Struct_5(~((vec4<i32>(1i, 7354i, global3.b.x, 0i) << (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_0, global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_0) % vec4<u32>(32u))) | vec4<i32>(-18969i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 2147483647i, -10232i), vec4<i32>(-24842i, 1i, -30490i, global3.b.x)), abs(-19458i))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.b), select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, arg_0), var_0.a.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(4294967295u, 4294967295u))), abs(abs(vec2<u32>(var_0.d, 21068u)))), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 34513u), vec2<u32>(4294967295u, 140108u), vec2<u32>(4294967295u, 4294967295u)))), firstLeadingBit(_wgslsmith_dot_vec2_i32(global3.b, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a), global3.b))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.a, _wgslsmith_f_op_f32(sign(346f)))))), Struct_1(!(!var_0.e.c.x) && true, var_0.a.b.b, vec2<bool>(true, true)), vec3<bool>(any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_0), 18u)]), var_0.c.c.x, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.a, -1287f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -837f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 5u)], -1537f))), _wgslsmith_f_op_f32(251f + var_2.a), -1535f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2518f, -428f, global0[_wgslsmith_index_u32(12268u, 5u)]) + vec3<f32>(var_2.a, global0[_wgslsmith_index_u32(u_input.b, 5u)], var_0.a.a))))))));
    global3 = var_0.c;
    return -1i;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-226f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a)))))));
    var var_1 = arg_0;
    let var_2 = -1476f;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -432f), Struct_1(any(!vec4<bool>(false, arg_0.c.x, global3.a, global3.c.x)), select(vec2<i32>(-1i, var_1.b.b.x), firstTrailingBit(arg_0.b.b), !arg_0.b.c.x), vec2<bool>(true, !arg_3)), select(vec3<bool>(-1190f > var_1.a, true, arg_0.b.a), select(global2[_wgslsmith_index_u32(~0u, 18u)], select(vec3<bool>(false, false, var_1.c.x), vec3<bool>(arg_0.b.a, true, arg_3), vec3<bool>(false, global3.c.x, arg_0.b.a)), arg_3 & true), global3.c.x)), arg_0.c.x, arg_0.b, ~(~(~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 22u)], 22u)]))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(abs(160f))))), arg_0.b, global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(u_input.b, 22u)], ~(~global1[_wgslsmith_index_u32(1u, 22u)])), 18u)]));
    global2 = array<vec3<bool>, 18>();
    return vec3<u32>(~1u, _wgslsmith_div_u32(38851u, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(93062u), ~28060u, _wgslsmith_add_u32(30186u, u_input.b)), ~vec3<u32>(u_input.b, 36910u, 4294967295u) & vec3<u32>(var_3.d, 1u, 4294967295u))), var_3.d);
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_2(arg_0, Struct_1(all(select(global2[_wgslsmith_index_u32(firstLeadingBit(31874u), 18u)], vec3<bool>(true, true, true), vec3<bool>(true, global3.a, global3.a))), reverseBits(countOneBits(-vec2<i32>(global3.b.x, global3.b.x))), select(global3.c, vec2<bool>(true, !global3.c.x), select(!global3.c, vec2<bool>(global3.c.x, false), global3.a || global3.a))), vec3<bool>(global3.c.x, global3.c.x, all(select(vec2<bool>(global3.c.x, global3.c.x), vec2<bool>(false, global3.a), global3.a))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, _wgslsmith_clamp_i32(u_input.a, var_0.b.b.x, 7949i))), -_wgslsmith_div_i32(-u_input.a, u_input.a)) >> (vec2<u32>(_wgslsmith_mult_u32(111143u, 20026u), global1[_wgslsmith_index_u32(abs(0u) & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8127u, 22u)], 22u)], 22u)]) % vec2<u32>(32u));
    var var_2 = select(0u != _wgslsmith_add_u32(abs(abs(u_input.b)), u_input.b << (~global1[_wgslsmith_index_u32(u_input.b, 22u)] % 32u)), false, true);
    var var_3 = reverseBits(func_4(var_0, _wgslsmith_clamp_i32(func_3(0u), abs(1i), 27108i), select(vec4<i32>(var_0.b.b.x, global3.b.x, global3.b.x, 0i), abs(vec4<i32>(2147483647i, var_0.b.b.x, -26416i, u_input.a)), var_0.b.a), true & var_0.b.a)) | ~min(~vec3<u32>(u_input.b, 4294967295u, 0u), reverseBits(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19520u, 22u)], 22u)], u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34147u, 22u)], 22u)])));
    var_3 = vec3<u32>(u_input.b, func_4(var_0, global3.b.x, -vec4<i32>(-2147483647i, abs(-2147483647i), -11027i, var_0.b.b.x), true).x, var_3.x);
    return ~(~firstTrailingBit(~(~vec4<u32>(88301u, global1[_wgslsmith_index_u32(var_3.x, 22u)], u_input.b, var_3.x))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_4) -> Struct_5 {
    let var_0 = Struct_1(global3.a, vec2<i32>(1i, -(i32(-1i) * -1i)) ^ _wgslsmith_mod_vec2_i32(global3.b, -_wgslsmith_div_vec2_i32(vec2<i32>(-25130i, -1i), vec2<i32>(2147483647i, 2252i))), global3.c);
    let var_1 = Struct_3(Struct_2(-858f, var_0, select(select(global2[_wgslsmith_index_u32(arg_0, 18u)], select(vec3<bool>(global3.a, var_0.a, global3.a), vec3<bool>(false, var_0.c.x, false), global2[_wgslsmith_index_u32(arg_2, 18u)]), select(vec3<bool>(true, true, var_0.c.x), global2[_wgslsmith_index_u32(82766u, 18u)], false)), !vec3<bool>(global3.c.x, global3.a, true), false)), any(vec3<bool>(23324i > u_input.a, 33524i != global3.b.x, u_input.b >= u_input.b)) | (((arg_3.a.x & arg_3.a.x) & true) != all(vec4<bool>(var_0.a, arg_3.a.x, var_0.a, false))), var_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, _wgslsmith_clamp_u32(4294967295u, arg_0, 0u), global1[_wgslsmith_index_u32(1u, 22u)], arg_2), ~func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17429u, 22u)], 5u)], -1771f)), ~(~_wgslsmith_clamp_u32(19164u, 41037u, arg_2))), Struct_2(arg_1.x, Struct_1(any(vec4<bool>(true, false, var_0.a, false)) && global3.c.x, reverseBits(vec2<i32>(var_0.b.x, -5393i)), vec2<bool>(false, false)), !global2[_wgslsmith_index_u32(1u | u_input.b, 18u)]));
    global2 = array<vec3<bool>, 18>();
    let var_2 = Struct_4(vec2<bool>(true, global3.c.x));
    var var_3 = _wgslsmith_mod_vec4_u32(~(vec4<u32>(~59246u, select(arg_2, 4294967295u, global3.c.x), ~u_input.b, select(31545u, 15093u, true)) | vec4<u32>(arg_0, 0u, ~1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)])), max(vec4<u32>(1u, 24100u, ~_wgslsmith_div_u32(var_1.d, 81933u), 13364u), ~func_2(-779f, _wgslsmith_f_op_f32(var_1.e.a + 977f))));
    return Struct_5(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_add_i32(-1i, u_input.a), 49170i, global3.b.x), firstLeadingBit(-vec4<i32>(u_input.a, -24057i, var_0.b.x, -1i)), (vec4<i32>(-1i, global3.b.x, var_1.c.b.x, -66382i) | vec4<i32>(-21423i, var_1.a.b.b.x, 0i, var_1.a.b.b.x)) >> (vec4<u32>(arg_2, 4294967295u, arg_0, 4294967295u) % vec4<u32>(32u))), var_3.wz >> (max(vec2<u32>(~arg_0, _wgslsmith_div_u32(0u, 30795u)), func_4(var_1.a, _wgslsmith_add_i32(global3.b.x, u_input.a), -vec4<i32>(73059i, -13018i, var_0.b.x, -2147483647i), any(arg_3.a)).zx) % vec2<u32>(32u)), 1i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> Struct_5 {
    let var_0 = -abs(func_1(~(~12696u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global0[_wgslsmith_index_u32(0u, 5u)], 691f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1624f, global0[_wgslsmith_index_u32(arg_1.b.x, 5u)], 233f), vec3<f32>(arg_2, global0[_wgslsmith_index_u32(0u, 5u)], -362f), false))), ~20125u, Struct_4(vec2<bool>(true, arg_0.a))).a.wzy);
    let var_1 = arg_1;
    var var_2 = Struct_4(vec2<bool>(global3.a, true));
    let var_3 = arg_0;
    var_2 = Struct_4(var_3.c);
    return Struct_5(_wgslsmith_add_vec4_i32(vec4<i32>(~firstLeadingBit(var_3.b.x), 1i, 1i, 0i), _wgslsmith_mult_vec4_i32(var_1.a, abs(arg_1.a))), ~(~var_1.b >> (min(arg_1.b, var_1.b) % vec2<u32>(32u))) & vec2<u32>(var_1.b.x, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)] << (11752u % 32u), u_input.b ^ u_input.b, _wgslsmith_add_u32(arg_1.b.x, arg_1.b.x))), arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(all(!(!select(vec4<bool>(global3.a, false, global3.c.x, global3.c.x), vec4<bool>(global3.c.x, global3.c.x, false, global3.c.x), false))), ~vec2<i32>(_wgslsmith_sub_i32(global3.b.x, countOneBits(u_input.a)), -1i), !select(global3.c, global3.c, !vec2<bool>(global3.c.x, global3.c.x)));
    global0 = array<f32, 5>();
    let var_0 = func_5(Struct_1(true, _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 79636i), vec2<i32>(u_input.a, 1i)), min(vec2<i32>(0i, -33747i), ~global3.b)), !vec2<bool>(all(vec2<bool>(false, false)), true)), func_1(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2113f, global0[_wgslsmith_index_u32(u_input.b, 5u)], 476f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], -1970f, global0[_wgslsmith_index_u32(0u, 5u)])), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], -501f, global0[_wgslsmith_index_u32(u_input.b, 5u)]), true))), reverseBits(global1[_wgslsmith_index_u32(6135u, 22u)]), Struct_4(!(!vec2<bool>(global3.a, global3.c.x)))), -774f);
    let var_1 = false;
    global2 = array<vec3<bool>, 18>();
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(abs(~(~_wgslsmith_sub_u32(u_input.b, var_0.b.x))), 5u)], Struct_1(!global3.c.x, vec2<i32>(min(-8917i, 0i << (global1[_wgslsmith_index_u32(11598u, 22u)] % 32u)), _wgslsmith_dot_vec4_i32(-var_0.a, var_0.a)), vec2<bool>(true, true)), global2[_wgslsmith_index_u32(~u_input.b, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(firstTrailingBit(global3.b.x), -1i), ~(29569i | max(985i, var_0.c)), 0i), firstLeadingBit(abs(func_4(Struct_2(-528f, Struct_1(var_1, global3.b, vec2<bool>(false, false)), var_2.c), ~1i, ~vec4<i32>(2147483647i, global3.b.x, 632i, -26951i), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(415f + -698f), global0[_wgslsmith_index_u32(var_0.b.x, 5u)]) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.b.x, 5u)]), _wgslsmith_f_op_f32(trunc(-273f)), var_2.b.a)))), global0[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(22464u, 22u)] & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(3766u << (u_input.b % 32u), u_input.b), 22u)]), 5u)], ~func_1((989u & var_0.b.x) << (~41821u % 32u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1977f, -1000f)))), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 80571u), vec2<u32>(66241u, u_input.b)), 22u)], 22u)], Struct_4(var_2.b.c)).b);
}

