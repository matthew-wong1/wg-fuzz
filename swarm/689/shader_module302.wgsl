struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: vec3<u32> = vec3<u32>(42673u, 1u, 1u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-735f + _wgslsmith_f_op_f32(1000f - -1000f))))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(u_input.b, ~u_input.b, u_input.b)), _wgslsmith_add_i32(u_input.b, u_input.b));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(923f, _wgslsmith_f_op_f32(-var_0)))), -u_input.b | (21034i << (0u % 32u)));
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.b, reverseBits(firstTrailingBit(18188i))), 37380i, ~(~var_1.x), var_1.x);
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)))), var_2.a));
    return select(vec3<bool>(true, true, true), !select(vec3<bool>(select(false, true, true), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true)), !select(vec3<bool>(true, true, false), vec3<bool>(var_1.x != 38749i, true, any(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), -36630i < var_2.b)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_5 {
    let var_0 = Struct_2(select(vec3<bool>(any(vec2<bool>(true, false)), true, arg_0 < arg_1.b), !vec3<bool>(u_input.b >= 19606i, 0i == u_input.b, true), vec3<bool>(true, !(global2.x < 26069u), any(vec2<bool>(true, true)))), func_3());
    global2 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(18485u, u_input.a, global2.x), vec3<u32>(u_input.a, u_input.a, global2.x)), min(vec3<u32>(u_input.a, u_input.a, global2.x), vec3<u32>(21273u, 11691u, 35043u))), reverseBits(abs(vec3<u32>(4294967295u, global2.x, global2.x)))));
    global1 = all(!(!vec4<bool>(!var_0.a.x, var_0.b.x, !var_0.a.x, select(true, false, var_0.b.x))));
    let var_1 = Struct_2(!(!var_0.b), !(!var_0.b));
    var var_2 = arg_1.b;
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(~(-71514i ^ u_input.b), 1i);
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(0u, global2.x), ~vec2<u32>(u_input.a, arg_2)), abs(vec2<u32>(global2.x, 47425u) << (vec2<u32>(arg_2, u_input.a) % vec2<u32>(32u))), vec2<u32>(~global2.x, 66031u)), ~(~_wgslsmith_mult_vec2_u32(global2.zy, vec2<u32>(1u, arg_2)))) | _wgslsmith_add_u32(_wgslsmith_add_u32(arg_2, ~_wgslsmith_mod_u32(u_input.a, 132032u)), arg_2);
    global0 = 1u;
    let var_2 = select(arg_0, vec3<bool>(true != (var_1 >= _wgslsmith_div_u32(arg_2, arg_2)), arg_0.x, arg_0.x), arg_0.x);
    let var_3 = Struct_2(vec3<bool>(true, !(!(!var_2.x)), false), vec3<bool>(true, all(!arg_0.yx), any(!var_2)));
    return Struct_2(vec3<bool>(true, !arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-558f, arg_1.a)))) < 2142f), select(!select(var_3.a, arg_0, false), func_3(), !vec3<bool>(false, !var_2.x, true)));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(-2147483647i), (countOneBits(~vec3<u32>(arg_0, 1u, 33976u)) | ~(~vec3<u32>(arg_0, 77952u, 0u))) | select(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(6447u, 45070u, global2.x), vec3<u32>(u_input.a, 34233u, 0u)), ~vec3<u32>(2416u, u_input.a, 4294967295u), ~vec3<u32>(arg_0, global2.x, 34663u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, u_input.a, global2.x), vec3<u32>(0u, 11743u, global2.x)), arg_3.a.x), Struct_3(func_2(min(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(11007i, arg_1.b, 8533i), vec3<i32>(u_input.b, -1i, arg_1.b))), Struct_5(_wgslsmith_f_op_f32(round(-1391f)), arg_1.b | 0i)).b), Struct_3(-7557i));
    let var_1 = _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_clamp_i32(0i, var_0.c.a, -4074i), _wgslsmith_mult_i32(~arg_1.b, ~arg_1.b)), (vec2<i32>(-1i, ~2147483647i) | vec2<i32>(min(u_input.b, arg_1.b), ~1i)) | ((vec2<i32>(37605i, 0i) ^ vec2<i32>(arg_1.b, 31346i)) ^ reverseBits(abs(vec2<i32>(40260i, 9800i)))));
    global1 = arg_2.a.x;
    let var_2 = abs(abs(~(~vec4<u32>(u_input.a, 0u, 38237u, global2.x)))) & vec4<u32>(global2.x & ~(~4294967295u), 11921u, ~(~1u), 1u);
    var var_3 = arg_1.a;
    return vec3<bool>(func_3().x, arg_2.b.x, true);
}

