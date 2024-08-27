struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(14u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(58873u, 23320u), vec2<u32>(4294967295u, 32569u), vec2<u32>(44963u, 1834u), vec2<u32>(4294967295u, 11357u), vec2<u32>(24444u, 115325u), vec2<u32>(0u, 118731u), vec2<u32>(12361u, 32107u), vec2<u32>(3845u, 0u), vec2<u32>(42699u, 57746u), vec2<u32>(77749u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(5287u, 32980u), vec2<u32>(39454u, 4294967295u), vec2<u32>(17042u, 61093u), vec2<u32>(1u, 72964u), vec2<u32>(0u, 1u), vec2<u32>(11477u, 63877u), vec2<u32>(36920u, 0u), vec2<u32>(4294967295u, 27277u), vec2<u32>(0u, 10336u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 33630u), vec2<u32>(6269u, 0u), vec2<u32>(8024u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(26539u, 5805u), vec2<u32>(13610u, 16515u), vec2<u32>(0u, 4294967295u), vec2<u32>(8782u, 15504u), vec2<u32>(0u, 68283u));

var<private> global1: Struct_2;

var<private> global2: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec4<bool>(false & !select(any(vec4<bool>(false, false, false, true)), 49589u >= u_input.c, any(vec2<bool>(true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), global1.c.x < u_input.c, !(!any(vec2<bool>(false, true)) || any(vec3<bool>(true, false, true))));
    global2 = -1355f;
    let var_1 = global1.b;
    global1 = Struct_2(_wgslsmith_clamp_i32(abs(u_input.d.x) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.d.yx, u_input.d.xz), global1.a), global1.a, global1.a), global1.b, ~global1.c);
    let var_2 = !all(select(var_0.yw, vec2<bool>(var_0.x, all(vec3<bool>(true, var_0.x, false))), var_0.x));
    return var_2;
}

fn func_2() -> bool {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_f32(217f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b - global1.b.a) - 715f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(109f, _wgslsmith_f_op_f32(-global1.b.a))) * 1000f))));
    var var_2 = Struct_5(~global1.c.zx | ((~global0[_wgslsmith_index_u32(0u, 32u)] << (_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(1827u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)]) % vec2<u32>(32u))) >> ((~global1.c.zy << (firstLeadingBit(vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = array<vec2<u32>, 32>();
    var_2 = Struct_5(global1.c.xx);
    return func_3(~var_2.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> f32 {
    global2 = global1.b.a;
    let var_0 = global1.c.x;
    global2 = _wgslsmith_f_op_f32(-438f - global1.b.b);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.b)) - _wgslsmith_f_op_f32(459f - 977f));
    var var_1 = Struct_4(arg_1.b.x, reverseBits(u_input.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b * global1.b.a));
}

fn func_5(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = (u_input.d.x | _wgslsmith_dot_vec2_i32(vec2<i32>(35698i, -4650i) ^ select(vec2<i32>(global1.a, 13554i), vec2<i32>(u_input.d.x, global1.a), vec2<bool>(false, true)), u_input.d.zx)) | (0i | ~_wgslsmith_dot_vec2_i32(vec2<i32>(-3172i, u_input.d.x), u_input.d.xz));
    let var_1 = _wgslsmith_mult_vec4_u32(max(~select(~vec4<u32>(global1.c.x, u_input.b, 0u, 38235u), vec4<u32>(u_input.c, u_input.b, global1.c.x, global1.c.x), true), vec4<u32>(global1.c.x, _wgslsmith_sub_u32(u_input.c, 4294967295u), 9205u, reverseBits(4294967295u)) & ~firstLeadingBit(vec4<u32>(4294967295u, u_input.b, global1.c.x, 52339u))), vec4<u32>(reverseBits(_wgslsmith_sub_u32(min(4294967295u, u_input.c), 37002u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), ~global1.c.zz), global1.c.x), min(u_input.c, firstLeadingBit(u_input.c) >> (global1.c.x % 32u)), global1.c.x));
    let var_2 = select(vec4<bool>(func_3(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.x, 4294967295u), 4294967295u)), u_input.b <= _wgslsmith_mult_u32(_wgslsmith_div_u32(71713u, u_input.c), 38315u), true, _wgslsmith_f_op_f32(func_4(true, Struct_4(-7742i, vec3<i32>(u_input.a, -1i, u_input.a)))) != _wgslsmith_f_op_f32(global1.b.b + _wgslsmith_f_op_f32(-arg_0.x))), vec4<bool>(true, true, true && !all(vec2<bool>(true, false)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, false, true, false))));
    global1 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.a, u_input.d.x), ~global1.a), countOneBits(global1.a), abs(1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, global1.a, 4538i), ~vec3<i32>(56068i, u_input.a, 21406i))), select(-vec4<i32>(-1733i, 1443i, 2147483647i, 0i), vec4<i32>(u_input.a, u_input.a, -1i, global1.a), select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(true, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))) >> (abs(var_1 ^ vec4<u32>(65392u, 1u, 4294967295u, global1.c.x)) % vec4<u32>(32u))), global1.b, vec3<u32>(_wgslsmith_clamp_u32(var_1.x, 47331u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(global1.c.x, global1.c.x, var_1.x)) >> (~global1.c.x % 32u)), 4294967295u, global1.c.x));
    let var_3 = select(vec2<u32>(_wgslsmith_clamp_u32(~(~global1.c.x), 1u, global1.c.x), ~67200u), _wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(var_1.x, 26300u), firstTrailingBit(var_1.x)), vec2<u32>(_wgslsmith_mult_u32(u_input.b | 69162u, ~1u), 0u)), true);
    return Struct_3(countOneBits(~(~vec4<u32>(global1.c.x, var_3.x, var_3.x, global1.c.x) << (vec4<u32>(var_3.x, 11003u, 1u, u_input.c) % vec4<u32>(32u)))), Struct_2(_wgslsmith_mult_i32(-1i, ~_wgslsmith_sub_i32(-2147483647i, u_input.a)), global1.b, _wgslsmith_clamp_vec3_u32(max(vec3<u32>(global1.c.x, var_1.x, var_1.x), ~vec3<u32>(var_3.x, 27557u, 0u)), var_1.yxy, global1.c << (reverseBits(global1.c) % vec3<u32>(32u)))), 1u << (_wgslsmith_mult_u32(1u, var_3.x) % 32u));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.b.a))))), _wgslsmith_f_op_f32(func_4(func_2(), Struct_4(_wgslsmith_div_i32(u_input.a, u_input.d.x), u_input.d)))));
    var var_1 = var_0.b.b;
    global1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.b * _wgslsmith_f_op_f32(exp2(var_1.a)))))).b;
    var var_2 = Struct_4(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a, 0i, -49038i, 65953i), ~vec4<i32>(var_0.b.a, -2147483647i, -4238i, var_0.b.a))), u_input.d);
    global0 = array<vec2<u32>, 32>();
    return arg_0;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)));
    var var_0 = select(!vec2<bool>(arg_2.b.a <= reverseBits(arg_2.b.a), !func_2()), !vec2<bool>(any(vec4<bool>(false, false, true, true)), true), true);
    global1 = Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(-361f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.b.b))), _wgslsmith_f_op_f32(global1.b.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.b), -240f))), _wgslsmith_div_vec3_u32(global1.c & arg_3.b.c, ~vec3<u32>(arg_2.a.x, global1.c.x, arg_2.c) >> (vec3<u32>(14801u, ~u_input.b, 96838u >> (u_input.b % 32u)) % vec3<u32>(32u))));
    global0 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_mult_u32(global1.c.x, func_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1826f, -808f) * vec2<f32>(global1.b.b, arg_3.b.b.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.b.b.a, arg_2.b.b.a), vec2<f32>(942f, 262f), vec2<bool>(var_0.x, false)))))).c) == _wgslsmith_sub_u32(global1.c.x, func_1(countOneBits(1u)));
    return func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, global1.b.a)))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i & (9620i & (i32(-1i) * -(~u_input.d.x)));
    var var_1 = func_6(Struct_4(-27451i, u_input.d), global1.b, Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(min(u_input.b, 1u), ~global1.c.x, ~0u, func_1(59338u)), vec4<u32>(global1.c.x, 1u << (u_input.c % 32u), global1.c.x, reverseBits(u_input.b))), func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, 883f) - vec2<f32>(-781f, 1008f)), vec2<f32>(global1.b.a, global1.b.a), vec2<bool>(true, true)))).b, _wgslsmith_div_u32(firstTrailingBit(global1.c.x), ~(~global1.c.x))), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-global1.b.b)))));
    var_1 = func_6(Struct_4(max(~(-global1.a), global1.a), vec3<i32>(var_1.a, var_1.a | (2147483647i >> (var_1.c.x % 32u)), _wgslsmith_sub_i32(u_input.d.x, u_input.a) >> (var_1.c.x % 32u))), global1.b, func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 534f) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, global1.b.b)))))), Struct_3(vec4<u32>(4294967295u, global1.c.x, u_input.c, 4294967295u), func_6(Struct_4(-15176i, u_input.d), var_1.b, Struct_3(~vec4<u32>(global1.c.x, 1u, 4294967295u, 41320u), Struct_2(var_1.a, var_1.b, vec3<u32>(0u, 89471u, global1.c.x)), _wgslsmith_add_u32(var_1.c.x, 4294967295u)), Struct_3(func_5(vec2<f32>(var_1.b.a, 328f)).a, Struct_2(u_input.a, Struct_1(var_1.b.b, global1.b.b), vec3<u32>(1u, 59933u, 1u)), ~global1.c.x)), ~func_6(Struct_4(var_1.a, u_input.d), var_1.b, Struct_3(vec4<u32>(var_1.c.x, 1u, 4294967295u, 28158u), Struct_2(0i, var_1.b, vec3<u32>(u_input.b, 4294967295u, 106001u)), global1.c.x), Struct_3(vec4<u32>(8571u, var_1.c.x, 4294967295u, u_input.c), Struct_2(var_1.a, Struct_1(-277f, var_1.b.a), vec3<u32>(0u, u_input.c, 96873u)), u_input.b)).c.x));
    var var_2 = select(min(-8862i, max(abs(1i >> (var_1.c.x % 32u)), var_1.a)), reverseBits(max(1i, -2147483647i)) >> (_wgslsmith_div_u32(~select(global1.c.x, 1u, true), _wgslsmith_dot_vec2_u32(firstLeadingBit(global0[_wgslsmith_index_u32(var_1.c.x, 32u)]), global1.c.zx)) % 32u), true);
    let var_3 = _wgslsmith_f_op_f32(-var_1.b.a);
    let var_4 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, u_input.a < var_1.a), true));
    var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, ~abs(-u_input.a)), select(~(max(0i, -17746i) | func_5(vec2<f32>(var_1.b.a, var_1.b.a)).b.a), global1.a, any(vec3<bool>(var_4.x, true, all(vec4<bool>(var_4.x, true, var_4.x, true))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f) - _wgslsmith_f_op_f32(ceil(1219f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1344f + 998f) * _wgslsmith_f_op_f32(224f - -125f)))));
    let var_5 = _wgslsmith_add_u32(52354u, func_6(Struct_4(1i, ~(~u_input.d)), Struct_1(global1.b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b.b, var_3)))), func_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(423f, var_1.b.b), vec2<f32>(-1064f, var_1.b.a)))), Struct_3(vec4<u32>(firstLeadingBit(0u), global1.c.x, global1.c.x, 38544u & var_1.c.x), Struct_2(1i, var_1.b, abs(vec3<u32>(14047u, 4294967295u, 12690u))), 4294967295u)).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

