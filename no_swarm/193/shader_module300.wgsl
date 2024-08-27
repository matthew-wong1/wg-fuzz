struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global2: bool;

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<f32>(-1000f, 202f, -659f), vec2<f32>(1000f, 1883f)), Struct_3(vec3<f32>(1262f, -388f, -657f), vec2<f32>(-446f, 179f)), Struct_3(vec3<f32>(482f, -401f, -1583f), vec2<f32>(955f, -129f)), Struct_3(vec3<f32>(791f, -1000f, 1000f), vec2<f32>(158f, -147f)), Struct_3(vec3<f32>(2026f, 379f, -1000f), vec2<f32>(-1303f, 882f)), Struct_3(vec3<f32>(941f, 1078f, -815f), vec2<f32>(-1477f, -435f)), Struct_3(vec3<f32>(-459f, -909f, 832f), vec2<f32>(-646f, 1390f)), Struct_3(vec3<f32>(1000f, 564f, 583f), vec2<f32>(-1154f, 398f)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = -vec4<i32>(abs(-u_input.b.x), u_input.b.x, 11338i, -u_input.b.x);
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(select(arg_1.x, -1017f, arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a - -1976f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_1.x))), vec2<f32>(_wgslsmith_f_op_f32(720f * _wgslsmith_f_op_f32(299f - arg_1.x)), _wgslsmith_f_op_f32(sign(-1111f))))));
    var var_2 = Struct_4(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, u_input.c.x))), _wgslsmith_mult_vec2_u32(~vec2<u32>(global1.x, 55236u), ~vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.zx), ~_wgslsmith_mult_vec2_u32(~u_input.c.xx, abs(u_input.c.yx))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c.xy), _wgslsmith_mod_vec2_u32(u_input.c.xz, u_input.c.xx)), countOneBits(select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(1u, global1.x), vec2<bool>(false, arg_0.x)))), vec2<u32>(max(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_div_u32(global1.x, u_input.c.x)), ~_wgslsmith_clamp_u32(global1.x, u_input.c.x, global1.x))), _wgslsmith_dot_vec3_u32(u_input.c, select(u_input.c, u_input.c, !arg_0.ywx)) ^ ~15170u, -var_0.wx, arg_1.xx);
    let var_3 = Struct_4(u_input.c.zz, var_2.b, 0u, var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_2.e.x - 2368f), -163f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(249f, 1000f)))), !arg_2.b))));
    let var_4 = select(!select(select(vec2<bool>(true, arg_2.b), !global0[_wgslsmith_index_u32(var_2.c, 10u)], arg_0.x), !(!global0[_wgslsmith_index_u32(var_3.b.x, 10u)]), vec2<bool>(arg_0.x, u_input.c.x < 0u)), select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 10u)], true), arg_0.x);
    return -(~vec4<i32>(~(1i << (var_3.b.x % 32u)), arg_2.d, -_wgslsmith_mult_i32(var_0.x, arg_2.d), -2147483647i));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global1 = abs(_wgslsmith_div_vec2_u32(~u_input.c.yy, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(88429u, global1.x), min(u_input.c.xz, u_input.c.zx)), firstLeadingBit(~u_input.c.zx))));
    let var_0 = Struct_2(arg_1.a, min(arg_1.b >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 1u, 28535u, 78457u), vec4<u32>(u_input.c.x, 6187u, u_input.c.x, u_input.c.x), arg_1.a), ~vec4<u32>(u_input.c.x, u_input.c.x, 74741u, 41486u)) % vec4<u32>(32u)), arg_1.b), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, arg_1.b.x) | (-48858i >> (0u % 32u)), arg_1.b.x, -39010i), -vec3<i32>(_wgslsmith_mult_i32(-7525i, u_input.a.x), u_input.b.x << (0u % 32u), 2147483647i)));
    global3 = array<Struct_3, 8>();
    global2 = !any(!vec3<bool>(true || var_0.a, any(vec4<bool>(true, var_0.a, arg_1.a, false)), var_0.a));
    var var_1 = Struct_4(_wgslsmith_sub_vec2_u32(~max(~vec2<u32>(global1.x, 61478u), ~vec2<u32>(0u, 21713u)), _wgslsmith_sub_vec2_u32(u_input.c.yy, (vec2<u32>(u_input.c.x, u_input.c.x) ^ vec2<u32>(6358u, 52855u)) | ~vec2<u32>(4430u, 0u))), _wgslsmith_add_vec2_u32(firstLeadingBit(select(~vec2<u32>(4294967295u, global1.x), ~u_input.c.xz, !vec2<bool>(var_0.a, false))), abs(~vec2<u32>(global1.x, global1.x) << (~u_input.c.zz % vec2<u32>(32u)))), (global1.x & 46089u) >> (_wgslsmith_sub_u32(~4294967295u, global1.x) % 32u), vec2<i32>(var_0.c.x, -7762i), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x));
    return 1u;
}

