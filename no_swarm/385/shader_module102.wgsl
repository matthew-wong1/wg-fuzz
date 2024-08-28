struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec3<f32>(-1141f, 1218f, -328f), vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(-602f, -1783f, 170f), vec4<bool>(true, true, false, false)), Struct_1(true, vec3<f32>(-1574f, -593f, -909f), vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(-247f, 843f, -517f), vec4<bool>(true, false, true, false)), Struct_1(false, vec3<f32>(-798f, -396f, -901f), vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(1025f, -516f, -427f), vec4<bool>(true, false, true, true)), Struct_1(false, vec3<f32>(-372f, -405f, -407f), vec4<bool>(true, true, true, true)), Struct_1(true, vec3<f32>(737f, -499f, -283f), vec4<bool>(true, true, true, false)), Struct_1(true, vec3<f32>(419f, -534f, -1174f), vec4<bool>(false, false, false, true)), Struct_1(false, vec3<f32>(-1126f, -1363f, -1000f), vec4<bool>(true, false, false, false)), Struct_1(true, vec3<f32>(-224f, 1002f, 115f), vec4<bool>(true, true, false, true)), Struct_1(true, vec3<f32>(177f, -199f, 649f), vec4<bool>(true, false, false, true)), Struct_1(true, vec3<f32>(-1479f, -1216f, -1000f), vec4<bool>(true, false, true, false)), Struct_1(true, vec3<f32>(1434f, -743f, 1193f), vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(561f, 1175f, -756f), vec4<bool>(false, true, false, true)), Struct_1(false, vec3<f32>(-1188f, 1045f, 177f), vec4<bool>(false, false, true, true)), Struct_1(true, vec3<f32>(1797f, 460f, 529f), vec4<bool>(false, true, true, true)), Struct_1(false, vec3<f32>(-1333f, 478f, 930f), vec4<bool>(false, false, false, true)), Struct_1(true, vec3<f32>(-212f, -488f, 510f), vec4<bool>(false, false, false, false)), Struct_1(true, vec3<f32>(699f, -349f, 338f), vec4<bool>(true, false, true, false)), Struct_1(true, vec3<f32>(-556f, 320f, -402f), vec4<bool>(false, false, false, false)), Struct_1(false, vec3<f32>(-206f, 1000f, -1216f), vec4<bool>(true, true, true, true)), Struct_1(true, vec3<f32>(1000f, -581f, -1000f), vec4<bool>(true, false, false, true)), Struct_1(true, vec3<f32>(-1176f, -1647f, -450f), vec4<bool>(true, true, true, false)), Struct_1(false, vec3<f32>(-160f, 221f, -1258f), vec4<bool>(true, false, false, true)), Struct_1(false, vec3<f32>(1000f, -174f, -970f), vec4<bool>(false, false, true, true)), Struct_1(true, vec3<f32>(-1000f, 405f, -1221f), vec4<bool>(false, false, true, false)));

