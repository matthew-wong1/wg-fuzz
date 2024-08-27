struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 29>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(28613i, vec3<i32>(-58817i, 2147483647i, i32(-2147483648))), Struct_1(1i, vec3<i32>(-23355i, -360i, 1i)), Struct_1(-13964i, vec3<i32>(i32(-2147483648), 15645i, 14306i)), Struct_1(2147483647i, vec3<i32>(-1i, -8627i, -1i)), Struct_1(21783i, vec3<i32>(-14088i, 15595i, i32(-2147483648))), Struct_1(2147483647i, vec3<i32>(-1i, 0i, 2147483647i)), Struct_1(10258i, vec3<i32>(-14157i, 14495i, 0i)), Struct_1(-41174i, vec3<i32>(1i, 1i, -14451i)), Struct_1(0i, vec3<i32>(-64012i, -25237i, 0i)), Struct_1(-8737i, vec3<i32>(14719i, -40879i, -28157i)), Struct_1(-7119i, vec3<i32>(-13128i, -51941i, -9369i)), Struct_1(0i, vec3<i32>(24706i, 2147483647i, 1i)), Struct_1(-15208i, vec3<i32>(-30245i, 1i, -1i)), Struct_1(2147483647i, vec3<i32>(-41612i, 42629i, -1i)), Struct_1(36755i, vec3<i32>(-27831i, 12778i, -37845i)), Struct_1(6715i, vec3<i32>(2147483647i, 12061i, i32(-2147483648))), Struct_1(0i, vec3<i32>(-14210i, -49529i, 1i)), Struct_1(-38092i, vec3<i32>(-8408i, 78568i, -9790i)), Struct_1(0i, vec3<i32>(2147483647i, 2147483647i, 42937i)), Struct_1(i32(-2147483648), vec3<i32>(0i, -13645i, -11828i)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec4<bool> {
    var var_0 = ~51440u;
    global0 = global3[_wgslsmith_index_u32(select(firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(21707u, 6322u), u_input.a.x)), max(_wgslsmith_mod_u32(46638u, u_input.a.x), arg_0.x), any(!vec3<bool>(global0.b.x != -28836i, true, true))), 20u)];
    var var_1 = Struct_1(74018i, min(vec3<i32>(~global0.a, 173i, ~(-2147483647i)), select(abs(firstTrailingBit(global0.b)), -(global0.b >> (vec3<u32>(u_input.a.x, 4722u, 34117u) % vec3<u32>(32u))), true)));
    var var_2 = ~(max(firstLeadingBit(vec2<u32>(u_input.a.x, arg_0.x)), global1[_wgslsmith_index_u32(arg_0.x, 29u)]) | countOneBits(vec2<u32>(u_input.a.x, arg_0.x))) | firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), vec2<u32>(37891u, u_input.a.x)) | global1[_wgslsmith_index_u32(1u & u_input.a.x, 29u)]));
    let var_3 = ~min(_wgslsmith_mult_vec2_u32((vec2<u32>(70690u, arg_0.x) >> (arg_0 % vec2<u32>(32u))) | vec2<u32>(81162u, 0u), vec2<u32>(var_2.x, firstLeadingBit(57574u))), ~vec2<u32>(21007u, ~1u));
    return vec4<bool>(false, all(vec2<bool>(true, any(vec4<bool>(false, true, true, true)))), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), false)), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(6649u, 4294967295u), var_3)) == 0u);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global2 = arg_2.x;
    var var_0 = Struct_1(~global0.a, -select(global0.b, vec3<i32>(0i, -1846i, 51105i), select(vec3<bool>(false, true, false), arg_2, false)) >> (u_input.a % vec3<u32>(32u)));
    global0 = Struct_1(firstLeadingBit(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, -105637i, var_0.b.x, -74763i), vec4<i32>(global0.a, global0.a, 24315i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.b.x, global0.a, global0.b.x), vec4<i32>(global0.b.x, global0.b.x, 1i, global0.a))))), global0.b);
    global2 = all(!func_3(~_wgslsmith_mult_vec2_u32(u_input.a.xz, u_input.a.yz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1411f)), arg_0)));
    global0 = global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~global1[_wgslsmith_index_u32(u_input.a.x, 29u)], abs(vec2<u32>(4294967295u, 6927u))), max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 15918u), vec2<u32>(u_input.a.x, 9105u)), ~abs(vec2<u32>(9231u, u_input.a.x)))), 1u), 20u)];
    return global3[_wgslsmith_index_u32(u_input.a.x, 20u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global2 = 13698u > abs(~u_input.a.x);
    let var_0 = -319f;
    let var_1 = Struct_1(0i, select(vec3<i32>(-arg_1.b.x, abs(_wgslsmith_sub_i32(arg_1.a, 11969i)), ~(-2147483647i << (u_input.a.x % 32u))), ~(~arg_1.b) ^ arg_1.b, (~u_input.a.x <= ~u_input.a.x) & (~(-30538i) == abs(arg_1.a))));
    global2 = u_input.a.x < ~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, u_input.a.x, ~4294967295u), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 42248u, u_input.a.x)), u_input.a.x, max(u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(sign(var_0)))));
    return vec3<bool>(36098u > ~(~firstTrailingBit(u_input.a.x)), any(vec4<bool>(true, true, true, true)) || true, !any(vec4<bool>(true, true, true, true)) == (false && (all(vec2<bool>(true, false)) && all(vec2<bool>(false, true)))));
}

