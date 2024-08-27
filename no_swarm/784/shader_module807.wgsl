struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), 820f))), arg_0.b, _wgslsmith_sub_vec4_u32(~(arg_0.c ^ vec4<u32>(u_input.a.x, 11129u, arg_0.c.x, u_input.a.x)), _wgslsmith_div_vec4_u32(arg_0.c, arg_0.c)), false, 2147483647i << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22104u, u_input.a.x, 26890u), vec3<u32>(37737u, u_input.a.x, 34238u)), vec3<u32>(4294967295u, arg_0.c.x, 28195u)) % 32u)), ~_wgslsmith_sub_u32(min(45670u, arg_0.c.x), 36357u), vec3<i32>(-(~arg_0.b.x), -_wgslsmith_div_i32(-33682i, -31034i) >> (u_input.a.x % 32u), -31717i), Struct_1(-970f, min(vec4<i32>(arg_0.e >> (14890u % 32u), arg_0.e, 2147483647i, arg_0.e << (4294967295u % 32u)), abs(arg_0.b >> (arg_0.c % vec4<u32>(32u)))), arg_0.c << (vec4<u32>(reverseBits(39573u), ~arg_0.c.x, 18633u, 62054u) % vec4<u32>(32u)), any(vec4<bool>(!arg_0.d, any(vec2<bool>(arg_0.d, false)), any(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d)), !arg_0.d)), -2147483647i));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(max(~vec3<i32>(arg_0.e, 2147483647i, var_0.e.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.e, var_0.d.x, 22481i), vec3<i32>(var_0.d.x, arg_0.b.x, 44300i))), arg_0.b.xyz, var_0.d), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_0.d.x, arg_0.e, var_0.d.x)), vec3<i32>(1i, _wgslsmith_clamp_i32(arg_0.b.x, arg_0.e, var_0.b.e), ~arg_0.b.x))) != _wgslsmith_mod_i32(~var_0.b.e, _wgslsmith_dot_vec2_i32(arg_0.b.zx, -_wgslsmith_mult_vec2_i32(var_0.e.b.wx, vec2<i32>(arg_0.b.x, -2147483647i))));
    var var_2 = var_0;
    var_2 = Struct_2(var_2.a, arg_0, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(var_0.a.c.xw, arg_0.c.zz)) >> (arg_0.c.wz % vec2<u32>(32u)), ~(~_wgslsmith_add_vec2_u32(u_input.a, arg_0.c.wx))), arg_0.b.ywy, arg_0);
    var_1 = true;
    return -391f;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!(!vec4<bool>(arg_1 != 16243i, arg_2.d & arg_2.d, u_input.a.x <= 22205u, true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -153f))) - _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2)) + _wgslsmith_f_op_f32(max(-173f, 1248f))))), _wgslsmith_f_op_f32(-284f * arg_2.a), _wgslsmith_f_op_f32(706f - arg_2.a));
    let var_2 = arg_2;
    let var_3 = ~min(select(vec3<i32>(-1i, 1i, 1i), select(vec3<i32>(-2147483647i, 25762i, -25436i), var_2.b.www, vec3<bool>(false, arg_2.d, true)), select(vec3<bool>(true, false, false), var_0.zwz, false)) | (~vec3<i32>(var_2.e, arg_1, arg_2.e) << (~vec3<u32>(var_2.c.x, u_input.a.x, arg_0) % vec3<u32>(32u))), var_2.b.wxw);
    let var_4 = !var_0.zw;
    return Struct_1(_wgslsmith_f_op_f32(ceil(-473f)), -var_2.b, ~vec4<u32>(_wgslsmith_div_u32(0u, 41789u), _wgslsmith_dot_vec4_u32(vec4<u32>(294u, 1u, 0u, 4294967295u), var_2.c), 4294967295u, firstTrailingBit(0u)) & vec4<u32>(u_input.a.x, abs(1u), 32260u, 0u), !all(var_0.yzx), 14811i);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_mult_vec4_u32(arg_1.a.c & _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, var_0.c.x), 52328u, ~u_input.a.x, 1u), vec4<u32>(var_0.c.x & 47521u, var_0.c.x, 1u, ~arg_1.b.c.x)), var_0.c);
    let var_2 = 1i;
    let var_3 = reverseBits(4294967295u);
    let var_4 = Struct_1(718f, abs(-arg_1.e.b), var_1, !var_0.d == all(!select(vec4<bool>(false, var_0.d, true, false), vec4<bool>(false, arg_1.a.d, arg_1.b.d, arg_1.b.d), true)), _wgslsmith_mod_i32(var_2, arg_1.b.b.x) & -69416i);
    return func_2(44133u, 1i, arg_1.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1.b.a + -1315f), vec4<i32>(~arg_1.a.e, arg_1.d.x, 2147483647i, arg_1.d.x), func_1(_wgslsmith_clamp_vec3_i32(arg_1.d, vec3<i32>(arg_1.a.b.x, _wgslsmith_add_i32(arg_1.d.x, arg_1.a.b.x), arg_1.e.e), reverseBits(abs(arg_1.d))), Struct_2(Struct_1(-242f, arg_1.e.b, vec4<u32>(1u, 37921u, 4294967295u, 1u), any(vec4<bool>(true, arg_1.a.d, arg_1.b.d, true)), arg_1.e.e), func_1(arg_1.b.b.yzz, arg_1), firstTrailingBit(arg_1.a.c.x >> (35574u % 32u)), -_wgslsmith_sub_vec3_i32(arg_1.a.b.xwy, arg_1.d), func_2(6363u, arg_1.d.x, arg_1.b))).c, true, arg_1.a.e);
    var_0 = func_1(select(vec3<i32>(func_2(arg_0.x, 1128i, arg_1.e).b.x | _wgslsmith_mult_i32(-1i, var_0.b.x), max(arg_1.b.e, -arg_1.a.e), func_1(arg_1.a.b.wwy, arg_1).e >> (arg_0.x % 32u)), -var_0.b.xyw, false), arg_1);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), Struct_2(Struct_1(-940f, vec4<i32>(-28860i, 0i, -2147483647i, -1i), vec4<u32>(4294967295u, 1u, 30750u, 1u), false, -2147483647i), func_1(vec3<i32>(2147483647i, 1i, -32970i), Struct_2(Struct_1(284f, vec4<i32>(26425i, -10558i, -50107i, -15096i), vec4<u32>(0u, u_input.a.x, 76263u, 1u), true, -15421i), Struct_1(1133f, vec4<i32>(-2147483647i, -4266i, -1i, 0i), vec4<u32>(u_input.a.x, u_input.a.x, 608u, u_input.a.x), false, 22521i), u_input.a.x, vec3<i32>(31415i, -20341i, 52176i), Struct_1(1012f, vec4<i32>(-31362i, -1i, -2147483647i, -1i), vec4<u32>(u_input.a.x, u_input.a.x, 87004u, u_input.a.x), false, -2147483647i))), 1u, ~vec3<i32>(1i, 2099i, 0i), Struct_1(-2498f, vec4<i32>(79803i, 0i, -2147483647i, 2147483647i), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 52463u), false, 27880i)), min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a))), _wgslsmith_f_op_f32(1f - -509f), -102f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(160f, -1691f, -2126f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, 971f, -581f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(102f, 2129f, 1153f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -571f, 169f) * vec3<f32>(-572f, -301f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(916f, 1000f, 243f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1121f, -1158f, 1000f))))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))))));
    let var_1 = func_2(u_input.a.x, -9961i ^ select(func_1(min(vec3<i32>(1i, 30687i, -50823i), vec3<i32>(-447i, 2147483647i, 0i)), Struct_2(Struct_1(-3022f, vec4<i32>(-1i, 1i, 0i, 22155i), vec4<u32>(u_input.a.x, 4294967295u, 78951u, 1u), true, 939i), Struct_1(543f, vec4<i32>(2147483647i, -2147483647i, -2147483647i, -1i), vec4<u32>(114101u, u_input.a.x, u_input.a.x, u_input.a.x), true, -220i), u_input.a.x, vec3<i32>(-1i, 0i, -1i), Struct_1(var_0.x, vec4<i32>(1i, -3472i, -2147483647i, -32345i), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), false, -18868i))).e, func_2(u_input.a.x, -10472i, Struct_1(128f, vec4<i32>(4965i, -45737i, -1i, 2147483647i), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), true, 8710i)).e, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, -1715f), 441f))), select(func_2(4707u, -1i, func_1(vec3<i32>(1i, -32209i, -1i), Struct_2(Struct_1(var_0.x, vec4<i32>(24308i, 8900i, 0i, -100416i), vec4<u32>(u_input.a.x, 54270u, u_input.a.x, 101590u), false, -30198i), Struct_1(var_0.x, vec4<i32>(2147483647i, -2147483647i, -21750i, 55353i), vec4<u32>(9624u, 36556u, u_input.a.x, u_input.a.x), false, 1i), 55935u, vec3<i32>(-2147483647i, 53310i, 2147483647i), Struct_1(var_0.x, vec4<i32>(76850i, 1i, -71871i, 0i), vec4<u32>(u_input.a.x, 21680u, u_input.a.x, 20838u), true, -1448i)))).b, vec4<i32>(1i, 1i, 1i, 1i), any(vec4<bool>(false, false, false, false)) && true), vec4<u32>(19997u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 7933u, 1u)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x) & 1u, 1u), any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(-56942i, -10990i))), select(vec2<i32>(1i, 75340i), ~vec2<i32>(-41259i, 2147483647i), vec2<bool>(true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(662f, _wgslsmith_f_op_f32(-var_0.x), 309f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(func_1(select(var_1.b.yww, var_1.b.yxw, vec3<bool>(true, var_1.d, var_1.d)), Struct_2(Struct_1(var_1.a, var_1.b, var_1.c, false, -44457i), Struct_1(var_0.x, vec4<i32>(var_1.e, var_1.e, -43363i, var_1.e), vec4<u32>(0u, var_1.c.x, var_1.c.x, var_1.c.x), var_1.d, 2147483647i), var_1.c.x, vec3<i32>(1i, 26453i, var_1.e), Struct_1(1000f, vec4<i32>(-30923i, 0i, var_1.e, var_1.b.x), vec4<u32>(24499u, 4294967295u, var_1.c.x, 4294967295u), true, -2147483647i))).a, var_0.x), -437f, 266f));
    let var_2 = ~countOneBits(_wgslsmith_clamp_vec3_i32(var_1.b.zyy, func_2(u_input.a.x, -32248i << (0u % 32u), var_1).b.yzw, var_1.b.yyw));
    let var_3 = Struct_2(func_1(_wgslsmith_add_vec3_i32(~vec3<i32>(11273i, 0i, var_2.x), -var_2 >> (firstLeadingBit(vec3<u32>(u_input.a.x, var_1.c.x, var_1.c.x)) % vec3<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-2115f)), ~var_1.b, vec4<u32>(33360u, 54114u, 31407u, u_input.a.x), 4294967295u >= u_input.a.x, 39638i), Struct_1(_wgslsmith_div_f32(var_0.x, 1066f), var_1.b, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, 62788u, var_1.c.x), var_1.c), !var_1.d, var_1.e), 65531u, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_1.b.x), vec3<i32>(var_2.x, var_2.x, -1i), var_1.b.yxz) >> (_wgslsmith_div_vec3_u32(var_1.c.xyx, vec3<u32>(4294967295u, 1866u, 30797u)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-1290f * var_1.a), func_1(vec3<i32>(var_2.x, 0i, var_1.b.x), Struct_2(Struct_1(var_1.a, vec4<i32>(36019i, 34430i, var_2.x, var_2.x), var_1.c, var_1.d, var_1.b.x), var_1, 0u, var_2, Struct_1(-1211f, var_1.b, var_1.c, var_1.d, -26904i))).b, _wgslsmith_sub_vec4_u32(var_1.c, var_1.c), !var_1.d, 0i))), func_2(1u, -22396i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(18759u, 1u), ~vec2<u32>(u_input.a.x, 1u)) % 32u), var_1), _wgslsmith_dot_vec2_u32(func_2(u_input.a.x, ~func_1(var_2, Struct_2(var_1, var_1, var_1.c.x, var_2, var_1)).e, Struct_1(-1000f, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.e, -10110i, -15288i, var_2.x), var_1.b), vec4<u32>(38310u, u_input.a.x, u_input.a.x, var_1.c.x), true, _wgslsmith_dot_vec3_i32(var_2, var_1.b.yzx))).c.zx, ~(~(~var_1.c.wy))), var_1.b.zxw, Struct_1(_wgslsmith_f_op_f32(min(var_1.a, 820f)), vec4<i32>(var_2.x, firstLeadingBit(-68856i), ~var_1.e, 1i) | var_1.b, ~var_1.c, var_1.c.x > (u_input.a.x ^ reverseBits(var_1.c.x)), ~var_1.e));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, -883f, var_0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2114f, var_3.b.a, var_1.a), vec3<f32>(var_0.x, -443f, -1000f), vec3<bool>(var_3.e.d, var_1.d, var_1.d))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b.a, 213f, var_1.a), vec3<f32>(523f, 710f, 700f))), select(vec3<bool>(true, true, var_3.e.d), vec3<bool>(var_3.b.d, true, var_3.a.d), vec3<bool>(true, var_1.d, var_1.d)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 526f, var_1.a), vec3<f32>(853f, 1440f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -2996f, 1888f) + vec3<f32>(var_1.a, var_1.a, var_1.a)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-986f, _wgslsmith_f_op_f32(-583f - var_3.a.a), var_0.x) + vec3<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), -517f, _wgslsmith_f_op_f32(f32(-1f) * -569f))))));
    var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(max(var_3.e.a, 878f)), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 385f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1203f + -776f), _wgslsmith_f_op_f32(var_3.a.a * 265f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-211f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f - -652f)))), _wgslsmith_sub_i32(37234i, func_1(var_1.b.wyz, Struct_2(func_1(var_3.a.b.xyw, Struct_2(var_3.e, var_1, 11064u, var_3.e.b.wyy, var_1)), func_1(var_1.b.xzz, var_3), ~1u, select(vec3<i32>(38997i, 2147483647i, -2147483647i), vec3<i32>(30155i, 0i, 4936i), var_1.d), var_1)).e));
}

