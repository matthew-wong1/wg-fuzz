struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: f32;

var<private> global2: array<u32, 24>;

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(306f, vec3<f32>(1000f, -1239f, 813f)), Struct_3(1791f, vec3<f32>(-1542f, -1394f, 941f)), Struct_3(-957f, vec3<f32>(593f, -1172f, 1681f)), Struct_3(591f, vec3<f32>(-233f, -267f, 992f)), Struct_3(-2968f, vec3<f32>(-639f, 2293f, 899f)), Struct_3(-1192f, vec3<f32>(848f, 795f, 1063f)), Struct_3(-962f, vec3<f32>(-1256f, -604f, -568f)), Struct_3(183f, vec3<f32>(289f, 494f, 1000f)), Struct_3(-878f, vec3<f32>(1623f, 521f, -257f)), Struct_3(1317f, vec3<f32>(-102f, 1003f, -114f)), Struct_3(-254f, vec3<f32>(438f, -1337f, -794f)), Struct_3(-2714f, vec3<f32>(-696f, -1000f, 138f)), Struct_3(2126f, vec3<f32>(962f, -3420f, -1830f)), Struct_3(-1411f, vec3<f32>(402f, -532f, -1178f)), Struct_3(-1850f, vec3<f32>(-2671f, -2061f, -605f)), Struct_3(1564f, vec3<f32>(-390f, -308f, 185f)), Struct_3(640f, vec3<f32>(-373f, 558f, 310f)), Struct_3(535f, vec3<f32>(701f, -467f, 350f)), Struct_3(905f, vec3<f32>(1411f, 1085f, -269f)), Struct_3(-140f, vec3<f32>(248f, -944f, -1000f)), Struct_3(844f, vec3<f32>(-1712f, -760f, 2503f)), Struct_3(953f, vec3<f32>(-1852f, -810f, 936f)), Struct_3(-891f, vec3<f32>(-1964f, 1278f, -550f)), Struct_3(141f, vec3<f32>(-1117f, -1000f, 731f)));

