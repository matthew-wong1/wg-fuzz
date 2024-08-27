struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(~reverseBits(abs(vec4<u32>(47623u, u_input.a.x, 4294967295u, 22968u))), reverseBits(-vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1584f, -1522f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(207f, 982f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-426f, -483f), vec2<f32>(-1116f, 1467f)))))));
    let var_1 = !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true);
    let var_2 = vec2<bool>(var_1.x, false);
    var var_3 = Struct_3(vec4<bool>(true, select(true, (var_2.x != false) != any(vec4<bool>(var_1.x, var_2.x, var_2.x, var_2.x)), var_2.x | all(vec4<bool>(false, false, false, var_2.x))), (_wgslsmith_clamp_i32(var_0.b.x, var_0.b.x, -8378i) & 14148i) > 2147483647i, any(!(!vec4<bool>(var_1.x, var_1.x, false, true)))), vec4<i32>(reverseBits(reverseBits(2147483647i)), 2147483647i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_0.b.x, 0i, var_0.b.x)), vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x) >> (abs(vec3<u32>(var_0.a.x, 1u, u_input.a.x)) % vec3<u32>(32u))), -_wgslsmith_mult_i32(6802i, var_0.b.x) << (4294967295u % 32u)));
    var_3 = Struct_3(!select(var_3.a, select(!var_3.a, !vec4<bool>(false, var_1.x, var_2.x, true), false), select(!var_3.a, vec4<bool>(true, false, var_1.x, true), true)), -(~min(vec4<i32>(var_3.b.x, var_0.b.x, 0i, -12894i), vec4<i32>(var_3.b.x, 0i, -1i, 0i))));
    return var_3.a;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<i32>) -> bool {
    let var_0 = Struct_2(~min(vec3<u32>(~7899u, ~60931u, min(0u, arg_0.a.x)), u_input.a | ~u_input.a), (1i & arg_3.x) | arg_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(max(arg_0.c.x, 583f)), -486f, _wgslsmith_f_op_f32(-arg_0.c.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(817f, arg_0.c.x, -532f, arg_0.c.x))))));
    let var_1 = Struct_2(~var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -1275f, 1000f, -1145f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, -515f, 1664f))))));
    var var_2 = arg_3.xww;
    var_2 = arg_3.yyx;
    let var_3 = 13891u;
    return false;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(arg_1.b.x, -43931i, arg_1.b.x);
    let var_1 = arg_2;
    var var_2 = arg_0;
    var_2 = vec3<bool>(false, arg_0.x, false);
    var var_3 = -vec3<i32>(countOneBits(arg_1.b.x << (20993u % 32u)), var_1.b.x, _wgslsmith_dot_vec2_i32(arg_2.b.yx, vec2<i32>(_wgslsmith_div_i32(arg_2.b.x, arg_2.b.x), max(arg_2.b.x, 0i))));
    return firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.x, 30239i), arg_2.b.zz));
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = vec4<bool>(true, !all(!(!vec3<bool>(false, true, arg_0.x))), arg_0.x, any(!select(select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, false, false, arg_0.x)), !vec4<bool>(arg_0.x, true, false, arg_0.x), true)));
    let var_1 = func_5(vec3<bool>(func_4(Struct_4(vec4<u32>(27522u, 0u, 1u, 4294967295u), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -47239i), vec2<f32>(-347f, 810f)), select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0, var_0), func_3(), true), func_3().x, _wgslsmith_mult_vec4_i32(-vec4<i32>(49267i, 0i, -2147483647i, -72711i), select(vec4<i32>(-2147483647i, 52727i, -2147483647i, 2147483647i), vec4<i32>(2998i, -42024i, -9375i, 1i), var_0.x))), func_4(Struct_4(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 65310u, 15919u)), -vec4<i32>(32214i, 1i, -1i, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, 1000f))), select(!var_0, func_3(), false), _wgslsmith_dot_vec2_i32(vec2<i32>(-38435i, 2147483647i), vec2<i32>(2147483647i, -2147483647i)) <= (i32(-1i) * -2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), true), Struct_3(vec4<bool>(false, (arg_0.x | true) | func_3().x, !arg_0.x, false), min(-vec4<i32>(-50708i, -6646i, 0i, 2147483647i), vec4<i32>(~(-89207i), i32(-1i) * -1i, -27267i, ~30867i))), Struct_4(select(vec4<u32>(4294967295u, ~1u, u_input.a.x | u_input.a.x, 1u), abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), true), abs(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(889f, 952f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), true);
    let var_2 = _wgslsmith_f_op_f32(round(-327f));
    var var_3 = Struct_4(~(~max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(62129u, 23778u, u_input.a.x, 49783u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, var_1, 2147483647i, var_1)), abs(vec4<i32>(0i, -1i, var_1, var_1))) ^ (~vec4<i32>(var_1, var_1, -11700i, var_1) | select(vec4<i32>(-3616i, var_1, 2147483647i, -1i), vec4<i32>(-6333i, -57894i, var_1, 1i), arg_0.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, _wgslsmith_f_op_f32(-1215f + 205f))))));
    let var_4 = ~_wgslsmith_dot_vec2_u32(var_3.a.yx, abs(select(select(u_input.a.zy, vec2<u32>(4294967295u, u_input.a.x), arg_0.x), vec2<u32>(18235u, 1u), all(vec2<bool>(false, arg_0.x)))));
    return Struct_4(var_3.a, var_3.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(268f, var_2) + var_3.c), var_3.c))), vec2<f32>(_wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(f32(-1f) * -470f)), -370f))));
}

