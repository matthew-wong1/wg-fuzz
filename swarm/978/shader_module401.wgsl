struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    var var_0 = ~firstLeadingBit(~countOneBits(abs(vec3<u32>(u_input.b, 4294967295u, 4044u))));
    return !global0.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = arg_2;
    global0 = vec3<bool>(arg_0.x, !select(arg_2.c, !global0.x, select(var_0.c, false, false)) || false, var_0.c);
    let var_1 = arg_1.c;
    let var_2 = arg_1;
    global0 = select(vec3<bool>(false, true, any(!vec4<bool>(var_0.c, arg_2.c, global0.x, false))), !(!(!select(vec3<bool>(global0.x, false, arg_1.a.c), vec3<bool>(true, false, arg_1.a.c), vec3<bool>(global0.x, true, var_0.c)))), ((i32(-1i) * -u_input.a.x) ^ 0i) == u_input.a.x);
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    let var_1 = 16925u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-1322f + 1031f), true))))));
    var var_3 = func_3(!vec3<bool>(arg_2.c, arg_2.c, func_2()), Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1663f, 227f, var_2.x) - vec3<f32>(var_2.x, var_2.x, -1136f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-561f, _wgslsmith_f_op_f32(-var_2.x))))), arg_2, arg_0);
    var_0 = Struct_1(1u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.c) ^ ~_wgslsmith_mod_u32(var_0.b << (var_0.b % 32u), ~1u), true & arg_1.x);
    return _wgslsmith_mult_i32(i32(-1i) * -24631i, abs(u_input.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> vec3<bool> {
    global0 = select(!vec3<bool>(min(17914i, -1i) < u_input.a.x, arg_1.c, true), select(vec3<bool>(false, arg_1.c, (true && arg_1.c) | true), vec3<bool>(arg_0.a.c, true, false), select(select(select(vec3<bool>(global0.x, true, true), vec3<bool>(true, true, global0.x), global0.x), select(vec3<bool>(global0.x, arg_0.a.c, global0.x), vec3<bool>(arg_0.a.c, false, global0.x), vec3<bool>(arg_0.a.c, true, global0.x)), false), vec3<bool>(func_2(), true | arg_1.c, u_input.a.x >= u_input.a.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, arg_0.a.c)))), func_2());
    global0 = select(select(!(!(!vec3<bool>(false, true, arg_0.a.c))), vec3<bool>(!global0.x, true, _wgslsmith_f_op_f32(sign(arg_0.b.x)) != arg_2), vec3<bool>(_wgslsmith_f_op_f32(select(-185f, 687f, global0.x)) < _wgslsmith_f_op_f32(abs(arg_0.b.x)), arg_1.c, arg_0.a.c)), vec3<bool>(!(!all(vec4<bool>(arg_0.a.c, false, global0.x, global0.x))), false, ~21962u != ~max(112593u, arg_3.x)), vec3<bool>(false, any(vec4<bool>(false, true, false, false)), ~(~u_input.a.x) <= u_input.a.x));
    global0 = vec3<bool>(true, true, global0.x);
    global0 = select(!(!select(select(vec3<bool>(false, arg_0.a.c, true), vec3<bool>(global0.x, true, false), vec3<bool>(arg_1.c, global0.x, arg_1.c)), !vec3<bool>(arg_0.a.c, false, false), !vec3<bool>(global0.x, true, arg_1.c))), vec3<bool>(false, any(!(!vec4<bool>(global0.x, true, global0.x, arg_1.c))), arg_0.a.c || all(select(vec4<bool>(arg_1.c, false, true, arg_0.a.c), vec4<bool>(false, false, true, true), vec4<bool>(global0.x, global0.x, arg_1.c, true)))), vec3<bool>(arg_1.c, firstLeadingBit(firstTrailingBit(u_input.d)) >= firstTrailingBit(max(1u, 1u)), false));
    let var_0 = arg_3.x;
    return vec3<bool>(global0.x, !(all(vec2<bool>(true, true)) | (global0.x & arg_0.a.c)) & !global0.x, func_3(!(!(!vec3<bool>(arg_0.a.c, arg_0.a.c, global0.x))), arg_0, func_3(vec3<bool>(global0.x, func_3(vec3<bool>(true, true, global0.x), arg_0, Struct_1(59896u, arg_1.a, arg_1.c), u_input.e).a.c, global0.x | false), arg_0, func_3(vec3<bool>(arg_0.a.c, arg_1.c, true), Struct_2(arg_0.a, arg_0.b, arg_0.b.x), arg_1, ~arg_0.a.a).a, ~min(1u, 4294967295u)).a, 54326u).a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(Struct_1(countOneBits(u_input.b | u_input.c), _wgslsmith_mult_u32(u_input.e, 1u), countOneBits(2147483647i) >= func_1(39774u, global0.yy, Struct_1(u_input.c, 54044u, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2364f, -1460f, 938f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(785f, -1453f, 1294f) + vec3<f32>(1066f, 1316f, 1000f)))), _wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, global0.x), false), Struct_2(Struct_1(u_input.b, 34658u, global0.x), vec3<f32>(-615f, 651f, -207f), 842f), func_3(vec3<bool>(false, global0.x, global0.x), Struct_2(Struct_1(4294967295u, 4294967295u, true), vec3<f32>(-673f, -279f, 2701f), -290f), Struct_1(4343u, 4294967295u, global0.x), 0u).a, u_input.b).c + _wgslsmith_f_op_f32(abs(-1087f)))), func_3(select(vec3<bool>(true, global0.x, u_input.b == 40434u), !select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x)), true), func_3(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, true)), Struct_2(Struct_1(1u, 26677u, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1417f, 788f, -1246f) - vec3<f32>(-834f, -842f, 1097f)), 1160f), Struct_1(firstTrailingBit(u_input.e), u_input.e ^ u_input.d, global0.x), 28243u), func_3(vec3<bool>(true, false || global0.x, global0.x), func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(u_input.d, 44375u, false), vec3<f32>(-1997f, 184f, 523f), -1193f), func_3(vec3<bool>(global0.x, true, false), Struct_2(Struct_1(88021u, u_input.d, true), vec3<f32>(1000f, 1562f, -442f), 489f), Struct_1(u_input.b, 7582u, global0.x), 4294967295u).a, abs(u_input.e)), func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(u_input.d, u_input.e, global0.x), vec3<f32>(1268f, -555f, -701f), 726f), Struct_1(u_input.c, 4294967295u, global0.x), firstLeadingBit(u_input.e)).a, 9212u).a, _wgslsmith_mult_u32(u_input.e, _wgslsmith_sub_u32(u_input.d & 1u, ~4294967295u))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) + -589f) - -784f) - _wgslsmith_f_op_f32(trunc(func_3(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, true, true)), func_3(vec3<bool>(global0.x, global0.x, true), Struct_2(Struct_1(62373u, 1u, true), vec3<f32>(-1000f, -1455f, 2164f), 572f), Struct_1(u_input.e, u_input.e, true), 1854u), Struct_1(u_input.d, 1u, global0.x), ~u_input.c).c))), (countOneBits(~vec3<u32>(1u, 13815u, u_input.e)) ^ abs(~vec3<u32>(0u, 1u, 4294967295u))) | _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.d, 0u, u_input.b)), ~select(vec3<u32>(u_input.b, 0u, u_input.e), vec3<u32>(u_input.c, 0u, 5320u), vec3<bool>(false, true, global0.x))));
    global0 = !(!select(select(func_4(Struct_2(Struct_1(0u, 0u, true), vec3<f32>(-371f, 157f, 447f), 1099f), Struct_1(8885u, 1u, global0.x), -2343f, vec3<u32>(u_input.d, 1u, 1u)), vec3<bool>(true, true, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false))), select(!vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, false, global0.x), global0.x), !vec3<bool>(true, global0.x, global0.x)), global0.x));
    var var_0 = global0.x;
    global0 = !func_4(Struct_2(func_3(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, true, false), vec3<bool>(false, global0.x, true)), Struct_2(Struct_1(u_input.b, 31102u, global0.x), vec3<f32>(1291f, 240f, -511f), -1202f), func_3(vec3<bool>(true, global0.x, true), Struct_2(Struct_1(u_input.e, u_input.d, true), vec3<f32>(-668f, 1350f, 364f), -640f), Struct_1(u_input.e, u_input.d, false), u_input.b).a, 1u).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, -2692f, -896f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1043f, 2658f) - vec3<f32>(1262f, 1700f, 1261f))), 954f), Struct_1(36037u, abs(reverseBits(u_input.c)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(346f)))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.b, u_input.d ^ u_input.c), vec3<u32>(~0u, ~u_input.d, ~u_input.b), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.c, 0u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.c), global0.x), vec3<u32>(u_input.e, 0u, u_input.e))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2161f - -206f)))) - -375f));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), -799f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 591f), -538f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1678f * -480f))) - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-799f)) * _wgslsmith_f_op_f32(select(1139f, -2252f, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1232f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -729f))))));
}

