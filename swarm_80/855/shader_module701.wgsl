struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<i32>(2147483647i, -1i, -7071i, 41960i)), Struct_2(vec4<i32>(1i, 0i, -1i, 1i)), Struct_2(vec4<i32>(30044i, -8073i, 59217i, 15430i)), Struct_2(vec4<i32>(-1i, 26469i, -37666i, 1i)), Struct_2(vec4<i32>(-19029i, -17788i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(2147483647i, 3764i, 48789i, -36703i)), Struct_2(vec4<i32>(-5932i, 1i, -1i, i32(-2147483648))), Struct_2(vec4<i32>(26557i, 1i, 1i, 2147483647i)), Struct_2(vec4<i32>(17020i, -9923i, 1725i, -1764i)), Struct_2(vec4<i32>(10098i, i32(-2147483648), 31870i, i32(-2147483648))), Struct_2(vec4<i32>(-6089i, i32(-2147483648), -4415i, 0i)), Struct_2(vec4<i32>(1i, i32(-2147483648), -68129i, -1i)), Struct_2(vec4<i32>(0i, 2147483647i, i32(-2147483648), -20888i)), Struct_2(vec4<i32>(-1i, -60977i, 2147483647i, 0i)), Struct_2(vec4<i32>(2147483647i, 6675i, 0i, 19509i)), Struct_2(vec4<i32>(i32(-2147483648), 30838i, 44448i, i32(-2147483648))), Struct_2(vec4<i32>(-28444i, -16499i, -14088i, 43537i)), Struct_2(vec4<i32>(-11938i, i32(-2147483648), -21191i, 1156i)), Struct_2(vec4<i32>(i32(-2147483648), -1i, 0i, 0i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), -60779i, 17973i)), Struct_2(vec4<i32>(-29401i, 0i, 2147483647i, -1i)), Struct_2(vec4<i32>(0i, 0i, 1i, -1i)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 20461i, -1i)), Struct_2(vec4<i32>(-53789i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(-4600i, 0i, 1i, -41624i)), Struct_2(vec4<i32>(-28024i, -1i, 1i, -44584i)), Struct_2(vec4<i32>(1255i, -1i, 25932i, -25401i)), Struct_2(vec4<i32>(3767i, i32(-2147483648), -4551i, 31975i)), Struct_2(vec4<i32>(2147483647i, 2147483647i, -26948i, 52375i)), Struct_2(vec4<i32>(43556i, 0i, -68436i, 27702i)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(475f - -1599f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-321f, _wgslsmith_f_op_f32(max(-994f, -2804f))))) + _wgslsmith_f_op_f32(f32(-1f) * -304f)), -726f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1116f - _wgslsmith_div_f32(925f, _wgslsmith_f_op_f32(1152f + -1051f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(853f)) * _wgslsmith_f_op_f32(abs(2790f))))), any(vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_3(abs(~(~76612u)) << (1u % 32u), Struct_1(var_0.x, abs(_wgslsmith_clamp_vec2_i32(reverseBits(u_input.a.yz), ~vec2<i32>(14381i, u_input.a.x), -u_input.a.xy)), firstTrailingBit(firstTrailingBit(u_input.a.x) << ((u_input.b ^ 1u) % 32u)), u_input.b, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 47365u, u_input.b), vec4<u32>(1u, 0u, u_input.b, 4294967295u)), max(67213u, 107966u), _wgslsmith_mult_u32(44681u, u_input.b), ~23011u)));
    var var_2 = Struct_3(21391u, var_1.b);
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -314f))), 255f, any(vec4<bool>(false, true, true, true))));
}

