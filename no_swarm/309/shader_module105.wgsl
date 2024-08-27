struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -9806i, -1i, -45689i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = -21183i;
    global0 = u_input.a;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(733f, 190f)), _wgslsmith_f_op_f32(-148f - 760f), 1198f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1510f, 137f, 322f))))), vec3<f32>(1000f, _wgslsmith_f_op_f32(step(-169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -1206f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2079f)))));
    var var_2 = Struct_2(~abs(u_input.a), select(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)), all(vec2<bool>(true, true))));
    global0 = vec4<i32>(~_wgslsmith_mult_i32(arg_0.x, abs(abs(1i))), -2147483647i >> (_wgslsmith_mult_u32(u_input.b.x, abs(u_input.b.x)) % 32u), ~_wgslsmith_dot_vec2_i32(arg_1.xx << (u_input.b.yy % vec2<u32>(32u)), vec2<i32>(global0.x, -1i) & ~vec2<i32>(1i, 36574i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.x, arg_0.x)), reverseBits(var_2.a.zz)), countOneBits(var_2.a.x)));
    return countOneBits(-19207i);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(33256i, 2147483647i, -56448i, -2147483647i)) << (firstTrailingBit(vec4<u32>(u_input.b.x, 23490u, u_input.b.x, 0u)) % vec4<u32>(32u)), abs(~(~u_input.a))), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)))));
    var var_1 = -_wgslsmith_add_i32(_wgslsmith_mult_i32(func_3(vec2<i32>(-2147483647i, global0.x), firstTrailingBit(vec3<i32>(0i, 6738i, var_0.a.x))), 36381i), -34399i);
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(firstTrailingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, var_0.a.x, 1i, 1i), u_input.a)), vec4<i32>(1i, ~(-4347i), (var_0.a.x | u_input.a.x) << (firstTrailingBit(57099u) % 32u), _wgslsmith_add_i32(global0.x, u_input.c))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), var_0.b, false)), 1u > (countOneBits(u_input.b.x) & select(u_input.b.x, u_input.b.x, true)), true, !var_0.b.x));
    let var_3 = 132f;
    global0 = max(reverseBits(-firstTrailingBit(~vec4<i32>(-1i, 38222i, global0.x, 1i))), vec4<i32>(~(~(global0.x ^ 52004i)), global0.x, firstTrailingBit(countOneBits(-var_0.a.x)), -52184i ^ u_input.c));
    return Struct_1(!select(var_2.b.xwz, !(!var_0.b.zzz), vec3<bool>(true, true, true)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> f32 {
    let var_0 = ~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_0, 23293i, 1i, arg_1) ^ (vec4<i32>(29559i, global0.x, arg_0, arg_1) | u_input.a)), firstLeadingBit(select(min(vec4<i32>(-33574i, 0i, arg_1, -17561i), u_input.a), vec4<i32>(-21090i, arg_1, arg_1, u_input.a.x), any(vec4<bool>(false, true, true, true)))));
    global0 = u_input.a;
    var var_1 = func_2();
    var var_2 = false;
    var var_3 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1732f + -1052f), _wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2028f, 237f)))))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, arg_0, 365f) - vec3<f32>(-733f, arg_0, 627f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, 691f, arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1189f, arg_0) - vec3<f32>(-189f, -1238f, arg_0))))))));
    var var_1 = Struct_1(vec3<bool>(true, arg_2.b.x, arg_2.b.x));
    global0 = vec4<i32>(-3621i, ~3461i, global0.x, 0i);
    global0 = u_input.a;
    var_1 = func_2();
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0.a.xw;
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-arg_0.a, _wgslsmith_mod_vec4_i32(u_input.a, -(vec4<i32>(global0.x, 8562i, arg_0.a.x, u_input.a.x) << (vec4<u32>(1u, 30040u, 8502u, 0u) % vec4<u32>(32u)))), u_input.a), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(max(global0.wz, arg_0.a.wz), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 29914i), vec2<i32>(arg_0.a.x, global0.x))), ~1i ^ -global0.x), 1i, abs(select(_wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, -704i, global0.x, var_0.x)), arg_0.a.x, u_input.a.x == 44486i)), u_input.c));
    global0 = countOneBits(~u_input.a);
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(613f + 2086f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -225f))))), 41375u, Struct_2(~func_4(_wgslsmith_f_op_f32(round(268f)), 4294967295u, arg_0).a, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) - 1f), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u)), _wgslsmith_clamp_u32(u_input.b.x, 29693u, 0u), arg_0.a.x > 15698i), func_4(644f, 0u, arg_0)).b));
    let var_2 = 12646i;
    return Struct_1(arg_0.b.zwy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(func_1(select(~(-1i), -u_input.a.x, true), u_input.c, abs(vec2<u32>(25670u, 1u) ^ u_input.b.zx))), u_input.b.x, Struct_2(select(u_input.a, -vec4<i32>(2147483647i, global0.x, global0.x, global0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, true, true, true))), (u_input.b.x == 4294967295u) || false);
    let var_1 = !(!select(var_0.a.yy, vec2<bool>(var_0.a.x | false, false), !(!var_0.a.x)));
    var var_2 = firstLeadingBit(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1582f + -1160f))), 0u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2068f))), u_input.b.x, func_4(-222f, u_input.b.x, Struct_2(vec4<i32>(global0.x, 0i, 41720i, u_input.c), vec4<bool>(var_0.a.x, false, true, var_1.x))))).a.x);
    global0 = vec4<i32>(firstLeadingBit(global0.x), 58949i, u_input.a.x, u_input.c);
    var_2 = _wgslsmith_clamp_i32(u_input.a.x, firstLeadingBit(-u_input.c), select(0i, ~global0.x, func_4(_wgslsmith_div_f32(-1431f, _wgslsmith_f_op_f32(ceil(1134f))), countOneBits(26551u ^ u_input.b.x), func_4(_wgslsmith_f_op_f32(f32(-1f) * -168f), ~u_input.b.x, Struct_2(vec4<i32>(global0.x, global0.x, global0.x, -39098i), vec4<bool>(false, var_0.a.x, false, var_1.x)))).b.x));
    var var_3 = true;
    let var_4 = max(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, 107929u), vec4<u32>(u_input.b.x, u_input.b.x, 49746u, 15680u)) | ~64241u, 99004u) & countOneBits(~u_input.b), countOneBits(vec3<u32>(_wgslsmith_div_u32(select(u_input.b.x, 0u, false), ~4294967295u), (u_input.b.x | 6322u) | ~u_input.b.x, min(u_input.b.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-862f + -1919f), _wgslsmith_f_op_f32(min(-1154f, -922f)), -122f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(619f, -330f, 1502f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(410f, 2147f, -402f), vec3<f32>(462f, 1000f, -1045f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(856f, 1000f, -223f) - vec3<f32>(948f, 787f, -195f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(803f, 836f, -578f) - vec3<f32>(-503f, 928f, 168f)))), vec3<bool>(all(select(var_1, var_1, vec2<bool>(var_0.a.x, true))), func_5(Struct_2(vec4<i32>(-1i, u_input.a.x, global0.x, global0.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), false).a.x, true))), select(min(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(45648u, 5968u, u_input.b.x, 0u), vec4<u32>(23268u, 7522u, 52171u, var_4.x)), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 34222u), ~126904u, ~20481u, u_input.b.x)), ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(68959u, u_input.b.x), 29431u, u_input.b.x & 4294967295u), select(vec4<bool>(var_1.x, var_0.a.x, 19813i == global0.x, true), select(vec4<bool>(true, false, true, var_1.x), !vec4<bool>(var_1.x, var_0.a.x, var_0.a.x, var_0.a.x), !var_1.x), all(vec4<bool>(true, true, var_0.a.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(268f + _wgslsmith_f_op_f32(953f - -221f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1059f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(243f)) + _wgslsmith_f_op_f32(f32(-1f) * -933f)), _wgslsmith_f_op_f32(f32(-1f) * -2330f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-800f))) == 127f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-2921f)), -417f)))), 1424f));
}

