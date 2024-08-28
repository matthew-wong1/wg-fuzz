struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-1000f, 57972u, vec4<i32>(21107i, 0i, i32(-2147483648), -1i)), Struct_1(392f, 4294967295u, vec4<i32>(-14824i, -31025i, -1i, -18425i)), Struct_1(-561f, 17210u, vec4<i32>(0i, 0i, 26824i, i32(-2147483648))), Struct_1(1000f, 0u, vec4<i32>(2147483647i, 2147483647i, 25318i, 2147483647i)), Struct_1(-1035f, 56076u, vec4<i32>(43696i, 43298i, 7129i, 1i)), Struct_1(-125f, 89704u, vec4<i32>(-62714i, 2147483647i, 15130i, i32(-2147483648))), Struct_1(1482f, 12020u, vec4<i32>(19307i, -17039i, -28243i, 0i)), Struct_1(1152f, 16330u, vec4<i32>(16544i, -8969i, 2147483647i, 21293i)), Struct_1(-672f, 1u, vec4<i32>(-12857i, -28404i, 53003i, 31368i)), Struct_1(-385f, 41544u, vec4<i32>(41599i, 59924i, 15637i, -2478i)), Struct_1(846f, 43248u, vec4<i32>(1i, 23697i, 33188i, -13098i)), Struct_1(1550f, 4294967295u, vec4<i32>(10871i, i32(-2147483648), -111355i, i32(-2147483648))), Struct_1(-1454f, 0u, vec4<i32>(0i, -20377i, -44616i, 13756i)), Struct_1(-1446f, 4823u, vec4<i32>(18215i, 1i, i32(-2147483648), 16019i)), Struct_1(-388f, 9287u, vec4<i32>(2147483647i, -25313i, -1i, 2147483647i)), Struct_1(259f, 18176u, vec4<i32>(2147483647i, 25016i, 7090i, i32(-2147483648))), Struct_1(-1758f, 1u, vec4<i32>(i32(-2147483648), -55340i, 17191i, 40816i)), Struct_1(-476f, 1u, vec4<i32>(76i, 0i, -14522i, -8092i)), Struct_1(-975f, 57499u, vec4<i32>(-30345i, 1i, -37584i, 58844i)), Struct_1(-977f, 122001u, vec4<i32>(28259i, i32(-2147483648), 14833i, -31828i)), Struct_1(365f, 0u, vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i)), Struct_1(498f, 14621u, vec4<i32>(-4999i, -1i, 20357i, 0i)), Struct_1(325f, 1u, vec4<i32>(1i, 1i, -1i, -10335i)), Struct_1(1025f, 1u, vec4<i32>(28940i, 2147483647i, 0i, -54209i)), Struct_1(-1175f, 35357u, vec4<i32>(-36564i, i32(-2147483648), 2147483647i, -1i)), Struct_1(-1516f, 47870u, vec4<i32>(0i, i32(-2147483648), 1i, 24948i)), Struct_1(589f, 4294967295u, vec4<i32>(0i, 8076i, 2147483647i, -77115i)), Struct_1(1000f, 0u, vec4<i32>(4151i, -9687i, 98913i, i32(-2147483648))), Struct_1(-861f, 41810u, vec4<i32>(1i, 1i, -12024i, i32(-2147483648))), Struct_1(166f, 4294967295u, vec4<i32>(-26485i, 2147483647i, i32(-2147483648), -32364i)), Struct_1(1000f, 22960u, vec4<i32>(-1i, 2147483647i, 17468i, 46025i)));

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 12>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = 1026f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(abs(-2178f))), 40753u, firstTrailingBit(_wgslsmith_mod_vec4_i32(global2.c, arg_0.c)));
    return !(arg_1.x || !(!arg_3));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = 9062i ^ _wgslsmith_dot_vec2_i32(global2.c.zw, select(~vec2<i32>(arg_0.c.x, arg_1.c.x), vec2<i32>(arg_0.c.x, global4.c.x ^ u_input.c), vec2<bool>(true, true)));
    global4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a - arg_1.a), _wgslsmith_f_op_f32(1000f * 322f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1518f * -1000f)))), ~_wgslsmith_div_u32(arg_1.b, global4.b), vec4<i32>(global4.c.x, select(max(0i, u_input.d), ~arg_1.c.x & _wgslsmith_clamp_i32(var_0, u_input.b.x, -1i), all(vec3<bool>(true, true, true))), _wgslsmith_mult_i32(~firstLeadingBit(arg_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, global4.c.x, var_0, 17597i), arg_0.c)), -25486i));
    let var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32((min(arg_0.b, global4.b) ^ countOneBits(17050u)) | global2.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(24163u, 1u, arg_1.b), vec3<u32>(79131u, 5269u, 4666u), vec3<bool>(true, false, true)), vec3<u32>(arg_0.b, 0u, arg_0.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 145125u), vec3<u32>(4627u, 42899u, arg_0.b)), vec3<u32>(global4.b, 1u, arg_1.b), ~vec3<u32>(u_input.a, 0u, arg_1.b))))), 12u)];
    global0 = array<Struct_1, 31>();
    var var_2 = ~abs(vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, arg_1.b), vec2<u32>(global4.b, var_1.b)), max(~1u, 47002u)));
    return _wgslsmith_add_vec4_i32(select(vec4<i32>(19154i, 1i, ~global2.c.x & firstLeadingBit(global4.c.x), global2.c.x), ~_wgslsmith_add_vec4_i32(~global2.c, vec4<i32>(u_input.d, arg_0.c.x, u_input.b.x, 2147483647i) >> (vec4<u32>(u_input.a, 13580u, 0u, u_input.a) % vec4<u32>(32u))), select(false, _wgslsmith_mult_u32(4294967295u, global4.b) == min(arg_0.b, 191u), true)), countOneBits(vec4<i32>(-1i, -36376i, -1i, max(arg_1.c.x & u_input.b.x, -2866i))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = 53930u;
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1109f)) * 1000f) - global2.a), ~_wgslsmith_div_u32(0u, ~reverseBits(global4.b)), ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(global2.c.x, -7194i), global2.c.x), -6272i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, global4.c.x), vec3<i32>(-1i, global4.c.x, -14265i)), i32(-1i) * -2147483647i));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -352f))) + _wgslsmith_f_op_f32(ceil(-1125f))), 941f));
    let var_2 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(global2.c.x >> (arg_2.b % 32u), -57843i) & arg_2.c.xw), vec2<i32>(~arg_2.c.x, i32(-1i) * -select(arg_2.c.x, arg_2.c.x, true)));
    return var_1.yy;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f)))), u_input.a, countOneBits(func_3(global0[_wgslsmith_index_u32(68097u, 31u)], Struct_1(global4.a, 4294967295u, vec4<i32>(u_input.b.x, -2147483647i, -2147483647i, 2147483647i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1041f * global2.a), global4.a), global3[_wgslsmith_index_u32(global4.b, 12u)]));
    let var_1 = -(~(-(_wgslsmith_sub_vec2_i32(u_input.b.yz, global2.c.yy) | global4.c.yz)));
    let var_2 = -402f;
    global1 = array<Struct_1, 8>();
    var var_3 = Struct_1(global2.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(29502u), 16285u | _wgslsmith_dot_vec4_u32(vec4<u32>(25102u, 4294967295u, 2172u, u_input.a), vec4<u32>(56173u, u_input.a, global2.b, global4.b))), select(u_input.a, ~(~global2.b), false)), ~vec4<i32>(i32(-1i) * -52151i, -13842i, ~var_1.x, -(~global4.c.x)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, global2.a), vec2<f32>(-150f, global2.a))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 * var_3.a), _wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(20317u, 8u)], var_2, global0[_wgslsmith_index_u32(var_3.b, 31u)])).x)))), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(all(!vec2<bool>(true, arg_0)), any(vec4<bool>(false, arg_0, false, false))), select(select(select(vec2<bool>(arg_0, false), vec2<bool>(true, false), true), !vec2<bool>(arg_0, arg_0), select(false, arg_0, arg_0)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)), true), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, true), arg_0), all(vec2<bool>(arg_0, arg_0)))))));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    var var_0 = false;
    var var_1 = global2.b | global2.b;
    global0 = array<Struct_1, 31>();
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    return countOneBits(global2.b | global4.b);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(~arg_1.b != ~1u, true, any(vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, func_1(Struct_1(589f, 0u, global2.c), vec4<bool>(true, true, true, false), Struct_1(845f, 1u, vec4<i32>(u_input.d, -60299i, -2147483647i, 0i)), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), false, true)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false));
    var var_1 = !(abs(4294967295u) <= (global4.b ^ _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(arg_2.yxx, arg_2.xyy))));
    global4 = Struct_1(-241f, ~arg_2.x, vec4<i32>(-1i, _wgslsmith_div_i32(~global4.c.x >> (global4.b % 32u), arg_1.c.x), global4.c.x, _wgslsmith_mod_i32(1i, abs(global4.c.x))));
    global1 = array<Struct_1, 8>();
    let var_2 = vec4<u32>(_wgslsmith_sub_u32((arg_0.b ^ firstTrailingBit(4294967295u)) << (~(~0u) % 32u), 30297u), abs(3625u), ~arg_2.x, 12382u);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, -2123f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(635f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1192f, arg_0.a, 1587f, 426f), vec4<f32>(global2.a, 1000f, global2.a, -709f)), vec4<f32>(global4.a, arg_1.a, global2.a, global2.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, global2.a, global2.a, 925f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(377f, global2.a, 613f, 329f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(func_1(Struct_1(-349f, 1u, global4.c), vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(global4.b, 12u)], false), true, 41958u == global2.b)));
    let x = u_input.a;
    s_output = func_6(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(func_5(global2.b, -37350i, _wgslsmith_f_op_vec2_f32(func_2(true)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 17297u, 32807u), vec3<u32>(1u, global4.b, global2.b))), ~(~4294967295u)), _wgslsmith_mult_u32(abs(min(8949u, 0u)), ~global4.b)), 31u)], Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -671f)) + _wgslsmith_f_op_f32(f32(-1f) * -292f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global4.a)), global4.a)), global2.b, -_wgslsmith_div_vec4_i32(vec4<i32>(1i, -9614i, 30693i, global4.c.x), vec4<i32>(u_input.b.x, global4.c.x, global2.c.x, 18966i) ^ vec4<i32>(global2.c.x, u_input.b.x, -1i, u_input.b.x))), max(~(~vec4<u32>(u_input.a, 31298u, u_input.a, 4294967295u) | (vec4<u32>(global4.b, global2.b, 62456u, global4.b) << (vec4<u32>(90191u, global2.b, u_input.a, 38413u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.a, 1962u, global2.b, global4.b), vec4<u32>(global2.b, 20947u, u_input.a, 80497u)), vec4<u32>(~global4.b, u_input.a, ~1u, global2.b))));
}

