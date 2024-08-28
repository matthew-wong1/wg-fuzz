struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> bool {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(841f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(540f - -973f) - -524f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f * _wgslsmith_f_op_f32(f32(-1f) * -196f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec4<i32> {
    var var_0 = Struct_3(any(vec4<bool>(select(all(vec4<bool>(true, true, true, true)), true, true), false, all(vec2<bool>(true, false)), func_3(Struct_3(true, vec4<i32>(-1i, u_input.e.x, arg_2, -2147483647i), 5866u, Struct_1(vec2<i32>(1i, -43188i), u_input.e.x, 39596u))))), ~u_input.d, abs(~(u_input.b.x >> (reverseBits(49047u) % 32u))), arg_0.c);
    var_0 = Struct_3(all(vec4<bool>(var_0.a, any(vec3<bool>(var_0.a, true, var_0.a)), !var_0.a, true)) | var_0.a, firstTrailingBit(~(~vec4<i32>(var_0.b.x, u_input.c, 17182i, var_0.d.a.x) ^ reverseBits(vec4<i32>(var_0.b.x, arg_2, arg_2, arg_2)))), 39133u, Struct_1(vec2<i32>(~arg_2, 1i ^ u_input.c), var_0.b.x, ~16138u));
    var_0 = Struct_3(true, _wgslsmith_mult_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-8406i, 0i, -1i, -1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(var_0.b.xwy), countOneBits(var_0.b.zyz)), select(~(-1635i), -33184i, all(vec3<bool>(false, true, var_0.a))), ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -6284i, 3858i), var_0.b.xyw))), _wgslsmith_sub_u32(u_input.a.x, 69197u), Struct_1(~vec2<i32>(var_0.b.x, _wgslsmith_add_i32(-16926i, var_0.d.b)), _wgslsmith_clamp_i32(reverseBits(63483i), var_0.b.x, 39797i), ~(~(~6849u))));
    let var_1 = arg_0.a;
    let var_2 = u_input.a.yzw;
    return -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.b.x, _wgslsmith_dot_vec4_i32(var_0.b, var_0.b)), arg_2, 20217i >> ((arg_1.x ^ 13805u) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(9177i, arg_2), ~vec2<i32>(var_1.a.x, 2147483647i))), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(countOneBits(var_1.a.x), countOneBits(2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_2, -18890i), ~arg_2, _wgslsmith_div_i32(arg_2, arg_2)), -34530i));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(u_input.d.yx, _wgslsmith_mod_i32(select(_wgslsmith_div_i32(arg_2.a.b, arg_1.b.x), _wgslsmith_mult_i32(16828i, 42734i), any(vec4<bool>(false, false, arg_1.a, false))) & (_wgslsmith_div_i32(arg_2.c.a.x, -45944i) >> (~arg_1.c % 32u)), arg_2.b), u_input.a.x >> (~arg_1.c % 32u));
    let var_1 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.d.a.x, arg_1.b.x, -1i), arg_1.b), i32(-1i) * -35373i) ^ (abs(vec2<i32>(var_0.a.x, -1i)) ^ vec2<i32>(arg_2.a.a.x, arg_1.b.x)), countOneBits(arg_2.c.a.x), arg_1.d.c), var_0.a.x, arg_1.d);
    let var_2 = arg_1;
    let var_3 = !arg_1.a;
    let var_4 = max(u_input.a, reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.c, ~arg_2.a.c, 0u, ~arg_2.c.c), ~vec4<u32>(var_0.c, var_2.d.c, 3745u, arg_1.d.c))));
    return !vec2<bool>(func_3(Struct_3(true, arg_1.b, 1275u, arg_2.a)), !(true && select(false, false, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec2<bool>(true, false), !func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1223f * -1570f))), Struct_3(false, func_2(Struct_2(Struct_1(vec2<i32>(u_input.e.x, u_input.d.x), u_input.e.x, u_input.a.x), 2147483647i, Struct_1(u_input.e.yw, u_input.e.x, u_input.a.x)), u_input.b.ww, u_input.c), ~0u, Struct_1(u_input.d.zy, 0i, u_input.b.x)), Struct_2(Struct_1(u_input.d.wy, u_input.e.x, 41427u), -37582i, Struct_1(u_input.d.wz, u_input.c, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1174f, -380f) - vec2<f32>(970f, -590f)))), select(vec2<bool>(1u < firstTrailingBit(u_input.a.x), true), select(select(vec2<bool>(true, true), func_4(987f, Struct_3(true, vec4<i32>(0i, u_input.c, u_input.d.x, u_input.c), 30422u, Struct_1(vec2<i32>(u_input.d.x, u_input.d.x), 1i, 12198u)), Struct_2(Struct_1(u_input.d.yy, -48293i, u_input.a.x), 887i, Struct_1(vec2<i32>(u_input.e.x, 18061i), u_input.c, u_input.b.x)), vec2<f32>(-2482f, -612f)), func_4(488f, Struct_3(true, vec4<i32>(-13276i, u_input.d.x, u_input.c, u_input.c), 22746u, Struct_1(u_input.e.zx, -36305i, 21385u)), Struct_2(Struct_1(u_input.e.yx, u_input.e.x, 1u), -2147483647i, Struct_1(u_input.d.zw, u_input.c, u_input.b.x)), vec2<f32>(-755f, 228f))), func_4(_wgslsmith_f_op_f32(abs(-1452f)), Struct_3(false, u_input.d, u_input.a.x, Struct_1(u_input.d.wx, 31544i, u_input.b.x)), Struct_2(Struct_1(vec2<i32>(u_input.e.x, -29382i), u_input.c, u_input.b.x), -95191i, Struct_1(u_input.d.wy, 1i, 70008u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, -1359f))), !func_4(505f, Struct_3(false, u_input.d, u_input.a.x, Struct_1(u_input.d.ww, -35664i, u_input.b.x)), Struct_2(Struct_1(vec2<i32>(0i, u_input.c), 7787i, u_input.b.x), u_input.e.x, Struct_1(u_input.e.zy, u_input.e.x, u_input.b.x)), vec2<f32>(549f, 502f))), vec2<bool>(true, true)));
    let var_1 = Struct_1(~(vec2<i32>(_wgslsmith_mult_i32(u_input.c, u_input.e.x), u_input.c) >> (u_input.b.yy % vec2<u32>(32u))), u_input.c, 114154u);
    let var_2 = vec4<bool>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(268f, 376f)), -1485f)) + _wgslsmith_f_op_f32(step(-984f, _wgslsmith_f_op_f32(1122f - -1821f)))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -447f) > _wgslsmith_f_op_f32(select(127f, -568f, false)), u_input.d, var_1.c, var_1), Struct_2(Struct_1(vec2<i32>(33088i, -2147483647i), u_input.e.x, _wgslsmith_mod_u32(u_input.a.x, 0u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e.x, -2147483647i), u_input.d.xyz), var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1799f, 507f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, -591f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(625f, -367f), vec2<f32>(186f, -365f)))))).x, ~firstLeadingBit(~u_input.b.x) >= 4016u, !(reverseBits(var_1.a.x) <= 47598i), -38471i < u_input.e.x);
    var var_3 = select(~u_input.b, u_input.a, !(!any(var_2.yxx)));
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-428f + _wgslsmith_f_op_f32(1862f + 542f))))), Struct_3(all(!vec4<bool>(false, var_0.x, true, var_2.x)), -u_input.d, var_3.x, var_1), Struct_2(var_1, firstTrailingBit(~_wgslsmith_mult_i32(2147483647i, -1i)), var_1), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2213f, -883f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1153f, 1956f) * vec2<f32>(-150f, -507f)))))));
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = func_1();
    var_0 = Struct_1(abs(arg_3.d.a), 11060i, u_input.b.x);
    let var_1 = arg_3.a;
    let var_2 = func_1();
    var_0 = Struct_1(arg_1.a, 1i, u_input.b.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1589f + -450f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, 228f, arg_2.x, 1430f) + vec4<f32>(847f, -1128f, arg_2.x, arg_2.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, -434f, -832f, 155f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_2.x, -1000f, 615f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -757f, arg_0, -1138f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, 1221f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 559f, 119f, arg_2.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(593f, arg_0, 1000f, 2683f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f - -119f)), func_1(), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(515f, 1756f, -197f))), Struct_3(true, func_2(Struct_2(Struct_1(u_input.d.xw, 0i, u_input.a.x), u_input.e.x, Struct_1(vec2<i32>(u_input.d.x, 0i), u_input.e.x, 0u)), u_input.b.xy, 2147483647i), ~29644u, Struct_1(vec2<i32>(-10612i, -1i), u_input.c, 1u)))))));
    let var_1 = !(!(!any(vec4<bool>(true, false, true, true))));
    let var_2 = var_1;
    var var_3 = select(!(!(!vec3<bool>(var_1, var_1, var_1))), !select(!(!vec3<bool>(var_1, var_1, false)), !select(vec3<bool>(false, var_1, false), vec3<bool>(true, false, var_2), true), vec3<bool>(any(vec2<bool>(true, var_1)), func_3(Struct_3(false, u_input.e, u_input.b.x, Struct_1(u_input.e.wx, u_input.e.x, 0u))), !var_2)), false);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1614f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -523f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1340f, 1967f, 817f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
    let var_4 = reverseBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.wyy));
}

