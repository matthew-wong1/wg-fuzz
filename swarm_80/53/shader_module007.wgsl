struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(2221f, 536f, -1512f), vec3<f32>(1278f, 541f, -1163f), vec3<f32>(-402f, 516f, 2305f), vec3<f32>(-855f, -1602f, -1366f), vec3<f32>(-921f, -1106f, -1547f), vec3<f32>(-708f, 1725f, -118f), vec3<f32>(538f, -1000f, 254f), vec3<f32>(413f, 976f, 1576f), vec3<f32>(879f, -1943f, 351f), vec3<f32>(-386f, -211f, 574f), vec3<f32>(521f, -721f, -1183f), vec3<f32>(153f, -333f, -525f), vec3<f32>(687f, -1003f, 1070f), vec3<f32>(-1815f, -400f, -1147f), vec3<f32>(1122f, -1858f, -363f), vec3<f32>(525f, -1000f, -1000f), vec3<f32>(192f, -1328f, -2116f), vec3<f32>(221f, -251f, 1378f), vec3<f32>(-1809f, 1195f, -1182f));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(29247u, 1u), -31612i, vec3<f32>(486f, 1950f, -3221f), vec3<i32>(54921i, 1i, -14275i), 572f);

var<private> global2: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(1u, 17327u), vec2<u32>(34072u, 17178u), vec2<u32>(4294967295u, 16011u), vec2<u32>(16569u, 86676u), vec2<u32>(4294967295u, 0u), vec2<u32>(36703u, 14511u), vec2<u32>(20284u, 36679u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = Struct_1(vec2<u32>(40464u, min(_wgslsmith_mult_u32(1u, arg_0.a.x), u_input.c.x)), ((2147483647i ^ -global1.d.x) | -1i) >> (76665u % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(arg_0.e, -187f, arg_0.c.x), vec3<bool>(true, false, true))) - vec3<f32>(_wgslsmith_f_op_f32(-1434f - 1231f), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_f_op_vec3_f32(round(arg_0.c))), select(u_input.b, vec3<i32>(~(u_input.a.x ^ 2147483647i), -min(-39271i, u_input.a.x), select(countOneBits(u_input.a.x), abs(1i), true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2237f, -1289f) + arg_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * arg_0.e) * 731f), arg_0.c.x))));
    global0 = array<vec3<f32>, 19>();
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.zxw, vec3<u32>(arg_0.a.x, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec3_u32(u_input.c.zyy, u_input.c.yzy))), ~33760u);
    var_0 = global1.a.x;
    let var_1 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(countOneBits(~arg_0.d.x), (arg_0.b << (u_input.c.x % 32u)) & abs(u_input.b.x), select(arg_0.d.x, select(51215i, -37439i, true), all(vec3<bool>(false, false, true))), firstLeadingBit(_wgslsmith_add_i32(global1.b, global1.d.x))), vec4<i32>(arg_0.b, reverseBits(~u_input.a.x), -reverseBits(-1i), 1366i), vec4<bool>(~global1.a.x <= 32419u, false, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), -select(-select(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.b, -7006i), vec4<i32>(1i, u_input.a.x, u_input.a.x, global1.d.x), vec4<bool>(true, true, false, true)), vec4<i32>(_wgslsmith_sub_i32(u_input.d, arg_0.b), firstTrailingBit(-1i), 1i, _wgslsmith_clamp_i32(1i, arg_0.d.x, 27568i)), vec4<bool>(all(vec3<bool>(true, true, true)), select(true, true, true), true, 7517u >= global1.a.x)));
    return u_input.c.x ^ firstTrailingBit(arg_0.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.c.yx, u_input.a.x, _wgslsmith_f_op_vec3_f32(arg_0.wzw + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.e - arg_1.x), arg_1.x, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), global1.c.x, arg_0.x), false))), min(vec3<i32>(global1.b, ~u_input.b.x, firstTrailingBit(1i)), u_input.a) >> (u_input.c.zzw % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.e)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(489f, 1737f))))));
    global0 = array<vec3<f32>, 19>();
    var var_1 = !vec4<bool>((func_3(var_0) == 4294967295u) != all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), all(vec3<bool>(true, u_input.b.x <= u_input.d, false)), false, any(vec4<bool>(true, select(true, false, false), all(vec2<bool>(true, false)), true)));
    return Struct_1(global1.a, 0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.x))), 210f, arg_0.x), ~var_0.d, -2682f);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    var var_0 = abs(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.a.x, global1.a.x << (global1.a.x % 32u)), 0u));
    global2 = array<vec2<u32>, 8>();
    var var_1 = Struct_1(~_wgslsmith_clamp_vec2_u32(u_input.c.xy, abs(global2[_wgslsmith_index_u32(4294967295u, 8u)]), global2[_wgslsmith_index_u32(u_input.c.x, 8u)] & max(vec2<u32>(global1.a.x, u_input.c.x), vec2<u32>(1u, arg_1.a.x))), 1i, vec3<f32>(405f, -1000f, _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(round(func_2(vec4<f32>(arg_1.e, arg_1.e, arg_1.c.x, -546f), vec4<f32>(577f, global1.c.x, global1.e, -640f)).e)))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, global1.e))))));
    return -_wgslsmith_sub_i32(global1.b, ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -3717i, 3695i, 2147483647i), vec4<i32>(var_1.d.x, u_input.d, 12446i, u_input.d)), var_1.d.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> f32 {
    global1 = Struct_1(~firstTrailingBit(vec2<u32>(30155u, ~38181u)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(func_4(any(vec2<bool>(false, false)), func_2(vec4<f32>(global1.c.x, 318f, 393f, global1.e), vec4<f32>(global1.c.x, 671f, global1.e, 401f))), -31260i), u_input.b.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(455f, global1.e, global1.c.x), vec3<f32>(-620f, -2056f, 604f))), _wgslsmith_mult_u32(global1.a.x, global1.a.x) > arg_0.x)))), ~vec3<i32>(i32(-1i) * -39178i, -(arg_1.x >> (655u % 32u)), global1.b), 1333f);
    var var_0 = ~(-u_input.b.x);
    var var_1 = select(vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), !vec3<bool>(true, select(false, any(vec2<bool>(false, false)), true), select(true, all(vec2<bool>(true, false)), select(true, true, false))), _wgslsmith_f_op_f32(-global1.c.x) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1785f * -1596f), _wgslsmith_f_op_f32(f32(-1f) * -1488f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(ceil(-838f))))));
    var var_2 = arg_0.x;
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.e * -599f), _wgslsmith_f_op_f32(floor(global1.e)), 1432f, global1.e) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e, -1636f, 198f, -537f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1126f, 1347f, 222f, -1000f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global1.e, global1.c.x, 210f), vec4<f32>(157f, 301f, global1.c.x, global1.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(335f, global1.e, 777f, -344f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c.x, global1.c.x, 927f, 623f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, 1860f, global1.c.x, global1.c.x)))), true)));
    return _wgslsmith_f_op_f32(-1562f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e - 390f)), -2100f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(u_input.c.xz, ~2147483647i ^ ~global1.d.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.e, -1205f, _wgslsmith_f_op_f32(ceil(-227f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1811f, 2108f), _wgslsmith_f_op_f32(round(global1.c.x))), 445f, _wgslsmith_f_op_f32(func_1(~global2[_wgslsmith_index_u32(1u, 8u)], vec3<i32>(-2147483647i, 1i, global1.d.x) ^ global1.d))))), vec3<i32>(1i, 7750i, func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -1000f, global1.e, -1000f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.c.x, -233f, -413f, -717f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(190f, global1.c.x, -405f, 506f) - vec4<f32>(global1.e, global1.e, 1114f, global1.e)), vec4<f32>(global1.e, global1.c.x, global1.c.x, -1000f)))).d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(vec4<f32>(global1.c.x, 322f, -517f, 1297f), vec4<f32>(global1.c.x, global1.e, -1885f, -2095f)).c.x, _wgslsmith_f_op_f32(f32(-1f) * -139f)) * global1.e) + 666f));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.zz << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), global1.d | u_input.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.xy)));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 225f, 368f, var_0.x) - vec4<f32>(-539f, 134f, 1000f, 1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(538f, global1.e, var_0.x, global1.c.x), vec4<f32>(var_0.x, global1.e, 1084f, global1.e))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, global1.e, global1.c.x, 232f), vec4<f32>(var_0.x, -495f, global1.e, global1.e)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, 519f, 169f, -450f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e, global1.c.x, global1.e, 503f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), var_1.e, var_0.x));
    let var_3 = !select(select(vec3<bool>(all(vec3<bool>(true, false, true)), true, select(false, false, true)), vec3<bool>(any(vec2<bool>(true, true)), u_input.c.x <= var_1.a.x, false), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !select(true, any(vec4<bool>(false, false, true, true)), true));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1.e))))) * _wgslsmith_f_op_f32(abs(var_1.c.x))), _wgslsmith_f_op_f32(func_1(~vec2<u32>(_wgslsmith_mod_u32(0u, u_input.c.x), ~7236u), vec3<i32>(firstLeadingBit(u_input.d) & -var_1.b, _wgslsmith_clamp_i32(u_input.a.x & global1.d.x, -2147483647i, 3686i ^ global1.d.x), ~(-15835i | u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~max(~global1.a.x, 41211u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-245f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f)));
}

