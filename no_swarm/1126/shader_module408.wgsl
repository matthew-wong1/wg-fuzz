struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(28652u, 0u, 42003u), -620f, vec4<u32>(3601u, 57583u, 41021u, 12285u), vec3<u32>(92952u, 1u, 51227u));

var<private> global1: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(4294967295u, 13319u, 48953u, 33220u), vec4<u32>(1u, 3718u, 1u, 38586u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(4294967295u, 31899u, 4294967295u, 46574u), vec4<u32>(0u, 4294967295u, 77144u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 11798u, 50579u), vec4<u32>(73060u, 1931u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 0u, 53124u), vec4<u32>(4294967295u, 38450u, 74245u, 4388u), vec4<u32>(1u, 39506u, 61012u, 32863u), vec4<u32>(0u, 37580u, 3339u, 1u), vec4<u32>(0u, 65075u, 4294967295u, 0u), vec4<u32>(47380u, 1u, 1u, 4294967295u), vec4<u32>(64216u, 1u, 4294967295u, 39041u));

var<private> global2: array<vec3<u32>, 12>;

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 0u, 8260u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = Struct_1(max(vec3<u32>(1u, reverseBits(max(47551u, global3.x)), _wgslsmith_mult_u32(max(arg_0.x, u_input.d.x), _wgslsmith_clamp_u32(60477u, 0u, u_input.a))), vec3<u32>(~(~4294967295u), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(7441u, 12u)], vec3<u32>(1u, arg_0.x, u_input.d.x)), 5054u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(-arg_2.b)), global0.b, select(arg_1, true, arg_1)))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.d.x, arg_2.a.x)), ~_wgslsmith_div_u32(global3.x, 4294967295u)), 14u)], arg_2.a);
    let var_1 = Struct_1(global3.yzy, 1347f, _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global0.c.x, global3.x, 0u, ~49709u)), arg_2.c), vec3<u32>(~(~(~27833u)), countOneBits(u_input.d.x & ~var_0.a.x), arg_0.x));
    let var_2 = min(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x & 28724u, abs(var_0.d.x), 1u, 43729u), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(29354u, 64226u, 63138u, 20191u), vec4<u32>(0u, 3238u, global0.d.x, global0.d.x), vec4<u32>(u_input.d.x, 3265u, arg_2.d.x, var_0.d.x)))), reverseBits(_wgslsmith_mod_vec4_u32(select(var_0.c, arg_2.c, arg_1), vec4<u32>(global0.d.x, var_0.d.x, 27193u, u_input.a) >> (vec4<u32>(var_0.a.x, arg_2.c.x, global0.a.x, 12772u) % vec4<u32>(32u))))), global1[_wgslsmith_index_u32(6774u, 14u)]);
    var var_3 = Struct_1(arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f * -1352f)), var_0.b) - _wgslsmith_f_op_f32(-arg_2.b)), global1[_wgslsmith_index_u32(81941u, 14u)] >> (var_1.c % vec4<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 44421u), vec2<u32>(var_1.c.x, var_0.a.x)), ~var_1.c.x), ~vec3<u32>(global3.x, arg_0.x, var_0.c.x) >> (select(global3.wyx, vec3<u32>(1u, 49245u, var_0.a.x), vec3<bool>(true, arg_1, arg_1)) % vec3<u32>(32u))) & var_1.d);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1872f, 3226f, 1046f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(959f, _wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(-var_1.b)))))));
    return _wgslsmith_mult_u32(1u & arg_2.a.x, _wgslsmith_add_u32(~(~abs(var_2.x)), ~(reverseBits(1u) | abs(global0.d.x))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = select(!vec3<bool>(!(arg_0.x < 1i), true, !select(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), false);
    global1 = array<vec4<u32>, 14>();
    let var_1 = false | var_0.x;
    let var_2 = true & (func_3(u_input.d, var_0.x, Struct_1(vec3<u32>(global0.a.x, u_input.d.x, global0.d.x), _wgslsmith_div_f32(-1550f, global0.b), abs(vec4<u32>(0u, 16754u, 31614u, global3.x)), ~vec3<u32>(global0.a.x, global3.x, 4294967295u)), abs(_wgslsmith_mult_i32(-32548i, u_input.c))) >= reverseBits(~(17766u | global3.x)));
    global1 = array<vec4<u32>, 14>();
    return Struct_1(select(global3.yyw, global0.c.zxz, select(select(select(vec3<bool>(false, false, var_1), vec3<bool>(var_2, false, false), vec3<bool>(var_1, var_1, true)), !vec3<bool>(var_2, var_0.x, true), true), !(!vec3<bool>(var_1, true, var_2)), !var_1)), -1413f, ~abs(~firstLeadingBit(global1[_wgslsmith_index_u32(30356u, 14u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~u_input.a, _wgslsmith_mult_u32(u_input.a, 1u)), global0.d >> (vec3<u32>(30822u, ~0u, ~global3.x) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(true, -32909i < min(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.b), vec3<i32>(-59233i, 68952i, 35058i)), ~2147483647i, false), -25382i), select(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true));
    var var_1 = select(select(!vec4<bool>(true, all(var_0.yx), true, true & var_0.x), vec4<bool>(u_input.c == (48520i | u_input.c), (i32(-1i) * -2147483647i) != u_input.c, 1136f <= _wgslsmith_f_op_f32(sign(657f)), var_0.x), !var_0.x), vec4<bool>(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b + -722f))) >= -2274f, true, all(vec4<bool>(true, any(var_0), var_0.x, true))), vec4<bool>(all(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), var_0.x, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), false)) && var_0.x, !any(var_0.yx)));
    global0 = func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.c), vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<i32>(4103i, 1i, u_input.b)), vec3<i32>(u_input.b, 0i, -24284i)), -2147483647i, 0i), vec3<i32>(u_input.b, max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 6931i, 27386i, 1i), vec4<i32>(u_input.b, 12338i, u_input.c, u_input.b)), u_input.c), _wgslsmith_sub_i32(u_input.c, -48973i))));
    global3 = _wgslsmith_mult_vec4_u32(select(max(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, global0.d.x, 1u, u_input.d.x), global1[_wgslsmith_index_u32(72995u, 14u)]), ~vec4<u32>(global0.a.x, global0.d.x, 10818u, global3.x)), func_2(~vec3<i32>(u_input.c, -1i, u_input.c)).c), vec4<u32>(func_2(~vec3<i32>(u_input.b, -61525i, u_input.c)).c.x, abs(func_2(vec3<i32>(u_input.c, 49787i, u_input.b)).a.x), abs(_wgslsmith_sub_u32(4294967295u, 4294967295u)), global0.c.x), (true || (var_1.x == false)) & true), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, global3.x), u_input.d.x, global0.d.x, abs(global0.d.x)) ^ (abs(global0.c) & (global1[_wgslsmith_index_u32(57689u, 14u)] | vec4<u32>(0u, global3.x, 46591u, global0.c.x))), global0.c));
    let var_2 = countOneBits(-(~(~(~vec4<i32>(u_input.b, u_input.b, u_input.b, 13300i)))));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(func_2((~vec3<i32>(2147483647i, -2147483647i, 13719i) & _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -630i, 2147483647i), vec3<i32>(u_input.b, -38608i, u_input.b))) << (vec3<u32>(_wgslsmith_mult_u32(0u, 0u), ~23221u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.c.x, 4294967295u), global0.d)) % vec3<u32>(32u))));
    global3 = ~(~(vec4<u32>(24758u, u_input.a, 3967u, 2300u) & global1[_wgslsmith_index_u32(arg_1.x, 14u)])) << (_wgslsmith_sub_vec4_u32(~arg_2.c >> (firstLeadingBit(max(var_0.c, vec4<u32>(arg_1.x, arg_2.c.x, 30753u, global0.c.x))) % vec4<u32>(32u)), arg_1) % vec4<u32>(32u));
    global2 = array<vec3<u32>, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(trunc(814f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f - global0.b) + -1159f))));
    let var_2 = ~max(~52774u, 4294967295u);
    return func_2(countOneBits(min(vec3<i32>(~(-1i), 15853i | u_input.b, u_input.c), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, -2147483647i, 0i), vec3<i32>(u_input.b, u_input.c, 1i)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.b, u_input.c, u_input.c, 2147483647i);
    let var_1 = _wgslsmith_clamp_i32(25681i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_0.x, u_input.b, u_input.b, var_0.x)), vec4<i32>(0i, var_0.x, var_0.x, u_input.b) & var_0), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(var_0, var_0), countOneBits(var_0), vec4<i32>(-1i, 1i, 0i >> (arg_0.c.x % 32u), u_input.c))), u_input.b);
    global1 = array<vec4<u32>, 14>();
    global2 = array<vec3<u32>, 12>();
    var var_2 = vec4<f32>(global0.b, 426f, _wgslsmith_f_op_f32(global0.b + -714f), arg_0.b);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(vec4<u32>(global3.x, _wgslsmith_dot_vec4_u32(global0.c, global0.c), ~global3.x, ~global3.x), ~vec4<u32>(u_input.d.x, 46431u, global0.d.x, u_input.a)));
    let var_1 = func_5(func_1(any(vec3<bool>(true, any(vec2<bool>(true, false)), true)), _wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, u_input.a, global3.x, 41525u) >> (vec4<u32>(var_0.x, 0u, u_input.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(var_0, select(vec4<u32>(var_0.x, global0.d.x, var_0.x, 0u), var_0, false))), Struct_1(vec3<u32>(global3.x, var_0.x, global0.d.x) & _wgslsmith_mod_vec3_u32(global3.wwx, vec3<u32>(1u, u_input.d.x, 0u)), _wgslsmith_f_op_f32(min(2131f, _wgslsmith_f_op_f32(exp2(global0.b)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_0.x) >> (~global0.a.x % 32u), 14u)], global3.wwy)));
    let var_2 = ~vec4<u32>(~(~11431u) << (~(~0u) % 32u), u_input.a, func_1(true, min(var_0, vec4<u32>(4294967295u, 44432u, var_0.x, u_input.d.x) ^ vec4<u32>(1u, global3.x, 27587u, 48284u)), func_4(var_1)).a.x, _wgslsmith_clamp_u32(u_input.a, 70276u, 1u));
    global3 = var_1.c;
    var var_3 = var_0.xz;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, vec3<u32>(global3.x, var_0.x, var_1.a.x) ^ (global0.c.wzx | ((vec3<u32>(u_input.a, 41999u, 0u) ^ vec3<u32>(49509u, var_3.x, 39748u)) | (global0.c.wzy << (global0.a % vec3<u32>(32u))))));
}

