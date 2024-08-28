struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 56439u;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(40058u, 72138u), vec2<u32>(0u, 0u), vec2<u32>(27334u, 1u), vec2<u32>(0u, 0u), vec2<u32>(27712u, 38059u), vec2<u32>(1u, 1u), vec2<u32>(39203u, 15726u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(51370u, 0u), vec2<u32>(39946u, 4294967295u));

var<private> global4: Struct_2 = Struct_2(false, Struct_1(vec3<f32>(-400f, 1326f, 611f), 24402u, 1i, -2672f, vec2<u32>(2008u, 40576u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = arg_1 ^ _wgslsmith_mult_u32((1056u & _wgslsmith_add_u32(1u, arg_2.b)) << ((0u << (arg_2.b % 32u)) % 32u), ~1u);
    var var_0 = arg_2.a.xy;
    global3 = array<vec2<u32>, 11>();
    global4 = Struct_2(global4.a, Struct_1(arg_2.a, 0u, ~(i32(-1i) * -1i), _wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_mult_vec2_u32(max(~arg_2.e, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.e.x, global4.b.e.x), global3[_wgslsmith_index_u32(arg_2.b, 11u)], vec2<u32>(arg_1, arg_2.b))), vec2<u32>(1u, _wgslsmith_mod_u32(arg_1, arg_1)))));
    let var_1 = -25199i;
    return -586f;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    global2 = 10580u;
    global2 = 1u;
    let var_0 = global4.b.e.x;
    let var_1 = global4.b.b;
    let var_2 = arg_2;
    return _wgslsmith_clamp_vec2_i32(select(u_input.a, u_input.a, vec2<bool>(true, arg_2.a)), reverseBits(u_input.a), countOneBits(countOneBits(vec2<i32>(-50609i, -24125i) << (vec2<u32>(arg_2.b.e.x, arg_2.b.e.x) % vec2<u32>(32u)))) ^ u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1020f, arg_0.b.a.x), select(arg_0.a, arg_2.a, true || arg_0.a)));
    global0 = u_input.a.x;
    global2 = arg_2.b.e.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.b.a * arg_2.b.a)), (countOneBits(_wgslsmith_dot_vec2_u32(arg_2.b.e, arg_0.b.e)) ^ ~(~4294967295u)) & ~firstLeadingBit(1u), reverseBits(_wgslsmith_div_i32((1i & arg_1.x) & -2147483647i, 18276i)), _wgslsmith_f_op_f32(3566f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.d, -450f))))), global3[_wgslsmith_index_u32(~firstTrailingBit(1u), 11u)] | ~(~_wgslsmith_add_vec2_u32(global4.b.e, global3[_wgslsmith_index_u32(global4.b.b, 11u)])));
    global2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.b.e.x, _wgslsmith_mod_u32(~51902u, _wgslsmith_dot_vec3_u32(vec3<u32>(36323u, arg_2.b.e.x, 108836u), vec3<u32>(global4.b.e.x, 1u, 94415u))) & 1u), abs(0u));
    return reverseBits(global4.b.e);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.b.a.x))), _wgslsmith_f_op_f32(1863f - _wgslsmith_f_op_f32(func_2(-28735i, 4294967295u, global4.b, global4.a))), global4.b.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b.a) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.d, global4.b.a.x, -155f)))))), ~(~35481u), global4.b.c & global4.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(963f, _wgslsmith_f_op_f32(-arg_0.a.x)))) + 373f), func_4(Struct_2(!(arg_0.d >= 1102f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-891f, global4.b.a.x, -318f)), _wgslsmith_mod_u32(global4.b.b, arg_0.e.x), arg_0.c | global4.b.c, global4.b.a.x, _wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(14953u, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)]))), ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.b.c, arg_0.c, 0i), vec3<i32>(2147483647i, arg_0.c, u_input.a.x)), ~vec3<i32>(global4.b.c, 0i, 2147483647i)), Struct_2(arg_0.c > ~1i, arg_0), func_3(firstLeadingBit(-34027i >> (arg_0.e.x % 32u)), Struct_1(global4.b.a, 21965u, global4.b.c & u_input.a.x, _wgslsmith_f_op_f32(-global4.b.d), reverseBits(vec2<u32>(1u, 0u))), Struct_2(false, global4.b))));
    global2 = ~var_0.e.x;
    var_0 = global4.b;
    global1 = var_0.e.x;
    global1 = arg_0.b;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global3 = array<vec2<u32>, 11>();
    let var_0 = abs((_wgslsmith_dot_vec4_i32(select(vec4<i32>(global4.b.c, 31299i, -2147483647i, global4.b.c), vec4<i32>(arg_1.b.c, -54541i, 0i, global4.b.c), arg_1.a), vec4<i32>(arg_1.b.c, -1i, -24603i, -7339i)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, arg_2.b, arg_2.b)) << (arg_2.b % 32u)) % 32u)) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a.x, 1i) ^ vec3<i32>(-51151i, 51344i, arg_1.b.c), vec3<i32>(-1i, global4.b.c, 2147483647i)), vec3<i32>(global4.b.c, _wgslsmith_clamp_i32(-1i, arg_2.c, -14261i), u_input.a.x)));
    var var_1 = arg_2;
    global4 = Struct_2(true, func_1(arg_0));
    let var_2 = firstLeadingBit(~(~global4.b.b));
    return arg_1;
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = min(vec4<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, global4.b.c), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(global4.b.c, arg_2.b.c, -2147483647i, arg_1)), vec4<i32>(~arg_1, firstLeadingBit(global4.b.c), global4.b.c, arg_2.b.c)), arg_2.b.c), _wgslsmith_add_vec4_i32(~vec4<i32>(60713i, 59509i, 0i, 1i), select(vec4<i32>(0i, 1i, 2147483647i, -53024i), vec4<i32>(u_input.a.x, global4.b.c, arg_2.b.c, arg_1), arg_2.a && false)) | (countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.c, arg_1, 1i, 58662i), vec4<i32>(-2147483647i, u_input.a.x, -4864i, arg_2.b.c))) << (firstTrailingBit(vec4<u32>(11640u, arg_0.x, 4294967295u, global4.b.b)) % vec4<u32>(32u))));
    global4 = Struct_2(!any(!(!vec4<bool>(global4.a, global4.a, true, arg_2.a))), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.b.d, 1294f, 588f))), 60574u, select(u_input.a.x, global4.b.c, arg_2.a) & 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f)), countOneBits(_wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(arg_2.b.e.x, 11u)])))));
    var var_1 = Struct_2(false, arg_2.b);
    var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, abs(var_0.x >> (arg_2.b.e.x % 32u)), i32(-1i) * -(arg_1 << (5807u % 32u))), u_input.a.x, 0i, abs(max(34260i, ~(arg_2.b.c ^ arg_1))));
    let var_2 = select(-global4.b.c, _wgslsmith_clamp_i32(26328i, countOneBits(_wgslsmith_div_i32(global4.b.c, 2619i)) ^ (i32(-1i) * -30486i), _wgslsmith_dot_vec2_i32(~u_input.a, var_0.yy)), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global4.b.a.x, global4.b.a.x)))) < _wgslsmith_f_op_f32(-123f - _wgslsmith_f_op_f32(-arg_2.b.a.x))));
    return func_5(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.b.a, vec3<f32>(global4.b.d, -879f, 1303f))), arg_2.b.b, arg_2.b.c, var_1.b.d, firstLeadingBit(vec2<u32>(var_1.b.e.x, 9853u)))), arg_2, arg_2.b).b;
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.e.x, arg_1.b, arg_1.e.x, 65381u), vec4<u32>(global4.b.b, arg_1.b, 4294967295u, global4.b.e.x)), ~vec4<u32>(1834u, 4294967295u, arg_1.b, 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(1u, arg_1.e.x), ~0u, ~4294967295u, _wgslsmith_add_u32(arg_1.b, 0u)) ^ ~vec4<u32>(30413u, 4294967295u, 1u, 21535u), ~min(select(vec4<u32>(0u, global4.b.b, arg_1.e.x, global4.b.b), vec4<u32>(arg_1.b, 4294967295u, 1u, 1u), global4.a), vec4<u32>(2861u, 20826u, 22850u, global4.b.e.x)));
    let var_1 = 0u;
    let var_2 = any(vec4<bool>((_wgslsmith_add_i32(global4.b.c, -2147483647i) != _wgslsmith_dot_vec4_i32(vec4<i32>(-26428i, -1874i, 22641i, arg_1.c), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, global4.b.c))) != any(select(vec3<bool>(global4.a, global4.a, global4.a), vec3<bool>(true, true, false), false)), true, global4.a, true));
    let var_3 = _wgslsmith_f_op_f32(trunc(-1151f));
    global0 = global4.b.c;
    return func_5(global4.b, Struct_2(select(any(select(vec4<bool>(global4.a, false, global4.a, false), vec4<bool>(global4.a, var_2, true, true), vec4<bool>(false, false, true, global4.a))), !(!var_2), _wgslsmith_div_i32(global4.b.c, arg_1.c) == 1i), arg_1), global4.b);
}

