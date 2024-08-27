struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1221f, -452f, 889f, -135f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_5) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c.x, arg_3.c.x)) - -455f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.d.a.x, _wgslsmith_f_op_f32(step(646f, global0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(817f * 400f) + 654f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1922f)) * global0.x)))) - arg_3.c.x);
    let var_1 = !select(true, firstTrailingBit(-23120i) <= -arg_0.a, arg_3.d.c | true);
    global0 = vec4<f32>(global0.x, -1312f, arg_3.c.x, -1000f);
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.a.x, _wgslsmith_f_op_f32(ceil(571f)), 947f, global0.x)) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 928f) - _wgslsmith_f_op_f32(global0.x - arg_3.d.a.x)), arg_3.d.b, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(277f * arg_3.c.x), _wgslsmith_f_op_f32(trunc(global0.x)), -1568f, 737f)));
    return _wgslsmith_f_op_f32(floor(-1706f));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.d.a + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) * _wgslsmith_f_op_f32(abs(377f))), global0.x, _wgslsmith_f_op_f32(floor(-338f)), global0.x))));
    let var_0 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(67049u, _wgslsmith_add_u32(select(1u, 1u, all(vec4<bool>(true, true, false, false))), _wgslsmith_div_u32(~0u, 62054u)), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1u, 7142u, 15059u), ~9186u)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.d.a.x, arg_1.d.b, false)))) + global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1532f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-203f)), _wgslsmith_f_op_f32(func_3(Struct_4(-2147483647i), true, vec4<bool>(arg_1.a.x, false, true, arg_1.d.c), Struct_5(u_input.a, vec4<bool>(true, true, arg_1.d.c, arg_1.d.c), global0.xy, Struct_1(vec4<f32>(arg_1.d.b, arg_1.e.x, -1175f, global0.x), global0.x, arg_1.d.c)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 518f)) - arg_1.e.x)), -150f)), _wgslsmith_f_op_f32(ceil(global0.x)), global0.x);
    var var_1 = Struct_4(abs(arg_0.x | u_input.a));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, max(u_input.a, ~arg_1.b)), 1i);
    return Struct_2(select(select(vec3<bool>(arg_1.a.x, any(vec2<bool>(true, false)), false), vec3<bool>(!arg_1.a.x, true, !arg_1.a.x), all(vec2<bool>(arg_1.d.c, false))), vec3<bool>(arg_1.a.x, _wgslsmith_f_op_f32(min(-1112f, 2004f)) > _wgslsmith_f_op_f32(step(global0.x, global0.x)), !(!arg_1.a.x)), any(!vec2<bool>(false, arg_1.a.x))), _wgslsmith_sub_i32(~max(arg_1.c, -1i), -1i), _wgslsmith_div_i32(3005i, -30660i), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.e, arg_1.d.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, global0.x, 1153f, -825f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.e, arg_1.e)))), global0.x, true), arg_1.d.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(arg_2.a + vec4<f32>(-1000f, arg_0.d.a.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(-288f))));
    global0 = arg_0.d.a;
    global0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.e.x, global0.x, -349f, _wgslsmith_f_op_f32(-193f - _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(abs(-662f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), vec4<f32>(862f, arg_0.e.x, arg_0.d.b, arg_0.d.a.x)) - _wgslsmith_f_op_vec4_f32(func_2(arg_1.xx, arg_0).e * vec4<f32>(arg_0.e.x, global0.x, -1161f, -600f))) + _wgslsmith_f_op_vec4_f32(-arg_2.a))));
    let var_0 = arg_2;
    global0 = _wgslsmith_f_op_vec4_f32(exp2(arg_0.d.a));
    return i32(-1i) * -2147483647i;
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, 1000f, global0.x, -505f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -758f, global0.x, 627f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(839f, global0.x, global0.x, 326f))), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1108f, 1138f, global0.x, 360f)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1000f, 899f), -1229f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f + global0.x)), any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(_wgslsmith_div_i32(arg_1, arg_1) & ~8260i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, -59329i, arg_0.a, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, -1i, u_input.a, arg_0.a), vec4<i32>(arg_1, 0i, -59356i, 19847i)))) ^ abs(vec2<i32>(-arg_0.a, 1i)));
    var var_2 = func_2(max(select(var_1, var_1, vec2<bool>(var_0.c, any(vec3<bool>(var_0.c, var_0.c, var_0.c)))), var_1), Struct_2(vec3<bool>(var_0.c, all(!vec3<bool>(var_0.c, var_0.c, false)), any(select(vec2<bool>(true, false), vec2<bool>(false, var_0.c), var_0.c))), firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, -1i, -8579i), vec3<i32>(-25989i, 2147483647i, -2147483647i)), vec3<i32>(var_1.x, 54559i, 14004i))), reverseBits(-u_input.a), func_2(firstLeadingBit(min(var_1, var_1)), Struct_2(!vec3<bool>(var_0.c, true, true), 8478i, 22450i, func_2(var_1, Struct_2(vec3<bool>(var_0.c, var_0.c, true), -56108i, u_input.a, Struct_1(var_0.a, -1108f, var_0.c), var_0.a)).d, var_0.a)).d, vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1000f), -1758f, var_0.a.x, -410f))).b;
    let var_3 = arg_0;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(564f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f * 552f)) - -460f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)) * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-2878f, 1123f)))))), _wgslsmith_f_op_f32(-global0.x));
    return _wgslsmith_f_op_f32(var_0.b - 462f);
}

