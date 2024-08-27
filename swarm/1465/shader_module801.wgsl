struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, false, true, false, true, false, false, false, true, false, false, true, false, false, true, true, false, true, false, false, true, false);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(-1i, 0i, -23389i, -12975i), vec4<u32>(1u, 68053u, 0u, 1u), 76226u, vec4<bool>(false, false, true, false), false), Struct_1(vec4<i32>(7327i, -15273i, i32(-2147483648), -1i), vec4<u32>(4294967295u, 0u, 0u, 0u), 0u, vec4<bool>(true, true, true, false), false), Struct_1(vec4<i32>(-43750i, 10005i, -65661i, 12058i), vec4<u32>(0u, 4294967295u, 4294967295u, 8536u), 1u, vec4<bool>(false, true, true, true), true), Struct_1(vec4<i32>(46592i, 2673i, i32(-2147483648), -5912i), vec4<u32>(10727u, 95355u, 44049u, 4294967295u), 0u, vec4<bool>(false, true, true, true), false), Struct_1(vec4<i32>(34335i, -16573i, 0i, -19775i), vec4<u32>(9667u, 76034u, 19721u, 0u), 36724u, vec4<bool>(false, true, false, false), false), Struct_1(vec4<i32>(-1i, 2147483647i, -33581i, -50678i), vec4<u32>(6672u, 1u, 933u, 8394u), 21571u, vec4<bool>(false, false, true, false), true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: u32) -> f32 {
    global0 = array<bool, 22>();
    global1 = array<Struct_1, 6>();
    let var_0 = abs(u_input.a) <= -1i;
    global0 = array<bool, 22>();
    var var_1 = Struct_1(firstTrailingBit(abs(~vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.a))) | _wgslsmith_div_vec4_i32((vec4<i32>(u_input.b, 14896i, 1i, 20425i) | vec4<i32>(-2147483647i, -1i, u_input.a, -12897i)) & vec4<i32>(u_input.b, u_input.a, 8028i, u_input.a), abs(select(vec4<i32>(-10289i, -3931i, 1i, 2147483647i), vec4<i32>(14581i, -7975i, arg_0.x, -1i), vec4<bool>(var_0, var_0, false, global0[_wgslsmith_index_u32(4706u, 22u)])))), u_input.c, arg_2, select(!select(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2, 22u)], true, true), !vec4<bool>(var_0, true, var_0, false), true), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 22u)], true || var_0, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(9718u, 0u), 22u)], var_0), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_2, 22u)], var_0), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], var_0, false, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 22u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], var_0), vec4<bool>(var_0, false, true, false)), vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 22u)], true), vec4<bool>(var_0, var_0, var_0, var_0), true))), _wgslsmith_f_op_f32(f32(-1f) * -1993f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 2229f))), (958f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))) | true);
    return -1613f;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-869f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, u_input.b, u_input.a), 409f, 11062u)), _wgslsmith_f_op_f32(trunc(1064f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1027f, -386f))))));
    var var_1 = global1[_wgslsmith_index_u32(abs(u_input.d.x), 6u)];
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i >> (var_1.b.x % 32u), u_input.a, ~var_1.a.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.a.x, 32056i, 1i), _wgslsmith_mod_i32(17333i, 2147483647i))), u_input.b, _wgslsmith_mult_i32(u_input.b | 22383i, 2147483647i), -31221i), vec4<u32>(firstLeadingBit(countOneBits(_wgslsmith_sub_u32(var_1.b.x, u_input.c.x))), _wgslsmith_dot_vec2_u32(u_input.d.xy, ~u_input.c.wy), ~(~2871u), min(60993u, _wgslsmith_mult_u32(~var_1.b.x, 26323u))), 0u, select(var_1.d, !select(!var_1.d, !vec4<bool>(true, var_1.e, global0[_wgslsmith_index_u32(u_input.c.x, 22u)], false), all(vec3<bool>(var_1.d.x, true, false))), var_1.d), any(vec2<bool>(~4294967295u <= _wgslsmith_add_u32(var_1.b.x, var_1.c), var_1.e)));
    var var_3 = false;
    let var_4 = false;
    return Struct_1(firstTrailingBit(vec4<i32>(17503i, -_wgslsmith_sub_i32(-40295i, -2147483647i), countOneBits(min(u_input.a, u_input.a)), _wgslsmith_div_i32(-1i, var_2.a.x))), abs(min(var_1.b, ~(var_1.b & vec4<u32>(0u, 1u, 32942u, var_1.b.x)))), ~var_2.c, select(select(vec4<bool>(select(false, false, true), var_2.e, false, global0[_wgslsmith_index_u32(abs(19264u), 22u)]), vec4<bool>(all(vec2<bool>(false, true)), any(var_2.d.yzx), any(vec2<bool>(false, true)), all(var_2.d.zzx)), var_4), var_2.d, ~var_2.a.x <= -(var_1.a.x ^ var_1.a.x)), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = vec4<bool>(arg_0.d.x, true, arg_1.d.x == any(select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_1.e, arg_3.e, arg_3.d.x), !arg_1.d, true)), (arg_3.d.x && !(u_input.d.x >= arg_3.b.x)) & !(19063u < u_input.c.x));
    global1 = array<Struct_1, 6>();
    var_0 = vec4<bool>(true, select(all(!vec3<bool>(false, var_0.x, var_0.x)), -1i >= (2147483647i & arg_2), var_0.x) | arg_0.e, ~1u <= _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.c, ~1u, countOneBits(arg_1.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, arg_3.b.x, 1u), reverseBits(vec4<u32>(9345u, arg_0.c, arg_1.b.x, 4294967295u)))), _wgslsmith_f_op_f32(round(-204f)) < _wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(f32(-1f) * -691f)));
    var_0 = func_2(-758f).d;
    var_0 = vec4<bool>(!arg_3.d.x, any(select(arg_0.d.yw, vec2<bool>(arg_0.d.x, arg_3.e), true)) | true, true, arg_1.d.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(125f, 368f) + vec2<f32>(366f, 1804f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, -1043f))), vec2<f32>(-175f, _wgslsmith_f_op_f32(f32(-1f) * -650f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(745f, 252f), vec2<f32>(618f, 225f)))))));
}

fn func_1() -> vec2<f32> {
    var var_0 = -285f;
    var var_1 = 2147483647i & -u_input.a;
    let var_2 = global1[_wgslsmith_index_u32(~(u_input.c.x << (~(u_input.d.x >> (~u_input.d.x % 32u)) % 32u)), 6u)];
    global1 = array<Struct_1, 6>();
    global0 = array<bool, 22>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(15999u >> (var_2.b.x % 32u), 6u)], func_2(1000f), 1i, global1[_wgslsmith_index_u32(78942u & var_2.c, 6u)])) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(var_2.b.x, 6u)], u_input.b, global1[_wgslsmith_index_u32(1u, 6u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1095f) * vec2<f32>(1138f, 1227f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(62326u, 20175u), 6u)];
    var var_2 = !select(var_1.d.x, true || all(select(var_1.d.yy, var_1.d.xw, true)), !(var_1.e & var_1.d.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())));
    var_0 = any(vec4<bool>(false, func_2(var_3.x).e || func_2(_wgslsmith_f_op_f32(-var_3.x)).d.x, any(var_1.d.ywy) && (true && global0[_wgslsmith_index_u32(u_input.d.x << (u_input.d.x % 32u), 22u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, var_1.a.wyw);
}

