struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_1(vec2<bool>(false, false), 0u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_1(vec2<bool>(true, false), 1u), Struct_1(vec2<bool>(false, true), 31827u), Struct_1(vec2<bool>(false, false), 45394u), Struct_1(vec2<bool>(false, false), 53662u), Struct_1(vec2<bool>(true, true), 24675u), Struct_1(vec2<bool>(false, false), 1u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_1(vec2<bool>(false, false), 287u), Struct_1(vec2<bool>(false, true), 17562u), Struct_1(vec2<bool>(true, false), 1u), Struct_1(vec2<bool>(false, true), 0u), Struct_1(vec2<bool>(true, true), 4294967295u), Struct_1(vec2<bool>(false, true), 206u));

var<private> global1: vec4<i32> = vec4<i32>(-1585i, -31787i, 3475i, 1i);

var<private> global2: array<i32, 1> = array<i32, 1>(-27164i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec2<f32> {
    global2 = array<i32, 1>();
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(max(u_input.d.x, 1i), countOneBits(i32(-1i) * -1i)), ~(~(-2147483647i | arg_0)), _wgslsmith_mod_i32(~1i, arg_0), u_input.b), Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-127f, 535f), vec2<f32>(437f, -912f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-803f, -1834f), vec2<f32>(-1398f, 969f)))))), 399f, any(vec4<bool>(true, false, true, true)) | false), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 771f), vec2<f32>(1000f, 813f), vec2<bool>(true, true))) * vec2<f32>(-167f, -370f)), 1055f, -28182i == (arg_0 << ((5872u ^ u_input.e.x) % 32u))));
    var var_1 = _wgslsmith_add_i32(-2147483647i, countOneBits(countOneBits(var_0.a.x))) == _wgslsmith_add_i32(abs(0i), global1.x);
    var var_2 = vec4<bool>(all(vec3<bool>(true, true, !var_0.b.c)) && false, var_0.b.c & false, any(vec2<bool>(var_0.b.c, !any(vec3<bool>(true, false, var_0.b.c)))), true);
    let var_3 = Struct_5(u_input.c, Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(var_0.c.a, vec2<f32>(var_0.b.b, 190f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.b, 437f)) + var_0.c.a.x), 1i > _wgslsmith_sub_i32(arg_1.x, arg_1.x)), abs(abs(-u_input.a)), var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b))))), reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(94044u, countOneBits(u_input.e.x)), 27559u)), var_0.c.c, global0[_wgslsmith_index_u32(max(u_input.e.x << (_wgslsmith_mod_u32(~u_input.e.x, u_input.c) % 32u), u_input.e.x << (~(~u_input.c) % 32u)), 17u)]);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1509f), var_0.c.a.x) + var_3.b.a.a), _wgslsmith_f_op_vec2_f32(-var_0.c.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.a, vec2<f32>(var_3.b.a.a.x, 1140f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 280f), var_0.b.a, !var_3.e.a)))), var_0.b.c));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_5 {
    var var_0 = arg_0.a.x;
    var_0 = !(global1.x > _wgslsmith_add_i32(_wgslsmith_add_i32(select(-1i, -19231i, false), -4366i >> (arg_1 % 32u)), 0i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1971f, -131f, _wgslsmith_f_op_f32(f32(-1f) * -532f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(707f, -546f, 103f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1790f, 1374f, -208f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2638f, -1000f, 602f), vec3<f32>(407f, 575f, 842f), vec3<bool>(true, arg_0.a.x, arg_0.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, -941f, -2107f)))), vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), true, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1381f, var_1.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1647f, -517f), vec2<f32>(var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_1.xy, vec2<f32>(-440f, var_1.x)))) + var_1.xz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-284f, 1f)), 1f), false);
    global0 = array<Struct_1, 17>();
    return Struct_5(20620u, Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(39241i, -2147483647i, 1i, 6449i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global1.x, 1i, global1.x)), u_input.d >> (vec4<u32>(arg_0.b, 4294967295u, 4294967295u, u_input.c) % vec4<u32>(32u)))), 390f, var_2.c), vec2<i32>(u_input.b, global1.x), all(!(!vec4<bool>(var_2.c, false, var_2.c, var_2.c))), -1000f), 1u, true, global0[_wgslsmith_index_u32(~16042u, 17u)]);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: Struct_4) -> bool {
    global2 = array<i32, 1>();
    var var_0 = all(!(!arg_0.e.a));
    var var_1 = ~u_input.d.x;
    let var_2 = _wgslsmith_div_f32(1116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-574f))))));
    return arg_2.b.c;
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(global0[_wgslsmith_index_u32(~60117u, 17u)], 0u), vec3<u32>(0u, firstTrailingBit(27140u & u_input.c), u_input.e.x) | vec3<u32>(~(~849u), abs(u_input.e.x), ~u_input.c), Struct_5(1u, func_2(func_2(Struct_1(vec2<bool>(true, false), u_input.c), 1u).e, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.c, u_input.c, u_input.e.x)), ~vec4<u32>(u_input.c, u_input.c, 0u, u_input.e.x))).b, 1u, all(vec3<bool>(all(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, true, false, false)))), Struct_1(vec2<bool>(true, true), 4294967295u)), func_2(Struct_1(vec2<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, true))), firstTrailingBit(1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(u_input.e), firstLeadingBit(u_input.e)), u_input.e.x)).b);
    var var_1 = u_input.d;
    var_0 = !(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    var_0 = false;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(333f, 772f, -784f, -1222f), vec4<f32>(1645f, -2511f, 2125f, 909f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, 690f, 698f, 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1431f, 115f, -1976f, 720f) - vec4<f32>(-165f, -612f, -559f, -281f)) + vec4<f32>(-775f, 359f, -392f, -323f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -679f))))), func_2(func_2(func_2(global0[_wgslsmith_index_u32(u_input.c, 17u)], 1u).e, countOneBits(4294967295u)).e, ~_wgslsmith_sub_u32(68564u, 0u)).b.a.a.x, 1556f));
    return 51852u << (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, ~(~u_input.c)), 0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d;
    let var_0 = true;
    let var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(19662u, func_1(), u_input.e.x), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.c, 35606u, 4294967295u)), vec3<u32>(27881u, u_input.e.x, 1u) >> (vec3<u32>(u_input.e.x, 4294967295u, u_input.c) % vec3<u32>(32u))), vec3<u32>(u_input.e.x ^ 0u, abs(u_input.e.x), u_input.e.x)));
    global0 = array<Struct_1, 17>();
    var var_2 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(~0i, ~1i, 6018i, ~global2[_wgslsmith_index_u32(u_input.e.x, 1u)]), u_input.d), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u) ^ var_1, ~(var_1 >> (var_1 % vec3<u32>(32u)))), 17u)], var_1.x).b.a, func_2(func_2(Struct_1(select(vec2<bool>(true, var_0), vec2<bool>(true, true), vec2<bool>(false, var_0)), u_input.c), ~(~u_input.c)).e, _wgslsmith_sub_u32(~(var_1.x << (var_1.x % 32u)), _wgslsmith_clamp_u32(countOneBits(var_1.x), ~u_input.c, var_1.x))).b.a);
    var var_3 = _wgslsmith_mod_vec3_u32(~var_1, var_1);
    var var_4 = func_2(func_2(Struct_1(vec2<bool>(true, true), _wgslsmith_mult_u32(52054u, var_3.x ^ var_3.x)), abs(~(4294967295u & var_1.x))).e, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_3.x), _wgslsmith_div_vec3_u32(var_1, vec3<u32>(var_1.x, 4294967295u, var_3.x))))).e;
    var var_5 = _wgslsmith_mod_u32(var_1.x, _wgslsmith_add_u32(func_1(), var_4.b | 1u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(((global1.zyz & var_2.a.yyw) & select(vec3<i32>(u_input.a.x, 15357i, -7327i), global1.xxw, vec3<bool>(true, var_4.a.x, var_4.a.x))) << (_wgslsmith_div_vec3_u32(var_1, var_1) % vec3<u32>(32u))), var_2.c.a.x, var_2.c.a, min(4294967295u, 1u), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a.x, firstLeadingBit(global1.x) ^ 1i), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-1i, u_input.a.x) >> (vec2<u32>(1u, 14424u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global1.x), global1.zz | vec2<i32>(1i, -18056i))), ~u_input.d.yx));
}

