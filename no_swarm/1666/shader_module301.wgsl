struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec3<f32>(-1006f, 1000f, -843f));

var<private> global1: u32 = 1u;

var<private> global2: Struct_1 = Struct_1(-6942i, vec3<f32>(2352f, -238f, -1759f));

var<private> global3: array<vec4<f32>, 4>;

var<private> global4: array<bool, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec3<f32> {
    global4 = array<bool, 10>();
    var var_0 = Struct_5(Struct_2(abs(_wgslsmith_add_vec2_u32(max(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a, 25132u)), firstTrailingBit(vec2<u32>(33900u, 38378u)))), ~firstTrailingBit(vec4<i32>(global0.a, -1i, global2.a, -1i) ^ vec4<i32>(0i, 6032i, 1i, -59331i)), -10794i, _wgslsmith_add_vec4_i32(~vec4<i32>(global2.a, -3530i, u_input.d.x, u_input.c), -select(vec4<i32>(9914i, 2147483647i, global2.a, global0.a), vec4<i32>(-31218i, 26964i, 1i, 1i), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 10u)], true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - -1264f) * _wgslsmith_f_op_f32(-1052f + -199f)) - 1522f)), Struct_2(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.b)), vec2<u32>(68033u, 4294967295u)), vec4<i32>(_wgslsmith_div_i32(u_input.c, -73184i), ~(-u_input.c), ~global2.a, firstLeadingBit(u_input.c)), -global0.a, ~vec4<i32>(firstLeadingBit(-46234i), _wgslsmith_sub_i32(global2.a, -21715i), global0.a, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f))), Struct_4(_wgslsmith_f_op_vec3_f32(select(global0.b, global2.b, select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 10u)], false, global4[_wgslsmith_index_u32(u_input.b, 10u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(16025u, 10u)], global4[_wgslsmith_index_u32(0u, 10u)], true), vec3<bool>(false, false, global4[_wgslsmith_index_u32(16700u, 10u)]), global4[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<bool>(false, true, true))))));
    var_0 = Struct_5(var_0.b, Struct_2(var_0.b.a, vec4<i32>(global2.a, reverseBits(global0.a), global0.a, ~2147483647i), -reverseBits(global0.a), _wgslsmith_mod_vec4_i32(var_0.b.d, ~vec4<i32>(0i, u_input.c, global0.a, global0.a)) ^ -vec4<i32>(-1i, global0.a, -2147483647i, global2.a), global0.b.x), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1449f, var_0.b.e, global0.b.x), vec3<f32>(global0.b.x, global2.b.x, -213f))) * vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + -792f), -1000f, global0.b.x))));
    var var_1 = 49880u >> (var_0.b.a.x % 32u);
    var var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a.x) + 1f)));
    return _wgslsmith_f_op_vec3_f32(round(global0.b));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global2 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), global0.b))));
    let var_0 = arg_0;
    global3 = array<vec4<f32>, 4>();
    let var_1 = 1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.b.x));
    let var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f - 879f))) - _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(select(506f, _wgslsmith_f_op_f32(min(global2.b.x, -484f)), arg_0.x)))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_5) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - -1074f) - _wgslsmith_f_op_f32(max(global0.b.x, -1000f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(global4[_wgslsmith_index_u32(arg_2.b.a.x, 10u)], global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(0u, 10u)], true))), _wgslsmith_f_op_f32(-arg_2.c.a.x))))), 445f));
    let var_1 = Struct_5(Struct_2(vec2<u32>(~_wgslsmith_div_u32(u_input.b, 20016u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(38080u, 4294967295u, 48771u), ~u_input.b)), vec4<i32>(2147483647i, -2147483647i, i32(-1i) * -1i, -1i), 0i, ~(-(~arg_2.a.d)), global0.b.x), arg_2.a, Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(215f, global0.b.x, -1605f) + global2.b)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(205f, arg_0.x, arg_0.x))))));
    let var_2 = ~(~(~(~vec3<u32>(0u, arg_2.b.a.x, 496u))) | ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(arg_2.a.a.x, 2732u, 1u))));
    var var_3 = vec4<bool>(false, true, true, false | (!global4[_wgslsmith_index_u32(arg_2.b.a.x, 10u)] == (true || !global4[_wgslsmith_index_u32(var_2.x, 10u)])));
    global2 = Struct_1(0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.b.e)), _wgslsmith_div_f32(arg_0.x, var_1.c.a.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(762f, var_0)))));
    return Struct_4(var_1.c.a);
}

