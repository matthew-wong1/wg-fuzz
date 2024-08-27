struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> vec3<f32> {
    var var_0 = arg_1.b;
    var_0 = arg_1.b;
    var var_1 = ~vec4<i32>(min(-15684i, countOneBits(arg_2.x)), u_input.d.x, abs(arg_2.x), max(arg_1.c, _wgslsmith_mod_i32(u_input.d.x, -u_input.c)));
    var_1 = firstTrailingBit(_wgslsmith_add_vec4_i32(min(vec4<i32>(arg_2.x, u_input.d.x, u_input.c, arg_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 27614i, u_input.d.x, -2147483647i), vec4<i32>(u_input.c, arg_1.c, var_1.x, -6026i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(7976i, var_1.x, 0i, 49104i), vec4<i32>(0i, -1i, arg_2.x, 2147483647i)), vec4<i32>(0i, 7445i, 29962i, -1i) << (vec4<u32>(30181u, 46515u, var_0.c.b, 101186u) % vec4<u32>(32u)))) | vec4<i32>(-2147483647i, select(-2147483647i, -2147483647i, var_0.b.x), min(~arg_1.c, ~var_1.x), -2147483647i));
    let var_2 = -(~select(~countOneBits(vec4<i32>(-2147483647i, arg_2.x, -78824i, arg_2.x)), vec4<i32>(54295i, arg_2.x << (arg_1.b.c.a.x % 32u), var_1.x, -27562i), (var_0.b.x & arg_1.a.b.x) & false));
    return vec3<f32>(arg_0, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0)))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_4(arg_0.a, _wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.zx));
    var var_1 = vec2<bool>(true, arg_0.b.b.x);
    var var_2 = Struct_5(_wgslsmith_dot_vec2_i32(u_input.d.xy, u_input.d.xy), _wgslsmith_add_u32(~abs(97375u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.c.a.x, 44146u, arg_1, 26625u), vec4<u32>(37014u, 61526u, 4294967295u, 13000u) & vec4<u32>(67714u, 0u, var_0.a.c.b, var_0.a.c.c))) | arg_2.x, var_0, select(select(arg_0.a.b, arg_0.b.b, !var_0.a.b), !var_0.a.b, select(select(!vec4<bool>(var_1.x, true, true, arg_0.b.b.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, arg_0.a.b.x), all(var_0.a.b.wwz)), select(select(arg_0.a.b, var_0.a.b, vec4<bool>(false, true, arg_0.b.b.x, var_0.a.b.x)), var_0.a.b, true), !var_0.a.b.x)), arg_0);
    var var_3 = vec2<bool>(false, true & all(!vec3<bool>(true, false, var_0.a.b.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.a, -196f, 1487f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.a, 423f, arg_0.b.a), vec3<f32>(var_2.c.a.a, arg_0.b.a, arg_0.a.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a.a, var_2.e.b.a, -1211f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.e.b.a, 1510f, var_2.c.a.a))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, var_2.c.a.a, arg_0.b.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2426f, var_0.a.a, 1032f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(1894f, var_2.e, vec3<i32>(1i, 34157i, -52979i)))))))));
    return Struct_1(u_input.b, ~(~(~0u)), reverseBits(_wgslsmith_add_u32(select(u_input.b.x, ~var_2.c.a.c.c, false), var_2.b)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-665f)));
    var var_1 = -136f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1265f))));
    var var_2 = _wgslsmith_f_op_f32(floor(arg_0.b.a));
    var var_3 = Struct_5(~(-1i), ~(u_input.b.x | ~arg_0.a.c.a.x), Struct_4(Struct_2(-2065f, arg_0.a.b, func_2(Struct_3(arg_0.a, Struct_2(arg_0.a.a, vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, true), arg_0.a.c), arg_0.c), ~10494u, select(vec3<u32>(1u, u_input.b.x, u_input.a), vec3<u32>(u_input.b.x, 46057u, 38403u), vec3<bool>(true, arg_0.a.b.x, arg_0.b.b.x)))), 1i), arg_0.a.b, Struct_3(Struct_2(_wgslsmith_f_op_f32(round(-1289f)), !arg_0.b.b, func_2(Struct_3(Struct_2(955f, vec4<bool>(arg_0.a.b.x, false, true, arg_0.a.b.x), Struct_1(u_input.b, arg_0.a.c.b, u_input.a)), Struct_2(147f, arg_0.b.b, Struct_1(u_input.b, 0u, arg_0.b.c.a.x)), 16852i), u_input.b.x >> (arg_0.a.c.c % 32u), vec3<u32>(4294967295u, u_input.a, arg_0.b.c.a.x) >> (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)))), arg_0.b, ~22479i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1810f)));
}

