struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(87292u, vec2<bool>(false, false)), Struct_1(65435u, vec2<bool>(true, true)), Struct_1(501u, vec2<bool>(true, true)));

var<private> global1: Struct_1 = Struct_1(1u, vec2<bool>(false, true));

var<private> global2: vec2<i32>;

var<private> global3: u32;

var<private> global4: array<u32, 15> = array<u32, 15>(0u, 12639u, 54212u, 1u, 98666u, 4404u, 34541u, 4294967295u, 47045u, 4294967295u, 9586u, 4294967295u, 1u, 17271u, 0u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = global1.b.x;
    global1 = Struct_1(firstLeadingBit(global1.a), global1.b);
    global2 = -vec2<i32>(global2.x, ~(~firstTrailingBit(global2.x)));
    var var_1 = _wgslsmith_add_vec4_u32(~select(~(~vec4<u32>(global4[_wgslsmith_index_u32(1u, 15u)], global1.a, 37089u, global4[_wgslsmith_index_u32(global1.a, 15u)])), reverseBits(min(vec4<u32>(global1.a, global1.a, 0u, 42577u), vec4<u32>(global1.a, global1.a, 0u, 1u))), !(!vec4<bool>(global1.b.x, global1.b.x, true, true))), _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(u_input.a, 4294967295u)), global1.a, global1.a, 1u), max(~(~vec4<u32>(0u, 4294967295u, global1.a, 4294967295u)), vec4<u32>(0u, abs(5387u), global4[_wgslsmith_index_u32(16668u, 15u)], u_input.a))));
    var_1 = ~vec4<u32>(78687u, u_input.a, global1.a, global4[_wgslsmith_index_u32(4294967295u, 15u)]);
    return vec3<bool>(global1.b.x, true, _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(2147483647i, global2.x, 32332i)) >= 8237i);
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(global1.b.x, !(!(!global1.b.x)), select(_wgslsmith_f_op_f32(sign(1063f)) <= _wgslsmith_f_op_f32(abs(-2581f)), all(global1.b), global1.b.x));
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a, 31298u, u_input.a), ~vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a, 670u, global1.a)))), abs(vec4<u32>(max(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(58231u, 15u)], 15u)], ~27218u), u_input.a >> (~global4[_wgslsmith_index_u32(global1.a, 15u)] % 32u), select(20935u, _wgslsmith_dot_vec2_u32(vec2<u32>(45617u, 1u), vec2<u32>(0u, 35420u)), true), global1.a)));
    var_0 = !func_3(_wgslsmith_f_op_f32(min(-973f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(372f)))))));
    return _wgslsmith_f_op_f32(2064f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-567f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-184f + _wgslsmith_f_op_f32(-418f + 231f)), 208f)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, _wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(f32(-1f) * -546f), -608f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, -1381f, -515f, 1103f)) * vec4<f32>(595f, -1391f, -406f, -759f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(931f, 660f, -1172f, 386f)))), global1.b.x))))));
    return 37937u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(select(vec4<bool>(true, true, true, global1.b.x || arg_0.b.x), !select(vec4<bool>(false, global1.b.x, global1.b.x, false), vec4<bool>(true, global1.b.x, false, global1.b.x), true), true), vec4<bool>(func_3(-1371f).x & (arg_0.b.x & true), true, !(global1.b.x == global1.b.x), true), vec4<bool>(arg_0.b.x, true, arg_0.b.x, all(vec2<bool>(global1.b.x, false)))), vec4<bool>(global1.b.x, true, arg_0.b.x, !arg_0.b.x != !any(vec4<bool>(false, true, false, true))), -global2.x <= global2.x);
    var var_1 = -458f;
    var var_2 = Struct_1(4294967295u, vec2<bool>(true, !global1.b.x || func_3(-527f).x));
    var var_3 = 2349f;
    let var_4 = global0[_wgslsmith_index_u32(global1.a, 3u)];
    return global0[_wgslsmith_index_u32(~(u_input.a << (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_4.a, arg_0.a, arg_0.a), vec3<u32>(global1.a, 19032u, 4294967295u)))) % 32u)), 3u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(871u, global4[_wgslsmith_index_u32(~(~abs(37746u)), 15u)]), countOneBits(global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 39529u), vec2<u32>(global1.a, global1.a))), 15u)]), ~firstLeadingBit(4294967295u));
    global1 = func_4(func_4(arg_1));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(global2.x), i32(-1i) * -max(-1i, global2.x), global2.x, countOneBits(global2.x)), _wgslsmith_div_vec4_i32(((vec4<i32>(global2.x, global2.x, global2.x, 2147483647i) ^ vec4<i32>(global2.x, global2.x, 2147483647i, global2.x)) << ((vec4<u32>(52428u, global4[_wgslsmith_index_u32(1u, 15u)], var_0.x, arg_0.a) & vec4<u32>(50024u, global1.a, 64220u, 4294967295u)) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-16131i, -11043i, -46337i, global2.x), vec4<i32>(global2.x, 2147483647i, global2.x, global2.x)), vec4<i32>(global2.x >> (var_0.x % 32u), 2147483647i, global2.x, global2.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 63232u, arg_1.a, 11924u), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 15u)], 4294967295u, var_0.x, u_input.a), select(vec4<u32>(arg_0.a, 1u, 1u, 1u), vec4<u32>(40255u, u_input.a, arg_1.a, 0u), arg_2.b.x)) % vec4<u32>(32u))));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(808f, 1000f))) * vec2<f32>(348f, -951f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(103f)), _wgslsmith_f_op_f32(f32(-1f) * -762f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(623f, 942f) - vec2<f32>(1060f, 160f)))), (firstTrailingBit(arg_1.a) & arg_2.a) >= max(_wgslsmith_dot_vec2_u32(vec2<u32>(40308u, 1u), vec2<u32>(global4[_wgslsmith_index_u32(arg_1.a, 15u)], 1u)), firstLeadingBit(31953u)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - 810f))), _wgslsmith_f_op_f32(-1795f - 379f)));
    return (var_2.a << (var_2.a % 32u)) ^ ~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(global1.a, 4294967295u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(95031u, 52572u, var_0.x, arg_0.a), ~vec4<u32>(4294967295u, arg_1.a, var_0.x, u_input.a))), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(global4[_wgslsmith_index_u32(func_5(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.a, 15u)], 15u)], 4984u), vec2<u32>(global4[_wgslsmith_index_u32(29230u, 15u)], global1.a)), select(vec2<bool>(global1.b.x, true), vec2<bool>(true, false), vec2<bool>(global1.b.x, global1.b.x))), func_4(global0[_wgslsmith_index_u32(func_1(), 3u)]), func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4[_wgslsmith_index_u32(1u, 15u)], global1.a, 3216u), vec4<u32>(34949u, global4[_wgslsmith_index_u32(55097u, 15u)], 1u, 33165u)), 3u)])), 15u)]), !vec2<bool>(false && global1.b.x, any(global1.b)));
    global3 = abs(countOneBits(select(abs(1u), _wgslsmith_add_u32(49163u, 1u), true)) << (countOneBits(~_wgslsmith_mult_u32(var_0.a, 4294967295u)) % 32u));
    let var_1 = 4294967295u;
    let var_2 = Struct_1(0u, select(vec2<bool>(true, false), global1.b, vec2<bool>(!var_0.b.x, !(global1.b.x | false))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(598f, -448f) - _wgslsmith_f_op_f32(trunc(-1078f))), _wgslsmith_f_op_f32(min(745f, _wgslsmith_div_f32(-486f, -1372f))), _wgslsmith_f_op_f32(f32(-1f) * -1574f), 1108f))));
    let var_4 = ~(~global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(603f);
}