fn func_6(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(arg_0.b.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 2147483647i, 35402i), arg_0.b.xyz), arg_0.b.x)) == (_wgslsmith_clamp_i32(-reverseBits(16237i), select(arg_0.b.x, _wgslsmith_div_i32(arg_0.b.x, -4199i), arg_0.a.x > 4294967295u), arg_0.b.x) << (~0u % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-303f, _wgslsmith_f_op_f32(sign(581f))), arg_1)));
    var var_2 = Struct_2(vec3<u32>(arg_0.a.x, u_input.a.x, abs(_wgslsmith_div_u32(u_input.a.x, ~53082u))), 2147483647i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(func_2(!vec2<bool>(var_0, var_0)).c.x, 519f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) * _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)))))));
    var_2 = Struct_2(max(var_2.a, ~(~vec3<u32>(1u, arg_0.a.x, u_input.a.x))), firstTrailingBit(~(-arg_0.b.x & arg_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)))) - vec4<f32>(arg_1, -223f, func_2(!vec2<bool>(var_0, var_0)).c.x, _wgslsmith_f_op_f32(floor(1085f)))));
    let var_3 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(var_2.a.x), ~var_2.a.x), vec2<u32>(1u, (arg_0.a.x << (u_input.a.x % 32u)) ^ abs(0u)));
    return Struct_3(!func_3(), arg_0.b);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = func_6(func_2(vec2<bool>(!arg_0 | (1366f >= arg_3.c.x), !(arg_0 && false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)), -447f)));
    return var_0.a;
}

