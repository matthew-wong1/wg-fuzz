struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-1000f, 877f, -330f, -266f, -1148f, -1312f, -1351f, -1694f, 227f, 145f, -2426f, 1061f, 1000f, 150f, 1868f, -525f, -165f, -610f, 702f, -657f, -371f, 1000f, -341f, 780f, 742f);

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, true, false, false, true, false, false, false, true, true, true, false, false, false, true, false, true, true, false);

var<private> global2: array<Struct_5, 4>;

var<private> global3: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(18040i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-25192i, -46068i), vec2<i32>(-72202i, 1i), vec2<i32>(1i, 0i), vec2<i32>(4612i, 0i), vec2<i32>(-30046i, 25343i), vec2<i32>(-1i, 11227i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -52695i), vec2<i32>(-26002i, 1i), vec2<i32>(0i, 16913i), vec2<i32>(21926i, 2147483647i), vec2<i32>(-20830i, i32(-2147483648)), vec2<i32>(24313i, 2147483647i), vec2<i32>(-30510i, 16872i), vec2<i32>(-36954i, 4365i), vec2<i32>(43019i, -7789i), vec2<i32>(1i, -755i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(49217i, i32(-2147483648)), vec2<i32>(27809i, 2147483647i), vec2<i32>(-53509i, -45262i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_4 {
    let var_0 = vec3<bool>(true, false && (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(0u, arg_1.x), ~0u), 21u)] & global1[_wgslsmith_index_u32(25541u, 21u)]), !(!global1[_wgslsmith_index_u32(1u, 21u)]));
    var var_1 = u_input.b;
    global2 = array<Struct_5, 4>();
    global2 = array<Struct_5, 4>();
    var var_2 = u_input.b;
    return Struct_4(vec3<u32>(countOneBits(_wgslsmith_div_u32(0u, ~0u)), ~var_2.x, 7857u), var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-429f, -1000f, -1000f, 104f) - vec4<f32>(arg_2, arg_2, arg_2, global0[_wgslsmith_index_u32(var_1.x, 25u)]))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 25u)], 1071f, 517f, arg_2)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), global0[_wgslsmith_index_u32(arg_1.x, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f - global0[_wgslsmith_index_u32(41276u, 25u)]) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 25u)], global0[_wgslsmith_index_u32(var_2.x, 25u)])), 994f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(19895u, 25u)])))));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(120f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)] + 1208f) - _wgslsmith_f_op_f32(step(1580f, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]))) * global0[_wgslsmith_index_u32(~4294967295u, 25u)])) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.a.x & 0u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.a), 21u)]), 25u)])), 1353f));
    global1 = array<bool, 21>();
    global2 = array<Struct_5, 4>();
    global1 = array<bool, 21>();
    var var_1 = -1203f;
    return u_input.c;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = arg_1;
    global1 = array<bool, 21>();
    return -_wgslsmith_add_vec3_i32(~abs(vec3<i32>(arg_0, var_0.b.x, 36947i)), vec3<i32>(-u_input.c, var_0.b.x ^ -8333i, -2147483647i)) >> (~vec3<u32>(u_input.b.x | firstTrailingBit(30831u), 4294967295u, ~(~u_input.b.x)) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = func_4(func_3(-arg_3.b), Struct_1(!arg_3.c.x, -abs(vec2<i32>(u_input.c, 1i)), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, false, global1[_wgslsmith_index_u32(50848u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 21u)], global1[_wgslsmith_index_u32(96584u, 21u)], arg_3.c.x, false), false), vec4<bool>(true, false & arg_3.c.x, global1[_wgslsmith_index_u32(~1u, 21u)], global1[_wgslsmith_index_u32(106652u, 21u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(65660u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(7366u, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(86493u, 21u)], true, true), select(vec4<bool>(false, false, false, arg_3.c.x), vec4<bool>(arg_3.c.x, arg_3.c.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(70749u, 21u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_3.c.x)))), true, vec4<bool>(all(vec2<bool>(arg_3.c.x, true)), false, _wgslsmith_clamp_i32(0i, -16780i, u_input.c) == func_3(24098i), -471f >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 25u)]))), Struct_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~arg_3.a, ~u_input.c), _wgslsmith_clamp_i32(arg_3.a, arg_3.a, u_input.c >> (u_input.a.x % 32u))), 1i, arg_3.c));
    global0 = array<f32, 25>();
    let var_1 = vec4<u32>(0u, ~(~_wgslsmith_dot_vec2_u32(u_input.b.xx, arg_1)), _wgslsmith_sub_u32(u_input.a.x, arg_1.x) ^ arg_0, 12579u);
    let var_2 = Struct_4(~(~vec3<u32>(50502u & var_1.x, 0u, 0u)), select(func_1(global3[_wgslsmith_index_u32(0u, 25u)], var_1.ww, _wgslsmith_f_op_f32(max(-1314f, _wgslsmith_f_op_f32(-1737f * -1250f)))).b, vec3<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 21u)])) != arg_3.c.x, any(select(vec4<bool>(true, arg_3.c.x, arg_3.c.x, global1[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true), arg_3.c.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 49848u), vec2<u32>(arg_0, arg_0)), ~4294967295u), 21u)]), !func_1(vec2<i32>(1i, 27266i) << (var_1.yy % vec2<u32>(32u)), var_1.xz, 1147f).b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_1.x, 25u)]), -1365f, 155f, _wgslsmith_f_op_f32(2026f * arg_2.x))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -3595i, -u_input.c), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, -28137i, u_input.c)), var_0)), 1i, var_2.b.zz), ~(~vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), u_input.a.x)));
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_0, ~1u), 1u), ~func_1(select(-global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(~u_input.b.x, 25u)], func_1(vec2<i32>(-2147483647i, 1i), var_1.xw, -159f).b.xz), vec2<u32>(1u, var_3.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.c.x))))).a.x);
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_3.a.x, 25u)])), _wgslsmith_f_op_f32(-436f - -535f)))));
    return StorageBuffer(~(~firstLeadingBit(vec4<u32>(38882u, arg_2, arg_2, 9974u))) | ~(vec4<u32>(4294967295u, 46793u, arg_2, arg_2) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 23638u, u_input.a.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, arg_2, 1u), vec4<u32>(85242u, 12024u, 4809u, 32175u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, _wgslsmith_f_op_f32(floor(var_0.x)), global0[_wgslsmith_index_u32(25418u, 25u)], -1323f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_3.c), _wgslsmith_div_vec4_f32(var_0, var_0))))), -u_input.c, _wgslsmith_f_op_vec3_f32(arg_3.c.xyw + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2090u, 25u)] + global0[_wgslsmith_index_u32(arg_2, 25u)])), -1000f)), global0[_wgslsmith_index_u32(arg_2, 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 21>();
    let var_0 = _wgslsmith_sub_vec4_i32(firstTrailingBit(select(vec4<i32>(-56179i, u_input.c, -1i, 3444i), vec4<i32>(-1i, -1i, u_input.c, u_input.c), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false))) & firstTrailingBit(vec4<i32>(1266i, u_input.c >> (62736u % 32u), _wgslsmith_div_i32(1i, u_input.c), u_input.c)), vec4<i32>(u_input.c, _wgslsmith_mod_i32(26760i, _wgslsmith_clamp_i32(2147483647i, -u_input.c, 17598i)), -u_input.c, u_input.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(6341u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])) - global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))) - global0[_wgslsmith_index_u32(~30399u, 25u)]) + global0[_wgslsmith_index_u32(reverseBits(abs(~9440u)) ^ u_input.a.x, 25u)]);
    let var_2 = func_1(max(vec2<i32>(firstTrailingBit(1i), var_0.x), -select(vec2<i32>(u_input.c, 2147483647i), var_0.zx, vec2<bool>(global1[_wgslsmith_index_u32(1850u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)])) ^ ~_wgslsmith_mod_vec2_i32(var_0.ww, vec2<i32>(-1i, 62867i))), firstTrailingBit(firstTrailingBit(u_input.b.xy)), 1429f);
    global3 = array<vec2<i32>, 25>();
    let x = u_input.a;
    s_output = func_5(true, select(select(vec4<bool>(true, var_2.b.x, any(vec4<bool>(var_2.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false)), false), select(!vec4<bool>(var_2.b.x, global1[_wgslsmith_index_u32(0u, 21u)], true, true), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(38367u, 21u)], true), vec4<bool>(global1[_wgslsmith_index_u32(var_2.a.x, 21u)], false, false, var_2.b.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], var_2.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], var_2.b.x)), -708f == var_2.c.x), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 21u)] != !global1[_wgslsmith_index_u32(4294967295u, 21u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.a.x, 21u)], select(var_2.b.x, true, true), any(vec2<bool>(true, false))), !(!vec4<bool>(false, var_2.b.x, global1[_wgslsmith_index_u32(var_2.a.x, 21u)], false)), select(!vec4<bool>(var_2.b.x, false, global1[_wgslsmith_index_u32(45422u, 21u)], false), !vec4<bool>(false, true, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, var_2.b.x, global1[_wgslsmith_index_u32(30707u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))), true), _wgslsmith_mod_u32(select(func_2(abs(u_input.a.x), u_input.b.xx & vec2<u32>(0u, u_input.b.x), _wgslsmith_f_op_vec2_f32(var_2.c.yz * vec2<f32>(var_1, 202f)), Struct_2(var_0.x, -2147483647i, vec2<bool>(false, false))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, var_2.a.x), u_input.a), global1[_wgslsmith_index_u32(1u, 21u)] | false), reverseBits(_wgslsmith_mult_u32(1u, 295u >> (var_2.a.x % 32u)))), var_2);
}

