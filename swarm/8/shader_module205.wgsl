struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_2 {
    global0 = select(vec3<bool>(true, true, any(vec2<bool>(true, true))), select(vec3<bool>(all(!vec4<bool>(global0.x, false, global0.x, true)), global0.x, global0.x), !vec3<bool>(!global0.x, true, true), global0.x & true), select(vec3<bool>(true, true, !(!global0.x)), select(select(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, false), vec3<bool>(false, false, global0.x), vec3<bool>(false, false, true)), !vec3<bool>(global0.x, global0.x, global0.x)), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false), global0.x), false), global0.x));
    global0 = vec3<bool>(!(global0.x || true), global0.x, false);
    let var_0 = Struct_1(true, select(select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, true, global0.x, false)), !vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(!global0.x, true, !all(vec3<bool>(global0.x, true, global0.x)), global0.x), !global0.x), true);
    var var_1 = Struct_2(6479u, var_0, var_0.b);
    global0 = var_1.b.b.yyx;
    return Struct_2(var_1.a, var_0, select(!(!(!var_0.b)), vec4<bool>(global0.x, all(select(global0.yy, var_1.c.wx, vec2<bool>(var_0.b.x, false))), ~var_1.a < var_1.a, var_1.c.x), !select(vec4<bool>(false, false, var_0.c, var_1.b.a), var_0.b, var_1.c)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global0 = vec3<bool>(any(vec3<bool>(arg_1.b.c, true, true)), true, select(true, !(arg_1.c.x & any(arg_1.b.b.xxz)), all(select(!vec2<bool>(arg_0.x, false), select(vec2<bool>(global0.x, true), vec2<bool>(arg_0.x, arg_1.b.a), global0.zy), any(vec2<bool>(arg_0.x, true))))));
    let var_0 = arg_1;
    global0 = vec3<bool>(arg_0.x, false, !all(arg_0.zzy));
    global0 = !vec3<bool>(any(vec4<bool>(var_0.c.x, global0.x, true, true)) && !(4294967295u <= arg_1.a), true, !(all(vec2<bool>(true, var_0.b.c)) | (var_0.a != arg_1.a)));
    let var_1 = (vec2<i32>(-1i, countOneBits(u_input.a)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1568i, u_input.a), vec2<i32>(0i, -41345i)), -vec2<i32>(-16829i, u_input.a)), vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(38216u, 72471u) ^ vec2<u32>(var_0.a, 31344u), ~vec2<u32>(23113u, 94377u)) >> (vec2<u32>(~26457u, func_2(vec4<i32>(u_input.a, 2147483647i, u_input.a, -23790i), vec3<f32>(-224f, -483f, 762f), 1i, 1000f).a) % vec2<u32>(32u)), abs(vec2<u32>(~1u, ~0u))) % vec2<u32>(32u));
    return arg_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = func_3(vec4<bool>(all(vec2<bool>(global0.x, true)), arg_1.b.x, any(!vec3<bool>(true, false, arg_0.b.b.x)), arg_0.c.x), func_2(~vec4<i32>(-1397i, -36432i, -2147483647i, 2147483647i) | abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1074f, 1000f, -520f), vec3<f32>(292f, 547f, -941f), vec3<bool>(arg_1.a, true, true))))), _wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-776f)), 999f)))).b.wzz;
    let var_1 = vec4<bool>(arg_2.x, false, func_2(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 39871i, u_input.a, 8844i), vec4<i32>(55384i, u_input.a, u_input.a, 73369i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), u_input.a), u_input.a, ~_wgslsmith_sub_i32(2147483647i, 4235i), 2147483647i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-331f - 466f), _wgslsmith_div_f32(246f, -775f), _wgslsmith_f_op_f32(step(580f, 2069f))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, u_input.a, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-40863i, 1i, 10202i), vec3<i32>(u_input.a, u_input.a, 2147483647i))), u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1178f - -381f), _wgslsmith_f_op_f32(-712f + -1000f)))).b.a, true);
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, arg_0.a, 4294967295u), ~reverseBits(~min(vec3<u32>(arg_0.a, 21254u, 4120u), vec3<u32>(arg_0.a, arg_0.a, arg_0.a))), ~(~vec3<u32>(46361u, 86827u, arg_0.a) & vec3<u32>(1u, ~arg_0.a, arg_0.a)));
    var var_3 = -2396f;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(777f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1165f, 592f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2386f - -1000f), _wgslsmith_f_op_f32(max(137f, -962f)))))));
    return -1000f;
}

