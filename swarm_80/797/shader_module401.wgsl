struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_3(true, -2147483647i);
    var var_1 = vec4<f32>(-781f, -383f, 346f, _wgslsmith_f_op_f32(max(470f, 915f)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f + 1010f))), ~var_0.b);
    var var_2 = i32(-1i) * -8079i;
    var var_3 = !select(!(var_1.x != var_1.x), global0.d, !(!var_0.a));
    return select(global0.b, select(global0.b, vec4<bool>(all(global0.b.zyz), global0.b.x, all(vec2<bool>(var_0.a, false)), !var_0.a | !var_0.a), false), select(vec4<bool>(!global0.d, true, all(!vec2<bool>(var_0.a, global0.b.x)), (var_0.a && global0.d) | (var_0.a & false)), global0.b, global0.b));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(277f, _wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-772f))) * 1097f)));
    global0 = Struct_4(global0.a, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f + _wgslsmith_f_op_f32(-var_1)))), global0.c, false, vec3<i32>(-1i) * -(u_input.d.wxw << ((vec3<u32>(13938u, global0.c.a.x, 0u) & arg_1.a.a.xwx) % vec3<u32>(32u))));
    global0 = Struct_4(arg_1.a, func_3(var_1), arg_1.a, u_input.c >= firstTrailingBit(-1i), u_input.d.wxw);
    let var_2 = Struct_3(arg_0.x, global0.e.x);
    return !vec4<bool>(global0.b.x, var_2.a, func_3(_wgslsmith_f_op_f32(-var_1)).x, arg_0.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = ~reverseBits(~global0.e.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, 915f, -502f)), vec3<f32>(-1389f, -520f, -480f)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1147f, 1705f), _wgslsmith_f_op_f32(1258f + 665f), _wgslsmith_f_op_f32(step(758f, 1111f)))))));
    global0 = Struct_4(arg_1, vec4<bool>(arg_0.b.x, var_1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-488f))), false, !(min(0i, arg_2) >= ~arg_2)), global0.a, true, arg_0.e);
    let var_2 = var_1.x;
    global0 = Struct_4(Struct_1(vec4<u32>(arg_0.c.a.x, ~15565u, 24689u, 6851u)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1088f, 154f) + 1586f))), global0.a, true, -vec3<i32>(arg_0.e.x, 0i, _wgslsmith_div_i32(-23782i, -392i)));
    return arg_1.a.x >> (4294967295u % 32u);
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = func_4(Struct_4(global0.c, select(!func_2(global0.b.yy, Struct_2(global0.a, global0.c.a.x, vec3<f32>(731f, 535f, 2663f))), vec4<bool>(!global0.b.x, 23130u == global0.a.a.x, all(global0.b), global0.e.x > 2147483647i), vec4<bool>(global0.d, global0.d, true, func_2(global0.b.yz, Struct_2(Struct_1(vec4<u32>(7651u, global0.a.a.x, u_input.b.x, 4294967295u)), u_input.a, vec3<f32>(-1724f, -639f, 1060f))).x)), global0.c, -(~u_input.c) < 2147483647i, ~vec3<i32>(_wgslsmith_add_i32(global0.e.x, 2147483647i), u_input.d.x, _wgslsmith_add_i32(global0.e.x, -47474i))), global0.a, ~_wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, global0.e.x), select(2147483647i, global0.e.x, global0.d))), arg_0.x);
    var var_1 = max(vec2<i32>(-select(-22697i, global0.e.x, !global0.b.x), abs(firstLeadingBit(-1i)) & u_input.d.x), u_input.d.zz);
    let var_2 = -(~(1i | -_wgslsmith_sub_i32(var_1.x, 3917i)));
    let var_3 = global0.c;
    var var_4 = true;
    return Struct_4(Struct_1(~(~vec4<u32>(u_input.b.x, arg_0.x, u_input.e.x, 0u))), func_2(vec2<bool>(all(!global0.b.xzw), true), Struct_2(global0.a, firstTrailingBit(_wgslsmith_div_u32(u_input.e.x, 73945u)), _wgslsmith_div_vec3_f32(vec3<f32>(1390f, 117f, 694f), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, 663f, -247f) - vec3<f32>(-1307f, 719f, 507f))))), Struct_1(~vec4<u32>(1u, u_input.b.x, var_3.a.x, u_input.b.x)), all(func_3(-890f).yz), ~(-u_input.d.xzz ^ firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_1.x, global0.e.x), vec3<i32>(-18305i, u_input.d.x, u_input.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~u_input.e.xxx));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(391f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(757f, _wgslsmith_f_op_f32(step(889f, 1777f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-539f)))))))));
    let var_2 = global0.e;
    var var_3 = Struct_4(func_1(u_input.e.yww).a, vec4<bool>(var_0.d, all(vec2<bool>(any(global0.b.wxy), !var_0.d)), all(!(!global0.b)), true), func_1(u_input.b).c, false, select(u_input.d.xzw, max(vec3<i32>(min(var_2.x, 1i), i32(-1i) * -11134i, -26617i >> (var_0.a.a.x % 32u)), var_0.e), func_1(vec3<u32>(54176u, u_input.b.x, var_0.a.a.x)).d));
    let var_4 = !vec2<bool>(var_0.b.x && (var_1.x == -1000f), func_1(var_3.c.a.ywy).b.x);
    var var_5 = var_0.c;
    var_3 = func_1(_wgslsmith_mod_vec3_u32(u_input.b, ((vec3<u32>(1u, 0u, u_input.b.x) ^ u_input.b) ^ ~global0.c.a.wyy) ^ (vec3<u32>(u_input.e.x, 0u, 68438u) >> (vec3<u32>(var_0.a.a.x, 0u, 30117u) % vec3<u32>(32u)))));
    let var_6 = 1191f;
    global0 = Struct_4(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.a.x, _wgslsmith_div_u32(var_0.c.a.x, u_input.a), var_5.a.x, func_1(global0.a.a.yyy).a.a.x), vec4<u32>(var_5.a.x, 4294967295u, 64673u, 1u) >> ((vec4<u32>(1u, var_5.a.x, 4294967295u, u_input.e.x) | vec4<u32>(var_5.a.x, var_0.a.a.x, u_input.b.x, 0u)) % vec4<u32>(32u)))), global0.b, Struct_1(vec4<u32>(func_1(~global0.a.a.xzw).c.a.x, var_5.a.x, func_1(vec3<u32>(48386u, 1u, var_3.a.a.x)).c.a.x, var_0.c.a.x)), any(func_3(_wgslsmith_f_op_f32(f32(-1f) * -411f)).xyz), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a, ~u_input.e, ~2147483647i);
}