fn func_1() -> vec4<u32> {
    var var_0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1296f + -1645f), -549f, -198f, _wgslsmith_f_op_f32(-507f - _wgslsmith_f_op_f32(global0.x * global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_1 = all(vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_4(1i), func_4(func_2(vec2<i32>(u_input.a, 37647i), Struct_2(vec3<bool>(true, false, true), u_input.a, -2147483647i, Struct_1(vec4<f32>(global0.x, 1000f, -1726f, var_0.x), global0.x, true), vec4<f32>(var_0.x, global0.x, var_0.x, var_0.x))), abs(vec4<i32>(-1i, 27953i, -2147483647i, 12520i)), Struct_1(vec4<f32>(-1000f, var_0.x, 1764f, -516f), 1000f, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_4(2147483647i), min(_wgslsmith_div_i32(u_input.a, u_input.a), ~u_input.a)))));
    return vec4<u32>(firstLeadingBit(~59687u), _wgslsmith_add_u32(reverseBits(1u), ~(~1u)), ~(~(~1u)), countOneBits(1u | _wgslsmith_clamp_u32(57247u, ~12043u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, !all(vec2<bool>(all(vec3<bool>(false, true, false)), true)));
    let var_1 = countOneBits(_wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(1u, 1u, 1u, 1u)) >> (firstTrailingBit(vec4<u32>(select(0u, 0u, var_0.x), 1u, reverseBits(0u), func_1().x)) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, -1708f, global0.x, -995f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -210f, global0.x, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-192f, global0.x, global0.x, 537f), vec4<f32>(845f, 101f, -1024f, global0.x))), !(!vec4<bool>(var_0.x, false, true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), func_2(~vec2<i32>(2147483647i, -1i), func_2(vec2<i32>(-64178i, -2147483647i), Struct_2(vec3<bool>(false, var_0.x, var_0.x), 27737i, u_input.a, Struct_1(vec4<f32>(-530f, global0.x, 1000f, -885f), 620f, var_0.x), vec4<f32>(global0.x, global0.x, 879f, global0.x)))).e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - 1574f))), -135f)), -1633f, true & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1049f, true)) + global0.x) != 808f));
    let var_3 = Struct_3(func_2(vec2<i32>(max(-31984i & u_input.a, u_input.a), min(func_2(vec2<i32>(2147483647i, u_input.a), Struct_2(vec3<bool>(var_2.c, false, var_0.x), u_input.a, u_input.a, var_2, var_2.a)).b, 7166i)), func_2(~(~vec2<i32>(1i, 11406i)), Struct_2(select(vec3<bool>(true, false, var_2.c), vec3<bool>(true, var_2.c, true), true), u_input.a, u_input.a, var_2, var_2.a))), func_2(vec2<i32>(u_input.a, ~(u_input.a & u_input.a)), Struct_2(func_2(vec2<i32>(0i, u_input.a), Struct_2(vec3<bool>(false, var_0.x, true), u_input.a, u_input.a, var_2, var_2.a)).a, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-19094i, u_input.a), vec2<i32>(u_input.a, -77119i)), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-2147483647i, 15589i)), u_input.a, var_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(339f, global0.x, -1208f, 1764f) - var_2.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2338f, 691f) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-1f))))), Struct_2(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, false, false)), ~abs(_wgslsmith_mod_i32(u_input.a, 1i)), u_input.a, var_2, var_2.a));
    var_0 = var_3.b.a;
    var var_4 = any(var_0.zx);
    var_4 = var_3.a.d.c;
    var_4 = (var_1.x ^ var_1.x) <= 29854u;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.d.d.a.x, func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(var_3.d.b, var_3.a.b)), var_5.b).e.x), _wgslsmith_f_op_vec2_f32(var_3.a.d.a.xy + global0.wy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_5.a.e, vec4<f32>(global0.x, var_3.c, -871f, -184f)))) * var_2.a)));
}

