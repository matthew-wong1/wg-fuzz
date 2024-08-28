struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(36522u, 1u, 54297u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = arg_0.a;
    return arg_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = false;
    global0 = !(!(reverseBits(_wgslsmith_mult_i32(arg_1.c.x, global1.c.x)) >= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_1.c.x, -22958i), u_input.a), ~u_input.a)));
    var var_1 = _wgslsmith_add_i32(arg_0.c.x, -2147483647i) | _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -34029i, arg_1.c.x, 11299i) | vec4<i32>(0i, 1i, 0i, 56165i), vec4<i32>(arg_0.c.x, 12182i, arg_0.c.x, -28224i)) ^ arg_0.c.x, -arg_1.c.x & arg_1.c.x, -24380i);
    var var_2 = Struct_2(arg_1, arg_1.a.zz, select(!select(vec4<bool>(false, true, true, true), select(arg_0.a, vec4<bool>(false, true, global1.d, false), arg_1.a), !arg_1.d), vec4<bool>(func_2(Struct_2(arg_0, arg_0.a.yx, global1.a)).d, false, any(vec4<bool>(true, arg_0.d, arg_0.d, global1.d)), true), true));
    var var_3 = arg_1.c.x >= ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, 26824i, -32677i, -24433i) << (vec4<u32>(4294967295u, 1u, 1u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.a.x, global1.c.x, -25772i, u_input.a.x))), u_input.a.x);
    return arg_0.a.yw;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    global1 = Struct_1(!vec4<bool>(true, false, all(vec2<bool>(arg_1.c.x, global1.a.x)), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(Struct_2(arg_1.a, arg_1.c.wy, arg_1.a.a)).b.x, _wgslsmith_f_op_f32(-arg_2))))), ~global1.c, arg_1.b.x);
    var var_0 = Struct_2(Struct_1(vec4<bool>(783f < _wgslsmith_f_op_f32(-global1.b.x), global1.d | true, true, !(arg_0.x >= global2.x)), _wgslsmith_f_op_vec2_f32(floor(arg_1.a.b)), ~_wgslsmith_mod_vec2_i32(arg_1.a.c >> (arg_3.xy % vec2<u32>(32u)), -global1.c), true & select(func_2(Struct_2(Struct_1(global1.a, vec2<f32>(-366f, 1237f), vec2<i32>(u_input.a.x, global1.c.x), true), global1.a.wy, arg_1.c)).d, arg_1.c.x, true)), vec2<bool>(false, all(select(vec3<bool>(true, true, arg_1.a.d), vec3<bool>(arg_1.c.x, arg_1.c.x, false), vec3<bool>(true, global1.d, false)))), !vec4<bool>(global2.x <= _wgslsmith_dot_vec3_u32(arg_0.yxw, global2.xxx), !(arg_1.b.x | arg_1.c.x), (arg_3.x < arg_0.x) && false, !(arg_1.a.b.x >= 898f)));
    var var_1 = arg_1.a;
    global1 = arg_1.a;
    let var_2 = -67498i;
    return Struct_1(!func_2(Struct_2(var_0.a, var_1.a.ww, select(var_1.a, arg_1.a.a, var_0.a.a))).a, var_1.b, vec2<i32>(i32(-1i) * -(arg_1.a.c.x & var_1.c.x), global1.c.x), global1.a.x);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global1.c.x;
    global2 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 32628u, 12309u, global2.x) << (vec4<u32>(4836u, 4274u, 59421u, 41449u) % vec4<u32>(32u)), ~vec4<u32>(7189u, 19966u, global2.x, 115273u), vec4<u32>(1u, global2.x, 4294967295u, global2.x) >> (vec4<u32>(global2.x, global2.x, global2.x, 55151u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 41214u, global2.x, global2.x) << (vec4<u32>(0u, 1u, global2.x, global2.x) % vec4<u32>(32u)), ~vec4<u32>(global2.x, global2.x, 0u, 24285u), _wgslsmith_add_vec4_u32(vec4<u32>(23836u, 76544u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x))) ^ countOneBits(vec4<u32>(0u, 1u, 4294967295u, 39649u) | vec4<u32>(global2.x, global2.x, global2.x, global2.x)));
    let var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, global2.x, 7128u, 4294967295u)), firstTrailingBit(min(vec4<u32>(global2.x, 48221u, global2.x, global2.x), vec4<u32>(1u, global2.x, 1u, 2023u)))), (vec4<u32>(1u, 0u, 72045u, 32443u) | firstTrailingBit(vec4<u32>(29752u, 1u, 4294967295u, 47667u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(global2.yx, vec2<u32>(4294967295u, 1u)), global2.x, 118201u, ~34085u));
    var var_2 = arg_0;
    var var_3 = arg_0;
    return func_2(Struct_2(Struct_1(global1.a, _wgslsmith_div_vec2_f32(arg_0.b.b, vec2<f32>(1341f, -1008f)), vec2<i32>(~8138i, arg_0.b.c.x), !(true && global1.a.x)), func_2(Struct_2(Struct_1(global1.a, vec2<f32>(global1.b.x, arg_0.b.b.x), vec2<i32>(-2147483647i, var_3.b.c.x), var_2.b.d), arg_0.b.a.xx, vec4<bool>(var_2.b.d, true, true, false))).a.wz, vec4<bool>(select(false, var_1.x == 54654u, global1.d), true == !global1.a.x, func_3(func_4(var_1, Struct_2(Struct_1(var_3.b.a, vec2<f32>(arg_0.a, var_3.a), vec2<i32>(var_2.b.c.x, u_input.a.x), global1.d), arg_0.b.a.xz, global1.a), 914f, var_1), var_3.b).x, arg_0.b.a.x)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global1 = func_5(Struct_3(1315f, func_4(min(max(vec4<u32>(global2.x, 49645u, global2.x, 1u), vec4<u32>(66897u, global2.x, 29050u, global2.x)), ~vec4<u32>(58354u, 1u, global2.x, global2.x)), Struct_2(func_2(Struct_2(Struct_1(global1.a, vec2<f32>(1181f, arg_0.x), u_input.a.yy, true), vec2<bool>(global1.a.x, global1.d), global1.a)), func_3(Struct_1(vec4<bool>(false, true, global1.a.x, true), arg_0.wx, vec2<i32>(global1.c.x, 1i), true), Struct_1(global1.a, arg_0.wx, global1.c, false)), !vec4<bool>(global1.d, global1.a.x, true, global1.d)), 207f, ~vec4<u32>(global2.x, 1u, 4294967295u, global2.x) << (~vec4<u32>(1692u, 1486u, 30617u, 4294967295u) % vec4<u32>(32u)))));
    global2 = vec4<u32>(~1u, global2.x, global2.x, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), global2.x));
    global0 = (i32(-1i) * -29106i) > (global1.c.x & (u_input.a.x | ~(~(-2147483647i))));
    var var_0 = max(~reverseBits(_wgslsmith_add_u32(~4294967295u, global2.x)), _wgslsmith_sub_u32(~global2.x, ~global2.x));
    var var_1 = Struct_3(-1390f, func_4(firstLeadingBit((vec4<u32>(4294967295u, global2.x, 8911u, global2.x) << (vec4<u32>(global2.x, global2.x, 0u, 29977u) % vec4<u32>(32u))) ^ abs(vec4<u32>(0u, global2.x, global2.x, 1u))), Struct_2(func_2(Struct_2(Struct_1(vec4<bool>(global1.a.x, global1.d, global1.a.x, global1.d), arg_0.yy, vec2<i32>(-29369i, global1.c.x), true), global1.a.zy, vec4<bool>(global1.d, true, global1.d, global1.a.x))), vec2<bool>(global1.d, global1.a.x), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), func_2(Struct_2(Struct_1(global1.a, vec2<f32>(-588f, 764f), vec2<i32>(u_input.a.x, -1i), false), global1.a.yx, vec4<bool>(global1.a.x, false, global1.d, global1.a.x))).a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -921f)) - 236f), max(~_wgslsmith_div_vec4_u32(vec4<u32>(161058u, 16526u, global2.x, global2.x), vec4<u32>(0u, global2.x, 185106u, global2.x)), ~vec4<u32>(global2.x, 25130u, global2.x, global2.x))));
    return true;
}

