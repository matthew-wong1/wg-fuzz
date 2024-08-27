struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = u_input.e;
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -3230f), arg_0.x, 689f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))))), 863f);
    var var_3 = Struct_1(vec4<f32>(-1324f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f))), _wgslsmith_f_op_f32(f32(-1f) * -1242f), _wgslsmith_f_op_f32(-1853f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f + arg_0.x) + -642f))), _wgslsmith_f_op_f32(-arg_0.x));
    let var_4 = _wgslsmith_f_op_f32(sign(var_2.a.x));
    return _wgslsmith_f_op_vec3_f32(var_3.a.wxx - var_2.a.xyx);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(1531f, _wgslsmith_f_op_f32(arg_0 + arg_0)), arg_0, arg_0, arg_0), arg_0), 1u, _wgslsmith_f_op_vec3_f32(ceil(arg_2)));
    let var_1 = Struct_2(var_0.a, u_input.a, _wgslsmith_div_vec3_f32(var_0.a.a.wzw, _wgslsmith_f_op_vec3_f32(-arg_2)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), var_0.c.x))), arg_2.x);
    var_0 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1985f, _wgslsmith_f_op_f32(select(var_0.a.b, -1076f, arg_1.x)), arg_0) + vec3<f32>(1000f, -859f, -112f)))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-var_1.c.xx))));
    return Struct_2(var_0.a, _wgslsmith_sub_u32(6121u, arg_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.a.a.xzz, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, arg_0, var_2.b))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -682f), var_2.a.x) + var_1.a.a.ywy)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, _wgslsmith_div_f32(arg_1.a.b, -907f), arg_1.c.x, -1000f)), -2853f);
    let var_1 = arg_1.a;
    var var_2 = select(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)))));
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + 545f), !select(vec4<bool>(true, false, true, all(vec2<bool>(true, false))), vec4<bool>(false, false, true, var_2.x || true), false), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1354f), _wgslsmith_f_op_f32(step(1331f, -1715f)), -1689f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1687f, arg_1.a.a.x))))), func_2(var_0.b, !(!(!vec4<bool>(var_2.x, false, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, arg_1.c.x)))))), 4294967295u).b).a;
    let var_3 = _wgslsmith_sub_vec2_u32(abs(select(~vec2<u32>(15898u, 94055u), ~vec2<u32>(u_input.e, 4294967295u), any(vec4<bool>(var_2.x, true, false, true)))), vec2<u32>(reverseBits(~65184u), ~6158u)) << (vec2<u32>(firstTrailingBit(~_wgslsmith_add_u32(arg_1.b, 37068u)), ~88078u) % vec2<u32>(32u));
    return !(!(!select(!vec4<bool>(var_2.x, var_2.x, var_2.x, false), select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, var_2.x, var_2.x, true)), -358f >= var_1.a.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = !(!(!func_4(arg_0.zx, func_2(-470f, vec4<bool>(false, arg_1.x, false, false), vec3<f32>(-352f, 275f, 1034f), 12175u))));
    var var_1 = max(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.a, 33135u)), ~vec2<u32>(~58262u, u_input.a), abs(firstLeadingBit(~vec2<u32>(u_input.a, 0u)))), firstTrailingBit(vec2<u32>(44435u ^ ~u_input.a, ~u_input.e)));
    let var_2 = var_0.xzy;
    var var_3 = Struct_2(func_2(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1547f, 1654f)))), vec4<bool>(true, any(select(arg_1, vec4<bool>(false, false, arg_1.x, var_0.x), arg_1)), arg_1.x, all(vec2<bool>(true, false))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2868f), _wgslsmith_f_op_f32(-475f + 210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(334f, 1188f, false))), _wgslsmith_f_op_f32(-1524f + _wgslsmith_f_op_f32(-482f + -1000f))), var_1.x ^ ~_wgslsmith_mod_u32(var_1.x, 13306u)).a, ~(~0u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-848f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))))));
    var var_4 = func_2(_wgslsmith_f_op_f32(var_3.a.b + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(103f)))), select(!arg_1, arg_1, true), var_3.c, firstLeadingBit(select(22756u, select(2476u, ~u_input.a, any(vec2<bool>(arg_1.x, arg_1.x))), false)));
    return var_4.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_1(~vec3<i32>(u_input.b.x, -7128i, u_input.b.x), vec4<bool>(true, false, true, false))), -1901f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-974f, -260f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(129f, -897f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, -1530f)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1009f + 413f), 753f)))), true));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), func_2(_wgslsmith_f_op_f32(f32(-1f) * -435f), func_4(u_input.d, Struct_2(Struct_1(vec4<f32>(var_0.x, -997f, 1071f, var_0.x), var_0.x), 1u, vec3<f32>(var_0.x, 1000f, var_0.x))), vec3<f32>(-997f, var_0.x, 330f), firstLeadingBit(u_input.a)).c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(1832f, -941f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1127f, -336f))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), any(vec3<bool>(true, !select(true, false, true), true))));
    var var_1 = select(!vec2<bool>((-50580i >> (u_input.a % 32u)) < ~(-2147483647i), (u_input.c >> (u_input.e % 32u)) <= -18507i), func_4(vec2<i32>(u_input.b.x, u_input.c), func_2(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(var_0.x))), vec4<bool>(79226u > u_input.e, any(vec4<bool>(true, true, false, false)), true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-793f, -1336f, 854f), vec3<f32>(var_0.x, 755f, var_0.x)))), _wgslsmith_add_u32(u_input.e, select(36364u, 6777u, false)))).zy, false);
    let var_2 = !func_4(-select(reverseBits(u_input.b.xw), _wgslsmith_div_vec2_i32(vec2<i32>(-28751i, u_input.d.x), u_input.b.ww), false), func_2(var_0.x, select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)), vec4<bool>(true, true, true, true), true), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x), 674f), _wgslsmith_sub_u32(u_input.a, u_input.a) | _wgslsmith_mod_u32(u_input.e, u_input.a)));
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(310f, var_0.x) + _wgslsmith_f_op_f32(-var_0.x)) + 162f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec4<bool>(var_1.x, false, var_2.x, false))), var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -1000f), 496f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) + var_0.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1282f))))), 719f);
    var var_4 = func_2(-1244f, vec4<bool>(var_2.x != !var_2.x, var_2.x, var_2.x, any(!var_2.xy)), var_3.a.zww, abs(~(u_input.e >> (u_input.a % 32u))));
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(var_3.a.x, 378f))).x, _wgslsmith_f_op_f32(-849f * 1450f), 418f, _wgslsmith_f_op_f32(var_4.a.a.x + var_3.b)), vec4<f32>(var_3.a.x, var_4.a.b, _wgslsmith_f_op_f32(sign(943f)), -1000f), var_1.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, 1122f, 1000f, -1000f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_3.a, vec4<f32>(var_4.c.x, 967f, var_3.b, -783f))), var_4.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, 2147483647i, abs(_wgslsmith_sub_u32(firstTrailingBit(var_4.b), var_4.b << (u_input.a % 32u))) & u_input.e, _wgslsmith_f_op_f32(max(func_2(_wgslsmith_f_op_f32(f32(-1f) * -657f), vec4<bool>(var_2.x, false, false, false), vec3<f32>(-591f, -1353f, _wgslsmith_f_op_f32(round(262f))), _wgslsmith_div_u32(var_4.b, 0u) << (firstTrailingBit(var_4.b) % 32u)).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1422f, vec4<bool>(var_1.x, true, true, true), vec3<f32>(var_5.x, var_4.a.b, var_5.x), 1u).a.a.x * 1849f)))), (-max(u_input.b.yzw, vec3<i32>(23378i, 2147483647i, u_input.b.x)) << (min(~vec3<u32>(var_4.b, 0u, 4294967295u), vec3<u32>(var_4.b, 43808u, 4294967295u)) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(u_input.b.xwz, ~u_input.b.wzz >> (vec3<u32>(u_input.a, 73816u, u_input.a) % vec3<u32>(32u))));
}

