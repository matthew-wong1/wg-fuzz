struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-6723i, true, vec2<f32>(894f, -916f), 1u, -970f);

var<private> global1: bool = false;

var<private> global2: array<bool, 10>;

var<private> global3: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(470f, -543f, 1430f), vec3<f32>(-1000f, -1000f, -1039f), vec3<f32>(-1276f, 2326f, 1000f), vec3<f32>(-886f, -739f, -792f), vec3<f32>(-1025f, 1278f, 561f), vec3<f32>(-1880f, -262f, 1203f), vec3<f32>(1181f, 709f, -1851f), vec3<f32>(-567f, -1292f, -432f), vec3<f32>(-432f, -1000f, 1514f), vec3<f32>(-235f, -650f, -924f), vec3<f32>(-386f, -179f, -2225f), vec3<f32>(1261f, 913f, -3041f), vec3<f32>(-1000f, 1084f, 534f), vec3<f32>(-602f, 994f, -1000f), vec3<f32>(-1644f, 338f, 1083f));

var<private> global4: array<Struct_4, 10>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global1 = false;
    var var_0 = vec2<u32>(global0.d, _wgslsmith_sub_u32(4294967295u, ~firstTrailingBit(13417u)) >> (1u % 32u));
    var_0 = vec2<u32>(~var_0.x, 1u);
    global0 = Struct_2(i32(-1i) * -2147483647i, global0.b, vec2<f32>(global0.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(905f, _wgslsmith_div_f32(global0.c.x, 2679f), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 10u)]))))))), 1968u, global0.c.x);
    return max(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(~var_0.x, ~38499u, _wgslsmith_mod_u32(0u, u_input.b), global0.d)), select(select(vec4<u32>(var_0.x, 27607u, global0.d, 69264u), vec4<u32>(global0.d, 4294967295u, u_input.a, 1u), false), ~vec4<u32>(0u, u_input.b, 90426u, 4294967295u), global0.a < 484i) & select(select(vec4<u32>(u_input.a, 0u, var_0.x, var_0.x), vec4<u32>(52914u, 1u, 1u, 14244u), global2[_wgslsmith_index_u32(24191u, 10u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.b, 2226u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.a, 0u)), select(vec4<bool>(global0.b, global0.b, global0.b, global2[_wgslsmith_index_u32(29071u, 10u)]), vec4<bool>(true, global0.b, global0.b, global2[_wgslsmith_index_u32(var_0.x, 10u)]), global0.b))), 14589u);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> bool {
    let var_0 = ~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, global0.a), _wgslsmith_add_i32(-1i, -22620i), 2147483647i >> (u_input.a % 32u)), vec3<i32>(1i, max(global0.a, -2147483647i), -4213i)));
    var var_1 = i32(-1i) * -1i;
    var var_2 = Struct_3(66010i | ~(~global0.a), 1274f);
    var_1 = ~global0.a;
    let var_3 = vec2<u32>(69564u, ~u_input.a << (0u % 32u));
    return global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(1057u, max(func_3(), ~var_3.x))), reverseBits(max(_wgslsmith_add_u32(4294967295u, u_input.b), var_3.x >> (global0.d % 32u)) << (u_input.a % 32u))), 10u)];
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    global4 = array<Struct_4, 10>();
    var var_0 = countOneBits(u_input.b);
    global0 = Struct_2(1i, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e, -260f, -783f)))), any(select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], true), !vec3<bool>(global0.b, global0.b, global0.b)))), vec2<f32>(220f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.e * _wgslsmith_div_f32(arg_0.x, -878f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f))))), 24441u, -283f);
    var var_1 = Struct_1(~vec4<i32>(-2147483647i, ~(~28755i), global0.a, firstLeadingBit(reverseBits(27253i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3[_wgslsmith_index_u32(33910u, 15u)], vec3<f32>(924f, -1029f, -145f)))))) + _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~firstLeadingBit(0u), 15u)])), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -global0.a, abs(global0.a), _wgslsmith_sub_i32(_wgslsmith_add_i32(global0.a, 0i), -18769i)), -max(vec4<i32>(1i, global0.a, global0.a, -2147483647i) << (vec4<u32>(global0.d, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, global0.a, -1i, global0.a), vec4<i32>(38634i, 2147483647i, 2147483647i, global0.a)))));
    let var_2 = Struct_1(~var_1.c, var_1.b, firstTrailingBit(vec4<i32>(global0.a, global0.a, ~global0.a, -global0.a)) >> (~(~vec4<u32>(4294967295u, u_input.a, 62378u, global0.d)) % vec4<u32>(32u)));
    return Struct_3(~global0.a, _wgslsmith_f_op_f32(sign(2233f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_4 {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global3[_wgslsmith_index_u32(29388u, 15u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global3[_wgslsmith_index_u32(u_input.a, 15u)])))), global0.b) != global0.b;
    let var_0 = max(31936u, 1u);
    let var_1 = vec4<f32>(arg_2.b, arg_0.b, global0.e, _wgslsmith_f_op_f32(-arg_2.b));
    var var_2 = vec4<i32>(~arg_0.a, global0.a, 2147483647i, ~(~(~(-23587i << (u_input.a % 32u)))));
    var var_3 = _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0, global0.d, var_0), vec4<u32>(28938u, 0u, 0u, 0u)), vec4<u32>(u_input.b, 0u, global0.d, 88082u)) & select(~vec4<u32>(u_input.b, 27789u, var_0, 4294967295u), vec4<u32>(4294967295u, global0.d, u_input.b, global0.d) >> (vec4<u32>(var_0, 1u, global0.d, 4294967295u) % vec4<u32>(32u)), !global2[_wgslsmith_index_u32(global0.d, 10u)])), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d, global0.d, 6596u, 2760u) >> (~vec4<u32>(var_0, var_0, u_input.b, global0.d) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(78075u, u_input.a, 1u, global0.d) | vec4<u32>(u_input.a, global0.d, 0u, var_0), ~vec4<u32>(9085u, var_0, var_0, var_0)), abs(select(vec4<u32>(u_input.b, var_0, global0.d, global0.d), vec4<u32>(u_input.a, var_0, global0.d, global0.d), global0.b))));
    return global4[_wgslsmith_index_u32(2050u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(2368f, global0.e));
    let var_1 = func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_div_f32(978f, _wgslsmith_f_op_f32(f32(-1f) * -437f)))), select(select(vec4<bool>(!global2[_wgslsmith_index_u32(global0.d, 10u)], true, any(vec3<bool>(true, false, global0.b)), global2[_wgslsmith_index_u32(func_3(), 10u)]), select(!vec4<bool>(global0.b, global0.b, true, global2[_wgslsmith_index_u32(global0.d, 10u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.d, 10u)], true, true), true), vec4<bool>(false | global0.b, global0.c.x < var_0, true, !global0.b)), vec4<bool>(all(vec3<bool>(true, true, global0.b)) && true, true, true, !global0.b && (global0.b | false)), select(vec4<bool>(true, global0.b, !global2[_wgslsmith_index_u32(4294967295u, 10u)], 1u >= global0.d), vec4<bool>(global0.b, global0.b | false, true, !global0.b), vec4<bool>(true, !global2[_wgslsmith_index_u32(global0.d, 10u)], any(vec2<bool>(true, false)), global2[_wgslsmith_index_u32(15509u, 10u)] | global0.b))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global0.e, -1645f), vec2<f32>(-506f, 544f)))))));
    let var_2 = all(select(select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], false), vec2<bool>(!var_1.a, false), vec2<bool>(any(vec3<bool>(true, var_1.a, global2[_wgslsmith_index_u32(u_input.a, 10u)])), all(vec3<bool>(false, global0.b, true)))), select(!vec2<bool>(global0.b, global2[_wgslsmith_index_u32(9753u, 10u)]), select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], false), vec2<bool>(global0.b, global0.b), var_1.a), select(vec2<bool>(global2[_wgslsmith_index_u32(5407u, 10u)], true), vec2<bool>(true, false), false), select(vec2<bool>(false, global0.b), vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(71016u, 10u)]), global2[_wgslsmith_index_u32(u_input.a, 10u)])), true), vec2<bool>(!(var_1.a | false), all(select(vec2<bool>(var_1.a, false), vec2<bool>(false, var_1.a), vec2<bool>(false, false))))));
    let var_3 = select(vec4<bool>(var_1.a, !global2[_wgslsmith_index_u32(~(~global0.d), 10u)], !all(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], false)), true), !select(!vec4<bool>(var_2, global2[_wgslsmith_index_u32(u_input.b, 10u)], true, global2[_wgslsmith_index_u32(62071u, 10u)]), !vec4<bool>(false, true, var_2, true), false), false);
    let var_4 = max(firstTrailingBit(vec2<u32>(firstTrailingBit(reverseBits(7304u)), ~u_input.a)), ~(~(select(vec2<u32>(3639u, 4294967295u), vec2<u32>(40884u, 11035u), vec2<bool>(false, true)) ^ vec2<u32>(66642u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-377f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1663f - var_0) + 1235f), 506f)), global0.c.x), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1000f)) - global0.e));
}