var<private> global1: vec2<f32> = vec2<f32>(860f, 104f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    return u_input.a != 21336u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_vec2_i32(select(u_input.b.yy, ~vec2<i32>(u_input.b.x, -10229i), 55477u <= (u_input.a | 22926u)), countOneBits(-select(u_input.b.xx, u_input.b.yx, arg_1.c.x))) >> (vec2<u32>(80086u, ~(~countOneBits(4294967295u))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1869f, _wgslsmith_f_op_f32(107f * -251f), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(arg_0.b.x * 1359f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(-141f)), _wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(exp2(global1.x)), -106f)))));
    global0 = array<Struct_1, 27>();
    let var_2 = arg_1;
    var_0 = u_input.b.zx;
    return _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, u_input.a)), ~reverseBits(vec2<u32>(4294967295u, 1u)))), ~(vec2<u32>(min(42440u, u_input.a), ~25676u) ^ reverseBits(firstLeadingBit(vec2<u32>(0u, 1u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-min(-1i, 1i), 0i, min(-1i, -12264i << (arg_1.x % 32u))), u_input.b);
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) + vec3<f32>(-1620f, _wgslsmith_f_op_f32(sign(-1000f)), -134f))), arg_0.c);
    let var_2 = _wgslsmith_sub_vec2_i32(max(select(vec2<i32>(-1i, u_input.b.x), vec2<i32>(var_0.x, var_0.x), !var_1.c.zy), -u_input.b.zz) << (vec2<u32>(abs(u_input.a), _wgslsmith_mult_u32(u_input.a, 66138u) | ~114868u) % vec2<u32>(32u)), abs(vec2<i32>(u_input.b.x, 1i)) & min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 8952i, 76341i, var_0.x), vec4<i32>(0i, var_0.x, 1i, var_0.x)), -var_0.x), ~vec2<i32>(u_input.b.x, 2147483647i)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(11729u, arg_1.x, 15682u) << (abs(vec3<u32>(u_input.a, arg_1.x, 22245u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1935u, arg_1.x), vec3<u32>(u_input.a, arg_1.x, arg_1.x), vec3<u32>(4483u, 0u, u_input.a)), ~vec3<u32>(17147u, arg_1.x, u_input.a)), arg_0.c.zxy), vec3<u32>(~u_input.a, abs(arg_1.x), u_input.a) | _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.a, arg_1.x, u_input.a)), max(vec3<u32>(40662u, arg_1.x, 1u), vec3<u32>(0u, 1u, 73525u)), min(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(4294967295u, 19231u, 36474u)))), 4294967295u >> (arg_1.x % 32u)), 27u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_3.b.x)), arg_3.b.x, true)) * _wgslsmith_f_op_f32(global1.x + 1271f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-922f)) + _wgslsmith_f_op_f32(-174f - arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1910f + 172f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1446f) - _wgslsmith_div_f32(-893f, _wgslsmith_f_op_f32(var_1.b.x - 1939f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_3.b.x)))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(select(-619f, 192f, true))))))));
    return !(!(!arg_0.c.xyz));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(-arg_1.zw);
    var var_0 = Struct_1(true | any(vec4<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true)), true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -2617f, -1109f)), vec4<bool>(false, false, func_2(), all(func_4(Struct_1(false, vec3<f32>(arg_1.x, -1079f, arg_0.x), vec4<bool>(true, true, false, true)), func_3(Struct_1(true, vec3<f32>(-493f, 130f, global1.x), vec4<bool>(true, false, false, true)), Struct_1(false, arg_1.xxx, vec4<bool>(true, true, true, true)), u_input.b.x, 7989i), arg_1.x, Struct_1(false, arg_1.xyy, vec4<bool>(false, false, true, true))))));
    global0 = array<Struct_1, 27>();
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f * _wgslsmith_f_op_f32(select(131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), func_2()))));
    return !var_0.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(!any(vec3<bool>(false, true, true)), any(vec2<bool>(u_input.a < u_input.a, true)), true));
    var_0 = any(select(select(select(vec2<bool>(true, true), func_1(vec2<f32>(global1.x, global1.x), vec4<f32>(global1.x, 1121f, global1.x, global1.x), vec3<u32>(u_input.a, u_input.a, 0u)), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(global1.x <= _wgslsmith_f_op_f32(f32(-1f) * -1347f), true), vec2<bool>(!(u_input.a < u_input.a), _wgslsmith_add_i32(u_input.b.x, -2147483647i) >= 0i)));
    global0 = array<Struct_1, 27>();
    let var_1 = !select(vec4<bool>(!any(vec2<bool>(true, false)), 1i >= _wgslsmith_clamp_i32(u_input.b.x, 31391i, 2147483647i), !(global1.x >= global1.x), _wgslsmith_f_op_f32(f32(-1f) * -335f) == global1.x), vec4<bool>(u_input.a != 12924u, true, select(true, u_input.a > 4294967295u, true), func_4(global0[_wgslsmith_index_u32(~u_input.a, 27u)], vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(ceil(global1.x)), global0[_wgslsmith_index_u32(u_input.a, 27u)]).x), vec4<bool>(true, _wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(step(509f, global1.x)), true, any(vec4<bool>(true, false, false, true))));
    var var_2 = vec4<u32>(firstLeadingBit(~u_input.a) << (0u % 32u), 0u, u_input.a, u_input.a);
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -427f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 679f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 503f)))))));
    var_2 = ~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 1u, ~0u), max(vec3<u32>(4294967295u, 61522u, 0u) & var_2.yxw, ~vec3<u32>(0u, 1916u, 1u))), u_input.a, abs(max(1u, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~select(5565u, _wgslsmith_div_u32(u_input.a, var_2.x), var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global1.x), 984f, _wgslsmith_f_op_f32(trunc(-137f)))))));
}

