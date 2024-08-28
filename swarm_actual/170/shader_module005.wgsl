struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = arg_2.d;
    var_0 = Struct_1(_wgslsmith_mod_vec3_u32(var_0.a, var_0.a), 4294967295u, arg_3.d.c);
    let var_1 = Struct_1(~(~(~vec3<u32>(5086u, 1u, var_0.b) & countOneBits(arg_2.d.a))), ~arg_1, vec2<bool>(select(all(arg_3.a.a.c), false, true || (var_0.c.x & var_0.c.x)), var_0.c.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16968u, 21u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_3.d.b, 21u)], -1000f))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(60850u, 21u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f * -580f))), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, arg_1), arg_3.a.a.a.xz), ~arg_2.a.a.a.zy), ~abs(arg_2.a.a.b)), 21u)]) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 21u)], global0[_wgslsmith_index_u32(var_0.b, 21u)], -181f), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(arg_2.a.a.b, 21u)], -253f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(arg_3.d.b, 21u)], global0[_wgslsmith_index_u32(var_1.a.x, 21u)]))))))));
    var_0 = arg_2.a.a;
    return select(!select(!vec3<bool>(arg_2.a.a.c.x, true, false), vec3<bool>(var_1.c.x, !arg_2.d.c.x, true), !select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(true, var_1.c.x, true), vec3<bool>(var_0.c.x, false, arg_2.d.c.x))), vec3<bool>(arg_2.a.a.c.x, true, false), select(!select(!vec3<bool>(true, var_0.c.x, true), !vec3<bool>(arg_2.a.a.c.x, false, false), true), vec3<bool>(arg_3.a.a.c.x, any(select(vec3<bool>(true, var_0.c.x, true), vec3<bool>(true, false, arg_3.b.a.c.x), vec3<bool>(false, true, arg_3.b.a.c.x))), !any(vec3<bool>(false, true, true))), true));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = (countOneBits(~(~vec3<u32>(4294967295u, 0u, 26293u))) << (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(true, true, true))) % vec3<u32>(32u))) >> (abs(select(select(~vec3<u32>(59569u, 0u, 0u), ~vec3<u32>(65321u, 4294967295u, 0u), vec3<bool>(true, true, false)), firstTrailingBit(abs(vec3<u32>(25742u, 34047u, 4294967295u))), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), func_3(u_input.a, 4294967295u, Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 5879u, 62834u), 1u, vec2<bool>(true, true))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u), 7789u, vec2<bool>(false, true))), u_input.a, Struct_1(vec3<u32>(0u, 32910u, 8652u), 74186u, vec2<bool>(false, false))), Struct_3(Struct_2(Struct_1(vec3<u32>(14634u, 39672u, 1u), 19259u, vec2<bool>(false, true))), Struct_2(Struct_1(vec3<u32>(9316u, 4294967295u, 4294967295u), 4294967295u, vec2<bool>(false, true))), -1i, Struct_1(vec3<u32>(1u, 32085u, 1u), 1u, vec2<bool>(false, true))))))) % vec3<u32>(32u));
    var var_1 = i32(-1i) * -1i;
    global0 = array<f32, 21>();
    var_1 = -(~(~_wgslsmith_mult_i32(-21190i, 1i)));
    var_1 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 21u)])) + _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_1 {
    global0 = array<f32, 21>();
    var var_0 = ~abs(vec4<i32>(u_input.b, -(~2147483647i), u_input.b, 1i));
    var_0 = vec4<i32>(~var_0.x, max(-1i, 37847i), -23077i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, firstTrailingBit(_wgslsmith_add_i32(u_input.a, -1i))), 0i));
    var var_1 = all(!vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(336f, 357f, _wgslsmith_f_op_f32(arg_0 + global0[_wgslsmith_index_u32(~arg_1, 21u)]), -178f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 21u)], 699f, -322f, -835f) - vec4<f32>(arg_0, arg_0, arg_0, 109f)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -368f, global0[_wgslsmith_index_u32(arg_1, 21u)], -1709f), vec4<f32>(arg_0, -1000f, -872f, 558f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(155f, global0[_wgslsmith_index_u32(0u, 21u)], -106f, -640f) - vec4<f32>(arg_0, -1456f, arg_0, global0[_wgslsmith_index_u32(arg_1, 21u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 21u)], 279f, global0[_wgslsmith_index_u32(4294967295u, 21u)])))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -707f, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])))))));
    return Struct_1(countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2889u, arg_1) | vec2<u32>(arg_1, 0u), vec2<u32>(arg_1, 1u)), arg_1, arg_1)), arg_1, vec2<bool>(true, false));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_2 {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_0 = -u_input.a;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], arg_3, 1463f, -309f))), -1000f)) - 292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~24853u, 21u)], arg_2, arg_0.c.x | true)))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)));
    return Struct_2(arg_0);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(290f, -227f, -1240f, 1493f)))))), arg_0.x), any(select(vec3<bool>(any(vec4<bool>(false, true, true, false)), any(vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), select(true, true, true))), 299f, global0[_wgslsmith_index_u32(34509u, 21u)]);
    let var_1 = vec2<bool>(var_0.a.c.x, true);
    global0 = array<f32, 21>();
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(0u, arg_0.x, arg_0.x)), func_5(var_0.a, true & var_0.a.c.x, _wgslsmith_f_op_f32(min(-1015f, 159f)), -1338f).a.a)) & ~_wgslsmith_sub_vec3_u32(~func_5(var_0.a, true, 1237f, -421f).a.a, var_0.a.a);
    global0 = array<f32, 21>();
    return Struct_2(func_5(Struct_1(var_2, 4294967295u, vec2<bool>(u_input.a <= u_input.a, true)), true, _wgslsmith_f_op_f32(abs(1196f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 21u)] * _wgslsmith_f_op_f32(f32(-1f) * -908f))).a);
}