fn func_6(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = func_2(Struct_2(Struct_1(global1.a, vec2<f32>(_wgslsmith_f_op_f32(global1.b.x * 255f), -566f), u_input.a.xx, (global1.d | false) | false), vec2<bool>(!(!global1.d), arg_1), global1.a));
    global0 = true;
    global2 = ~(vec4<u32>(global2.x, global2.x, global2.x, global2.x) | _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, global2.x, 5632u, 1u) & vec4<u32>(3361u, 0u, global2.x, 19531u)), vec4<u32>(global2.x, _wgslsmith_dot_vec3_u32(global2.yyx, vec3<u32>(global2.x, global2.x, global2.x)), _wgslsmith_sub_u32(136343u, global2.x), 0u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x), -311f))))));
    var var_2 = Struct_1(func_4(max(countOneBits(vec4<u32>(global2.x, 40300u, global2.x, 22335u)), vec4<u32>(~0u, abs(global2.x), global2.x, _wgslsmith_div_u32(global2.x, global2.x))), Struct_2(func_2(Struct_2(Struct_1(vec4<bool>(var_0.d, var_0.d, false, false), var_0.b, var_0.c, true), var_0.a.zy, var_0.a)), vec2<bool>(false, arg_1), vec4<bool>(arg_1, var_1.x != var_0.b.x, global1.a.x, any(global1.a))), _wgslsmith_f_op_f32(-func_5(Struct_3(var_0.b.x, Struct_1(var_0.a, var_1.xx, vec2<i32>(global1.c.x, -2147483647i), global1.a.x))).b.x), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 26581u, 0u)), vec4<u32>(global2.x, 25120u, 103344u, global2.x))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz - vec2<f32>(1f, _wgslsmith_f_op_f32(-global1.b.x)))), vec2<i32>(1i, ~min(_wgslsmith_mod_i32(u_input.a.x, 11233i), var_0.c.x)), false);
    return firstLeadingBit(_wgslsmith_sub_u32(reverseBits(global2.x), ~global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x >= func_6(2147483647i, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(648f, -750f, global1.b.x, global1.b.x))))));
    var var_1 = _wgslsmith_clamp_vec3_u32(~global2.xyx, reverseBits(~global2.wxz), ~(~min(vec3<u32>(global2.x, 4294967295u, 21585u), vec3<u32>(global2.x, global2.x, global2.x)))) & vec3<u32>(_wgslsmith_add_u32(0u, reverseBits(4294967295u)) << ((~33956u ^ global2.x) % 32u), _wgslsmith_mult_u32(global2.x, 26863u), 46392u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -346f), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f + -1412f))), vec3<f32>(-312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.x))), func_2(Struct_2(Struct_1(global1.a, global1.b, global1.c, global1.a.x), vec2<bool>(false, global1.d), global1.a)).b.x)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-616f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -499f))))));
    var_0 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 22058u, var_1.x), vec4<u32>(0u, global2.x, 36172u, 4294967295u))), 242u, 0u), countOneBits(select(select(vec3<u32>(global2.x, 21731u, global2.x), vec3<u32>(9551u, 27626u, 17124u), true), select(global2.xxy, global2.yxy, global1.a.wxz), var_1.x != 35219u))));
}