fn func_1() -> Struct_1 {
    var var_0 = 453f;
    global0 = vec3<bool>(all(!global0.xy) | (global0.x && any(vec4<bool>(false, false, global0.x, global0.x))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1422f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + -702f) + _wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(u_input.a, u_input.a, 22603i, 2147483647i), vec3<f32>(1032f, 2015f, 723f), 1i, -869f), func_3(vec4<bool>(false, global0.x, global0.x, global0.x), Struct_2(47829u, Struct_1(global0.x, vec4<bool>(true, global0.x, global0.x, false), global0.x), vec4<bool>(true, true, global0.x, false))), vec4<bool>(false, true, global0.x, false)))));
    return func_3(vec4<bool>(_wgslsmith_add_u32(4294967295u >> (1u % 32u), max(0u, 1u)) < _wgslsmith_dot_vec2_u32(~vec2<u32>(477u, 76588u), ~vec2<u32>(4153u, 0u)), global0.x, func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-29713i, -27139i, 21565i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -22894i, 5665i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 33745i, u_input.a, 5102i), vec4<i32>(u_input.a, 4528i, u_input.a, -1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, 1308f, -305f))), min(abs(u_input.a), i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(638f)))).b.b.x, false), func_2(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, 13304i, u_input.a), vec4<i32>(-15545i, 2147483647i, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1187f, -134f, 430f))))), -2147483647i, 1846f));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = select(func_1().b.zzx, arg_0.b.xzy, true);
    global0 = func_2(vec4<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(2147483647i, 1i, 13667i, u_input.a)))), ~(~u_input.a << (~41703u % 32u)), 54364i, u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-347f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1149f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2245f))))), -_wgslsmith_add_i32(1i, 0i) >> (~(~0u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -562f)))) - -1888f)).c.xxw;
    let var_0 = 1i;
    global0 = vec3<bool>(true, true, true);
    global0 = vec3<bool>(arg_0.a, !any(vec2<bool>(true, true)), func_1().a);
    return Struct_1(true, !func_2(vec4<i32>(1i, _wgslsmith_clamp_i32(2147483647i, var_0, -2147483647i), var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 3420i), vec2<i32>(u_input.a, -52788i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1155f, -475f, 2364f), vec3<f32>(-1280f, -1012f, 2208f), arg_0.b.zxz)))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f))).b.b, true);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = ~abs(max(abs(~vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(i32(-1i) * -50020i, countOneBits(u_input.a), abs(u_input.a))));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, countOneBits(1i)), i32(-1i) * -u_input.a), 0i);
    var var_2 = arg_2;
    let var_3 = !(!(!vec4<bool>(func_2(vec4<i32>(u_input.a, u_input.a, var_1.x, var_1.x), vec3<f32>(-968f, 845f, 296f), var_1.x, 1000f).b.c, arg_1.x, true, true)));
    let var_4 = min(countOneBits(var_0.x), ~countOneBits(-min(-1i, var_0.x)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true | !global0.x;
    var var_1 = -828f;
    var var_2 = Struct_1(u_input.a <= 2147483647i, !func_6(func_5(func_1()), func_5(Struct_1(false, vec4<bool>(true, var_0, true, var_0), global0.x)).b, func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-7528i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, -37450i, 0i, u_input.a)), vec3<f32>(1111f, -481f, -1117f), _wgslsmith_sub_i32(2147483647i, u_input.a), _wgslsmith_f_op_f32(1813f - -632f))), all(vec2<bool>(false, var_0)));
    var var_3 = Struct_2(~(~29518u), Struct_1(!global0.x, func_3(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(11744i, 9683i, -2147483647i, u_input.a), vec4<i32>(10723i, 48290i, 2147483647i, -2147483647i)), vec3<f32>(-694f, -1249f, -394f), 2147483647i, _wgslsmith_f_op_f32(floor(-475f))).b.b, func_2(countOneBits(vec4<i32>(u_input.a, -2147483647i, -24151i, 5894i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2075f, -1258f, 655f) * vec3<f32>(237f, 126f, 1144f)), u_input.a & -1i, _wgslsmith_f_op_f32(trunc(281f)))).b, all(global0.xx)), select(func_3(vec4<bool>(true, var_2.b.x & var_0, false, true), Struct_2(~4294967295u, func_3(vec4<bool>(true, global0.x, var_2.b.x, var_0), Struct_2(0u, Struct_1(global0.x, vec4<bool>(false, var_0, var_2.a, true), false), var_2.b)), func_6(Struct_1(true, var_2.b, var_0), vec4<bool>(var_2.c, global0.x, global0.x, global0.x), Struct_2(0u, Struct_1(false, vec4<bool>(false, var_2.b.x, true, var_0), var_0), var_2.b)))).b, func_6(Struct_1(!global0.x, vec4<bool>(var_2.b.x, var_2.a, false, true), func_3(vec4<bool>(var_2.c, true, false, true), Struct_2(0u, Struct_1(global0.x, vec4<bool>(var_0, true, true, global0.x), false), var_2.b)).a), vec4<bool>(global0.x, var_2.b.x, !var_0, true), Struct_2(64380u, Struct_1(false, vec4<bool>(global0.x, false, var_0, false), var_2.c), vec4<bool>(true, var_0, true, false))), vec4<bool>(true, all(select(global0.zx, var_2.b.yz, false)), true, any(global0.zz))));
    var var_4 = func_2(vec4<i32>(u_input.a, i32(-1i) * -32441i, -u_input.a, _wgslsmith_dot_vec2_i32((vec2<i32>(7161i, u_input.a) ^ vec2<i32>(1i, u_input.a)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_3.a, 51899u), vec2<u32>(var_3.a, 0u)) % vec2<u32>(32u)), -vec2<i32>(-25645i, u_input.a) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, -641f, 1788f))))), 515i, -1211f);
    var var_5 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(548f, 1604f, -1085f, -855f)))))), vec4<f32>(1f, 1f, 1f, 1f), func_3(func_3(func_1().b, Struct_2(0u, var_4.b, var_4.b.b)).b, Struct_2(49961u, Struct_1(var_4.c.x, var_3.c, false), vec4<bool>(true, var_3.c.x, global0.x, true))).b))));
    let var_6 = func_2(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, ~u_input.a), select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-31938i, u_input.a, -25230i, -9745i)), any(vec2<bool>(false, global0.x)))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(5811i, 1i, u_input.a, -1i) ^ vec4<i32>(-1i, u_input.a, -34810i, -31805i), vec4<i32>(u_input.a, -13904i, 0i, -26052i) << (vec4<u32>(var_4.a, var_4.a, 32979u, var_3.a) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_5.xxy, vec3<f32>(1008f, 202f, var_5.x))) + var_5.xzw))), u_input.a, _wgslsmith_f_op_f32(func_4(Struct_2(85758u, var_4.b, func_3(vec4<bool>(true, true, true, true), func_2(vec4<i32>(0i, u_input.a, 0i, u_input.a), vec3<f32>(var_5.x, 138f, -860f), 0i, -1078f)).b), func_3(var_3.c, Struct_2(1u, var_3.b, !vec4<bool>(var_2.b.x, var_2.c, var_4.c.x, var_3.c.x))), !vec4<bool>(false, var_4.b.b.x, true, !var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_5.x, reverseBits(u_input.a), select(countOneBits(u_input.a), ~firstLeadingBit(-2147483647i), !(!global0.x)));
}

