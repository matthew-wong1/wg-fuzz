struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 19627i);

var<private> global1: u32;

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 65143u, 12191u, 61198u, 40546u, 46697u, 99449u, 0u, 67335u, 1u, 72133u, 1u, 0u, 2127u, 6490u, 25227u, 5453u, 0u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global0 = vec3<i32>(-9089i, global0.x, ~arg_2.b.x);
    global1 = 4294967295u;
    var var_0 = !vec3<bool>(arg_2.d, _wgslsmith_f_op_f32(-1376f + arg_2.c.x) > arg_2.c.x, (~52247u < _wgslsmith_add_u32(4294967295u, arg_1.x)) & select(arg_2.d, all(vec4<bool>(arg_2.d, arg_2.d, arg_2.d, true)), arg_2.c.x == -846f));
    var var_1 = arg_2.c.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-553f - arg_2.c.x), _wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x));
    let var_2 = !any(select(vec3<bool>(false, var_0.x, true), select(select(vec3<bool>(arg_2.d, true, false), vec3<bool>(var_0.x, arg_2.d, false), arg_2.d), !vec3<bool>(false, var_0.x, true), !vec3<bool>(false, false, arg_2.d)), true));
    return arg_2.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(arg_0.x - 332f)) + _wgslsmith_f_op_f32(func_3(u_input.a & vec2<i32>(2147483647i, -2147483647i), vec3<u32>(54903u, u_input.b, u_input.d.x), Struct_1(global0.x, vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, 2147483647i), vec2<f32>(1557f, arg_0.x), true, -2147483647i)))), firstTrailingBit(global0.x), 475f), -40077i, _wgslsmith_sub_vec2_u32(u_input.d, u_input.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var var_2 = Struct_3(Struct_1(4266i, -(~(-vec4<i32>(arg_2.x, u_input.a.x, 1i, arg_2.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c) * var_1.x), _wgslsmith_f_op_f32(floor(var_1.x))), true, -10959i), vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, 49121u), 27641u), Struct_1(_wgslsmith_mod_i32(26989i, -38213i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-29185i, max(42534i, 4707i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_1), arg_2.zx), reverseBits(arg_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 7792i, -75028i, -17668i), vec4<i32>(global0.x, global0.x, var_0.b, -1i)) | vec4<i32>(1i, 1i, -1i, arg_1), firstLeadingBit(countOneBits(vec4<i32>(var_0.a.b, arg_1, 2147483647i, 0i)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + -1649f), -1997f) * _wgslsmith_f_op_vec2_f32(arg_0.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.a.a) * vec2<f32>(arg_0.x, var_0.a.c)))), true, _wgslsmith_dot_vec4_i32(vec4<i32>(23861i, 0i, arg_1 << (0u % 32u), global0.x), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.b, var_0.b, arg_1, global0.x), vec4<i32>(u_input.a.x, arg_1, arg_2.x, -1i) << (vec4<u32>(u_input.b, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], var_0.c.x) % vec4<u32>(32u))))), arg_2);
    global1 = ~27780u;
    let var_3 = true;
    return ~_wgslsmith_add_u32(abs(var_0.c.x), 1u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_mult_u32(u_input.d.x, _wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec3_f32(round(arg_3.yxz)), _wgslsmith_add_i32(arg_1.a, _wgslsmith_sub_i32(global0.x, global0.x)), max(arg_0.b.wyw, -arg_0.b.zzw)), ~(~(~global2[_wgslsmith_index_u32(u_input.d.x, 18u)]))));
    let var_1 = vec4<u32>(~4294967295u, abs(abs(~abs(u_input.d.x))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], 11082u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(0u, u_input.c, global2[_wgslsmith_index_u32(u_input.d.x, 18u)])), vec3<u32>(abs(0u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 18u)], 18u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]))), global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(~u_input.c, 18u)] << ((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], u_input.d.x), 18u)], 18u)] & 4249u) % 32u)), 18u)]);
    var_0 = ~(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], var_1.x));
    var var_2 = Struct_2(arg_0.b);
    let var_3 = _wgslsmith_div_f32(1734f, _wgslsmith_f_op_f32(-arg_1.c.x));
    return Struct_5(Struct_4(644f, _wgslsmith_dot_vec2_i32(~(vec2<i32>(-594i, u_input.a.x) << (var_1.wy % vec2<u32>(32u))), ~abs(vec2<i32>(var_2.a.x, var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(floor(arg_3.x))))), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, 1i), vec3<i32>(arg_0.a, arg_1.b.x, -49692i)) >> (_wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(u_input.c, u_input.b)) % 32u)), var_1.yw);
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> Struct_2 {
    global0 = abs(-(~countOneBits(firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, global0.x)))));
    var var_0 = arg_0.c.x;
    var_0 = u_input.c;
    let var_1 = select(select(select(vec4<bool>(any(vec3<bool>(false, false, true)), false, true, all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, any(vec4<bool>(false, false, false, false)), true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), vec4<bool>(false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(!select(true, false, true))), false);
    var var_2 = 22033u;
    return Struct_2(_wgslsmith_div_vec4_i32(firstLeadingBit((vec4<i32>(global0.x, arg_1, arg_1, 0i) >> (vec4<u32>(u_input.d.x, global2[_wgslsmith_index_u32(u_input.c, 18u)], 0u, global2[_wgslsmith_index_u32(arg_0.c.x, 18u)]) % vec4<u32>(32u))) << (select(vec4<u32>(6784u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(19381u, 0u, 5594u, global2[_wgslsmith_index_u32(arg_0.c.x, 18u)]), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) % vec4<u32>(32u))), -min(~vec4<i32>(-41333i, arg_0.b, 33570i, global0.x), vec4<i32>(u_input.a.x, arg_0.a.b, 2147483647i, u_input.a.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    let var_0 = Struct_3(Struct_1(-48316i, vec4<i32>(-arg_0.a.x, ~(-1i), 60295i, global0.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1169f, -761f))), func_1(Struct_1(global0.x, arg_0.a, vec2<f32>(1358f, -366f), true, global0.x), Struct_1(0i, vec4<i32>(arg_0.a.x, arg_0.a.x, -2147483647i, 2147483647i), vec2<f32>(-1023f, -745f), true, 4480i), max(global0.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, -213f, -326f, -840f))).b != -17858i, -(~_wgslsmith_mod_i32(2147483647i, -13326i))), _wgslsmith_clamp_vec2_u32(~u_input.d, ~vec2<u32>(~24239u, 0u), max(select(~u_input.d, u_input.d >> (vec2<u32>(38729u, u_input.d.x) % vec2<u32>(32u)), vec2<bool>(true, true)), u_input.d)), Struct_1(~arg_0.a.x, min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, 1i, 2147483647i, global0.x), vec4<i32>(global0.x, -12395i, 1i, u_input.a.x)), arg_0.a) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 70998u, 1u, global2[_wgslsmith_index_u32(0u, 18u)]), vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 18u)], 52503u, 48387u, 11699u)) ^ vec4<u32>(1u, 1u, u_input.b, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(305f, 459f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(535f, -2003f)))), !any(vec3<bool>(true, true, true)), -1311i), vec3<i32>(arg_0.a.x, (u_input.a.x >> (0u % 32u)) | global0.x, reverseBits(arg_0.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1882f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))))));
    let var_2 = global2[_wgslsmith_index_u32(1u, 18u)];
    var var_3 = func_4(Struct_5(func_1(Struct_1(~25618i, var_0.c.b, vec2<f32>(-1000f, var_1), true & var_0.c.d, -2147483647i), Struct_1(1i, reverseBits(vec4<i32>(-1i, 14836i, 3760i, u_input.a.x)), _wgslsmith_f_op_vec2_f32(max(var_0.c.c, vec2<f32>(var_1, var_1))), false, global0.x), global0.x, vec4<f32>(547f, var_0.a.c.x, var_0.c.c.x, -1184f)).a, var_0.c.a, var_0.b), -1i << (global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~58937u, func_1(var_0.c, Struct_1(arg_0.a.x, vec4<i32>(u_input.a.x, u_input.a.x, global0.x, 0i), vec2<f32>(536f, var_0.c.c.x), var_0.c.d, var_0.a.e), 8134i, vec4<f32>(-1752f, var_1, -307f, -370f)).c.x), 18u)] % 32u)).a.x;
    var var_4 = var_0;
    return Struct_5(func_1(var_4.a, var_0.c, 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.c.x, var_0.c.c.x, -709f, var_1))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-283f, -433f, 985f, -673f) + vec4<f32>(var_0.a.c.x, var_1, -304f, var_0.a.c.x))))).a, -min(39648i, 1228i & max(var_0.c.a, 13401i)), _wgslsmith_sub_vec2_u32(func_1(var_4.c, var_0.a, -arg_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -680f, var_4.c.c.x, 1433f), vec4<f32>(2561f, -312f, -167f, var_4.c.c.x)))).c, u_input.d));
}

