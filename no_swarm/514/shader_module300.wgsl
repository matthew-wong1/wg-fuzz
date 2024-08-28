struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1 = Struct_1(76232u, 11653i, 69678u, 25617u, true);

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: i32;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(8731u, i32(-2147483648), 4294967295u, 27927u, true), Struct_1(0u, 0i, 9060u, 4294967295u, true), Struct_1(4294967295u, 2147483647i, 40777u, 1572u, false), Struct_1(30560u, 2147483647i, 8211u, 13425u, false), Struct_1(1u, 2147483647i, 8813u, 17753u, false), Struct_1(25613u, -1i, 0u, 0u, false), Struct_1(9329u, -1i, 1u, 34135u, false), Struct_1(15241u, 1i, 30857u, 1u, false), Struct_1(34032u, 22439i, 16907u, 33684u, false), Struct_1(22596u, i32(-2147483648), 26321u, 16471u, true), Struct_1(27135u, i32(-2147483648), 111066u, 75457u, false), Struct_1(51435u, 2147483647i, 1u, 2604u, true), Struct_1(1u, 14347i, 75590u, 55621u, true), Struct_1(0u, 15458i, 29033u, 1u, true), Struct_1(120u, 31365i, 85179u, 4019u, true), Struct_1(67865u, 150i, 102800u, 43225u, false), Struct_1(0u, 2147483647i, 23300u, 4294967295u, false), Struct_1(105695u, 30016i, 25128u, 37766u, true), Struct_1(30885u, 0i, 4294967295u, 0u, true), Struct_1(1u, 1077i, 1u, 1u, true), Struct_1(4294967295u, -5475i, 4294967295u, 4294967295u, true), Struct_1(11975u, 2147483647i, 1u, 105322u, false), Struct_1(13069u, i32(-2147483648), 5079u, 4294967295u, false), Struct_1(34659u, 24681i, 55088u, 4909u, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = -1000f;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - var_0);
    let var_3 = -1i;
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, ~u_input.e), firstTrailingBit(~1u)), 24u)];
    return select(vec4<bool>(all(!select(vec2<bool>(global1.e, true), vec2<bool>(global2.x, global1.e), global2.x)), false, false, !any(vec3<bool>(false, global1.e, false))), !vec4<bool>(any(select(global2.yy, global2.yx, var_1)), 145f <= var_0, any(!vec2<bool>(global2.x, true)), true), select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15057u, global1.a, 0u), vec3<u32>(global1.d, global1.a, 0u)), ~vec3<u32>(global1.d, 40559u, 9307u)), 61129u, true) >= 1u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(u_input.e, 4294967295u), ~_wgslsmith_add_i32(-arg_0.b & -22423i, firstTrailingBit(-14318i)), firstLeadingBit(4294967295u), 4294967295u, arg_1 < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2533f - arg_2.x))));
    let var_1 = Struct_1(0u, -2147483647i, ~firstTrailingBit(_wgslsmith_add_u32(0u, max(31805u, global1.c))), arg_0.c, all(select(func_3(), select(!vec4<bool>(true, global1.e, false, false), vec4<bool>(arg_0.e, var_0.e, false, false), global1.e), global1.e)));
    let var_2 = !var_0.e;
    var var_3 = true;
    let var_4 = arg_0;
    return select(-u_input.a, -(~u_input.c), true);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global4 = array<Struct_1, 24>();
    let var_0 = 0i;
    var var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(Struct_1(0u, -1i, global1.a, global1.d, global1.e), -108f, vec3<f32>(-922f, -525f, -444f)), func_2(global4[_wgslsmith_index_u32(global1.d, 24u)], 1349f, vec3<f32>(-1020f, -961f, -193f))), 1i << (select(u_input.e, 56790u, false) % 32u)), -_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-1i, 39941i), u_input.c, false), func_2(global0[_wgslsmith_index_u32(5888u, 1u)], 428f, vec3<f32>(332f, 459f, -1030f)), arg_0 << (vec2<u32>(global1.a, u_input.e) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_sub_vec2_i32(arg_0, select(arg_0, -abs(vec2<i32>(var_0, var_1.x)), false));
    global1 = global4[_wgslsmith_index_u32(~global1.c, 24u)];
    return -1718f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global3 = func_2(global0[_wgslsmith_index_u32(~(~u_input.e), 1u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(316f * 574f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f + arg_2)), arg_2) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -875f), arg_2)), 2665f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_2))))).x;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-arg_0))))));
    global3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(vec3<i32>(u_input.d, 1i, 2147483647i) << (vec3<u32>(u_input.e, arg_3.c, u_input.e) % vec3<u32>(32u))), reverseBits(-vec3<i32>(u_input.d, u_input.a.x, arg_1.b))), firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -28218i, 4976i), max(u_input.b, u_input.b)))), u_input.b.x);
    var var_1 = arg_1.e & !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + var_0.x) < 325f);
    global1 = global4[_wgslsmith_index_u32(arg_1.d, 24u)];
    return Struct_1(u_input.e, 1i, _wgslsmith_div_u32(firstTrailingBit(arg_3.c), ~arg_1.d) & ~global1.c, arg_3.a, all(func_3().zzw));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global4 = array<Struct_1, 24>();
    let var_0 = ~_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.d, -57664i, arg_1.b, -2147483647i), abs(vec4<i32>(-2147483647i, -2147483647i, global1.b, -22070i)), vec4<bool>(true, global1.e, global2.x, true)) >> (~(~vec4<u32>(u_input.e, 1u, arg_1.a, global1.d)) % vec4<u32>(32u)), vec4<i32>(func_2(Struct_1(34964u, u_input.b.x, global1.a, u_input.e, global1.e), _wgslsmith_f_op_f32(f32(-1f) * -809f), vec3<f32>(1f, 1f, 1f)).x, _wgslsmith_dot_vec4_i32(vec4<i32>(30347i, 1i, u_input.a.x, arg_1.b) << (vec4<u32>(54561u, arg_1.c, u_input.e, 11925u) % vec4<u32>(32u)), -vec4<i32>(global1.b, -1i, global1.b, arg_1.b)), _wgslsmith_div_i32(u_input.a.x, -arg_1.b), ~(arg_1.b << (1u % 32u))));
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-728f, _wgslsmith_f_op_f32(max(429f, -500f)))))), _wgslsmith_f_op_f32(select(437f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1907f, 129f, false)))), !(global1.b < -26212i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f + _wgslsmith_f_op_f32(446f + -1599f)))), Struct_1(global1.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, arg_0), u_input.b), vec3<i32>(-28006i, -2147483647i, var_0.x), u_input.b), var_0.yxx), countOneBits(~arg_1.d), ~2199u, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(733f, 2347f)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(663f + 1307f) * _wgslsmith_f_op_f32(141f - -436f)))) - _wgslsmith_f_op_f32(1453f - 1000f)), global0[_wgslsmith_index_u32(global1.d, 1u)]);
    var var_2 = Struct_1(_wgslsmith_add_u32(abs(~_wgslsmith_clamp_u32(var_1.d, arg_1.a, 50572u)), global1.a >> (((global1.a >> (5677u % 32u)) ^ 10485u) % 32u)), var_0.x, 44031u, ~firstTrailingBit(arg_1.c), var_1.e);
    global3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-560f, 600f), -1856f, _wgslsmith_f_op_f32(-639f * 607f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-952f, 133f, 826f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, -1078f, -648f)))))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1499f - 1097f), _wgslsmith_div_f32(1000f, -621f), _wgslsmith_div_f32(282f, 702f))), Struct_1(~20767u, _wgslsmith_clamp_i32(-2147483647i << (0u % 32u), var_1.b, arg_1.b >> (u_input.e % 32u)), global1.d, _wgslsmith_mult_u32(u_input.e, 17026u ^ arg_1.d), !(global1.b >= var_2.b)), 148f, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(286f)), -620f))), global4[_wgslsmith_index_u32(var_2.a, 24u)]).b;
    return global4[_wgslsmith_index_u32(~(~(~(~(~u_input.e)))), 24u)];
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 0u;
    let var_1 = ~max(54726u, arg_0.c);
    var var_2 = Struct_1(firstTrailingBit(14341u), arg_0.b, var_0, ~_wgslsmith_div_u32(global1.d, 4294967295u), global2.x);
    let var_3 = Struct_1(firstTrailingBit(var_1), ~(~(-2147483647i)), select(firstTrailingBit(var_0), ~(~_wgslsmith_div_u32(23607u, u_input.e)), true), select(var_1, 1u, true), global2.x || global1.e);
    let var_4 = !(!select(!vec4<bool>(false, true, var_2.e, true), select(!vec4<bool>(true, true, arg_0.e, var_2.e), select(vec4<bool>(true, false, global1.e, var_3.e), vec4<bool>(global1.e, false, arg_2.e, false), vec4<bool>(false, global1.e, arg_0.e, false)), vec4<bool>(var_2.e, true, true, global2.x)), select(func_3(), vec4<bool>(true, false, false, global2.x), global1.e || false)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global4[_wgslsmith_index_u32(global1.c, 24u)], 667f, func_5(1i, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1453f, -1525f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(111f, 1053f, -269f), vec3<f32>(674f, 1908f, 1279f)))), Struct_1(u_input.e, reverseBits(2147483647i), _wgslsmith_mod_u32(1u, 53810u), _wgslsmith_sub_u32(u_input.e, u_input.e), all(vec4<bool>(true, false, false, global2.x))), _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.d, -3159i))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(u_input.e, global1.a)), 24u)])));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c, u_input.e >> ((global1.c >> (4294967295u % 32u)) % 32u), u_input.e), 24u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, var_1.c, _wgslsmith_mult_u32(var_1.a, u_input.e), 1u) ^ ~countOneBits(min(vec4<u32>(18552u, var_0.d, var_1.c, u_input.e), vec4<u32>(u_input.e, 1u, global1.a, var_0.d))), abs(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.e, global1.d), vec4<u32>(51938u, var_1.c, 69905u, 4294967295u), vec4<u32>(u_input.e, 6738u, u_input.e, var_1.d))))), 1u)];
    var var_3 = Struct_1((firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_2.c, u_input.e, 1u), vec4<u32>(0u, u_input.e, var_0.c, 0u))) ^ ~(~u_input.e)) >> (1u % 32u), -_wgslsmith_mult_i32(~(-34811i), ~(-5063i)) >> (0u % 32u), 4294967295u, u_input.e, all(!select(!vec3<bool>(false, var_0.e, true), !vec3<bool>(true, true, global1.e), false)));
    let var_4 = Struct_1(_wgslsmith_mod_u32(global1.d, _wgslsmith_mod_u32(abs(var_0.c), func_6(func_6(Struct_1(var_2.a, var_0.b, 36916u, 42528u, var_0.e), -952f, Struct_1(u_input.e, -8906i, 30445u, var_0.a, var_0.e)), 217f, func_5(var_0.b, global4[_wgslsmith_index_u32(13525u, 24u)])).d)), global1.b, ~_wgslsmith_mod_u32(4294967295u, u_input.e), func_6(func_6(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(79045u, ~62872u, min(var_0.c, u_input.e)), 1u)], -2504f, func_6(global0[_wgslsmith_index_u32(~76677u, 1u)], -587f, func_5(-52894i, Struct_1(4294967295u, 1i, 4294967295u, var_2.a, true)))), 1f, Struct_1(4294967295u, -var_1.b, u_input.e, ~1u, var_0.e)).a, func_5(var_1.b >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, global1.d), vec2<u32>(1u, 0u)), 6705u | var_1.a) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(4294967295u), u_input.e >> (1u % 32u)), 1u)]).e);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.d, var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(368f, -756f), vec2<f32>(-640f, 1000f), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1207f)))))), var_0.b);
}

