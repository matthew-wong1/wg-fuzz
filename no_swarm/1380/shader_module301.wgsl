struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(575f, -1731f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-161f, -832f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1173f, -815f)), true)))));
    return arg_0.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_2(arg_0, countOneBits(-(vec4<i32>(18639i, arg_3.x, 29767i, arg_3.x) | max(vec4<i32>(arg_3.x, arg_2, arg_2, -2147483647i), u_input.a))), 51570u, u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, _wgslsmith_f_op_f32(round(2862f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1954f, 1468f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.a, 926f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a.a, 932f)), _wgslsmith_f_op_f32(arg_0.a * 1175f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, arg_1.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, arg_1.a.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a.a, 1000f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_1.a.a) * vec2<f32>(var_0.a.a, -1112f)))))), vec2<bool>(select(true, true, _wgslsmith_f_op_f32(var_0.a.a * 2593f) != _wgslsmith_f_op_f32(max(arg_0.a, 604f))), false)));
    var var_2 = var_0;
    var var_3 = ~u_input.d;
    var_2 = Struct_2(arg_0, vec4<i32>(-1i, (43596i >> (countOneBits(23712u) % 32u)) | ~_wgslsmith_add_i32(arg_2, 50032i), -_wgslsmith_add_i32(2147483647i, abs(arg_3.x)), u_input.c), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, var_2.d), var_2.c) << (73342u % 32u), 1u, 43856u), 4294967295u);
    return _wgslsmith_clamp_u32(~54584u, ~1u << (var_2.c % 32u), var_0.d);
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec2<u32> {
    var var_0 = vec4<i32>(abs(select(countOneBits(3577i), u_input.c, !(0i != arg_0.a))), func_1(-(vec4<i32>(0i, -12897i, 2147483647i, arg_0.a) << (vec4<u32>(12369u, arg_1, arg_1, 1u) % vec4<u32>(32u)))), countOneBits(arg_0.a), (~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 15455i, -2147483647i), u_input.a) << (22469u % 32u)) << ((_wgslsmith_mod_u32(1u, 1u | u_input.d.x) | max(reverseBits(arg_0.b), arg_1)) % 32u));
    var var_1 = u_input.b;
    var_1 = arg_0.b;
    let var_2 = vec4<bool>(select(true, true, !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true))), select(all(vec3<bool>(any(vec3<bool>(true, false, true)), true, true)), false, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), true, max(arg_0.a | ~var_0.x, firstTrailingBit(arg_0.a)) >= -10231i);
    var_0 = vec4<i32>(_wgslsmith_add_i32(-26175i, _wgslsmith_add_i32(1162i, 14843i) | arg_0.a), u_input.c << (4294967295u % 32u), -arg_0.a, -30255i) | ~u_input.a;
    return u_input.d.wz;
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_3(func_4(Struct_5(-2147483647i >> (arg_2.b % 32u), ~(~arg_2.b)), ~_wgslsmith_mod_u32(func_3(Struct_1(-1631f), Struct_4(Struct_1(2033f)), 2147483647i, vec3<i32>(42522i, -1i, u_input.c)), 1u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1198f + -193f)))), -(vec4<i32>(-1i) * -arg_3), ~_wgslsmith_div_u32(~96032u, 38767u << (u_input.b % 32u)), arg_0.b | _wgslsmith_dot_vec4_u32(~u_input.d, vec4<u32>(u_input.d.x, 4294967295u, arg_2.b, 0u) | u_input.d)), vec3<u32>(~(~u_input.b), ~u_input.d.x, arg_2.b >> (~arg_2.b % 32u)), true, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) - _wgslsmith_f_op_f32(abs(637f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2352f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.a)))));
    var var_2 = Struct_3(~(~vec2<u32>(_wgslsmith_mult_u32(var_0.a.x, u_input.d.x), ~0u)), Struct_2(Struct_1(var_1.a), firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_3.x, 22101i, arg_0.a, u_input.a.x), vec4<i32>(2147483647i, 1i, 12923i, var_0.b.b.x))), 95936u, ~(~(~arg_2.b))), var_0.c, true, var_1);
    var_2 = Struct_3(vec2<u32>(firstTrailingBit(78068u), 0u), Struct_2(var_1, _wgslsmith_clamp_vec4_i32(~var_0.b.b, -max(arg_3, vec4<i32>(arg_2.a, 0i, -1i, var_0.b.b.x)), vec4<i32>(reverseBits(-1i), ~arg_1, ~arg_1, -1i)), abs(var_0.c.x), arg_0.b), ~(_wgslsmith_clamp_vec3_u32(abs(var_0.c), var_0.c | var_0.c, var_2.c) & (vec3<u32>(89223u, 13249u, 4294967295u) >> (vec3<u32>(var_0.b.c, var_2.b.c, arg_0.b) % vec3<u32>(32u)))), true, Struct_1(-758f));
    var var_3 = Struct_3(~countOneBits(~firstLeadingBit(vec2<u32>(var_0.a.x, arg_0.b))), Struct_2(var_2.b.a, var_2.b.b, _wgslsmith_div_u32(arg_0.b, ~var_0.b.c), var_2.b.d), vec3<u32>(_wgslsmith_sub_u32(1u, firstTrailingBit(40933u) >> (_wgslsmith_mod_u32(67853u, 1u) % 32u)), ~func_4(Struct_5(arg_3.x, 4294967295u), u_input.d.x).x, 0u), any(!select(!vec3<bool>(var_0.d, false, var_0.d), select(vec3<bool>(false, var_0.d, true), vec3<bool>(var_2.d, var_2.d, var_2.d), false), !var_0.d)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.a - 1000f) + _wgslsmith_f_op_f32(abs(var_2.e.a))))));
    return select(~(~u_input.d) << (u_input.d % vec4<u32>(32u)), ~(u_input.d | ~vec4<u32>(24329u, 29123u, arg_0.b, 1u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.wyz;
    var var_1 = func_2(Struct_5(_wgslsmith_mod_i32(~(-1i), u_input.a.x), _wgslsmith_add_u32(reverseBits(var_0.x ^ 31732u), 4294967295u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(~func_1(u_input.a), -(-2147483647i | u_input.c)), u_input.a.x >> (u_input.d.x % 32u)), Struct_5(~(~27354i), ~min(10837u ^ u_input.d.x, 1u)), vec4<i32>(34046i, ~_wgslsmith_sub_i32(-14063i, ~28064i), -(1i >> (u_input.b % 32u)), u_input.a.x));
    var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(min(u_input.d, ~vec4<u32>(18981u, var_0.x, u_input.d.x, u_input.b)), u_input.d), vec4<u32>(min(83220u, ~1u), ~var_0.x, 5662u, _wgslsmith_add_u32(0u << (var_1.x % 32u), 55718u)));
    var var_2 = Struct_5(_wgslsmith_add_i32(14450i >> (firstTrailingBit(_wgslsmith_add_u32(u_input.d.x, 0u)) % 32u), i32(-1i) * -2147483647i), ~reverseBits(var_0.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(585f * 467f))));
    let var_4 = i32(-1i) * -11348i;
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1484f)), countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-32253i, var_4, -56196i, 30348i), u_input.a) & -1i, -(~0i), var_4, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-32046i, u_input.a.x), ~1i))), 45711u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, firstTrailingBit(4294967295u)), vec2<u32>(var_1.x, 65910u) >> (firstTrailingBit(var_1.xw) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.zxw, var_5.b.yxw));
}

