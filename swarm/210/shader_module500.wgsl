struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec4<i32>(1i, 2147483647i, -14274i, -19653i), 0i, 50701u), -245f, vec3<bool>(false, true, true));

var<private> global1: f32 = 1628f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c), 1164f, true)) + _wgslsmith_f_op_f32(sign(arg_3.c))), arg_3.c))));
    let var_0 = u_input.a;
    var var_1 = -_wgslsmith_mod_i32(~arg_3.b.b, -40145i);
    var var_2 = -590f;
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1691f)))) - arg_0.b)));
    return firstLeadingBit(~(min(-vec2<i32>(28625i, arg_3.b.b), global0.b.a.yw) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_3.b.c), arg_2 | vec2<u32>(global0.b.c, arg_2.x)) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<i32>(arg_0.x, select(~_wgslsmith_mod_i32(-42988i, -2147483647i), 2147483647i >> (select(1u, 17520u, true) % 32u), global0.d.x), -2147483647i, select(~arg_0.x, _wgslsmith_mult_i32(arg_0.x, global0.b.b) >> (_wgslsmith_mult_u32(u_input.a.x, global0.b.c) % 32u), true)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.xy, min(abs(vec2<i32>(-56231i, -35821i)), -global0.b.a.wy)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global0.b.a.x) << (~u_input.a.yz % vec2<u32>(32u)), ~(vec2<i32>(-2147483647i, -2147483647i) ^ global0.b.a.wz), func_3(Struct_4(global0.d.yy, 1638f), global0.b, abs(vec2<u32>(0u, 4294967295u)), Struct_2(global0.a, global0.b, global0.c, global0.d)))), ~(~global0.b.c ^ u_input.a.x));
    let var_1 = Struct_3(firstLeadingBit(_wgslsmith_mult_u32(0u, 81777u)), global0.b, global0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, 871f), _wgslsmith_f_op_f32(2404f - arg_1.x)))))));
    let var_2 = ~(countOneBits(~vec4<u32>(var_0.c, var_0.c, u_input.a.x, 1u) << (abs(vec4<u32>(1u, u_input.a.x, 32299u, 4294967295u)) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(~global0.b.c, firstTrailingBit(1u), 0u, ~1u)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(3101f * _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * -615f))), 1409f));
    var var_4 = var_1;
    return Struct_2(!select(global0.a, global0.d.x, false), var_0, var_1.d, global0.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    global0 = Struct_2(-467f > _wgslsmith_f_op_f32(step(-530f, _wgslsmith_f_op_f32(-arg_0.c))), Struct_1(~(-min(vec4<i32>(26875i, 19960i, global0.b.a.x, 2147483647i), vec4<i32>(13500i, arg_0.b.a.x, arg_0.b.a.x, -1i))), _wgslsmith_sub_i32(24627i, _wgslsmith_dot_vec3_i32(global0.b.a.xzw, global0.b.a.yyy)) << (~(~arg_2) % 32u), _wgslsmith_sub_u32(arg_3.x, arg_0.b.c)), _wgslsmith_f_op_f32(global0.c + -712f), select(arg_1.ywz, !vec3<bool>(any(global0.d.zy), true, true), vec3<bool>(arg_1.x, _wgslsmith_div_f32(arg_0.c, 578f) < _wgslsmith_f_op_f32(max(-546f, global0.c)), any(vec3<bool>(false, true, arg_1.x)))));
    let var_0 = 0u;
    var var_1 = vec3<bool>(!arg_0.a, !((false & any(arg_0.d)) | func_2(abs(global0.b.a.yyw), vec4<f32>(-1665f, -1395f, 2052f, arg_0.c)).a), any(global0.d));
    global0 = func_2(~((~vec3<i32>(global0.b.b, -2147483647i, global0.b.a.x) | _wgslsmith_sub_vec3_i32(arg_0.b.a.yyy, global0.b.a.wzx)) | arg_0.b.a.wyx), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c, global0.c, arg_0.c, global0.c), vec4<f32>(-306f, 974f, global0.c, arg_0.c))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_0.c, arg_0.c, 1041f)))), vec4<f32>(_wgslsmith_f_op_f32(max(-540f, arg_0.c)), func_2(vec3<i32>(0i, 31943i, arg_0.b.a.x), vec4<f32>(global0.c, -1234f, -552f, global0.c)).c, _wgslsmith_f_op_f32(step(-640f, 1040f)), _wgslsmith_f_op_f32(-arg_0.c))))));
    let var_2 = !arg_1;
    return func_2(select(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.b.a.www, global0.b.a.zzw, firstLeadingBit(global0.b.a.yxz)), abs(vec3<i32>(-2147483647i, 0i, -53012i))), vec3<i32>(global0.b.a.x, global0.b.a.x, ~(-2147483647i)), all(var_1.yz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c, arg_0.c, global0.c, -126f), vec4<f32>(global0.c, -389f, arg_0.c, arg_0.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-224f, 325f, 1414f, global0.c) - vec4<f32>(arg_0.c, arg_0.c, 721f, 113f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    global0 = func_4(func_2(countOneBits(-global0.b.a.zwy), arg_0), !(!vec4<bool>(all(vec4<bool>(true, true, global0.d.x, global0.d.x)), false & global0.d.x, global0.d.x, true)), arg_1 | u_input.a.x, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(arg_1, 0u, 80428u)), u_input.a) >> (~33365u % 32u), global0.b.c, u_input.a.x));
    var var_0 = Struct_5(global0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_0.xxx * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-799f, arg_0.x, 538f)) - _wgslsmith_f_op_vec3_f32(arg_0.yzx - arg_0.xyy)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(649f, _wgslsmith_f_op_f32(685f + global0.c), arg_0.x) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-276f, arg_0.x, arg_0.x), arg_0.xyx, global0.d)))))));
    var var_2 = func_4(Struct_2(all(func_4(func_2(global0.b.a.yyz, vec4<f32>(var_1.x, -697f, global0.c, var_1.x)), !vec4<bool>(false, global0.d.x, global0.a, true), 30313u, u_input.a).d.xy), Struct_1(vec4<i32>(1i, var_0.a.a.x, global0.b.a.x, 2147483647i) | ~global0.b.a, var_0.a.b, var_0.a.c), 532f, !(!global0.d)), vec4<bool>(false, global0.a, global0.a, 34802i <= _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.b, global0.b.b, global0.b.a.x), global0.b.a.xyw), _wgslsmith_div_vec3_i32(vec3<i32>(-38204i, var_0.a.a.x, 30304i), vec3<i32>(var_0.a.b, global0.b.b, var_0.a.a.x)))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0.b.c), vec3<u32>(4294967295u, arg_1, u_input.a.x)), u_input.a), ~1u), u_input.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-306f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-1697f * -1286f), var_2.a)) + arg_0.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1133f, arg_1.c, all(vec2<bool>(any(vec2<bool>(false, var_0.a)), true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, _wgslsmith_f_op_f32(floor(1396f)), -1720f, global0.c)))));
    var var_3 = false;
    var var_4 = !arg_1.d.x;
    return Struct_2(false, Struct_1(vec4<i32>(arg_1.b.a.x, min(43268i, var_0.b.b >> (var_0.b.c % 32u)), min(global0.b.b, global0.b.b) & 1i, i32(-1i) * -45499i), firstTrailingBit(-2147483647i), ~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - -208f), _wgslsmith_f_op_f32(-arg_0))))), !(!vec3<bool>(arg_1.a, true, var_0.a | true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c)))));
    global0 = func_5(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c, -1183f, global0.c, -573f)))), _wgslsmith_div_u32(4294967295u, select(_wgslsmith_div_u32(global0.b.c, global0.b.c), _wgslsmith_div_u32(0u, global0.b.c), 0u == global0.b.c)))), func_2(_wgslsmith_sub_vec3_i32(global0.b.a.yyz, vec3<i32>(7764i, global0.b.b, ~global0.b.a.x)), vec4<f32>(global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + -779f), _wgslsmith_f_op_f32(min(global0.c, -202f))), _wgslsmith_f_op_f32(909f + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(772f, global0.c, global0.c, global0.c), u_input.a.x)) * _wgslsmith_f_op_f32(-global0.c)))), 1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f * 1000f)), global0.c, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.c, global0.d.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1244f)))));
    global0 = Struct_2(false, func_4(func_5(func_4(func_2(global0.b.a.zwy, vec4<f32>(162f, global0.c, -1122f, 521f)), vec4<bool>(false, false, true, global0.d.x), u_input.a.x, abs(u_input.a)).c, Struct_2(global0.a, global0.b, global0.c, global0.d), ~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(0u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), vec4<bool>(global0.d.x, func_4(Struct_2(false, global0.b, -718f, vec3<bool>(false, global0.a, global0.a)), !vec4<bool>(global0.a, true, true, true), ~71481u, abs(vec3<u32>(u_input.a.x, 17660u, 45632u))).d.x, true, all(select(global0.d, vec3<bool>(global0.d.x, false, global0.a), vec3<bool>(global0.a, false, true)))), ~global0.b.c, ~((vec3<u32>(global0.b.c, global0.b.c, 27061u) | u_input.a) | (u_input.a & u_input.a))).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-func_2(vec3<i32>(global0.b.a.x, 13162i, global0.b.b), vec4<f32>(-1533f, -736f, global0.c, 192f)).c), func_5(-1023f, func_2(global0.b.a.zxz, vec4<f32>(-1000f, 616f, global0.c, -2360f)), u_input.a.x, 830f).a)))), select(!func_5(-1110f, func_5(678f, Struct_2(global0.a, Struct_1(vec4<i32>(global0.b.b, 1i, global0.b.a.x, -6385i), global0.b.b, 19662u), 1060f, vec3<bool>(global0.d.x, false, global0.a)), u_input.a.x, global0.c), 0u, _wgslsmith_f_op_f32(-global0.c)).d, !global0.d, func_4(func_2(~vec3<i32>(-44353i, global0.b.a.x, global0.b.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.c, global0.c, global0.c), vec4<f32>(global0.c, global0.c, -2043f, -697f))), select(!vec4<bool>(global0.a, global0.d.x, false, false), vec4<bool>(global0.a, true, true, true), true), global0.b.c, _wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.a), ~u_input.a, u_input.a)).d.x));
    let var_0 = Struct_5(Struct_1(func_4(func_4(func_2(vec3<i32>(-8792i, -23390i, 42338i), vec4<f32>(-1000f, global0.c, 2778f, -499f)), vec4<bool>(global0.a, global0.a, global0.a, global0.d.x), 17246u << (global0.b.c % 32u), u_input.a), !(!vec4<bool>(false, false, global0.a, true)), 44118u, u_input.a).b.a, 38446i, global0.b.c));
    let var_1 = u_input.a;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1389f);
    global0 = func_2(min(vec3<i32>(global0.b.b, func_2(_wgslsmith_mult_vec3_i32(global0.b.a.yzz, global0.b.a.wyy), vec4<f32>(global0.c, 518f, global0.c, 908f)).b.b, ~(i32(-1i) * -31276i)), firstTrailingBit(global0.b.a.xww)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-311f)), 180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + 1000f)), -1473f)));
    var var_2 = !(!func_4(Struct_2(global0.d.x, func_2(vec3<i32>(0i, 24062i, -18448i), vec4<f32>(550f, global0.c, 665f, global0.c)).b, _wgslsmith_f_op_f32(global0.c - global0.c), !vec3<bool>(global0.a, true, false)), vec4<bool>(global0.a | false, !global0.d.x, all(vec4<bool>(true, global0.d.x, true, true)), true), ~u_input.a.x >> (var_0.a.c % 32u), u_input.a).d);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(41323u), var_0.a.a, vec2<i32>(46940i | (global0.b.b << (12637u % 32u)), 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c))))));
}

