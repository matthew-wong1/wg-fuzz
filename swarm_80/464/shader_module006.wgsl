struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_u32(arg_0.x, ~83384u) != arg_0.x;
    let var_1 = _wgslsmith_mod_i32(8357i, firstLeadingBit(-7677i));
    var_0 = select(false, true, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1315f + arg_1.a));
    var var_3 = vec3<i32>(var_1, -15566i >> (arg_0.x % 32u), -1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1067f)) - 482f);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(676f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1864f * 964f), _wgslsmith_f_op_f32(func_3(vec3<u32>(arg_2.a, 1u, 69673u), Struct_1(890f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(vec3<u32>(arg_2.a, 4294967295u, 73962u)), Struct_1(arg_0))))), -300f);
    var var_1 = abs(~(-(i32(-1i) * -u_input.a.x)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_add_u32(arg_2.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(16938u, 19914u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_2.a)))), var_0.x, arg_2);
    var_1 = _wgslsmith_dot_vec2_i32(-(~select(vec2<i32>(-19048i, u_input.a.x), vec2<i32>(u_input.b, -25755i), false)) >> (~(~(~vec2<u32>(arg_2.a, arg_2.a))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), -abs(reverseBits(u_input.a)), vec2<i32>(u_input.a.x, 1i)));
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), vec4<i32>(10123i, 67138i, 2079i, 1i), vec4<i32>(u_input.a.x, 41387i, 53640i, 27861i)))), 21086i, _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_clamp_i32(38804i, u_input.a.x, ~u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(i32(-1i) * -8407i, _wgslsmith_div_i32(u_input.b, u_input.a.x), u_input.a.x), 2147483647i)), firstTrailingBit(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.b), vec4<i32>(u_input.b, u_input.a.x, u_input.b, -4813i)), ~vec4<i32>(u_input.b, u_input.b, 0i, u_input.a.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1097f);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-242f, _wgslsmith_f_op_f32(-924f * -762f), Struct_2(10179u)))))));
    var var_1 = _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b & -6242i, -19276i, u_input.a.x, u_input.a.x ^ u_input.a.x), (vec4<i32>(2147483647i, 1i, 0i, 1i) | vec4<i32>(u_input.b, 1i, u_input.b, u_input.a.x)) ^ vec4<i32>(u_input.a.x, 2147483647i, -11950i, u_input.a.x)) ^ vec4<i32>(0i, _wgslsmith_sub_i32(-14064i, u_input.b), -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), max(_wgslsmith_mult_i32(u_input.b, 0i), u_input.a.x)), -vec4<i32>(-(i32(-1i) * -22252i), 10081i, 6903i, 2147483647i));
    let var_2 = Struct_4(reverseBits(vec3<i32>(1i, abs(var_1.x), 3085i)) ^ firstLeadingBit(var_1.zzw), Struct_3(Struct_2(~firstLeadingBit(24326u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), var_0.a, all(vec4<bool>(true, true, true, true)))), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), select(vec2<u32>(20519u, 1u), vec2<u32>(34521u, 0u), vec2<bool>(false, false))))), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~73152u, _wgslsmith_clamp_u32(4294967295u, 47928u, 0u), abs(7429u), firstTrailingBit(1u)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false)))) | vec4<u32>(1u, ~0u, _wgslsmith_mod_u32(~18110u, ~0u), _wgslsmith_mult_u32(1u, ~8324u)), Struct_2(~_wgslsmith_add_u32(~13598u, _wgslsmith_clamp_u32(4294967295u, 82739u, 75811u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-697f, var_0.a, 106f), vec3<f32>(453f, var_0.a, 477f), vec3<bool>(true, true, true))))))))));
    var_1 = vec4<i32>(abs(max(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, -72115i, -5861i), var_2.a), _wgslsmith_div_i32(-2147483647i, u_input.b)), var_2.a.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-(u_input.b << (9851u % 32u)), abs(u_input.b) ^ reverseBits(var_2.a.x)), -countOneBits(max(var_2.a.x, var_2.a.x))), u_input.b, var_1.x);
    return Struct_2(var_2.b.c.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = abs(vec4<i32>(arg_1.a.x ^ min(-36544i, -35703i), -arg_1.a.x | u_input.a.x, u_input.a.x, ~2147483647i));
    let var_1 = func_1();
    var var_2 = -_wgslsmith_dot_vec3_i32(~var_0.xxw, _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_1.a.x, var_0.x), arg_1.a), arg_1.a));
    var var_3 = Struct_2(var_1.a);
    var var_4 = arg_1.c.xy;
    return var_1;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = ~(arg_0 & 56970u);
    let var_1 = -vec3<i32>(1i, _wgslsmith_mult_i32(u_input.b, reverseBits(0i)), _wgslsmith_sub_i32(u_input.a.x >> ((arg_2.a.a >> (arg_2.a.a % 32u)) % 32u), _wgslsmith_mod_i32(u_input.a.x, u_input.b)));
    var var_2 = arg_1.x;
    var var_3 = Struct_4(var_1, Struct_3(func_1(), arg_2.b, func_4(Struct_3(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -376f), arg_2.c), Struct_4(var_1, arg_2, vec4<u32>(arg_2.c.a, 0u, 0u, 0u) ^ vec4<u32>(var_0, arg_0, arg_0, 75821u), arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.b)) * 1f), min(vec4<u32>(1u, 78905u, 4744u, 1u), vec4<u32>(80058u, arg_2.c.a, arg_2.c.a, 0u)) & (vec4<u32>(0u, arg_0, 1u, 9476u) ^ vec4<u32>(1u, 4719u, var_0, 1u)))), ~firstTrailingBit(select(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0), vec4<u32>(var_0, arg_0, var_0, arg_0), true)), arg_2.a);
    var_3 = Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b >> (82735u % 32u), 0i, _wgslsmith_mod_i32(u_input.a.x, 22426i) & select(-1i, 21843i, false)), -vec3<i32>(2147483647i, -38101i, 1i)), var_3.b, ~abs(vec4<u32>(0u, 87112u, var_3.c.x, var_0) >> (abs(vec4<u32>(arg_2.a.a, 17045u, arg_0, arg_2.a.a)) % vec4<u32>(32u))), func_1());
    return var_1.zx | var_3.a.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(6437u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, -554f, -248f, -117f)))) + vec4<f32>(-683f, 451f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(436f, 359f)), -754f)), Struct_3(func_4(Struct_3(func_1(), 509f, Struct_2(64636u)), Struct_4(vec3<i32>(38670i, u_input.a.x, u_input.b), Struct_3(Struct_2(11420u), 1452f, Struct_2(1u)), ~vec4<u32>(99370u, 72107u, 0u, 26874u), func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(max(932f, 1758f))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(14458u, 1u, 0u), vec3<u32>(2404u, 26136u, 87773u)), 1u, 81315u << (1u % 32u)), Struct_1(-1167f))), Struct_2(48529u)));
    let var_1 = min(u_input.a, -(~vec2<i32>(u_input.a.x, u_input.b)));
    let var_2 = func_1();
    let var_3 = vec2<i32>(var_0.x, countOneBits(var_0.x) & -var_0.x) >> (vec2<u32>(4294967295u, ~var_2.a) % vec2<u32>(32u));
    var var_4 = true;
    let var_5 = _wgslsmith_mod_i32(var_1.x | var_3.x, -2147483647i);
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_5(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(min(-201f, 1772f))), _wgslsmith_f_op_f32(f32(-1f) * -364f), -507f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-595f * -436f), _wgslsmith_f_op_f32(ceil(-165f)))), Struct_3(var_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-525f + -673f), 454f, true)), var_2)).x, ~_wgslsmith_mod_i32(var_5, countOneBits(~44961i)));
}

