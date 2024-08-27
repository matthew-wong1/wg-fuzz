struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(38405u, 81837u, 50026u, 4294967295u, 67594u, 57892u, 1u, 61881u, 1u, 9880u, 1u, 14084u, 95371u, 19858u, 0u, 117825u, 4294967295u, 1u, 79889u, 0u, 1u, 49973u, 98360u);

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(2147483647i, -30098i, -1i), vec3<i32>(i32(-2147483648), -8270i, 1i), vec3<i32>(-20881i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-28622i, i32(-2147483648), 23946i), vec3<i32>(1i, -7149i, 2147483647i), vec3<i32>(-18789i, 0i, 8844i), vec3<i32>(-14289i, 1i, i32(-2147483648)), vec3<i32>(-1i, 0i, -1i), vec3<i32>(-1i, -102697i, 2147483647i), vec3<i32>(-18191i, 0i, -1i), vec3<i32>(1i, 3226i, 1i), vec3<i32>(i32(-2147483648), -1i, 5588i), vec3<i32>(14918i, 11596i, i32(-2147483648)), vec3<i32>(2147483647i, 43133i, 19480i), vec3<i32>(-7999i, 1i, 58i), vec3<i32>(5972i, -13150i, 36722i), vec3<i32>(15164i, 10269i, 1i), vec3<i32>(5160i, 14078i, 2147483647i), vec3<i32>(14082i, -26559i, 17059i), vec3<i32>(28760i, -1i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -64374i), vec3<i32>(52070i, 1i, 1i), vec3<i32>(-28636i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 57285i));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, -1151f, true, true, 12280u), Struct_1(true, -769f, false, false, 1u), Struct_1(true, -373f, false, true, 0u), Struct_1(true, -155f, true, false, 0u), Struct_1(true, -370f, false, true, 4294967295u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_div_f32(351f, 479f), true, 1u >= u_input.a, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 23u)], u_input.a)));
    global0 = array<u32, 23>();
    let var_1 = arg_1 != -arg_1;
    var var_2 = Struct_3(var_0.a.d);
    let var_3 = 2147483647i;
    return true;
}