fn func_2() -> Struct_1 {
    global1 = u_input.c.xy;
    var var_0 = Struct_4(vec2<u32>(min(0u, min(~106281u, ~52344u)), abs(~4294967295u)), u_input.c.zx, 40503u, _wgslsmith_clamp_vec2_i32(max(~u_input.b, abs(u_input.a)), u_input.b, countOneBits(vec2<i32>(u_input.a.x, u_input.a.x & 0i))), vec2<f32>(-1026f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1802f - -1256f))))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(58628u, 4294967295u), func_4(vec3<f32>(288f, -204f, _wgslsmith_f_op_f32(-1f)), Struct_2(true, func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, 494f, 557f, -996f)), Struct_1(-303f, true, var_0.e.x, u_input.b.x)), func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(134f, 1000f, -274f, 1393f), vec4<f32>(-275f, var_0.e.x, -1000f, 1000f))), Struct_1(-1717f, true, var_0.e.x, 37080i)).zwy))), 8u)];
    var var_2 = _wgslsmith_f_op_f32(round(-1000f));
    let var_3 = var_0.e;
    return Struct_1(_wgslsmith_f_op_f32(-var_0.e.x), select(!(var_1.a.x == var_3.x) && any(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)]), any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), 1i <= var_0.d.x)), any(select(global0[_wgslsmith_index_u32(~u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], !global0[_wgslsmith_index_u32(global1.x, 10u)]))), 669f, reverseBits(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) | -1i));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<bool>, 10>();
    var var_0 = select(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], vec2<bool>(!(!(arg_0 | true)), !(!arg_0)), true);
    global1 = _wgslsmith_mult_vec2_u32(reverseBits(u_input.c.xy) << (vec2<u32>(39595u, (global1.x << (u_input.c.x % 32u)) ^ (0u | u_input.c.x)) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.c.x));
    var var_1 = !(!(!select(!vec3<bool>(var_0.x, arg_0, arg_0), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_add_i32(~abs(~(-1i)), 1i);
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - arg_2.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.b.x), arg_0.a, false)))), true, func_1(true, min(-firstLeadingBit(vec3<i32>(arg_0.d, -41722i, u_input.b.x)), vec3<i32>(arg_0.d, ~u_input.a.x, 0i))).c, reverseBits(u_input.a.x));
    global3 = array<Struct_3, 8>();
    var var_1 = arg_0.d << (~_wgslsmith_clamp_u32(~global1.x, ~1u, 21642u) % 32u);
    global0 = array<vec2<bool>, 10>();
    var var_2 = vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(countOneBits(u_input.c.yz), ~vec2<u32>(u_input.c.x, 1u), max(vec2<u32>(global1.x, 0u), u_input.c.yx)), _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(6680u, global1.x), vec2<u32>(global1.x, u_input.c.x), vec2<u32>(36562u, 24404u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(48246u, global1.x), u_input.c.yz, u_input.c.xy)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1(var_2.x <= u_input.c.x, vec3<i32>(var_0.d, u_input.a.x, 26268i)).c))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f - -2567f)), arg_0.d);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> Struct_4 {
    global0 = array<vec2<bool>, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), select(true, arg_0.b, false))));
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 10u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 819f)))), !arg_0.b, func_2().a, ~(-3712i));
    let var_3 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.zx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.zz, arg_1.zz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yx - vec2<f32>(-1103f, arg_0.c)) - _wgslsmith_f_op_vec2_f32(arg_1.xz - vec2<f32>(-830f, arg_0.a)))))));
    return Struct_4(vec2<u32>(~0u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u)), vec2<u32>(88107u, 1u), _wgslsmith_div_u32(4294967295u, arg_2 >> ((_wgslsmith_mult_u32(arg_2, 85089u) ^ ~4294967295u) % 32u)), -select(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_0.d), vec2<i32>(arg_0.d, -2147483647i) << (u_input.c.zz % vec2<u32>(32u))), var_1.x), _wgslsmith_f_op_vec2_f32(arg_1.zx - arg_1.zx));
}

