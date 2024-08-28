struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(arg_0, -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(749f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1190f * 396f))), arg_1.d.b.x, _wgslsmith_f_op_f32(max(1097f, 798f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(290f, 243f, arg_1.d.b.x, arg_1.a.b.x), vec4<f32>(arg_1.e, -2718f, 960f, arg_1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1105f, 748f, arg_1.e, -907f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-647f, -471f, -1000f, arg_1.e))))), Struct_1(any(select(vec3<bool>(arg_0.x, arg_0.x, arg_1.d.a), !vec3<bool>(arg_0.x, true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, arg_1.d.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, 699f)))));
    var var_1 = vec2<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1209f, arg_1.a.b.x)), _wgslsmith_div_f32(-1000f, -377f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_0.c.x)))));
    var var_2 = arg_1;
    let var_3 = Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1944f, var_2.b.b.x)), var_0.d.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(155f, -1620f)))));
    var_1 = vec2<f32>(258f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-476f)) * _wgslsmith_f_op_f32(-var_1.x)), 258f))));
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2066f)), _wgslsmith_div_f32(-970f, -1990f)), 1365f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(~(vec4<i32>(u_input.c, u_input.c, arg_1, 11043i) | vec4<i32>(arg_1, arg_1, -35493i, 1i))), ~_wgslsmith_div_vec4_i32(abs(vec4<i32>(988i, arg_1, -7443i, u_input.c)), -vec4<i32>(u_input.e, arg_1, -1i, arg_1)), ~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, u_input.e, 4385i, u_input.c), vec4<i32>(arg_1, u_input.c, arg_1, 15038i)))), ~(vec4<i32>(i32(-1i) * -2147483647i, 40744i | u_input.c, -20422i << (u_input.b.x % 32u), -58700i) >> (((vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 1u) << (vec4<u32>(arg_0, u_input.d, 40939u, 11136u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 43227u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_0 = 324i;
    var_0 = firstTrailingBit(u_input.e);
    let var_1 = func_2(vec2<bool>(false, true), Struct_2(func_2(vec2<bool>(false, true), Struct_2(Struct_1(false, vec2<f32>(1135f, -228f)), func_2(vec2<bool>(arg_2.a.a, false), Struct_2(Struct_1(true, vec2<f32>(-1355f, 1000f)), Struct_1(arg_2.a.a, vec2<f32>(237f, 1000f)), 108811u, Struct_1(arg_2.a.a, arg_2.a.b), arg_2.a.b.x)), u_input.d, arg_2.a, -719f)), func_2(!select(vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_2.a.a, false), vec2<bool>(arg_2.a.a, arg_2.a.a)), Struct_2(func_2(vec2<bool>(false, arg_2.a.a), Struct_2(Struct_1(arg_2.a.a, arg_2.a.b), Struct_1(true, arg_2.a.b), arg_0, arg_2.a, -942f)), arg_2.a, 21355u, func_2(vec2<bool>(true, arg_2.a.a), Struct_2(arg_2.a, Struct_1(arg_2.a.a, vec2<f32>(391f, arg_2.a.b.x)), u_input.a.x, Struct_1(false, vec2<f32>(-1109f, arg_2.a.b.x)), arg_2.a.b.x)), _wgslsmith_f_op_f32(ceil(arg_2.a.b.x)))), u_input.a.x, func_2(select(!vec2<bool>(false, arg_2.a.a), select(vec2<bool>(false, false), vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_2.a.a, false)), arg_2.a.a), Struct_2(Struct_1(arg_2.a.a, vec2<f32>(-671f, arg_2.a.b.x)), Struct_1(true, arg_2.a.b), u_input.b.x, func_2(vec2<bool>(arg_2.a.a, false), Struct_2(arg_2.a, arg_2.a, u_input.b.x, Struct_1(false, arg_2.a.b), arg_2.a.b.x)), _wgslsmith_f_op_f32(step(arg_2.a.b.x, arg_2.a.b.x)))), -604f));
    return Struct_4(!select(vec2<bool>(var_1.a, arg_2.a.a), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), select(vec2<bool>(false, false), !vec2<bool>(false, var_1.a), true)), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(289f, arg_2.a.b.x, 206f, arg_2.a.b.x))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1590f, 1955f, -1516f) + vec4<f32>(1000f, var_1.b.x, var_1.b.x, 1297f)), vec4<f32>(var_1.b.x, -199f, var_1.b.x, arg_2.a.b.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-357f, var_1.b.x, 423f, 1257f), vec4<f32>(-1000f, arg_2.a.b.x, 1000f, arg_2.a.b.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(210f, 1900f, arg_2.a.b.x, arg_2.a.b.x), vec4<f32>(633f, 1242f, arg_2.a.b.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(346f, arg_2.a.b.x, arg_2.a.b.x, -1031f), vec4<f32>(1000f, arg_2.a.b.x, 201f, 271f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x) * vec4<f32>(-620f, 319f, -1000f, -1000f))), !(!vec4<bool>(false, true, arg_2.a.a, var_1.a))))), func_2(vec2<bool>(true, true), Struct_2(var_1, var_1, arg_0, Struct_1(func_2(vec2<bool>(var_1.a, var_1.a), Struct_2(arg_2.a, Struct_1(true, var_1.b), 1u, arg_2.a, -627f)).a, _wgslsmith_div_vec2_f32(arg_2.a.b, vec2<f32>(var_1.b.x, -445f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a.b.x), _wgslsmith_f_op_f32(min(var_1.b.x, 629f)))))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(any(vec3<bool>(arg_0.d.a, arg_0.d.a | false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2743f, arg_0.c.x), vec2<f32>(arg_0.d.b.x, arg_0.d.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, arg_0.c.x))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1456f, arg_0.d.b.x))))), arg_0.d, 8916u, Struct_1(!select(true, arg_0.a.x, false), vec2<f32>(2141f, func_3(~87114u, abs(arg_0.b), Struct_3(arg_0.d)).c.x)), arg_0.d.b.x);
    var var_1 = all(vec4<bool>(var_0.a.a, arg_0.a.x, true, all(select(!vec4<bool>(true, arg_0.a.x, var_0.d.a, arg_0.d.a), vec4<bool>(false, false, true, true), var_0.b.a == var_0.a.a))));
    var var_2 = arg_0.b;
    let var_3 = func_3(_wgslsmith_mod_u32(28522u, 31526u), _wgslsmith_dot_vec4_i32(~(vec4<i32>(47620i, -26485i, -2147483647i, arg_0.b) & vec4<i32>(2147483647i, u_input.e, u_input.c, 50116i)) | reverseBits(vec4<i32>(-37743i, -2147483647i, -3368i, -1i)), max(abs(-vec4<i32>(u_input.c, 0i, -1i, u_input.e)), -(~vec4<i32>(u_input.e, -12636i, -2147483647i, arg_0.b)))), Struct_3(func_3(_wgslsmith_sub_u32(var_0.c, 4294967295u), firstLeadingBit(-9299i), Struct_3(func_2(arg_0.a, Struct_2(var_0.d, arg_0.d, 0u, arg_0.d, var_0.e)))).d)).d;
    var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, abs(abs(min(u_input.c, 0i)))), -firstTrailingBit(vec2<i32>(u_input.e | u_input.e, arg_0.b)));
    return Struct_3(func_3(u_input.a.x, arg_0.b, Struct_3(Struct_1(-700f >= arg_0.d.b.x, var_3.b))).d);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(func_3(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, arg_2.b) & (0i ^ arg_1), arg_1, _wgslsmith_add_i32(arg_2.b, 57436i) & (i32(-1i) * -47347i)), Struct_3(Struct_1(!arg_0.a.a, func_3(0u, -30806i, Struct_3(Struct_1(arg_0.a.a, vec2<f32>(arg_2.c.x, -462f)))).d.b))).d, arg_0.a, u_input.d, Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.d.b)) * vec2<f32>(_wgslsmith_f_op_f32(step(-849f, arg_0.a.b.x)), func_4(Struct_4(arg_2.a, arg_2.b, arg_2.c, arg_0.a)).a.b.x))), _wgslsmith_f_op_f32(-arg_0.a.b.x));
    var var_1 = arg_0.a.b;
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, 536f) + vec2<f32>(_wgslsmith_f_op_f32(-1f), arg_2.c.x));
    var_1 = vec2<f32>(-582f, _wgslsmith_f_op_f32(step(func_4(func_3(u_input.d, 0i, Struct_3(var_0.d))).a.b.x, 282f)));
    let var_2 = any(select(select(vec4<bool>(false, false, arg_2.a.x, !var_0.b.a), !select(vec4<bool>(arg_2.a.x, arg_2.d.a, false, arg_0.a.a), vec4<bool>(false, false, false, false), true), vec4<bool>(var_0.d.a, var_0.b.a, !arg_0.a.a, arg_0.a.a)), !(!vec4<bool>(false, true, arg_2.a.x, var_0.d.a)), select(select(select(vec4<bool>(arg_2.a.x, var_0.d.a, true, true), vec4<bool>(true, var_0.b.a, true, false), arg_2.d.a), vec4<bool>(var_0.b.a, true, arg_0.a.a, arg_2.a.x), vec4<bool>(arg_0.a.a, false, true, true)), select(!vec4<bool>(var_0.b.a, false, arg_2.d.a, false), vec4<bool>(true, var_0.d.a, arg_0.a.a, true), select(vec4<bool>(arg_2.d.a, true, false, false), vec4<bool>(arg_0.a.a, false, var_0.a.a, arg_0.a.a), vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a, var_0.d.a))), any(vec4<bool>(false, false, true, var_0.a.a)))));
    return func_2(!(!vec2<bool>(true, -5164i > arg_1)), Struct_2(arg_0.a, var_0.b, ~abs(1u), func_3(u_input.d, firstLeadingBit(59012i), arg_0).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.a, Struct_2(Struct_1(var_0.d.a, var_0.a.b), Struct_1(arg_2.d.a, vec2<f32>(116f, var_1.x)), 36336u, Struct_1(false, vec2<f32>(arg_0.a.b.x, -1110f)), 208f)).b.x + _wgslsmith_f_op_f32(var_0.b.b.x + -692f)))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(func_4(func_3(17015u, u_input.e, Struct_3(func_2(vec2<bool>(false, false), Struct_2(Struct_1(true, vec2<f32>(-471f, 1854f)), Struct_1(false, vec2<f32>(129f, -607f)), 2415u, Struct_1(false, vec2<f32>(-964f, -1000f)), -264f))))), countOneBits(u_input.e), Struct_4(func_3(u_input.a.x, 1i, func_4(func_3(u_input.d, u_input.e, Struct_3(Struct_1(true, vec2<f32>(-266f, -480f)))))).a, 34315i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, 465f, 540f, -230f) + vec4<f32>(1038f, 949f, 1000f, 276f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(400f, 1603f, -526f, 513f), vec4<f32>(379f, -1073f, 570f, 456f))))), func_2(func_3(4294967295u, -1i, func_4(Struct_4(vec2<bool>(true, false), 38839i, vec4<f32>(938f, -672f, 550f, -538f), Struct_1(true, vec2<f32>(773f, -483f))))).a, Struct_2(func_2(vec2<bool>(true, false), Struct_2(Struct_1(false, vec2<f32>(1000f, -1153f)), Struct_1(true, vec2<f32>(-1278f, 245f)), 29099u, Struct_1(false, vec2<f32>(2273f, -500f)), -1000f)), Struct_1(true, vec2<f32>(585f, -392f)), 46615u, Struct_1(true, vec2<f32>(1970f, 1398f)), _wgslsmith_f_op_f32(-955f * 2310f)))));
    var var_1 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.e, 1i), u_input.c), ~reverseBits(vec2<i32>(-1i, u_input.c))), u_input.c >> ((1u ^ u_input.b.x) % 32u));
    var_0 = Struct_1(u_input.a.x == (u_input.b.x >> (45880u % 32u)), var_0.b);
    var_1 = -_wgslsmith_mult_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 13043i), vec2<i32>(-1i, u_input.e)), 4480i, true) & 1i, u_input.e);
    let var_2 = select(!select(vec4<bool>(all(vec3<bool>(var_0.a, true, var_0.a)), 0u <= u_input.b.x, true, all(vec4<bool>(var_0.a, var_0.a, false, var_0.a))), vec4<bool>(44116u <= u_input.a.x, true, var_0.a && true, !var_0.a), ~1u <= _wgslsmith_div_u32(67356u, u_input.d)), !select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, false, true, true), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, true, var_0.a), false)), !(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), false), !(!(97939u < min(u_input.d, u_input.d))));
    return Struct_3(Struct_1(all(!select(vec4<bool>(var_0.a, var_2.x, true, var_2.x), var_2, false)), _wgslsmith_f_op_vec2_f32(var_0.b - var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = func_1();
    let var_2 = func_2(!(!select(func_3(u_input.d, 4638i, Struct_3(var_1.a)).a, vec2<bool>(true, true), vec2<bool>(var_1.a.a, true))), Struct_2(Struct_1(func_2(vec2<bool>(false, false), Struct_2(Struct_1(var_1.a.a, var_1.a.b), Struct_1(false, vec2<f32>(448f, var_1.a.b.x)), 1u, Struct_1(var_1.a.a, vec2<f32>(1000f, var_1.a.b.x)), -802f)).a, vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), var_1.a.b.x)), func_5(Struct_3(func_2(vec2<bool>(false, var_1.a.a), Struct_2(var_1.a, var_1.a, 14649u, Struct_1(var_1.a.a, vec2<f32>(775f, var_1.a.b.x)), 1260f))), -20311i >> ((u_input.a.x & 4294967295u) % 32u), Struct_4(!vec2<bool>(var_1.a.a, var_1.a.a), min(1i, u_input.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(1005f, -1000f, -349f, -1000f) - vec4<f32>(-1750f, -1000f, var_1.a.b.x, var_1.a.b.x)), var_1.a)), ~(632u | var_0.x), Struct_1(var_1.a.a, var_1.a.b), _wgslsmith_f_op_f32(exp2(var_1.a.b.x))));
    let var_3 = Struct_4(select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_2.a, var_2.a), func_3(1u, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), ~vec2<i32>(0i, u_input.e)), Struct_3(func_4(Struct_4(vec2<bool>(false, false), u_input.c, vec4<f32>(var_2.b.x, 788f, var_2.b.x, 631f), var_2)).a)).a), func_3(_wgslsmith_add_u32(0u, u_input.a.x & 51888u) ^ u_input.b.x, -74936i, Struct_3(Struct_1(false, _wgslsmith_f_op_vec2_f32(-var_2.b)))).b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(154f, -972f, 570f, var_2.b.x), func_3(6118u, u_input.e, Struct_3(Struct_1(false, var_2.b))).c, vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_1.a.b.x, -135f, 648f) * vec4<f32>(153f, var_1.a.b.x, var_1.a.b.x, -1932f))))), Struct_1(!var_2.a & true, vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1445f - 560f))))));
    let var_4 = var_2.a;
    let var_5 = var_1.a.a;
    let var_6 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_3.c.zw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 909f) + var_2.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.d.b.x, -799f))))))), func_4(Struct_4(!(!var_3.a), ~(-1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_3.c))), var_3.d)).a, _wgslsmith_dot_vec2_u32(firstLeadingBit(~(~vec2<u32>(1u, 4294967295u))), vec2<u32>(_wgslsmith_div_u32(abs(var_0.x), 112202u >> (u_input.d % 32u)), ~_wgslsmith_div_u32(u_input.d, var_0.x))), var_1.a, _wgslsmith_f_op_f32(-1f));
    var var_7 = _wgslsmith_f_op_vec3_f32(trunc(var_3.c.zxz));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x ^ 4294967295u, ~994u, ~var_0.x, 0u), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 0u, 4294967295u, 15180u), select(vec4<u32>(var_6.c, var_0.x, var_6.c, 0u), vec4<u32>(0u, u_input.b.x, 1u, u_input.a.x), var_4))));
}