fn func_3(arg_0: Struct_3) -> f32 {
    global2 = array<Struct_1, 5>();
    let var_0 = true;
    global0 = array<u32, 23>();
    global1 = array<vec3<i32>, 28>();
    global1 = array<vec3<i32>, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -1158f))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(Struct_1(false & !(!arg_2.a.a), arg_2.a.b, any(vec3<bool>(any(vec4<bool>(arg_2.a.c, arg_2.a.c, true, arg_2.a.c)), false, true)), !func_2(_wgslsmith_mod_u32(u_input.a, 110078u), _wgslsmith_mod_i32(-1i, -1i)), ~4294967295u));
    var var_1 = Struct_3(~(~arg_0) != 15007i);
    var var_2 = vec4<i32>(arg_0, arg_0, _wgslsmith_mod_i32(arg_0, -arg_0), arg_0);
    var_2 = min(vec4<i32>(16207i, -1i, -(1i ^ arg_0), ~arg_0), vec4<i32>(-1i, -_wgslsmith_mod_i32(0i, -var_2.x), var_2.x, arg_0));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1007f, _wgslsmith_f_op_f32(min(-602f, _wgslsmith_f_op_f32(f32(-1f) * -2736f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.b)) + 1802f), arg_2.a.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(378f))), _wgslsmith_div_f32(arg_1.x, var_0.a.b)))), vec4<bool>(arg_2.a.c, var_0.a.d, true, !any(vec3<bool>(false, true, var_0.a.d)))));
    return 1728f;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 - arg_0.b), _wgslsmith_f_op_f32(round(-737f)), _wgslsmith_f_op_f32(max(arg_0.b, 281f)), -2375f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1023f, arg_0.b, 2082f, arg_2) + vec4<f32>(1338f, 166f, arg_3.b, -288f))))));
    let var_1 = arg_3;
    var var_2 = select(select(select(select(select(vec4<bool>(arg_0.d, var_1.a, true, false), vec4<bool>(arg_0.c, arg_0.d, false, false), vec4<bool>(true, arg_0.d, true, true)), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1.c, arg_0.c, arg_3.a)), !select(vec4<bool>(true, false, arg_0.a, arg_3.a), vec4<bool>(true, true, arg_0.c, true), vec4<bool>(true, true, false, arg_0.c)), select(select(vec4<bool>(false, false, arg_3.d, var_1.a), vec4<bool>(arg_3.a, true, arg_0.a, false), vec4<bool>(arg_3.a, false, arg_0.c, true)), select(vec4<bool>(arg_0.c, true, true, true), vec4<bool>(arg_3.c, false, true, false), vec4<bool>(arg_0.c, true, arg_0.d, arg_3.a)), select(vec4<bool>(arg_3.a, true, arg_3.c, var_1.a), vec4<bool>(true, arg_3.a, arg_0.d, false), arg_0.d))), !vec4<bool>(var_1.a, all(vec4<bool>(true, false, false, arg_0.c)), false, all(vec3<bool>(true, false, true))), select(select(vec4<bool>(true, false, false, arg_3.a), vec4<bool>(true, arg_0.c, true, true), !arg_3.a), !(!vec4<bool>(arg_0.a, false, var_1.c, true)), all(select(vec4<bool>(true, var_1.c, arg_3.c, arg_3.d), vec4<bool>(false, arg_3.d, var_1.d, arg_0.d), true)))), !vec4<bool>((arg_1 < arg_1) | true, !arg_0.a & true, select(var_1.c, true, true), false), arg_0.a);
    let var_3 = Struct_1(arg_3.d, var_1.b, func_2(~u_input.a, 46616i), -(~arg_1 & arg_1) < _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~reverseBits(global0[_wgslsmith_index_u32(37191u, 23u)]), 23u)], 28u)], _wgslsmith_clamp_vec3_i32(select(global1[_wgslsmith_index_u32(u_input.a, 28u)], vec3<i32>(-21922i, 2147483647i, -56563i), var_2.zyz), vec3<i32>(-22251i, arg_1, -13201i), firstTrailingBit(global1[_wgslsmith_index_u32(var_1.e, 28u)]))), reverseBits(31010u));
    global1 = array<vec3<i32>, 28>();
    return Struct_2(arg_3);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_1 = arg_1.a.e;
    var_0 = 32368u;
    let var_2 = select(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -47887i, 2147483647i, -1i)), vec4<i32>(1i, 1i, 1i, 1i)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(34500u, 28u)]), 941i, 1i, 1i), vec4<i32>(_wgslsmith_add_i32(min(-47964i, -1i), -289i), ~(~2480i), _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(1i, 1591i), -9309i), _wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 28u)], -vec3<i32>(27773i, 2147483647i, 2147483647i)))), vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(1i, -1i, -1i, -2147483647i)), ~vec4<i32>(1i, 8880i, 1938i, 0i)), firstLeadingBit(reverseBits(~0i)), 2147483647i, 0i), select(vec4<bool>(arg_1.a.d, all(!vec3<bool>(arg_0, false, true)), arg_0, true), vec4<bool>(true, !any(vec2<bool>(arg_0, true)), false, all(vec2<bool>(true, true))), false));
    global1 = array<vec3<i32>, 28>();
    return func_4(func_4(func_4(global2[_wgslsmith_index_u32(4294967295u, 5u)], var_2.x, arg_1.a.b, global2[_wgslsmith_index_u32(~(~var_1), 5u)]).a, -26909i, _wgslsmith_f_op_f32(select(1440f, -375f, true)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~var_1), max(1u, u_input.a)), 5u)]).a, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.b, -288f)))))), arg_1.a);
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    let var_0 = arg_0;
    global2 = array<Struct_1, 5>();
    global1 = array<vec3<i32>, 28>();
    return Struct_2(func_5(true, Struct_2(func_4(func_5(var_0.a.a.a, arg_0.a).a, ~10844i, _wgslsmith_f_op_f32(f32(-1f) * -1759f), var_0.a.a).a)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_4(func_5(true, func_4(Struct_1(true, -1077f, false, false, 29914u), 2147483647i, _wgslsmith_f_op_f32(func_1(2147483647i, vec2<f32>(-167f, 1139f), Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45657u, 23u)], 5u)]))), Struct_1(true, 433f, false, false, u_input.a))), 1u));
    var var_1 = ~vec4<u32>(_wgslsmith_sub_u32(13485u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_0.a.e)), vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(var_0.a.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.e, 23u)], 23u)], 46740u, var_0.a.e)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, var_0.a.e, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_0.a.e, 1u), vec4<u32>(var_0.a.e, 6187u, var_0.a.e, 0u)))), 2485u, global0[_wgslsmith_index_u32(0u, 23u)]);
    let var_2 = !vec2<bool>(var_1.x < global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), var_1.www) ^ ~26607u, 23u)], var_0.a.d);
    global1 = array<vec3<i32>, 28>();
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-568f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, -378f)) + vec2<f32>(var_0.a.b, var_0.a.b))))), var_2));
    var var_4 = Struct_4(func_5(true, func_6(Struct_4(var_0, ~0u))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), -1300f, var_4.a.a.b), abs(vec3<u32>(~var_4.b, 44589u, 136672u)) >> (~_wgslsmith_div_vec3_u32(abs(vec3<u32>(17090u, var_0.a.e, var_1.x)), select(vec3<u32>(u_input.a, var_0.a.e, var_0.a.e), vec3<u32>(var_0.a.e, var_1.x, u_input.a), false)) % vec3<u32>(32u)), 1i, -_wgslsmith_dot_vec3_i32(reverseBits(-global1[_wgslsmith_index_u32(u_input.a, 28u)]), global1[_wgslsmith_index_u32(0u, 28u)]));
}