fn func_6(arg_0: Struct_5, arg_1: u32) -> Struct_4 {
    global1 = _wgslsmith_clamp_u32((global2[_wgslsmith_index_u32(54900u, 18u)] & 4294967295u) << (1u % 32u), 4294967295u, abs(min(~(~arg_0.c.x), arg_1 << (~global2[_wgslsmith_index_u32(0u, 18u)] % 32u))));
    global0 = select(vec3<i32>(global0.x, -2147483647i, (-44199i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(15163u, u_input.c), vec2<u32>(arg_1, global2[_wgslsmith_index_u32(arg_1, 18u)])) % 32u)) & firstTrailingBit(-25482i)), vec3<i32>(global0.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_4(Struct_5(arg_0.a, firstTrailingBit(global0.x), arg_0.c), -select(arg_0.b, -10724i, true)).a.x), true);
    let var_0 = -434f;
    var var_1 = Struct_1(72646i, vec4<i32>(~(-func_1(Struct_1(-1i, vec4<i32>(-7337i, -23745i, -17819i, u_input.a.x), vec2<f32>(588f, 1080f), false, 26793i), Struct_1(59863i, vec4<i32>(-1i, u_input.a.x, u_input.a.x, global0.x), vec2<f32>(var_0, 363f), true, -2147483647i), global0.x, vec4<f32>(-144f, var_0, 311f, arg_0.a.c)).a.b), _wgslsmith_sub_i32(-27566i, ~17062i) & -(arg_0.a.b | -24879i), countOneBits(u_input.a.x), -8468i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, var_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(938f, -434f) - vec2<f32>(var_0, arg_0.a.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_0.a.c) - vec2<f32>(var_0, 2918f))))))), true, 2147483647i);
    var var_2 = arg_0.a;
    return func_1(Struct_1(~1i, ~(-(~var_1.b)), vec2<f32>(_wgslsmith_f_op_f32(-468f - _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1665f - -319f), _wgslsmith_div_f32(526f, arg_0.a.c))), var_1.d, var_2.b), Struct_1(u_input.a.x, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_1.b, var_1.b), var_1.b), vec2<f32>(388f, arg_0.a.c), var_1.d, ~(~_wgslsmith_clamp_i32(-1i, 22570i, var_2.b))), arg_0.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(829f, 1255f, arg_0.a.c, 754f), vec4<f32>(324f, -151f, 191f, 1409f), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -359f, 1434f, arg_0.a.a), vec4<f32>(arg_0.a.c, -2156f, var_2.a, -1950f))))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<i32>(38661i, global0.x, -2147483647i);
    var var_0 = Struct_5(func_6(func_5(func_4(func_1(Struct_1(global0.x, vec4<i32>(1952i, -2147483647i, -67357i, 0i), vec2<f32>(1000f, -564f), false, global0.x), Struct_1(4773i, vec4<i32>(1i, global0.x, global0.x, global0.x), vec2<f32>(-357f, 841f), true, 2147483647i), global0.x, vec4<f32>(176f, -337f, 1581f, 470f)), global0.x)), 21049u), global0.x, func_5(func_4(func_5(func_4(Struct_5(Struct_4(1281f, -1i, 1019f), -458i, u_input.d), 37755i)), u_input.a.x)).c);
    var_0 = func_1(Struct_1(~select(global0.x, reverseBits(71003i), var_0.a.c < var_0.a.a), -(_wgslsmith_div_vec4_i32(vec4<i32>(12762i, var_0.a.b, -162i, 1i), vec4<i32>(-31223i, 26157i, -17204i, global0.x)) | vec4<i32>(4941i, u_input.a.x, -1203i, -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1897f, var_0.a.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, var_0.a.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1328f, 877f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.a, var_0.a.a), vec2<f32>(-1044f, -1540f), true)))), false, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -23668i, 8132i), vec3<i32>(var_0.b, -2147483647i, global0.x) << (vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(var_0.c.x, 18u)], 0u) % vec3<u32>(32u)), any(vec3<bool>(true, false, false))), select(~vec3<i32>(global0.x, u_input.a.x, 2147483647i), vec3<i32>(6861i, -42088i, 11183i) >> (vec3<u32>(4294967295u, var_0.c.x, var_0.c.x) % vec3<u32>(32u)), any(vec2<bool>(false, true))))), Struct_1(_wgslsmith_add_i32(-(u_input.a.x & global0.x), 1i), vec4<i32>(35043i, global0.x << (u_input.d.x % 32u), -2147483647i, -2147483647i) >> (~vec4<u32>(45520u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 18u)], 18u)], 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, var_0.a.a) - vec2<f32>(var_0.a.a, -820f))))), var_0.a.a != 1271f, func_1(Struct_1(u_input.a.x, ~vec4<i32>(-1i, -1i, u_input.a.x, 13681i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, -432f)), any(vec4<bool>(false, true, true, false)), 0i), Struct_1(global0.x & 0i, vec4<i32>(global0.x, global0.x, -2147483647i, var_0.b), vec2<f32>(var_0.a.c, var_0.a.c), false, u_input.a.x), _wgslsmith_sub_i32(var_0.a.b, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.c, -712f, -282f, var_0.a.a), vec4<f32>(var_0.a.c, 712f, 255f, var_0.a.c)))).a.b), u_input.a.x, vec4<f32>(1000f, _wgslsmith_div_f32(var_0.a.a, 1067f), var_0.a.c, 373f));
    var var_1 = func_1(Struct_1(-(~_wgslsmith_add_i32(-47943i, var_0.a.b)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, var_0.b, var_0.b), -vec4<i32>(-32637i, -36726i, -1612i, 2147483647i))), vec2<f32>(var_0.a.c, var_0.a.c), select(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true, all(vec3<bool>(false, false, true))), global0.x), Struct_1(~var_0.a.b, select(reverseBits(vec4<i32>(-4035i, global0.x, global0.x, var_0.b)), abs(~vec4<i32>(u_input.a.x, var_0.a.b, 6878i, global0.x)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2192f, -971f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-930f, 139f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.c, var_0.a.a), vec2<f32>(var_0.a.a, 240f)))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), 52722i), -43857i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), -460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1653f)) - var_0.a.a), 781f))));
    let x = u_input.a;
    s_output = StorageBuffer(-16179i, vec2<f32>(var_0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-222f * -1192f), _wgslsmith_f_op_f32(select(var_1.a.a, -522f, true))))));
}