var<private> global4: array<i32, 30>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(-710f * arg_2.a))))) == -715f;
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, ~arg_1, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(abs(99708u), 24u)], 62374u)), ~abs(vec3<u32>(arg_1, global2[_wgslsmith_index_u32(arg_1, 24u)], u_input.a))), (reverseBits(u_input.a) >> (_wgslsmith_mult_u32(~arg_1, ~arg_3) % 32u)) >> (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(69955u, 24u)])), ~vec2<u32>(4294967295u, 46828u))) % 32u), !(((global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16758u, 24u)], 30u)] > -2147483647i) | true) || true), all(!vec3<bool>(select(true, true, false), true, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-925f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-279f))) + 884f));
    var var_3 = firstTrailingBit(arg_0.x);
    global0 = array<vec3<i32>, 31>();
    return any(!select(!(!vec3<bool>(var_1.d, var_1.d, var_1.d)), select(vec3<bool>(true, false, var_1.c), select(vec3<bool>(false, var_1.d, true), vec3<bool>(var_1.d, var_1.d, true), true), false), select(select(vec3<bool>(true, var_1.d, var_1.d), vec3<bool>(var_1.d, false, true), vec3<bool>(false, true, var_1.d)), !vec3<bool>(true, var_1.c, var_1.c), var_1.c || var_1.d)));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_mult_u32(75710u, global2[_wgslsmith_index_u32(u_input.a, 24u)])) << (~0u % 32u), 24u)], 4294967295u, !(68220u != (global2[_wgslsmith_index_u32(85856u, 24u)] & _wgslsmith_clamp_u32(1u, 0u, global2[_wgslsmith_index_u32(u_input.a, 24u)]))), true);
    global4 = array<i32, 30>();
    let var_1 = select(vec2<i32>(-1i) * -abs(vec2<i32>(2147483647i, 69773i)), vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a, 24u)] ^ var_0.a, 15540u), 30u)] & ~1i), !select(vec2<bool>(func_3(vec2<i32>(-24151i, global4[_wgslsmith_index_u32(1u, 30u)]), var_0.a, Struct_3(288f, vec3<f32>(-199f, -894f, 122f)), 4294967295u), true), select(vec2<bool>(true, var_0.d), vec2<bool>(true, true), all(vec4<bool>(true, true, var_0.c, false))), var_0.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-487f - -884f)))), 409f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 687f), vec2<f32>(-737f, -848f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1243f, -479f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))));
    let var_3 = _wgslsmith_dot_vec3_i32(~(-global0[_wgslsmith_index_u32(firstTrailingBit(1u), 31u)]), global0[_wgslsmith_index_u32(~1u, 31u)]);
    return vec3<u32>(_wgslsmith_mod_u32(1u, select(global2[_wgslsmith_index_u32(var_0.b, 24u)] ^ 41239u, u_input.a >> (var_0.a % 32u), false)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(var_0.b), 1u), 24u)], 1u) << (~(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], countOneBits(26302u), global2[_wgslsmith_index_u32(1u, 24u)])) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-389f + -2031f), _wgslsmith_f_op_f32(f32(-1f) * -267f)) * vec3<f32>(_wgslsmith_div_f32(612f, -1090f), _wgslsmith_f_op_f32(round(1000f)), 968f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-993f + -1008f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-527f)), _wgslsmith_div_f32(207f, -315f))), _wgslsmith_f_op_f32(round(-1132f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2178f - _wgslsmith_f_op_f32(-1463f + 1030f)), 1432f, 764f))));
    var var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~(~global2[_wgslsmith_index_u32(4294967295u, 24u)])), ~reverseBits(1u) << (_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(arg_1.x, 24u)], global2[_wgslsmith_index_u32(select(69509u, arg_1.x, true), 24u)]) % 32u)), 30u)];
    let var_3 = Struct_1(global2[_wgslsmith_index_u32(0u ^ u_input.a, 24u)], 56685u >> (func_2().x % 32u), !(u_input.a == arg_1.x), select(!((var_1.x <= 1574f) || (var_0 & var_0)), arg_0.x, var_0));
    global0 = array<vec3<i32>, 31>();
    return abs(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(global4[_wgslsmith_index_u32(u_input.a, 30u)], -10770i)), vec2<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 30u)], 11174i)), firstLeadingBit(vec2<i32>(-2147483647i, 11755i)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 30u)], global4[_wgslsmith_index_u32(27007u, 30u)]), vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(1u, 30u)])) | (vec2<i32>(global4[_wgslsmith_index_u32(1u, 30u)], global4[_wgslsmith_index_u32(var_3.a, 30u)]) ^ vec2<i32>(-1i, -2147483647i)))));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    global0 = array<vec3<i32>, 31>();
    return func_4(!vec3<bool>(true, any(vec2<bool>(true, true)), !(0i >= arg_0)), ~func_2());
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, arg_0, -917f)) - vec3<f32>(arg_0, arg_0, -1008f))))));
    var var_1 = Struct_1(~16166u, u_input.a, false, arg_1);
    global2 = array<u32, 24>();
    let var_2 = countOneBits(select(31650u, min(reverseBits(1u ^ u_input.a), ~_wgslsmith_add_u32(u_input.a, 0u)), false));
    global3 = array<Struct_3, 24>();
    return Struct_2(var_1.b ^ var_2);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(1563f * _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(max(1663f, -1214f))));
    let var_0 = Struct_1(min(abs(arg_0.a), arg_0.a), firstLeadingBit(_wgslsmith_mult_u32(~4294967295u, global2[_wgslsmith_index_u32(u_input.a, 24u)])), any(select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-2178f - _wgslsmith_f_op_f32(-arg_1.b.x)) < -247f);
    let var_1 = _wgslsmith_f_op_f32(-358f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)), 169f) - arg_2.b.x))));
    var var_2 = select(vec2<bool>(arg_2.a != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -905f), _wgslsmith_f_op_f32(abs(var_1)))), var_0.d), select(!vec2<bool>(1132f <= var_1, true), !(!vec2<bool>(var_0.d, var_0.c)), vec2<bool>(true, arg_0.a < 4294967295u)), select(!select(!vec2<bool>(var_0.c, true), !vec2<bool>(var_0.d, var_0.d), !vec2<bool>(var_0.c, var_0.d)), vec2<bool>(true, true), false));
    global4 = array<i32, 30>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(2135f, any(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true)), -func_1(0i)), Struct_3(1f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(974f, 549f, -865f) * vec3<f32>(148f, -244f, 1000f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, 965f, 298f) - vec3<f32>(-104f, -933f, -371f)))))), global3[_wgslsmith_index_u32(4294967295u, 24u)]);
    var var_1 = vec2<u32>(select(1u, _wgslsmith_mult_u32(~0u & _wgslsmith_sub_u32(var_0.a, var_0.a), ~var_0.a), global4[_wgslsmith_index_u32(95059u, 30u)] <= min(-15161i, ~global4[_wgslsmith_index_u32(23984u, 30u)])), ~(~0u));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(18091u, global2[_wgslsmith_index_u32(17237u, 24u)], 4294967295u, global2[_wgslsmith_index_u32(var_0.a, 24u)]))), ~abs(vec4<u32>(0u, var_0.a, u_input.a, 1u)))), ~_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 24u)], var_1.x, 10343u, 1u), ~vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], var_1.x, var_1.x))), false, 9768u <= ~abs(var_0.a | 1u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1545f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-127f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1797f))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -206f);
    let var_4 = Struct_2(~global2[_wgslsmith_index_u32(~53441u, 24u)]);
    var var_5 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    var_5 = min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.x, 51341i), abs(vec2<i32>(2147483647i, 0i))), _wgslsmith_div_i32(_wgslsmith_add_i32(select(-26951i, global4[_wgslsmith_index_u32(0u, 30u)], true), var_5.x), 2205i), _wgslsmith_div_i32(-global4[_wgslsmith_index_u32(var_4.a, 30u)] << (reverseBits(97512u) % 32u), global4[_wgslsmith_index_u32(4294967295u, 30u)])), min(min(global0[_wgslsmith_index_u32(var_2.a, 31u)], vec3<i32>(-global4[_wgslsmith_index_u32(12389u, 30u)], ~2147483647i, ~var_5.x)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-4341i, 2147483647i, global4[_wgslsmith_index_u32(4294967295u, 30u)]), firstLeadingBit(vec3<i32>(35028i, -11202i, global4[_wgslsmith_index_u32(1u, 30u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(31184i).x | (_wgslsmith_div_i32(-global4[_wgslsmith_index_u32(1u, 30u)], 0i & global4[_wgslsmith_index_u32(var_0.a, 30u)]) | 2147483647i), ~global2[_wgslsmith_index_u32(var_2.a | _wgslsmith_div_u32(~u_input.a, 4294967295u), 24u)], _wgslsmith_sub_u32(~1u, firstTrailingBit(2975u)), func_4(vec3<bool>(true, false | !var_2.d, true), countOneBits(vec3<u32>(u_input.a, var_0.a, 4294967295u) >> (vec3<u32>(0u, 38208u, 1u) % vec3<u32>(32u))) & (~vec3<u32>(u_input.a, var_1.x, 85164u) >> (~vec3<u32>(9694u, var_0.a, 78616u) % vec3<u32>(32u)))).x);
}

