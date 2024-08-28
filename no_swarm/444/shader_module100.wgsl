struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

var<private> global1: array<u32, 4>;

var<private> global2: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(u_input.e.yx, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~u_input.c, 9u)] + global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 9u)]), select(~max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), u_input.c, false) >> (reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, global1[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(u_input.a, 45016u, global1[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u)))) % 32u), true | all(vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a, 12706u))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.c, 4u)], 4u)], ~global1[_wgslsmith_index_u32(0u, 4u)]), vec3<u32>(0u, 43039u, 4294967295u) >> ((vec3<u32>(u_input.a, 4294967295u, 1u) << (vec3<u32>(25919u, 18673u, 64564u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_1 = 44668u > ~abs(~var_0.c);
    var var_2 = vec4<i32>(~firstTrailingBit(0i) << (countOneBits(4294967295u << (u_input.a % 32u)) % 32u), ~33124i, ~(~reverseBits(17082i)), arg_0.a) | (vec4<i32>((u_input.e.x >> (80399u % 32u)) >> (var_0.e.x % 32u), 2147483647i, ~(-arg_0.a), _wgslsmith_sub_i32(firstTrailingBit(var_0.a.x), _wgslsmith_mod_i32(-1i, 1i))) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.a, 30452i, -9102i), abs(vec4<i32>(-2147483647i, 1i, 1i, 2147483647i))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_div_vec2_i32(u_input.e.zz, var_2.yy), _wgslsmith_f_op_vec2_f32(trunc(var_0.b)), 1814u, any(select(select(vec4<bool>(var_0.d, true, true, true), vec4<bool>(true, var_0.d, var_1, true), vec4<bool>(var_0.d, var_1, var_1, var_0.d)), select(vec4<bool>(var_1, var_1, true, var_0.d), vec4<bool>(var_0.d, var_1, true, var_0.d), var_1), u_input.a < global1[_wgslsmith_index_u32(0u, 4u)])), var_0.e), Struct_1(reverseBits(~(-13633i) ^ arg_0.a)), arg_0, var_0.b.x, Struct_2(-u_input.e.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, var_0.b.x) + var_0.b), _wgslsmith_f_op_vec2_f32(step(var_0.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 4u)], 4u)], 9u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + _wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(var_0.c, 9u)])))), ~reverseBits(u_input.c ^ global1[_wgslsmith_index_u32(0u, 4u)]), true, min(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_0.e.x, 14443u), vec3<u32>(u_input.c, 4294967295u, global1[_wgslsmith_index_u32(64u, 4u)])), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, u_input.a, global1[_wgslsmith_index_u32(u_input.c, 4u)], u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 4u)], 1u, u_input.a, 1u)), 4294967295u, countOneBits(var_0.c)))));
    var var_4 = var_3.c;
    return select(~(reverseBits(vec4<u32>(4294967295u, 4294967295u, 34504u, var_3.e.e.x)) & reverseBits(vec4<u32>(4294967295u, 1u, var_3.a.c, 27578u))) << (((_wgslsmith_mod_vec4_u32(vec4<u32>(56592u, 1u, 26432u, var_3.e.c), vec4<u32>(1u, 73576u, 21179u, u_input.a)) ^ abs(vec4<u32>(var_0.c, var_3.a.c, var_0.e.x, 16083u))) << (min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 39971u, 26505u, var_3.e.c), vec4<u32>(var_3.e.c, global1[_wgslsmith_index_u32(var_0.e.x, 4u)], 1u, 10661u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, var_0.c, var_3.a.e.x, 4294967295u), vec4<u32>(1u, 20037u, var_3.a.c, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(countOneBits(~4294967295u) & u_input.c, 1u, u_input.c, _wgslsmith_add_u32(var_3.a.e.x, _wgslsmith_mult_u32(1u, ~var_0.c))), select(all(select(vec2<bool>(true, true), vec2<bool>(var_3.e.d, true), select(vec2<bool>(var_3.e.d, var_0.d), vec2<bool>(false, true), vec2<bool>(var_3.e.d, false)))), !(!select(var_3.e.d, var_1, var_1)), var_1));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1073f)), _wgslsmith_f_op_f32(-arg_0.c.b.x)));
    global2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, abs(global1[_wgslsmith_index_u32(4294967295u, 4u)]), 25906u | arg_0.c.c, 0u ^ arg_0.e), countOneBits(func_3(arg_0.b))) >> (min(max(arg_0.e, abs(u_input.a)), 17740u) % 32u), 19214u);
    var var_1 = arg_0;
    global0 = array<vec2<f32>, 9>();
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -734f);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    global1 = array<u32, 4>();
    let var_0 = true;
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    global0 = array<vec2<f32>, 9>();
    return Struct_1(arg_0.a.x >> (min(0u, ~74172u) % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(Struct_2(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), arg_0, -vec2<i32>(-32948i, -28380i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(539f, -1038f) - global0[_wgslsmith_index_u32(11632u, 9u)]), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 4u)], 9u)])), 1u, true, vec3<u32>(1u, u_input.c, ~1u)), -726f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f - -1675f) - _wgslsmith_f_op_f32(func_2(Struct_4(arg_0, Struct_1(-2147483647i), Struct_2(vec2<i32>(20023i, -1i), vec2<f32>(557f, -817f), 13046u, arg_1, vec3<u32>(15530u, u_input.a, global1[_wgslsmith_index_u32(4080u, 4u)])), u_input.e.zy, 1u)))) * _wgslsmith_f_op_f32(-740f * _wgslsmith_f_op_f32(f32(-1f) * -1566f))), _wgslsmith_add_vec3_i32(u_input.e, u_input.e));
    global1 = array<u32, 4>();
    let var_1 = Struct_4(vec2<i32>(select(7558i, 1i, u_input.c == 45639u) >> ((u_input.a | ~global1[_wgslsmith_index_u32(u_input.c, 4u)]) % 32u), reverseBits(arg_0.x)), func_4(Struct_2(_wgslsmith_mult_vec2_i32(max(u_input.e.zz, arg_0), -arg_0), vec2<f32>(1486f, -1551f), firstTrailingBit(global1[_wgslsmith_index_u32(~4294967295u, 4u)]), arg_1, _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 4294967295u, 6292u), vec3<u32>(u_input.c, 4294967295u, 19478u)) << (vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u))), all(!(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))), vec3<i32>(min(0i, -25652i), 1i, -(~2384i))), Struct_2(~abs(~vec2<i32>(-41566i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(968f, 1028f)) - global0[_wgslsmith_index_u32(u_input.c | _wgslsmith_mod_u32(7598u, 45116u), 9u)]), 0u, arg_1, min(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 0u, u_input.c), vec3<u32>(1u, u_input.c, global1[_wgslsmith_index_u32(42959u, 4u)])), ~firstLeadingBit(vec3<u32>(21741u, u_input.a, u_input.a)))), arg_0 & vec2<i32>(var_0.a, 1i), _wgslsmith_add_u32(~min(0u >> (u_input.a % 32u), _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 4u)])), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.c, 4u)], 1u, u_input.c), vec4<u32>(1u, 1u, u_input.c, 1u)))));
    var var_2 = !(!(!var_1.c.d));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.x - 257f))))) * var_1.c.b.x);
    return func_4(var_1.c, any(vec2<bool>(_wgslsmith_f_op_f32(round(-1974f)) != -1691f, all(select(vec2<bool>(arg_1, var_1.c.d), vec2<bool>(false, true), vec2<bool>(arg_1, true))))), abs(vec3<i32>(-31830i, 0i, -1i)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = Struct_4(u_input.e.xy, Struct_1(1i), Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(49658i, u_input.d), ~u_input.e.zz), ~u_input.e.zz), vec2<f32>(-200f, _wgslsmith_f_op_f32(min(-673f, _wgslsmith_f_op_f32(-arg_0.x)))), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(43659u, 4u)], 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.a)), ~vec4<u32>(u_input.c, u_input.a, 1u, global1[_wgslsmith_index_u32(u_input.a, 4u)]))), true, _wgslsmith_add_vec3_u32(~(vec3<u32>(76278u, u_input.a, 44147u) ^ vec3<u32>(u_input.a, 1u, 1u)), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(0u, 4u)], 4294967295u))), vec2<i32>(func_4(Struct_2(u_input.e.xz & vec2<i32>(u_input.b, arg_1.a), arg_0.zy, 1u, arg_1.a != arg_1.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 73150u, u_input.c), vec3<u32>(0u, 35157u, 24193u))), select(true, true, true), u_input.e).a, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, -1i, var_0.a), vec4<i32>(15824i, var_0.a, 0i, 0i))) | 25242i), ~min(~(~13950u), 17545u));
    global1 = array<u32, 4>();
    var_0 = func_4(Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_1.a) ^ vec2<i32>(-2147483647i, var_0.a), var_1.c.a | vec2<i32>(arg_1.a, var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-401f, var_1.c.b.x), global0[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_vec2_f32(floor(arg_0.zy)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-469f, var_1.c.b.x), vec2<f32>(345f, 1679f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b.x, arg_0.x))))), _wgslsmith_sub_u32(select(~74616u, ~73032u, var_1.c.d), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.c, 4u)], 4u)], u_input.c, 13949u), vec4<u32>(0u, 8679u, 0u, 10052u)) << (u_input.a % 32u)), !(!var_1.c.d), ~(~vec3<u32>(1u, var_1.e, 20324u))), !var_1.c.d, _wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(arg_1.a, arg_1.a, select(u_input.d, 1i, var_1.c.d)), vec3<i32>(u_input.e.x, u_input.d, i32(-1i) * -1i)));
    global2 = 4294967295u;
    return var_1.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1429f, -187f, -1733f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(219f, 1436f, 1090f)))), func_1(reverseBits(u_input.e.yx), true)), firstTrailingBit(~vec3<u32>(47170u, u_input.a, global1[_wgslsmith_index_u32(48024u, 4u)]))) << ((vec3<u32>(firstLeadingBit(20523u) & min(1u, u_input.a), ~(~global1[_wgslsmith_index_u32(1u, 4u)]), 1u >> (1u % 32u)) & (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(46902u, 4u)]), vec3<u32>(global1[_wgslsmith_index_u32(1u, 4u)], u_input.c, 43432u)), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.c, 0u)) << (~(~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global0 = array<vec2<f32>, 9>();
    let var_1 = u_input.e.zz;
    let var_2 = all(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false))));
    var_0 = ~func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1671f + -699f)), -294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1121f, -276f)) + -1013f)), Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(39921i, u_input.b))));
    global2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(var_0.yy), reverseBits(var_0.xz)), 66548u)), ~(~var_0.zy));
    var var_3 = Struct_1(-33902i >> (_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, u_input.c, u_input.c) & vec3<u32>(66180u, 20755u, 65819u)), vec3<u32>(~u_input.a, var_0.x, max(var_0.x, 3695u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(u_input.a, 50385u), ~_wgslsmith_sub_u32(44377u, var_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)]), vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 4u)], 12554u, global1[_wgslsmith_index_u32(4294967295u, 4u)], var_0.x)), max(vec4<u32>(var_0.x, u_input.c, global1[_wgslsmith_index_u32(20120u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 19100u, var_0.x, 4294967295u))), ~(~u_input.c)), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(var_0.x, u_input.a), _wgslsmith_add_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(u_input.a, var_0.x), global1[_wgslsmith_index_u32(36755u, 4u)] | var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1804f * _wgslsmith_f_op_f32(func_2(Struct_4(var_1, Struct_1(var_1.x), Struct_2(u_input.e.yz, vec2<f32>(503f, -133f), 39648u, true, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 56379u, u_input.a)), var_1, u_input.c))))), _wgslsmith_div_f32(751f, -1102f), -165f), ~_wgslsmith_sub_u32(~(~0u), 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(503f)), -548f, _wgslsmith_f_op_f32(-1474f + 914f)) - vec3<f32>(_wgslsmith_f_op_f32(abs(-258f)), _wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(floor(522f))))));
}

