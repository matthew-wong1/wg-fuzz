struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: u32 = 5558u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = vec3<u32>(0u & ~abs(_wgslsmith_add_u32(10660u, arg_3)), _wgslsmith_sub_u32(6181u, abs(~4294967295u >> (arg_3 % 32u))), arg_3);
    var var_2 = -vec2<i32>(-var_0.a, _wgslsmith_div_i32(global0.a, ~(i32(-1i) * -4158i)));
    global2 = _wgslsmith_div_u32(60179u, 10264u);
    global0 = Struct_1(arg_1.a);
    return _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(5093i, -21846i, 2147483647i), -82660i), ~firstLeadingBit(vec2<i32>(arg_1.a, 1i))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.a, 33011u), countOneBits(0u)) ^ ~(~vec2<u32>(13684u, u_input.b.x)), firstLeadingBit(~_wgslsmith_mult_vec2_u32(~u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(u_input.b.x, u_input.b.x)))));
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, global0.a)), ~(vec2<i32>(global0.a, global0.a) >> ((u_input.b >> (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)))), select(vec2<i32>(countOneBits(-global0.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.a, 30603i, global0.a), vec3<i32>(global0.a, global0.a, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a, global0.a, -41470i), vec3<i32>(global0.a, 1i, -9465i)))), func_3(u_input.b.x << (1u % 32u), Struct_1(_wgslsmith_sub_i32(global0.a, 1i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1028f * -1000f), _wgslsmith_f_op_f32(-1054f + -266f))), _wgslsmith_clamp_u32(~u_input.b.x, u_input.a | u_input.a, 39806u)), !select(!arg_0, vec2<bool>(arg_0.x, arg_0.x), arg_0)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1289f) - _wgslsmith_f_op_f32(min(-1712f, 189f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f - -539f) + _wgslsmith_f_op_f32(step(1041f, 1366f))), any(vec4<bool>(true, false, false, arg_0.x)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f + -396f))))), _wgslsmith_f_op_f32(sign(104f)));
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x * -1000f));
    return Struct_3(Struct_2(_wgslsmith_clamp_vec4_i32(select(abs(vec4<i32>(global0.a, 34114i, 2147483647i, global0.a)), abs(vec4<i32>(20828i, var_1.x, 8294i, 1i)), !vec4<bool>(true, arg_0.x, true, arg_0.x)), select(~vec4<i32>(var_1.x, -2147483647i, var_1.x, 2147483647i), vec4<i32>(var_1.x, 32899i, 9941i, global0.a), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), firstTrailingBit(vec4<i32>(var_1.x, 49275i, -1i, var_1.x) & vec4<i32>(global0.a, var_1.x, -35947i, -60809i))), Struct_1(~_wgslsmith_sub_i32(2147483647i, 2147483647i)), -25166i, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(64413u, 10134u, var_3) & vec3<u32>(u_input.a, 1u, var_3), vec3<u32>(var_3, u_input.a, 10720u)), 31798u, ~firstTrailingBit(4294967295u)), arg_0), ~(~abs(vec3<u32>(u_input.b.x, 0u, u_input.b.x))) & firstLeadingBit(~vec3<u32>(var_3, var_3, 29463u)), Struct_2(-vec4<i32>(firstTrailingBit(2147483647i), ~13889i, var_1.x, -1236i >> (0u % 32u)), Struct_1(-global0.a), -1i, ~countOneBits(vec3<u32>(1811u, u_input.a, u_input.b.x)) << (abs(~vec3<u32>(var_3, var_3, 82824u)) % vec3<u32>(32u)), vec2<bool>(arg_0.x, 891f != _wgslsmith_f_op_f32(ceil(var_2.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec3<i32> {
    global2 = max(arg_0.b.x, abs(select(max(56803u & arg_0.c.d.x, arg_0.a.d.x), abs(~0u), false)));
    return firstTrailingBit(~(~(~(-arg_0.c.a.xyy))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = func_4(func_2(vec2<bool>(arg_1.x > _wgslsmith_f_op_f32(f32(-1f) * -1735f), all(vec4<bool>(false, false, true, true)))), Struct_3(Struct_2((vec4<i32>(-2147483647i, global0.a, -16794i, -48215i) | vec4<i32>(global0.a, -76068i, -6636i, global0.a)) | ~vec4<i32>(2147483647i, global0.a, global0.a, global0.a), func_2(vec2<bool>(true, true)).a.b, global0.a, firstLeadingBit(vec3<u32>(arg_0, 0u, u_input.a)), vec2<bool>(true, true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, arg_0, 74874u)), _wgslsmith_sub_vec3_u32(vec3<u32>(48120u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, u_input.a))), vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_add_u32(arg_0, arg_0)), firstTrailingBit(~vec3<u32>(36506u, 11277u, 0u))), func_2(vec2<bool>(true, true)).a));
    var var_1 = firstLeadingBit(abs(global0.a));
    let var_2 = Struct_3(Struct_2(max(~(~vec4<i32>(global0.a, var_0.x, 1i, global0.a)), vec4<i32>(3879i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a, global0.a, 2147483647i), vec4<i32>(global0.a, var_0.x, global0.a, -12871i)), ~5424i, -36997i)), func_2(vec2<bool>(true, true)).a.b, 23310i, vec3<u32>(~select(1u, arg_0, true), _wgslsmith_mod_u32(1u, 21406u), ~1u), vec2<bool>(true, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(48016u, 0u, u_input.b.x), u_input.a, func_2(vec2<bool>(false, true)).a.d.x), firstTrailingBit(vec3<u32>(51783u, arg_0, 4294967295u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(33633u, 72235u, u_input.b.x), ~vec3<u32>(18789u, arg_0, arg_0))) ^ abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 48674u, 4294967295u), max(vec3<u32>(u_input.b.x, 0u, 56143u), vec3<u32>(9054u, 0u, u_input.a)))), Struct_2(~(-vec4<i32>(2147483647i, var_0.x, 25412i, 0i)), func_2(vec2<bool>(select(false, false, true), false)).c.b, -25006i, ~(~(~vec3<u32>(4294967295u, 1u, 4294967295u))), func_2(vec2<bool>(arg_1.x > -585f, true)).c.e));
    var_1 = _wgslsmith_dot_vec3_i32(var_2.a.a.xyw, vec3<i32>(_wgslsmith_add_i32(func_4(var_2, var_2).x, -36280i), func_4(var_2, func_2(vec2<bool>(var_2.a.e.x, var_2.c.e.x))).x, ~(-var_0.x))) ^ _wgslsmith_mod_i32(abs(~firstLeadingBit(var_2.a.c)), -((i32(-1i) * -44857i) & _wgslsmith_div_i32(-8371i, var_2.c.c)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-708f)) + _wgslsmith_f_op_f32(floor(670f)));
    return func_2(!select(select(var_2.c.e, vec2<bool>(false, var_2.a.e.x), select(var_2.c.e, var_2.a.e, true)), vec2<bool>(true, false), var_2.c.e.x || func_2(var_2.a.e).c.e.x)).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(~(~abs(vec3<u32>(u_input.b.x, 0u, 36690u) & vec3<u32>(27913u, u_input.a, 4294967295u))), reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 1u, 5914u)), vec3<u32>(u_input.a, 22381u, 0u) & vec3<u32>(58196u, 1u, 34018u))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 62690u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u) ^ vec3<u32>(u_input.a, u_input.b.x, u_input.a)), _wgslsmith_clamp_u32(u_input.b.x, firstTrailingBit(13740u), 0u), _wgslsmith_sub_u32(2622u, u_input.a) | u_input.a) % vec3<u32>(32u)));
    global0 = func_1(var_0.x, _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.a)), 5u)]));
    let var_1 = ~var_0.x;
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 233f))), 1351f, 1279f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(480f + _wgslsmith_f_op_f32(max(-223f, 627f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 649f)), 246f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f), -1000f))));
    global1 = array<vec3<f32>, 5>();
    let var_4 = ~22670u;
    let var_5 = 4294967295u;
    global1 = array<vec3<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_3.x)), -913f, ~46511i, vec3<i32>(global0.a, _wgslsmith_add_i32(-76564i, -30951i), 41059i), -33125i);
}

