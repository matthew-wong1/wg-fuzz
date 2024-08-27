struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    var var_0 = Struct_2(global0.zw, Struct_1(global1.a, ~vec2<u32>(0u, 4294967295u) & global0.wz, true, !(!arg_0.x), all(!select(vec4<bool>(true, false, false, global1.c), arg_0, vec4<bool>(arg_0.x, false, false, false)))), vec2<bool>(!(firstTrailingBit(arg_1) < _wgslsmith_add_i32(arg_1, u_input.b)), any(arg_0.xyy)));
    var var_1 = Struct_1(_wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(3548u, var_0.a.x)), var_0.b.b.x) & (select(reverseBits(63357u), 27906u, select(arg_0.x, arg_0.x, global1.e)) ^ global1.a), select(_wgslsmith_mod_vec2_u32(u_input.d.zz, ~vec2<u32>(0u, 28457u)) & vec2<u32>(var_0.a.x, _wgslsmith_add_u32(global1.a, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.d.x) >> (vec2<u32>(0u, global0.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(global0.x, 1u), global1.b, vec2<bool>(arg_0.x, false)), min(vec2<u32>(22960u, u_input.d.x), vec2<u32>(var_0.a.x, 36087u)))), vec2<bool>(var_0.b.c, var_0.b.e)), true, all(vec4<bool>(var_0.c.x, true, var_0.b.d, !global1.c)), any(!(!select(arg_0.wx, arg_0.zw, vec2<bool>(true, var_0.b.e)))));
    var var_2 = var_0.b;
    var_2 = Struct_1(79719u << (global0.x % 32u), _wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, u_input.d.x), ~var_0.b.b) >> (~vec2<u32>(0u, 14043u | var_2.b.x) % vec2<u32>(32u)), var_0.b.d, var_2.d, !(!(!var_2.e) && ((arg_0.x == arg_0.x) | (var_1.d && true))));
    var var_3 = vec4<i32>(_wgslsmith_mod_i32((u_input.b & u_input.a) | _wgslsmith_clamp_i32(2147483647i, 0i, -21046i), 0i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, 2147483647i))), abs(-2147483647i), -57503i) & vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, -9104i | arg_1)), ~(-firstTrailingBit(26432i)), u_input.a, arg_1);
    return u_input.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<u32>(arg_1.a.x, _wgslsmith_mult_u32(~func_3(!vec4<bool>(arg_0.e, true, global1.c, false), ~u_input.c), _wgslsmith_sub_u32(1u, global1.a)), 0u);
    global1 = Struct_1(arg_0.b.x, firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(arg_1.b.a & global1.b.x, global1.b.x), global0.x)), all(select(arg_1.c, !(!arg_1.c), vec2<bool>(arg_1.c.x, !arg_0.d))), false, _wgslsmith_add_u32(34526u, ~87406u | (arg_1.b.b.x >> (global1.b.x % 32u))) >= arg_1.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(534f, -565f))))), vec2<f32>(_wgslsmith_f_op_f32(step(-748f, -554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -806f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(592f, 964f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1440f, -238f)))))));
    var var_2 = Struct_2(~vec2<u32>(~_wgslsmith_sub_u32(global1.a, 12605u), _wgslsmith_add_u32(abs(90863u), _wgslsmith_dot_vec2_u32(vec2<u32>(46583u, 56160u), var_0.zz))), arg_0, arg_1.c);
    var var_3 = -((~vec3<i32>(u_input.c, -1i, u_input.a) ^ (~vec3<i32>(u_input.e, -31725i, 553i) & (vec3<i32>(2147483647i, -1i, 17725i) & vec3<i32>(u_input.e, 1i, -2147483647i)))) << (vec3<u32>(u_input.d.x, 4294967295u, ~reverseBits(u_input.d.x)) % vec3<u32>(32u)));
    return Struct_1(1u, ~global1.b, false, true, false);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(874f, -1000f) + -716f), 564f))));
    let var_1 = vec4<f32>(-1252f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(204f, var_0.x) + _wgslsmith_f_op_f32(328f - var_0.x))))), 319f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))) - -1057f));
    var_0 = vec2<f32>(_wgslsmith_div_f32(-2466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f)))), _wgslsmith_f_op_f32(abs(var_0.x)));
    var var_2 = min(-reverseBits(~vec2<i32>(u_input.a, u_input.e)), -abs(vec2<i32>(1i, -1i)));
    var_2 = ~firstTrailingBit(-firstTrailingBit(vec2<i32>(0i, -1i)));
    return Struct_2(vec2<u32>(1u, abs(~global1.a)) << (func_2(Struct_1(_wgslsmith_mod_u32(arg_0.b.x, 44908u), vec2<u32>(global0.x, 1u), u_input.e >= 0i, any(vec3<bool>(true, arg_0.e, true)), arg_0.e), Struct_2(arg_0.b, func_2(arg_0, Struct_2(arg_0.b, Struct_1(1u, u_input.d.zz, false, true, false), vec2<bool>(false, global1.e))), vec2<bool>(true, global1.e))).b % vec2<u32>(32u)), arg_0, !(!select(vec2<bool>(true, true), !vec2<bool>(arg_0.e, true), !vec2<bool>(global1.c, false))));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = Struct_1(~(((global0.x | global0.x) ^ 0u) ^ func_2(func_2(arg_0.b, Struct_2(vec2<u32>(59126u, global0.x), arg_0.b, arg_0.c)), Struct_2(vec2<u32>(0u, arg_0.a.x), Struct_1(67711u, global0.wz, arg_0.c.x, arg_0.c.x, true), vec2<bool>(true, arg_0.c.x))).a), vec2<u32>(8495u, abs(~arg_0.b.b.x) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 14250u, arg_0.a.x), max(vec3<u32>(4294967295u, 1u, 34305u), u_input.d.wxx)) % 32u)), all(arg_0.c), true, func_2(arg_0.b, Struct_2(vec2<u32>(~1u, reverseBits(84453u)), arg_0.b, select(func_4(arg_0.b).c, !vec2<bool>(arg_0.b.c, global1.d), vec2<bool>(global1.c, arg_0.b.d)))).d);
    global1 = Struct_1(abs(_wgslsmith_sub_u32(26823u, func_4(Struct_1(u_input.d.x, global1.b, global1.e, true, true)).b.b.x)), vec2<u32>(~(func_2(arg_0.b, Struct_2(vec2<u32>(u_input.d.x, global0.x), arg_0.b, vec2<bool>(true, false))).b.x >> (~4294967295u % 32u)), 82912u), func_2(Struct_1(firstLeadingBit(9480u << (global0.x % 32u)), global1.b, any(vec4<bool>(arg_0.b.c, global1.d, false, false)), !(u_input.c < u_input.e), _wgslsmith_f_op_f32(floor(arg_1)) > _wgslsmith_f_op_f32(-arg_1)), Struct_2(_wgslsmith_div_vec2_u32(~global1.b, ~global0.zx), Struct_1(_wgslsmith_mod_u32(1u, 4294967295u), global1.b ^ global0.xz, var_0.d, true, true), vec2<bool>(true, true))).c, true, false);
    global1 = arg_0.b;
    var var_1 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(30407u, global1.b.x), max(global1.b, vec2<u32>(global0.x, arg_0.b.b.x))), 4294967295u), func_2(var_0, Struct_2(vec2<u32>(~u_input.d.x, var_0.a), var_0, arg_0.c)), arg_0.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(396f, _wgslsmith_f_op_f32(arg_1 - arg_1)), arg_1)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1160f) - vec2<f32>(arg_1, -130f)))))))));
    return 0u;
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 4294967295u, ~(~1u), ~global0.x), u_input.d), min(select(firstTrailingBit(92025u), ~u_input.d.x, !global1.d) | ~12699u, ~11073u), 1u, func_5(func_4(func_2(Struct_1(0u, vec2<u32>(global1.b.x, global1.a), true, global1.d, false), Struct_2(u_input.d.zx, Struct_1(31010u, vec2<u32>(7496u, u_input.d.x), true, arg_1, arg_1), vec2<bool>(arg_1, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1490f))) ^ global0.x);
    global1 = func_2(Struct_1(_wgslsmith_add_u32(u_input.d.x, 4294967295u), _wgslsmith_sub_vec2_u32(~u_input.d.wz, vec2<u32>(61727u, _wgslsmith_dot_vec2_u32(u_input.d.yx, global0.zz))), true, true, true), func_4(Struct_1(1u, global0.xw, select(true, any(vec4<bool>(false, true, global1.c, true)), any(vec4<bool>(global1.c, false, true, true))), false, true)));
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~func_2(Struct_1(global0.x, vec2<u32>(29250u, 23760u), arg_1, arg_1, false), func_4(Struct_1(1u, vec2<u32>(32531u, global0.x), false, false, arg_1))).a, _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 1951u, 1u), global0.zxx), u_input.d.zxw ^ u_input.d.yyx, !vec3<bool>(true, global1.e, arg_1)), vec3<u32>(global1.b.x, ~u_input.d.x, 61571u)), 51359u, 0u & (global0.x >> (0u % 32u))), select(u_input.d, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 21407u, global0.x, global1.a), u_input.d), vec4<u32>(u_input.d.x, global1.b.x, 30809u, 0u)), ~(~vec4<u32>(1u, 1u, global1.b.x, 6855u))), vec4<bool>(global1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(1i, 25033i)) <= 1i, false, !(4294967295u > global0.x))), vec4<u32>(u_input.d.x, 1u, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.wzx, global0.zyw), vec3<u32>(global1.a, 10731u, 1u))), min(global0.x, min(~global0.x, u_input.d.x ^ 3156u))));
    let var_1 = Struct_2(vec2<u32>(~(~u_input.d.x), ~_wgslsmith_clamp_u32(func_4(Struct_1(17928u, vec2<u32>(121070u, 68922u), global1.c, true, arg_1)).a.x, ~1u, _wgslsmith_dot_vec3_u32(global0.zwz, u_input.d.yxx))), func_4(func_4(Struct_1(20814u & u_input.d.x, vec2<u32>(global0.x, global1.b.x), all(vec3<bool>(global1.e, arg_1, true)), global1.c, select(true, true, global1.e))).b).b, !vec2<bool>(true, global1.d));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -550f) + -1241f), 188f, _wgslsmith_f_op_f32(-1506f - _wgslsmith_f_op_f32(max(-339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-256f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1000f);
    return func_4(func_2(Struct_1(_wgslsmith_add_u32(var_1.a.x, global0.x) | global0.x, _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.x, 26114u), ~var_1.a), func_4(var_1.b).c.x, true, global1.b.x <= var_1.a.x), Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.b.x, 4519u), vec2<u32>(1448u, 4294967295u)), ~vec2<u32>(global1.a, global1.b.x)), var_1.b, select(vec2<bool>(arg_1, var_1.c.x), select(vec2<bool>(global1.e, var_1.c.x), vec2<bool>(var_1.c.x, global1.c), vec2<bool>(true, true)), 1u > global1.a)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b, true);
    var var_1 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * -2157f)), _wgslsmith_f_op_f32(max(-106f, _wgslsmith_div_f32(1345f, 1802f))))))));
    let var_2 = Struct_2(select(~vec2<u32>(~106903u, firstLeadingBit(u_input.d.x)), firstTrailingBit(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(23190u, 1497u), u_input.d.wx))), vec2<bool>(var_0.d, global1.e)), Struct_1(global0.x, var_0.b, false, false, true), vec2<bool>((u_input.c >> (global1.b.x % 32u)) >= u_input.b, true));
    let var_3 = Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 76669u), vec2<u32>(70543u, 83013u))), ~(~vec2<u32>(u_input.d.x, global0.x))), max(~(~vec2<u32>(u_input.d.x, global0.x)), ~(~var_0.b))), Struct_1(~func_5(func_4(Struct_1(0u, u_input.d.zy, true, false, global1.d)), -1362f), ~vec2<u32>(301u, ~global0.x), !(!(u_input.d.x >= 15614u)), all(!vec4<bool>(true, false, var_0.d, false)) || global1.c, true), select(!select(var_2.c, var_2.c, func_2(var_2.b, Struct_2(global1.b, Struct_1(78330u, var_2.a, var_2.c.x, false, true), vec2<bool>(false, false))).d), !vec2<bool>(var_2.c.x, global1.c), all(func_4(var_2.b).c)));
    global0 = vec4<u32>(0u, _wgslsmith_mod_u32(global1.a, ~(~var_3.b.b.x)), var_0.b.x, _wgslsmith_dot_vec2_u32(select((vec2<u32>(var_0.b.x, var_0.b.x) | vec2<u32>(1u, 37923u)) << (vec2<u32>(34248u, 5976u) % vec2<u32>(32u)), vec2<u32>(~1u, func_2(Struct_1(1u, u_input.d.yw, var_2.b.d, false, global1.d), Struct_2(var_3.a, Struct_1(5832u, vec2<u32>(var_0.a, var_3.b.a), false, var_3.b.d, true), vec2<bool>(var_2.c.x, global1.d))).a), !func_4(Struct_1(25883u, vec2<u32>(var_0.a, 2681u), global1.c, var_2.c.x, var_0.e)).c), vec2<u32>(global0.x, (u_input.d.x ^ 1u) >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.a.x >> (_wgslsmith_div_u32(~4294967295u, ~var_3.a.x) % 32u), _wgslsmith_clamp_u32(global0.x, global0.x, var_2.b.a), 35972u, var_3.b.b.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~u_input.d.x, _wgslsmith_mult_u32(var_3.a.x, u_input.d.x), 0u & u_input.d.x), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(47211u, 0u, var_3.b.a, var_3.b.b.x), vec4<u32>(var_0.a, var_0.b.x, 42842u, global0.x)), u_input.d)), u_input.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 18178u, u_input.d.x, _wgslsmith_mult_u32(var_2.b.a, 4294967295u)), vec4<u32>(31030u, 9602u, reverseBits(var_3.b.b.x), func_4(var_3.b).a.x), abs(vec4<u32>(u_input.d.x, u_input.d.x, global1.a, 0u)))), abs(var_3.b.b.x));
}

