struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-26453i, 47018i, -12688i, -1i, -43671i, 17566i, i32(-2147483648), 29171i, 86960i, 27872i, 0i, 1i, 65456i, 27805i, -40468i, 1i, -27941i, 46840i, -526i, i32(-2147483648), 1i);

var<private> global1: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = abs(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b, ~(-vec2<i32>(arg_0.b.x, arg_1.b.x))), firstTrailingBit(countOneBits(vec2<i32>(arg_1.b.x, global0[_wgslsmith_index_u32(arg_0.a.c.x, 21u)])) ^ vec2<i32>(arg_1.b.x, 55478i))));
    var var_1 = arg_1.a.c;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1751f)));
    var var_3 = vec4<bool>(any(!select(vec3<bool>(arg_1.a.a, true, true), !vec3<bool>(false, arg_1.a.a, true), true)), false, ~1i < select(-1i, select(global0[_wgslsmith_index_u32(~arg_1.a.b.x, 21u)], 49798i >> (arg_1.a.b.x % 32u), true | arg_1.a.a), arg_1.a.a), arg_0.a.a);
    global1 = var_3.x;
    return _wgslsmith_mod_vec4_u32(abs(arg_1.a.c), firstLeadingBit(vec4<u32>(~abs(u_input.a.x), abs(~4294967295u), 1920u, _wgslsmith_dot_vec3_u32(u_input.a, max(var_1.zxy, var_1.wyz)))));
}

fn func_2() -> bool {
    global0 = array<i32, 21>();
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(~func_3(Struct_2(Struct_1(true, vec4<u32>(3963u, 0u, 4294967295u, 1352u), vec4<u32>(0u, u_input.a.x, 4294967295u, 65595u)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 0i)), Struct_2(Struct_1(true, vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, 0u, 1u, 0u)), vec2<i32>(global0[_wgslsmith_index_u32(37454u, 21u)], global0[_wgslsmith_index_u32(47096u, 21u)]))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f * -908f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(609f, _wgslsmith_f_op_f32(-1400f * _wgslsmith_f_op_f32(703f + 1694f)))))));
    var var_2 = vec2<i32>(-2147483647i, firstLeadingBit(global0[_wgslsmith_index_u32(~abs(u_input.a.x), 21u)])) & ~min(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 10492i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 1i), vec2<i32>(global0[_wgslsmith_index_u32(18838u, 21u)], -52814i)), abs(abs(vec2<i32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))));
    var var_3 = Struct_1(~_wgslsmith_dot_vec3_i32(-vec3<i32>(20166i, -2147483647i, var_2.x), vec3<i32>(-2147483647i, var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) == _wgslsmith_clamp_i32(~firstLeadingBit(0i), firstTrailingBit(19435i), min(0i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 21u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), ~vec4<u32>(1u >> (u_input.a.x % 32u), 27993u, 92559u, 8872u), vec4<u32>(4294967295u >> (u_input.a.x % 32u), 3057u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.a.x, u_input.a.x, 359u, 1u), ~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<bool>(true, true, true, true)), firstLeadingBit(~vec4<u32>(4966u, 1u, u_input.a.x, u_input.a.x))), u_input.a.x));
    return ((~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ func_3(Struct_2(Struct_1(false, vec4<u32>(u_input.a.x, u_input.a.x, var_3.b.x, 120600u), vec4<u32>(u_input.a.x, 4294967295u, var_3.b.x, 38746u)), vec2<i32>(4588i, 22162i)), Struct_2(Struct_1(var_3.a, vec4<u32>(14370u, u_input.a.x, u_input.a.x, u_input.a.x), var_3.b), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], var_2.x))).x) > ~(u_input.a.x >> (~19002u % 32u))) || (!any(vec3<bool>(true, var_3.a, false)) | var_3.a);
}