fn func_7(arg_0: Struct_3) -> Struct_4 {
    var var_0 = ~(~(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2839i, 14495i, -8716i, arg_0.b.x), arg_0.b) & _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 0i, 30398i, -12711i), arg_0.b ^ arg_0.b)));
    var_0 = select(vec4<i32>(var_0.x, -var_0.x, -2750i, var_0.x), abs(_wgslsmith_mod_vec4_i32(select(-arg_0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -9650i, -38665i, 14476i), arg_0.b), !arg_0.a.x), arg_0.b)), any(select(arg_0.a.yx, vec2<bool>(true, !arg_0.a.x), vec2<bool>(select(false, true, arg_0.a.x), false))));
    var var_1 = func_2(vec2<bool>(false, any(!vec3<bool>(false, arg_0.a.x, true)))).b.xzy ^ vec3<i32>(var_0.x, firstLeadingBit(2147483647i << (u_input.a.x % 32u)), ~arg_0.b.x);
    let var_2 = _wgslsmith_add_vec4_i32(arg_0.b, _wgslsmith_add_vec4_i32(arg_0.b, ~arg_0.b | (arg_0.b | vec4<i32>(var_0.x, 2669i, 3279i, arg_0.b.x))) | (vec4<i32>(-1i) * -(arg_0.b & vec4<i32>(0i, var_0.x, -1i, arg_0.b.x))));
    var_1 = firstTrailingBit(~max(-var_2.xyz, vec3<i32>(-2147483647i, var_2.x, -2147483647i) ^ ~vec3<i32>(arg_0.b.x, var_0.x, var_2.x)));
    return Struct_4(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(0u, u_input.a.x, 71709u, u_input.a.x)), reverseBits(max(vec4<u32>(43728u, 5751u, u_input.a.x, 0u), vec4<u32>(22167u, u_input.a.x, 47560u, u_input.a.x)))), vec4<u32>(_wgslsmith_mult_u32(26727u, 0u), u_input.a.x, 0u, countOneBits(u_input.a.x))), ~(~vec4<i32>(_wgslsmith_sub_i32(arg_0.b.x, -1i), arg_0.b.x, -28690i, ~2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-267f, 120f)))), _wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, arg_0.a.x)).c + vec2<f32>(1f, 1f))))));
}

fn func_8(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = vec2<bool>(true, arg_0.x);
    let var_1 = arg_3.b.yy;
    var var_2 = firstTrailingBit(vec3<u32>(arg_3.a.x, abs(~1u) >> (func_7(Struct_3(arg_0, vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i))).a.x % 32u), 6854u));
    var var_3 = Struct_1((var_1.x & func_7(Struct_3(arg_0, vec4<i32>(15998i, -64004i, -2147483647i, 1i))).b.x) >= 32734i, vec2<i32>(firstLeadingBit(var_1.x ^ 0i), -2147483647i) & ~var_1);
    var_2 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(arg_3.a, arg_3.a)), _wgslsmith_mult_u32(u_input.a.x, ~0u), countOneBits(~1u)), u_input.a);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(vec4<bool>(any(vec2<bool>(any(vec3<bool>(false, false, true)), true)), false, any(vec4<bool>(true, true, true, true)), true), ~(~abs(vec4<u32>(u_input.a.x, 60305u, 4294967295u, u_input.a.x)) ^ (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), -2195f, func_7(Struct_3(!func_1(true, vec2<i32>(2147483647i, 913i), 68941u, Struct_2(u_input.a, 1i, vec4<f32>(742f, -640f, 401f, -794f))), ~vec4<i32>(20816i, 19882i, 19356i, 31248i))));
    var var_1 = Struct_2(vec3<u32>(~(var_0.a.x ^ ~69519u), var_0.a.x, 4094u), -2147483647i, _wgslsmith_div_vec4_f32(vec4<f32>(func_7(func_6(Struct_4(var_0.a, vec4<i32>(-59475i, 1i, var_0.b.x, 28267i), vec2<f32>(var_0.c.x, var_0.c.x)), var_0.c.x)).c.x, 901f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(var_0.c.x - 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 1824f, 1187f, var_0.c.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -401f)))))));
    let var_3 = vec2<i32>(~var_0.b.x, var_1.b);
    let var_4 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 12623u, reverseBits(u_input.a.x), ~(var_0.a.x >> (1u % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(~9340u, 0u, 27938u, reverseBits(_wgslsmith_mult_u32(0u, var_1.a.x))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.a, ~var_0.a), ~var_0.a >> (~vec4<u32>(51621u, 1u, 31440u, var_1.a.x) % vec4<u32>(32u)))), var_0.a << (firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 26847u, u_input.a.x, 11011u), var_0.a)) % vec4<u32>(32u)));
    let var_5 = ~vec2<u32>(var_4.x, min(~u_input.a.x, ~u_input.a.x));
    var var_6 = true;
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, 1u, 1u, var_0.b, ~(~vec3<u32>(u_input.a.x, var_4.x, _wgslsmith_add_u32(0u, 4294967295u))));
}