fn func_1() -> Struct_3 {
    global0 = u_input.a;
    var var_0 = Struct_2(!func_5(max(u_input.a, u_input.a), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_mod_i32(8288i, u_input.b)), func_4(vec3<bool>(true, true, true), func_2(u_input.b, Struct_5(313f, 20406i)), ~71396u, _wgslsmith_f_op_f32(-1000f + 1437f)), func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), Struct_5(-464f, 2468i), _wgslsmith_sub_u32(global2.x, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1409f))), !vec3<bool>(!(global2.x < 0u), true, false));
    global2 = ~abs(~select(vec3<u32>(1u, u_input.a, u_input.a) ^ vec3<u32>(86357u, 1u, global2.x), firstTrailingBit(vec3<u32>(u_input.a, 964u, 41861u)), var_0.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 2162f, -1000f, 223f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2180f, 265f, -1487f, -398f), vec4<f32>(-186f, 486f, -1391f, 1318f), vec4<bool>(true, var_0.b.x, false, var_0.b.x))) * vec4<f32>(1148f, -1069f, 928f, -483f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1228f, _wgslsmith_f_op_f32(floor(-679f)), _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(sign(-1567f))) * vec4<f32>(-124f, 220f, _wgslsmith_f_op_f32(884f - -793f), _wgslsmith_f_op_f32(sign(-819f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1325f)), -265f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1167f), -195f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1898f, 1467f, 770f, -654f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-795f, 1605f, 2779f, 1496f), vec4<f32>(-1717f, 1702f, 526f, -107f))))))));
    let var_2 = select(firstLeadingBit(firstTrailingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 41084u), vec3<u32>(global2.x, u_input.a, 0u))))), reverseBits(firstLeadingBit(~reverseBits(vec3<u32>(u_input.a, 0u, global2.x)))), !select(var_0.a, func_5(u_input.a, Struct_5(1030f, -2147483647i), Struct_2(var_0.b, vec3<bool>(false, true, var_0.a.x)), Struct_2(vec3<bool>(true, true, false), var_0.b)), !(!var_0.a.x)));
    return Struct_3(select(-u_input.b, 0i, u_input.b < 3822i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -587f;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_mult_u32(u_input.a, countOneBits(17301u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(648f)), -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(124f, 1000f)))), -194f, -306f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) * 208f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(1325f - -1361f), _wgslsmith_f_op_f32(floor(154f)), _wgslsmith_f_op_f32(sign(-442f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-557f)), _wgslsmith_f_op_f32(abs(-566f)), _wgslsmith_f_op_f32(f32(-1f) * -2279f), 190f)) * vec4<f32>(1f, -1204f, _wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(2573f - 1838f)), 244f)));
    let var_3 = all(!vec3<bool>(true, select(false, select(false, false, true), true), all(vec3<bool>(true, true, true)) & true));
    var var_4 = Struct_4(func_1(), vec3<u32>(select(~(~1u), 0u, _wgslsmith_f_op_f32(var_2.x + var_2.x) >= _wgslsmith_f_op_f32(abs(var_2.x))), countOneBits(~1u), 40426u), Struct_3(-func_2(u_input.b, func_2(u_input.b, Struct_5(var_2.x, u_input.b))).b), Struct_3(abs(firstLeadingBit(u_input.b))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1095f, -363f, _wgslsmith_f_op_f32(trunc(var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 322f, var_2.x, 975f) + vec4<f32>(var_2.x, 906f, var_2.x, -1350f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f - var_2.x) * _wgslsmith_f_op_f32(trunc(-1000f))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -(-38093i >> (global2.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -8254i), vec2<i32>(var_4.d.a, u_input.b)) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, var_4.a.a), vec4<i32>(2147483647i, -1736i, u_input.b, u_input.b)), -_wgslsmith_add_i32(var_4.d.a, u_input.b)), -min(vec4<i32>(var_4.a.a, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(16814i, 0i, 10289i, -2147483647i), vec4<i32>(1i, 82678i, 4624i, -7786i) ^ vec4<i32>(0i, -32939i, u_input.b, 51696i)), vec4<i32>(~u_input.b, firstTrailingBit(0i), var_4.d.a & u_input.b, u_input.b) << (vec4<u32>(~var_1, min(u_input.a, global2.x), global2.x, var_1 | global2.x) % vec4<u32>(32u))), ~(~abs(-vec4<i32>(var_4.c.a, 1i, var_4.d.a, 61644i))), min(select(vec3<u32>(1u << (var_4.b.x % 32u), _wgslsmith_add_u32(1u, global2.x), ~45979u), ~vec3<u32>(var_4.b.x, global2.x, u_input.a), !select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, var_3, var_3), vec3<bool>(true, false, false))), min(~var_4.b, ~vec3<u32>(u_input.a, 9332u, 0u))));
}