fn func_4(arg_0: Struct_4) -> u32 {
    var var_0 = !vec3<bool>(global4[_wgslsmith_index_u32(1u, 10u)], all(vec3<bool>(true, true, all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 10u)], true, true)))), global0.a == global0.a);
    let var_1 = Struct_2(_wgslsmith_add_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(101150u, u_input.b), vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 0u)), vec2<u32>(u_input.b, 29966u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), all(vec4<bool>(var_0.x, global4[_wgslsmith_index_u32(u_input.a, 10u)], false, true))), vec2<u32>(~1u, 1u) ^ vec2<u32>(~u_input.a, u_input.b)), ~(-vec4<i32>(-42061i, global0.a, 0i, 2147483647i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 37537i, global0.a, u_input.c), abs(vec4<i32>(u_input.c, 2147483647i, global0.a, u_input.d.x))) >> (48219u % 32u)), vec4<i32>(-(global2.a >> (_wgslsmith_clamp_u32(u_input.b, u_input.a, 21427u) % 32u)), 4517i, -2147483647i, -abs(max(u_input.d.x, 24795i))), -598f);
    var var_2 = ~var_1.c;
    let var_3 = !(!var_0.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e));
    return abs(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(~(~firstTrailingBit(vec2<u32>(u_input.b, 5793u))), abs(vec2<u32>((u_input.b ^ u_input.a) & 28105u, func_4(func_1(global0.b, vec3<i32>(0i, global0.a, -1i), Struct_5(Struct_2(vec2<u32>(u_input.a, u_input.a), vec4<i32>(-39359i, global2.a, global0.a, global0.a), 19992i, vec4<i32>(-65525i, u_input.c, 61821i, global0.a), -986f), Struct_2(vec2<u32>(u_input.a, u_input.a), vec4<i32>(u_input.c, u_input.c, global0.a, global0.a), u_input.c, vec4<i32>(global2.a, 3596i, global2.a, u_input.d.x), global0.b.x), Struct_4(global2.b)))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), global2.b) + _wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(-731f, _wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_f32(-global0.b.x)))));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + global2.b)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1032f)), global0.b.x, any(select(vec2<bool>(false, global4[_wgslsmith_index_u32(10251u, 10u)]), vec2<bool>(global4[_wgslsmith_index_u32(var_0.x, 10u)], global4[_wgslsmith_index_u32(var_0.x, 10u)]), vec2<bool>(true, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))));
    global1 = func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1850f, -124f, global2.b.x), global0.b))), u_input.d, Struct_5(Struct_2(vec2<u32>(var_0.x, 1u), vec4<i32>(u_input.d.x, 35478i, -31147i, u_input.c), 19357i, vec4<i32>(17758i, global0.a, -1i, global2.a), var_1.a.x), Struct_2(vec2<u32>(var_0.x, var_0.x), vec4<i32>(global2.a, u_input.d.x, -2147483647i, -2147483647i), -2147483647i, vec4<i32>(global2.a, -20674i, -1i, u_input.c), global0.b.x), func_1(vec3<f32>(global0.b.x, var_1.a.x, 646f), u_input.d, Struct_5(Struct_2(vec2<u32>(u_input.b, var_0.x), vec4<i32>(u_input.c, -36291i, 36159i, 22617i), global0.a, vec4<i32>(-27665i, 15084i, 1i, 5772i), -346f), Struct_2(vec2<u32>(29311u, 1u), vec4<i32>(-20026i, -2147483647i, u_input.d.x, 10523i), global0.a, vec4<i32>(global0.a, u_input.d.x, global2.a, 1i), 1133f), Struct_4(vec3<f32>(global2.b.x, global2.b.x, var_1.a.x))))))) >> (select((firstTrailingBit(u_input.a) >> (var_0.x % 32u)) >> (0u % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24501u, u_input.a, 8506u, u_input.a), max(vec4<u32>(29040u, 1u, 49918u, 1u), vec4<u32>(26805u, 4294967295u, u_input.b, 100642u))), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(1211u, 0u))), 4294967295u > max(var_0.x, min(var_0.x, u_input.b))) % 32u);
    var var_3 = true;
    let var_4 = u_input.a;
    var var_5 = Struct_2(vec2<u32>(4294967295u, _wgslsmith_mult_u32(~0u, ~var_4)), vec4<i32>(_wgslsmith_mod_i32(global2.a, select(14650i, ~u_input.d.x, false && global4[_wgslsmith_index_u32(var_0.x, 10u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 52061i, ~global2.a, -1i), _wgslsmith_add_vec4_i32(~vec4<i32>(-23380i, global0.a, 4889i, 2147483647i), ~vec4<i32>(27745i, u_input.d.x, global0.a, -1i))), ~(~(-global2.a)), u_input.d.x & 1i), -2147483647i, -select(vec4<i32>(-40340i, -1i, 2147483647i, global0.a) >> (vec4<u32>(var_0.x, u_input.a, var_4, u_input.a) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(-18738i, 13303i, 1i, -2147483647i)), vec4<bool>(false | global4[_wgslsmith_index_u32(var_0.x, 10u)], !global4[_wgslsmith_index_u32(1u, 10u)], var_4 != var_4, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2275f, var_2.x)) * -1055f) - -1629f), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.b, _wgslsmith_add_u32(_wgslsmith_sub_u32(~var_5.a.x, countOneBits(var_4)), abs(_wgslsmith_mult_u32(var_0.x, 73780u))), 0u, var_4), ~select(-41183i, ~2147483647i, any(vec2<bool>(global4[_wgslsmith_index_u32(54081u, 10u)], false))) >> (func_4(Struct_4(_wgslsmith_div_vec3_f32(var_1.a, global0.b))) % 32u), vec3<i32>(-1i) * -(var_5.d.zxw >> (vec3<u32>(1u, 51891u, 29094u) % vec3<u32>(32u))), 1u);
}