fn func_8(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_3.a;
    global0 = reverseBits(_wgslsmith_mult_i32(-(~_wgslsmith_add_i32(-3509i, 16676i)), _wgslsmith_mod_i32(firstLeadingBit(arg_3.c) | _wgslsmith_mod_i32(global4.b.c, arg_1.b.c), -arg_1.b.c)));
    global2 = ~1u;
    var var_1 = vec4<i32>(arg_1.b.c, -2147483647i, arg_1.b.c, 0i);
    var var_2 = select(!vec2<bool>(true, -var_1.x >= 0i), select(!vec2<bool>(all(vec3<bool>(false, arg_1.a, false)), !global4.a), select(!select(vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, false), vec2<bool>(global4.a, false)), vec2<bool>(false, !arg_1.a), !(!global4.a)), !(!arg_1.a)), false);
    return StorageBuffer(arg_1.b.d, min(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, 1u, arg_1.b.b, 22371u), vec4<u32>(27935u, 129167u, 46993u, global4.b.b)), 22518u), ~arg_1.b.b), (arg_3.e.x >> (0u % 32u)) ^ _wgslsmith_add_u32(4294967295u << (arg_1.b.e.x % 32u), arg_3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.d, -802f, arg_3.d, -1000f) * vec4<f32>(400f, -205f, 491f, -1281f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, global4.b.d, -425f, -374f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 11>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.b.a.x, global4.b.d))) * 1051f);
    var var_1 = vec4<bool>(!select(true, !select(global4.a, global4.a, global4.a), 0u <= _wgslsmith_add_u32(global4.b.b, 4294967295u)), global4.a, global4.b.e.x >= 0u, !(498f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.b.a.x * global4.b.a.x)))));
    var var_2 = 4294967295u;
    var var_3 = Struct_1(vec3<f32>(global4.b.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1155f)))), global4.b.a.x), global4.b.b, _wgslsmith_mult_i32(global4.b.c, firstTrailingBit(u_input.a.x)), -1967f, _wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(global4.b.e.x), abs(1u ^ global4.b.e.x)), select(_wgslsmith_mod_vec2_u32(global4.b.e, global4.b.e) | max(vec2<u32>(global4.b.e.x, global4.b.e.x), global4.b.e), global4.b.e, global4.a), global3[_wgslsmith_index_u32(14594u, 11u)]));
    let var_4 = !vec3<bool>(true, any(select(var_1.xyw, vec3<bool>(global4.a, true, true), var_1.xzx)), select(global4.a, any(var_1.xwy) || false, select(var_1.x, true, true)));
    let x = u_input.a;
    s_output = func_8(u_input.a.x, func_7(var_3.a.x, func_6(vec3<u32>(_wgslsmith_div_u32(0u, global4.b.b), var_3.b, ~31435u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -25954i, u_input.a.x), vec3<i32>(global4.b.c, var_3.c, u_input.a.x)), func_5(global4.b, Struct_2(global4.a, global4.b), func_1(global4.b)))), i32(-1i) * -var_3.c, Struct_1(vec3<f32>(-476f, _wgslsmith_div_f32(1000f, var_3.a.x), func_5(Struct_1(vec3<f32>(-1785f, var_3.d, -882f), 1u, -24757i, var_3.a.x, vec2<u32>(var_3.e.x, var_3.e.x)), func_5(global4.b, Struct_2(true, Struct_1(vec3<f32>(-314f, -256f, var_3.a.x), 4294967295u, 83418i, 174f, vec2<u32>(33647u, 1u))), Struct_1(global4.b.a, global4.b.b, 31947i, var_3.d, global3[_wgslsmith_index_u32(29467u, 11u)])), func_7(var_3.a.x, Struct_1(var_3.a, var_3.b, -14945i, 248f, vec2<u32>(9799u, 30189u))).b).b.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.b, 4294967295u), ~vec3<u32>(0u, var_3.e.x, var_3.e.x)), ~(-max(-12202i, var_3.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(func_6(vec3<u32>(global4.b.e.x, 37579u, 1u), 2147483647i, Struct_2(global4.a, global4.b)).a.x, _wgslsmith_f_op_f32(1148f + 370f), true)))), func_5(global4.b, Struct_2(true, Struct_1(var_3.a, var_3.b, -2147483647i, var_3.d, vec2<u32>(24342u, 31584u))), func_1(Struct_1(vec3<f32>(-512f, 1085f, 357f), var_3.b, 34450i, 595f, global4.b.e))).b.e >> (func_7(_wgslsmith_f_op_f32(step(global4.b.d, -830f)), Struct_1(vec3<f32>(-722f, -960f, 394f), 63418u, -12923i, global4.b.a.x, vec2<u32>(1u, 72394u))).b.e % vec2<u32>(32u))));
}