fn func_1() -> Struct_1 {
    global1 = func_2() | true;
    let var_0 = countOneBits(vec3<u32>(4294967295u, 4702u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 66387u, 0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 1u, 13944u)), ~34664u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, ~1097u), (u_input.a << (u_input.a % vec3<u32>(32u))) << (~vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~u_input.a >> (u_input.a % vec3<u32>(32u))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(var_0.x, 21u)]) < -global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 57984u, var_0.x, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, 45613u, 52404u, 37941u))) & func_3(Struct_2(Struct_1(true, vec4<u32>(26106u, 0u, var_0.x, u_input.a.x), vec4<u32>(u_input.a.x, var_0.x, 94085u, var_0.x)), vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], -43079i)), Struct_2(Struct_1(false, vec4<u32>(var_0.x, u_input.a.x, 0u, 0u), vec4<u32>(var_0.x, 11486u, 7946u, var_0.x)), vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], -2147483647i))), vec4<u32>(1u, 38719u, firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(80059u, u_input.a.x), firstTrailingBit(vec2<u32>(66299u, 0u))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<i32>(2147483647i, 2147483647i), ~vec2<i32>(3874i, 30582i)), vec2<i32>(-1i) * -vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], -25557i), -vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(var_0.x, 21u)])) | vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(var_0.x, 21u)]) << (var_0.xx % vec2<u32>(32u)), max(vec2<i32>(1i, 1i), vec2<i32>(4966i, -2038i))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-27871i, -1i, -21275i, global0[_wgslsmith_index_u32(var_0.x, 21u)]), max(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], 4633i, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<i32>(-10368i, 0i, -14284i, 36476i)))));
    let var_2 = false;
    var_1 = Struct_2(var_1.a, _wgslsmith_div_vec2_i32(~var_1.b, _wgslsmith_sub_vec2_i32(var_1.b, _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 21u)], 2147483647i) ^ var_1.b, max(var_1.b, var_1.b)))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1205f, -436f)), _wgslsmith_f_op_f32(535f * 708f), _wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-572f, -137f, 651f))), !var_0.a))))));
    var var_2 = select(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, true, false), var_0.a), vec3<bool>(false, false, true), all(vec3<bool>(false, var_0.a, false)) && func_2()), vec3<bool>(false, !func_1().a, 67236u < _wgslsmith_div_u32(1u, var_0.c.x)), vec3<bool>(any(select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a))), var_0.a, var_0.a)), select(!vec3<bool>(true, !var_0.a, true), vec3<bool>(var_0.a, !(true & var_0.a), _wgslsmith_sub_i32(-2147483647i, global0[_wgslsmith_index_u32(0u, 21u)]) >= global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), var_0.a), !(!vec3<bool>(func_1().a, var_0.a && false, !var_0.a)));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(max(-143f, 958f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.x, 749f, true))))))))));
    var var_4 = Struct_2(var_0, abs(firstLeadingBit(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<i32>(global0[_wgslsmith_index_u32(4778u, 21u)], global0[_wgslsmith_index_u32(1938u, 21u)])), vec2<i32>(37223i, 25437i) >> (vec2<u32>(7948u, var_0.c.x) % vec2<u32>(32u))))));
    var var_5 = Struct_1(var_1.x != _wgslsmith_f_op_f32(-1343f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 209f))), _wgslsmith_mod_vec4_u32(max(select(~var_0.b, var_0.c, func_1().a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), var_0.c)), ~(~var_4.a.c << (~var_4.a.c % vec4<u32>(32u)))), ~vec4<u32>(~firstTrailingBit(var_4.a.c.x), func_3(Struct_2(var_4.a, var_4.b), Struct_2(Struct_1(false, var_0.b, vec4<u32>(var_0.c.x, 0u, var_4.a.b.x, var_4.a.b.x)), var_4.b)).x, _wgslsmith_mult_u32(0u, 39465u) << (min(1u, 29587u) % 32u), reverseBits(var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(((reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 0i, var_4.b.x, global0[_wgslsmith_index_u32(0u, 21u)])) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(22416i, -24869i, var_4.b.x, var_4.b.x), vec4<i32>(global0[_wgslsmith_index_u32(var_5.b.x, 21u)], global0[_wgslsmith_index_u32(22928u, 21u)], global0[_wgslsmith_index_u32(8347u, 21u)], global0[_wgslsmith_index_u32(var_0.c.x, 21u)]), vec4<i32>(-31166i, global0[_wgslsmith_index_u32(48317u, 21u)], -1i, -2147483647i))) << (~(~vec4<u32>(4294967295u, 1u, var_4.a.c.x, u_input.a.x)) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(max(vec4<i32>(var_4.b.x, 719i, var_4.b.x, var_4.b.x), vec4<i32>(0i, -78567i, global0[_wgslsmith_index_u32(var_4.a.c.x, 21u)], -13268i)) ^ abs(vec4<i32>(47307i, var_4.b.x, var_4.b.x, var_4.b.x)), vec4<i32>(-global0[_wgslsmith_index_u32(var_0.c.x, 21u)], 1i, 15807i, 1i)));
}