fn func_1() -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = select(!func_4(-885f, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -28526i, 2147483647i, -2147483647i), vec4<i32>(global0.a, global0.b.x, global0.b.x, global0.b.x)), abs(global0.b)), func_2(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(508f - -2059f), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), func_3(vec2<u32>(var_0, 37876u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-366f, 606f) + _wgslsmith_f_op_f32(f32(-1f) * -1495f)) - _wgslsmith_f_op_f32(-1115f * -1695f))).ywz, func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-228f)))), func_2(-582f, _wgslsmith_div_f32(1668f, 610f), !func_3(vec2<u32>(u_input.a.x, var_0), -487f).wwx), func_2(_wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(abs(-1363f))), 1000f, vec3<bool>(true, true, true))));
    global2 = _wgslsmith_clamp_u32(~(~max(u_input.a.x, 14374u)), ~u_input.a.x, ~abs(var_0)) < ~u_input.a.x;
    var_1 = vec3<bool>(any(vec4<bool>(true, all(vec3<bool>(var_1.x, var_1.x, var_1.x)), !func_3(global1[_wgslsmith_index_u32(var_0, 29u)], -110f).x, !var_1.x && !var_1.x)), true, func_3(vec2<u32>(22118u, 1u), -1000f).x);
    var var_2 = global0.a;
    return ~4294967295u;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.x, ~arg_1 >> (~u_input.a % vec3<u32>(32u)));
    let var_1 = Struct_1(firstLeadingBit(global0.b.x), ~vec3<i32>(countOneBits(1i), global0.b.x, 27065i) | countOneBits(_wgslsmith_sub_vec3_i32(global0.b, -global0.b)));
    global3 = array<Struct_1, 20>();
    global1 = array<vec2<u32>, 29>();
    global2 = arg_2;
    return func_2(_wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))))), 1000f, vec3<bool>(arg_2, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(-1431f, -global0.b, (_wgslsmith_dot_vec3_i32(global0.b, _wgslsmith_add_vec3_i32(global0.b, vec3<i32>(25245i, 2147483647i, global0.a))) & _wgslsmith_sub_i32(abs(1i), 2147483647i)) <= global0.a, _wgslsmith_div_vec2_u32(select(countOneBits(vec2<u32>(u_input.a.x, 16200u)), ~vec2<u32>(u_input.a.x, u_input.a.x), true) << (global1[_wgslsmith_index_u32(select(func_1(), ~6141u, false), 29u)] % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(~global1[_wgslsmith_index_u32(1u, 29u)], vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 49069u))));
    global1 = array<vec2<u32>, 29>();
    var var_0 = Struct_1(global0.a, global0.b);
    var var_1 = !(!(!(!(u_input.a.x != u_input.a.x))));
    global2 = true;
    var var_2 = false;
    let var_3 = _wgslsmith_div_f32(517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(539f, 441f, false)), _wgslsmith_f_op_f32(204f - -893f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) + _wgslsmith_f_op_f32(545f - 616f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a.x, 0u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3))))))));
}