fn func_7(arg_0: Struct_4) -> Struct_3 {
    var var_0 = select(vec3<bool>(true, true, all(vec3<bool>(true, 2147483647i < u_input.b.x, false))), select(vec3<bool>(true, !(668f < arg_0.e.x), u_input.a.x < _wgslsmith_add_i32(u_input.b.x, 1i)), vec3<bool>(true, true, true), true), func_2().b);
    var var_1 = Struct_2(true, ~(-max(vec4<i32>(-1i, 34404i, u_input.a.x, arg_0.d.x) & vec4<i32>(arg_0.d.x, 0i, arg_0.d.x, u_input.b.x), max(vec4<i32>(arg_0.d.x, 6575i, arg_0.d.x, 20757i), vec4<i32>(1i, 32957i, -31201i, -2147483647i)))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, u_input.b.x), -abs(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-55285i, -1i, 2147483647i), vec3<i32>(arg_0.d.x, -1i, u_input.b.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 111152u, 28943u), vec3<u32>(1u, 81910u, 11534u)) % vec3<u32>(32u))), vec3<i32>(0i, i32(-1i) * -18416i, u_input.b.x) | _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, arg_0.d.x)), vec3<i32>(-1i, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(65276i, 1313i, -23468i), vec3<i32>(41303i, u_input.b.x, arg_0.d.x)))));
    global0 = array<vec2<bool>, 10>();
    let var_2 = global3[_wgslsmith_index_u32(~arg_0.b.x, 8u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, arg_0.e.x, -1000f, 1031f) * vec4<f32>(-436f, var_2.a.x, arg_0.e.x, 1616f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.x, var_2.a.x, var_2.b.x, 968f), vec4<f32>(-1719f, 1636f, var_2.b.x, -737f)), vec4<bool>(false, var_0.x, true, false))) * vec4<f32>(func_5(Struct_1(arg_0.e.x, var_0.x, arg_0.e.x, -2147483647i), true, global3[_wgslsmith_index_u32(global1.x, 8u)]).a, -171f, arg_0.e.x, _wgslsmith_f_op_f32(sign(-1199f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1269f, -298f, arg_0.e.x, -1191f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x), -312f, _wgslsmith_f_op_f32(-arg_0.e.x), 1300f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, 213f, -1000f, arg_0.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, arg_0.e.x, 706f, -132f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, -221f, 784f, 647f)))), vec4<f32>(996f, 741f, _wgslsmith_f_op_f32(select(-440f, _wgslsmith_f_op_f32(round(-973f)), true != var_1.a)), var_2.a.x), select(select(select(vec4<bool>(false, false, true, var_1.a), vec4<bool>(var_0.x, false, true, var_1.a), vec4<bool>(var_0.x, var_1.a, false, true)), !vec4<bool>(false, var_0.x, false, false), !vec4<bool>(false, var_0.x, var_0.x, var_1.a)), select(!vec4<bool>(true, true, false, var_0.x), !vec4<bool>(var_1.a, true, true, false), true), vec4<bool>(all(vec3<bool>(true, var_1.a, true)), var_0.x, true, var_0.x)))));
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, firstLeadingBit(u_input.c)), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(9450u, arg_0.a.x, arg_0.b.x, global1.x), select(vec4<u32>(4294967295u, 100077u, 46109u, global1.x), vec4<u32>(4294967295u, 1u, 0u, arg_0.a.x), false)), ((4294967295u ^ arg_0.a.x) ^ u_input.c.x) & 1u)), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(func_1(false, max(vec3<i32>(u_input.b.x, 2147483647i, -1i), vec3<i32>(0i, u_input.b.x, u_input.b.x))), func_2().b, Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(279f, 205f, 138f), vec3<f32>(406f, 784f, 643f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(124f, -280f), vec2<f32>(206f, 1537f), true)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(min(func_2().c, _wgslsmith_f_op_f32(1632f - -1116f))), func_5(func_1(false, vec3<i32>(u_input.a.x, u_input.b.x, 60963i)), true, global3[_wgslsmith_index_u32(~global1.x, 8u)]).c), ~(~29285u)));
    let var_1 = ~u_input.a;
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1166f, var_0.b.x)) + func_6(func_5(Struct_1(var_0.a.x, true, -772f, -2147483647i), true, var_2), var_2.a, ~1u).e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(254f, var_0.b.x))), _wgslsmith_div_f32(1032f, func_1(false, vec3<i32>(33657i, u_input.a.x, 2147483647i)).c)))), false, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(14565i, -19556i, -1i), vec3<i32>(46482i, u_input.a.x, 1i)), -39812i), vec3<i32>(1i, 1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))) & func_6(Struct_1(_wgslsmith_f_op_f32(-var_2.b.x), false, _wgslsmith_f_op_f32(-var_0.b.x), var_1.x >> (74839u % 32u)), _wgslsmith_f_op_vec3_f32(ceil(var_2.a)), 0u).d.x);
    let var_4 = func_6(func_5(Struct_1(1119f, false, 1546f, _wgslsmith_dot_vec4_i32(func_3(vec4<bool>(true, false, var_3.b, true), vec4<f32>(1537f, 713f, var_0.a.x, 235f), var_3), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -1i, var_1.x, 0i), vec4<i32>(-1i, 0i, var_1.x, 32027i)))), var_3.b, func_7(func_6(Struct_1(-2248f, var_3.b, 510f, var_1.x), _wgslsmith_f_op_vec3_f32(var_0.a * var_2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), vec3<u32>(global1.x, global1.x, 1u))))), var_0.a, 0u);
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(var_4.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.e.x)))), _wgslsmith_sub_u32(~select(firstTrailingBit(u_input.c.x), global1.x, !var_3.b), ~4294967295u), vec4<f32>(_wgslsmith_f_op_f32(select(1356f, _wgslsmith_div_f32(226f, _wgslsmith_f_op_f32(f32(-1f) * -153f)), !var_5)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f * var_2.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), func_7(Struct_4(vec2<u32>(6778u, 44566u) | u_input.c.zx, u_input.c.zz, var_4.c, var_4.d >> (u_input.c.zz % vec2<u32>(32u)), vec2<f32>(var_2.a.x, 535f))).b.x), vec2<i32>(2147483647i, 44531i));
}