fn func_2() -> i32 {
    global0 = array<Struct_2, 30>();
    let var_0 = min(firstLeadingBit(abs(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(u_input.b, 1u), u_input.b, u_input.b, ~4294967295u))) | ~vec4<u32>(u_input.b, u_input.b, 1u & u_input.b, u_input.b);
    global0 = array<Struct_2, 30>();
    let var_1 = Struct_3(12296u, Struct_1(_wgslsmith_f_op_f32(func_3()), -(u_input.a.zy | -u_input.a.xz), -14330i, var_0.x, var_0));
    let var_2 = vec3<u32>(16911u, _wgslsmith_mod_u32(max(~4294967295u, abs(0u)), 1u), reverseBits(min(~max(0u, var_0.x), var_1.a)));
    return _wgslsmith_sub_i32(var_1.b.b.x, 21689i);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = -18352i;
    let var_1 = -firstLeadingBit(var_0 << (1u % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(768f - _wgslsmith_div_f32(1910f, -759f)), reverseBits(-vec2<i32>(arg_0, select(arg_0, var_1, false))), -func_2(), firstLeadingBit(55002u), reverseBits(vec4<u32>(~0u, _wgslsmith_mult_u32(0u, 67118u), 11568u, max(23978u, firstLeadingBit(u_input.b)))));
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = u_input.b;
    var var_1 = arg_0.a;
    var var_2 = func_1(_wgslsmith_sub_i32(1i, -49935i));
    let var_3 = Struct_4(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, all(vec2<bool>(false, true))), true != (arg_0.c < u_input.a.x)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(vec4<bool>(true, true, true, true))), all(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false))), global0[_wgslsmith_index_u32(93901u, 30u)]);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * -463f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-313f * 743f))))));
    return var_3;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec3_i32(arg_2.c.a.yzz, arg_2.c.a.zwy);
    var var_1 = select(vec4<bool>(any(vec4<bool>(arg_1.x != arg_0.a.x, all(vec2<bool>(true, arg_0.a.x)), arg_2.b, any(arg_0.a))), !(arg_1.x || arg_0.a.x), !all(!arg_2.a), false), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(arg_3, false, arg_2.a.x, false), arg_2.a.x), !select(!vec4<bool>(arg_3, arg_1.x, true, arg_2.a.x), select(vec4<bool>(arg_3, false, arg_0.b, false), vec4<bool>(arg_2.b, arg_2.a.x, arg_3, arg_1.x), false), !vec4<bool>(arg_0.b, false, arg_2.a.x, arg_2.b)), !select(!vec4<bool>(false, arg_1.x, false, false), vec4<bool>(false, false, true, false), arg_0.a.x)), select(select(select(!vec4<bool>(arg_2.a.x, arg_1.x, arg_2.a.x, true), vec4<bool>(arg_1.x, false, false, arg_0.b), true), !vec4<bool>(true, arg_1.x, false, arg_1.x), any(select(vec3<bool>(arg_3, true, arg_0.b), vec3<bool>(true, arg_2.b, false), false))), !select(select(vec4<bool>(arg_2.b, false, arg_1.x, arg_2.a.x), vec4<bool>(false, false, arg_0.b, true), vec4<bool>(arg_1.x, arg_0.a.x, arg_2.a.x, arg_2.a.x)), select(vec4<bool>(arg_0.b, false, arg_2.a.x, true), vec4<bool>(arg_3, arg_1.x, true, true), true), any(vec3<bool>(arg_0.b, arg_1.x, true))), select(!select(vec4<bool>(true, arg_0.b, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_1.x, true), vec4<bool>(arg_0.a.x, true, arg_1.x, true)), vec4<bool>(false, all(vec2<bool>(false, true)), true, arg_0.c.a.x == 0i), !select(vec4<bool>(false, true, true, arg_3), vec4<bool>(arg_1.x, arg_0.a.x, arg_2.a.x, arg_3), vec4<bool>(false, arg_2.b, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1949f - 653f)))), _wgslsmith_f_op_f32(2245f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f - 1314f))))));
    let var_3 = arg_2;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(arg_2.c.a.x).a));
    return StorageBuffer(firstLeadingBit(max(arg_0.c.a.x, -1508i)), arg_2.c.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, 135f, 331f, -1068f) + vec4<f32>(1036f, -778f, 1243f, -715f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-864f, 828f, -1224f, -931f), vec4<f32>(-1079f, 292f, 1187f, -649f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1635f, 1520f, 630f) - vec4<f32>(-974f, -856f, 2019f, 117f)) - vec4<f32>(-1000f, 453f, -1908f, 1332f))))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    var var_0 = ~(1u | _wgslsmith_clamp_u32(1u ^ ~u_input.b, 39883u, _wgslsmith_div_u32(1u, u_input.b) | ~u_input.b));
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_5(Struct_4(vec2<bool>(true, true), true, Struct_2(-vec4<i32>(u_input.a.x, u_input.a.x, 1i, 2147483647i))), vec2<bool>(u_input.a.x < _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x), any(vec2<bool>(true, true))), func_4(func_1(_wgslsmith_sub_i32(43027i, ~u_input.a.x)), 823f), true);
}