fn func_6(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 21u)] + -506f)))) + _wgslsmith_f_op_f32(-969f + global0[_wgslsmith_index_u32(arg_0.a.a.x, 21u)])) != 636f;
    let var_1 = arg_0;
    return select(vec4<bool>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.a.b, 21u)], _wgslsmith_f_op_f32(step(-821f, global0[_wgslsmith_index_u32(0u, 21u)]))) >= _wgslsmith_f_op_f32(534f + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 21u)]))), true, !((arg_0.a.c.x || arg_0.a.c.x) || (false & var_1.a.c.x)), firstTrailingBit(_wgslsmith_div_u32(51189u, var_1.a.a.x)) < ~1u), !select(select(select(vec4<bool>(false, false, var_1.a.c.x, false), vec4<bool>(var_1.a.c.x, true, var_1.a.c.x, true), vec4<bool>(true, arg_0.a.c.x, arg_0.a.c.x, false)), select(vec4<bool>(var_1.a.c.x, true, true, true), vec4<bool>(arg_0.a.c.x, true, false, true), var_1.a.c.x), true), vec4<bool>(true, func_3(u_input.a, arg_0.a.b, Struct_3(Struct_2(Struct_1(vec3<u32>(38698u, arg_0.a.b, var_1.a.a.x), 69091u, var_1.a.c)), var_1, -60045i, Struct_1(arg_0.a.a, var_1.a.b, arg_0.a.c)), Struct_3(arg_0, var_1, 2147483647i, arg_0.a)).x, func_3(0i, 4294967295u, Struct_3(arg_0, var_1, u_input.a, var_1.a), Struct_3(Struct_2(arg_0.a), Struct_2(var_1.a), -1i, var_1.a)).x, var_1.a.c.x), false), !select(!select(vec4<bool>(false, arg_0.a.c.x, arg_0.a.c.x, var_1.a.c.x), vec4<bool>(arg_0.a.c.x, var_1.a.c.x, arg_0.a.c.x, var_1.a.c.x), vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, var_1.a.c.x)), !select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.a.c.x, var_1.a.c.x, true, var_1.a.c.x), arg_0.a.c.x), vec4<bool>(func_1(vec3<u32>(arg_0.a.a.x, arg_0.a.b, 4294967295u)).a.c.x, true, func_5(arg_0.a, arg_0.a.c.x, global0[_wgslsmith_index_u32(var_1.a.b, 21u)], 1000f).a.c.x, arg_0.a.c.x | false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    var var_0 = any(!func_6(func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 21328u, 4294967295u), vec3<u32>(21267u, 1u, 4294967295u)))));
    let var_1 = ~(~min(firstTrailingBit(vec2<u32>(89338u, 4294967295u)), vec2<u32>(0u, 0u)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 20639u)), 4294967295u), vec2<u32>(1u, 1u)));
    var_0 = false;
    let var_2 = !vec4<bool>(-2147483647i <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b) | vec3<i32>(1i, -48435i, u_input.a), ~vec3<i32>(1i, u_input.a, -1i)), false, select(func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54264u, 22709u, var_1.x), vec4<u32>(44416u, var_1.x, 0u, var_1.x)), 21u)], var_1.x).c.x, true, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(14582u, var_1.x, min(~var_1.x << (var_1.x % 32u), (0u >> (0u % 32u)) | _wgslsmith_clamp_u32(var_1.x, 18984u, 16385u)), var_1.x), vec3<u32>((var_1.x << (var_1.x % 32u)) & var_1.x, ~func_5(Struct_1(vec3<u32>(0u, var_1.x, 4294967295u), 38085u, var_2.zx), u_input.b > 71687i, _wgslsmith_f_op_f32(min(241f, -1266f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 21u)])).a.a.x, 0u), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1.x, 4294967295u, 49198u, 4294967295u)), ~abs(~vec4<u32>(var_1.x, 31509u, var_1.x, 4294967295u))), ~(countOneBits(_wgslsmith_sub_u32(var_1.x, 0u)) >> (28705u % 32u)), vec2<i32>(-55378i, ~(i32(-1i) * -6799i)));
}

