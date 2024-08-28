struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(373f, -174f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = vec2<i32>(30878i, ~u_input.c);
    global0 = vec2<f32>(arg_1, arg_1);
    let var_1 = select(!vec2<bool>(any(vec3<bool>(true, true, true)), select(var_0.x < -1i, true, select(false, true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) >= _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-1888f * 760f))) && false);
    let var_2 = ~arg_2 ^ arg_0;
    let var_3 = Struct_5(Struct_4(Struct_1(select(vec2<u32>(4294967295u, var_2), min(arg_3.a, vec2<u32>(arg_2, 6845u)), var_1.x)), Struct_1(select(arg_3.a & vec2<u32>(arg_2, arg_0), arg_3.a, !var_1)), 1f), select(!vec3<bool>(true, u_input.c != var_0.x, var_1.x), !select(vec3<bool>(true, false, false), select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, var_1.x), false), vec3<bool>(var_1.x, false, var_1.x)), ~1u <= ~(arg_2 ^ 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1231f), global0.x), u_input.b.xwx);
    return var_3.b;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = true;
    let var_1 = Struct_1(vec2<u32>(max(abs(_wgslsmith_sub_u32(arg_0.a.x, 45028u)), ~arg_0.a.x & 65877u), 1u));
    var var_2 = true;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-352f, global0.x)) - -682f), global0.x);
    let var_4 = Struct_4(Struct_1(arg_0.a), arg_0, -1401f);
    return func_3(_wgslsmith_sub_u32(reverseBits(abs(~var_4.b.a.x)), firstLeadingBit(var_4.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f - var_3)), global0.x), var_4.a.a.x, Struct_3(select(vec2<u32>(~12753u, min(var_1.a.x, var_4.a.a.x)), arg_0.a, vec2<bool>(true, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> vec2<f32> {
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1013f - _wgslsmith_f_op_f32(exp2(global0.x))), 458f))));
    var_0 = countOneBits(min(~_wgslsmith_div_vec3_i32(~vec3<i32>(25074i, var_0.x, 0i), u_input.a), vec3<i32>(arg_0.x, -14112i, u_input.c)));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.ww, u_input.a.zz), countOneBits(vec2<i32>(u_input.c, 1i << (_wgslsmith_mult_u32(arg_2.a.x, 21546u) % 32u))));
    var_0 = max(select(~((vec3<i32>(1i, 0i, var_1.x) >> (vec3<u32>(arg_2.a.x, 1u, 31856u) % vec3<u32>(32u))) & u_input.b.zwx), abs(u_input.b.xzw), all(select(select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, true, arg_3, arg_3)), select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(false, arg_1.x, false, arg_3), arg_3), select(vec4<bool>(false, arg_1.x, arg_3, false), vec4<bool>(true, arg_3, arg_1.x, arg_3), vec4<bool>(arg_3, false, true, false))))), u_input.b.xzx);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1269f, global0.x), vec2<f32>(-261f, global0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 676f) * vec2<f32>(global0.x, -971f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -234f))) - vec2<f32>(global0.x, -221f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, global0.x) + vec2<f32>(global0.x, -1498f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_4 {
    global0 = arg_1.yw;
    global0 = arg_1.zw;
    global0 = _wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(u_input.b.x, 28639i), func_2(arg_0), Struct_3(vec2<u32>(_wgslsmith_sub_u32(0u, ~arg_0.a.x), _wgslsmith_div_u32(0u, ~arg_0.a.x))), true));
    global0 = vec2<f32>(766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)));
    return Struct_4(arg_0, arg_0, global0.x);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    global0 = vec2<f32>(_wgslsmith_div_f32(arg_1.c, 219f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1151f), 1756f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c, -134f, true)))), _wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(1i, select(-58543i, u_input.a.x, false)), !vec3<bool>(false, arg_0, arg_0), Struct_3(countOneBits(arg_1.b.a)), arg_0)).x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_vec2_f32(func_4(u_input.b.zz, func_3(arg_1.b.a.x, 1147f, 3361u, Struct_3(arg_1.a.a)), Struct_3(arg_1.b.a), true)).x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1066f, -1239f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f))), arg_2)));
    var var_0 = u_input.c;
    let var_1 = -abs(u_input.b.zx);
    var_0 = u_input.a.x;
    return Struct_3(~arg_1.a.a);
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = 12293i;
    let var_1 = Struct_5(func_1(func_1(Struct_1(vec2<u32>(arg_1, arg_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -634f, _wgslsmith_f_op_f32(min(global0.x, 540f)), func_1(Struct_1(arg_0.a), vec4<f32>(global0.x, -1000f, -379f, 1399f)).c)).b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(707f, -400f, 2321f, global0.x)) * vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), select(!vec3<bool>(true, true, any(vec3<bool>(false, false, false))), vec3<bool>(any(func_3(4294967295u, global0.x, arg_1, arg_0).yx), u_input.c > u_input.a.x, true), true), global0.x, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(min(select(0i, 0i, true), u_input.b.x), u_input.b.x, (u_input.c >> (82299u % 32u)) & _wgslsmith_mult_i32(u_input.a.x, 2147483647i))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c, -778f))), vec2<f32>(-724f, 2540f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-114f, global0.x)), 1540f, true))), global0.x), false));
    var var_2 = func_5(var_1.b.x, var_1.a, 199f);
    var var_3 = var_1.b.x;
    return Struct_2(1u);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(u_input.a.yy, vec3<bool>(true, false, true), arg_0, true)).x) * global0.x), -133f)));
    let var_0 = -_wgslsmith_mult_i32(u_input.a.x, 0i);
    global0 = vec2<f32>(_wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(232f - 961f))), global0.x));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-693f, -1000f, false)), global0.x) - vec2<f32>(global0.x, global0.x)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_7(Struct_3(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 53941u), vec2<u32>(1u, 1u))), func_6(func_5(false, func_1(Struct_1(vec2<u32>(66467u, 1u)), vec4<f32>(367f, 219f, global0.x, 179f)), _wgslsmith_f_op_f32(global0.x + global0.x)), ~(~53264u)), firstLeadingBit(abs(~vec3<u32>(1u, 4294967295u, 20656u))))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -481f, false))));
    var var_0 = func_5(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -640f)), Struct_4(func_1(func_1(func_1(Struct_1(vec2<u32>(0u, 0u)), vec4<f32>(global0.x, global0.x, global0.x, global0.x)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 364f) + vec4<f32>(599f, -141f, global0.x, global0.x))).b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, -211f, 1080f), vec4<f32>(global0.x, 953f, global0.x, -864f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-209f, global0.x, global0.x, 630f), vec4<f32>(-141f, -1000f, -472f, -1000f))))).b, func_1(func_1(Struct_1(vec2<u32>(1u, 1u)), vec4<f32>(global0.x, 387f, 1545f, -902f)).a, vec4<f32>(global0.x, _wgslsmith_f_op_f32(411f - 648f), _wgslsmith_f_op_f32(floor(global0.x)), -176f)).a, global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1251f)))))));
    var var_1 = _wgslsmith_add_vec3_u32(firstTrailingBit(~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, 0u)), vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) | vec3<u32>(var_0.a.x, 66568u, 15730u))), (~vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 1u, 1u), vec3<u32>(var_0.a.x, 12537u, var_0.a.x)) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_0.a.x, 1u) | vec3<u32>(var_0.a.x, 28662u, var_0.a.x), vec3<u32>(var_0.a.x, func_5(false, Struct_4(Struct_1(var_0.a), Struct_1(vec2<u32>(var_0.a.x, 0u)), global0.x), -651f).a.x, 1u)) % vec3<u32>(32u)));
    let var_2 = 1i;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_7(Struct_3(vec2<u32>(var_1.x, var_0.a.x)), Struct_2(54446u), vec3<u32>(4294967295u, 13378u, var_0.a.x))).x, _wgslsmith_f_op_f32(global0.x - 1336f)) * global0.x)), _wgslsmith_f_op_f32(round(global0.x)));
    let var_3 = -select(u_input.a.yz, -(~(u_input.a.yz >> (var_1.xy % vec2<u32>(32u)))), !(!func_2(Struct_1(vec2<u32>(var_0.a.x, var_1.x))).yy));
    let var_4 = Struct_5(func_1(Struct_1(vec2<u32>(0u, var_1.x) >> (var_0.a % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1366f * 1000f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(270f, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -514f)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(-global0.x), 1846f), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))))), !(!func_3(func_6(Struct_3(vec2<u32>(1u, 18749u)), var_0.a.x).a, _wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(1i, u_input.b.x), vec3<bool>(true, true, false), Struct_3(vec2<u32>(84495u, var_1.x)), true)).x, 50975u, Struct_3(vec2<u32>(17699u, 4294967295u)))), _wgslsmith_f_op_f32(max(-2624f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(199f)), _wgslsmith_f_op_f32(global0.x + 642f)), _wgslsmith_f_op_f32(sign(global0.x)))))), vec3<i32>(~(-u_input.b.x), 9329i, _wgslsmith_mod_i32(var_3.x, ~var_3.x)) & -reverseBits(u_input.b.xyz));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(9951u), 1i);
}