fn func_4(arg_0: f32) -> Struct_2 {
    var var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)));
    let var_1 = func_2(Struct_3(Struct_2(arg_0, vec4<bool>(true, true, false, true), func_2(Struct_3(Struct_2(682f, vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(15227u, u_input.b.x), u_input.b.x, u_input.b.x)), Struct_2(arg_0, vec4<bool>(false, false, true, false), Struct_1(u_input.b, 0u, u_input.a)), -5120i), ~u_input.a, vec3<u32>(u_input.a, 56275u, u_input.a) >> (vec3<u32>(44818u, u_input.a, u_input.b.x) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(-1f), vec4<bool>(true, true, true, true), Struct_1(u_input.b, u_input.a | 1u, min(u_input.b.x, 1u))), max(_wgslsmith_mult_i32(min(u_input.c, u_input.c), ~2147483647i), u_input.d.x)), 1u, vec3<u32>(u_input.a, 13973u, 0u));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-arg_0), vec4<bool>(true, any(vec2<bool>(true, true)), abs(u_input.d.x) < -20570i, true), var_1), -1i);
    let var_3 = u_input.c;
    var var_4 = var_3;
    return var_2.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    return Struct_2(122f, arg_0.a.b, func_2(Struct_3(Struct_2(-1000f, vec4<bool>(arg_2.a.b.x, true, arg_0.a.b.x, false), Struct_1(vec2<u32>(110010u, 86637u), 7238u, 1u)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1399f)), 1i), ~_wgslsmith_add_u32(arg_2.a.c.b, 31398u) >> (_wgslsmith_mult_u32(max(4294967295u, u_input.b.x), _wgslsmith_sub_u32(arg_0.b.c.c, arg_2.a.c.c)) % 32u), ~(~vec3<u32>(u_input.b.x, arg_1.a.x, arg_0.a.c.c)) >> (firstLeadingBit(vec3<u32>(arg_0.b.c.c, 51211u, 1u) | vec3<u32>(18133u, arg_2.a.c.b, 4294967295u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(func_4(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(706f, vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(u_input.b.x, 11978u), 4294967295u, u_input.a)), Struct_2(1597f, vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(u_input.a, 72951u), 36612u, 6990u)), 1750i)))), Struct_2(_wgslsmith_f_op_f32(select(-231f, -479f, true)), vec4<bool>(true, true, true, true), func_4(_wgslsmith_div_f32(1519f, -142f)).c), ~20647i), func_2(Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(1557f)), vec4<bool>(true, true, true, true), func_4(-1000f).c), func_4(_wgslsmith_f_op_f32(-189f + 955f)), firstTrailingBit(_wgslsmith_mod_i32(u_input.c, u_input.d.x))), _wgslsmith_add_u32(countOneBits(4294967295u), u_input.b.x) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 1u), ~u_input.a) % 32u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 126869u, u_input.b.x), vec3<u32>(u_input.b.x, 22651u, 4847u), vec3<u32>(0u, 30422u, u_input.a)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(100497u, u_input.b.x, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.b.x), vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u))), Struct_4(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1407f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), func_4(565f).c), abs(30349i)));
    var var_1 = vec2<i32>(0i, 66444i);
    var var_2 = -vec3<i32>(u_input.d.x, select(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 76895i, var_1.x, 2147483647i), vec4<i32>(u_input.c, 33941i, u_input.c, 2147483647i)), firstLeadingBit(vec4<i32>(u_input.d.x, 54471i, -1i, 1i))), -select(u_input.d.x, 30839i, var_0.b.x), func_4(_wgslsmith_f_op_f32(sign(555f))).b.x), 7299i);
    let var_3 = Struct_1(reverseBits(_wgslsmith_mult_vec2_u32(var_0.c.a | vec2<u32>(1u, 15817u), abs(var_0.c.a))) ^ vec2<u32>(u_input.a, var_0.c.c), countOneBits(~(~1u)), ~(~_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(var_0.c.a, var_0.c.a))));
    var var_4 = _wgslsmith_f_op_f32(-1000f + 1685f);
    var var_5 = _wgslsmith_sub_u32(var_3.c, ~0u);
    var var_6 = vec4<f32>(-1000f, -1223f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -680f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, func_4(236f).a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(388f).a * _wgslsmith_f_op_f32(f32(-1f) * -958f)))));
    var var_7 = Struct_3(Struct_2(563f, select(vec4<bool>(var_6.x <= -110f, var_0.b.x, true, var_0.b.x), select(var_0.b, func_4(var_0.a).b, var_0.b), var_0.b.x && func_4(var_6.x).b.x), func_2(Struct_3(var_0, var_0, firstTrailingBit(var_2.x)), _wgslsmith_add_u32(~var_0.c.c, firstLeadingBit(var_3.b)), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_0.c.a.x, 3987u, var_0.c.a.x)), ~vec3<u32>(u_input.a, 4294967295u, 1u)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f + -937f))), func_4(-1585f).b, func_5(Struct_3(Struct_2(var_6.x, vec4<bool>(false, var_0.b.x, true, var_0.b.x), var_0.c), Struct_2(-1664f, vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(var_0.c.a.x, u_input.a), u_input.b.x, 1u)), ~54688i), var_3, Struct_4(Struct_2(437f, var_0.b, var_0.c), u_input.c)).c), 0i);
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(vec3<u32>(4294967295u, 18194u, u_input.a) ^ min(vec3<u32>(var_0.c.a.x, 0u, 6109u), vec3<u32>(61654u, u_input.a, var_0.c.b)))));
}

