struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(select(arg_0.a.a.a.yx, vec2<u32>(73124u >> (firstTrailingBit(54869u) % 32u), ~max(4294967295u, arg_0.a.c)), vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))), true)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global0.c), arg_0.a.a.a.zw));
    global0 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_clamp_u32(var_0, arg_0.a.a.a.x >> (15899u % 32u), 34765u), ~1u, 14546u, arg_0.a.a.b), 43049u ^ global0.a.a.x, global0.c), vec3<f32>(1606f, 128f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1436f * global0.b.x)), -2114f, !select(false, true, false)))), 0u);
    let var_1 = select(!vec4<bool>(true, true, false, any(vec2<bool>(true, false))), !select(vec4<bool>(false, u_input.a.x >= u_input.a.x, true, all(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -570f == global0.b.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, false))), vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(172f + global0.b.x))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x))), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true)), 20676u != _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0.a.a.a.wzz, arg_0.a.a.a.zyw), global0.c, arg_0.a.a.b >> (51600u % 32u)), true));
    global0 = arg_0.a;
    global0 = Struct_3(arg_0.a.a, global0.b, ~(~var_0));
    return false != (~u_input.a.x <= u_input.b);
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(select(select(min(vec4<u32>(arg_2.c.a.a.b, 53486u, arg_3.a.c, 4707u), global0.a.a), arg_0.c.a.a.a, vec4<bool>(false, true, false, true)) ^ vec4<u32>(firstLeadingBit(arg_0.b.a.c), firstLeadingBit(18361u), 75666u, 3235u), arg_2.b.a.a.a, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, arg_3.a.c), ~vec2<u32>(105761u, global0.a.b), false), select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_3.a.a.a.x), arg_3.a.a.a.xy), arg_0.b.a.a.a.yw, false)), arg_1));
    let var_1 = vec2<bool>(!func_3(Struct_4(Struct_3(Struct_1(vec4<u32>(arg_0.c.a.c, var_0.a.x, 77069u, arg_3.a.a.a.x), var_0.c, global0.c), arg_3.a.b, 14331u))), all(vec2<bool>(true, true)));
    let var_2 = select(vec3<bool>(-502f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.x - -470f), -1463f)), (_wgslsmith_sub_u32(var_0.a.x, 79568u) == 1u) | all(!vec2<bool>(false, var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -1745f))) >= 251f), select(!(!vec3<bool>(var_1.x, false, var_1.x)), !vec3<bool>(var_1.x, select(true, true, var_1.x), var_1.x), var_1.x | any(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(true, false, var_1.x)))), all(vec4<bool>(true, any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, true, false), var_1.x)), _wgslsmith_f_op_f32(-arg_2.b.a.b.x) >= arg_0.b.a.b.x, var_1.x)));
    let var_3 = Struct_3(Struct_1((min(vec4<u32>(var_0.a.x, 23866u, 1u, 1u), vec4<u32>(var_0.c, arg_0.c.a.c, var_0.b, 1u)) | firstTrailingBit(vec4<u32>(global0.c, 28952u, arg_3.a.a.a.x, 1u))) & ~(vec4<u32>(arg_3.a.a.b, 615u, arg_0.b.a.a.a.x, arg_2.c.a.a.c) >> (global0.a.a % vec4<u32>(32u))), var_0.b | arg_3.a.c, arg_3.a.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a.b.x, 285f, arg_2.c.a.b.x), vec3<f32>(-990f, arg_0.a.x, -227f), var_1.x)), arg_0.c.a.b)))), 53694u);
    let var_4 = !any(select(select(!var_2, select(vec3<bool>(var_2.x, true, false), var_2, var_2), true), vec3<bool>(var_2.x, any(vec2<bool>(true, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, true, false))), var_2));
    return Struct_3(arg_3.a.a, arg_0.b.a.b, arg_2.b.a.a.c);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = func_2(Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.yx)) * global0.b.zy), Struct_4(func_2(Struct_5(vec2<f32>(arg_1, global0.b.x), Struct_4(arg_0), Struct_4(arg_0)), ~arg_0.a.b, Struct_5(vec2<f32>(-961f, 885f), Struct_4(arg_0), Struct_4(Struct_3(Struct_1(vec4<u32>(24014u, global0.c, 4294967295u, arg_2.x), 4796u, arg_2.x), vec3<f32>(global0.b.x, -230f, global0.b.x), 1u))), Struct_4(arg_0))), Struct_4(func_2(Struct_5(global0.b.zy, Struct_4(arg_0), Struct_4(Struct_3(Struct_1(vec4<u32>(global0.a.c, 0u, global0.a.a.x, 4294967295u), arg_0.a.b, arg_0.a.a.x), global0.b, global0.a.a.x))), arg_0.c, Struct_5(vec2<f32>(-467f, global0.b.x), Struct_4(Struct_3(Struct_1(vec4<u32>(arg_0.a.c, arg_0.a.b, arg_2.x, 62227u), global0.c, arg_2.x), vec3<f32>(arg_1, -1344f, 1138f), arg_0.a.a.x)), Struct_4(Struct_3(Struct_1(vec4<u32>(arg_2.x, arg_0.a.b, arg_0.c, arg_0.a.c), 1398u, global0.c), vec3<f32>(562f, -929f, arg_0.b.x), 50458u))), Struct_4(Struct_3(global0.a, global0.b, 1u))))), ~abs(0u), Struct_5(vec2<f32>(372f, arg_1), Struct_4(func_2(Struct_5(vec2<f32>(global0.b.x, global0.b.x), Struct_4(arg_0), Struct_4(Struct_3(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 59411u), arg_2.x, 1u), vec3<f32>(global0.b.x, -1522f, arg_0.b.x), arg_2.x))), arg_0.c, Struct_5(vec2<f32>(-1470f, 1606f), Struct_4(arg_0), Struct_4(arg_0)), Struct_4(Struct_3(arg_0.a, arg_0.b, arg_2.x)))), Struct_4(arg_0)), Struct_4(Struct_3(Struct_1(vec4<u32>(arg_2.x, global0.c, arg_0.c, arg_2.x), arg_2.x, 37546u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(arg_0.b, vec3<f32>(arg_0.b.x, arg_1, -541f))))), ~countOneBits(70429u)))).a;
    var var_1 = 4294967295u != (reverseBits(var_0.b) >> ((var_0.b >> (~var_0.a.x % 32u)) % 32u));
    var_1 = !(2283f >= _wgslsmith_f_op_f32(ceil(923f)));
    var var_2 = abs(reverseBits(_wgslsmith_sub_vec4_u32(abs(arg_2), _wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_0.a.a.x, 1u, arg_2.x, arg_2.x)), vec4<u32>(var_0.a.x, global0.a.a.x, arg_0.c, 55103u)))));
    var var_3 = Struct_2(countOneBits(-(~u_input.a)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(Struct_4(arg_0)), any(vec3<bool>(false, true, false)), var_0.c <= arg_2.x, true), !any(vec4<bool>(true, false, true, true))), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-func_2(Struct_5(vec2<f32>(arg_1, 603f), Struct_4(arg_0), Struct_4(arg_0)), ~58546u, Struct_5(vec2<f32>(519f, -561f), Struct_4(arg_0), Struct_4(Struct_3(arg_0.a, arg_0.b, arg_0.c))), Struct_4(arg_0)).b))));
    return Struct_2(abs(-_wgslsmith_mult_vec3_i32(-vec3<i32>(var_3.a.x, u_input.b, 13496i), select(var_3.a, var_3.a, vec3<bool>(var_3.b.x, var_3.b.x, true)))), var_3.b, _wgslsmith_f_op_vec3_f32(arg_0.b - global0.b));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-383f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.x))))));
    let var_1 = 19921u;
    global0 = Struct_3(func_2(Struct_5(_wgslsmith_f_op_vec2_f32(arg_0.c.zy * _wgslsmith_f_op_vec2_f32(floor(global0.b.yx))), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, arg_0.c.x, arg_0.c.x), 1u)), Struct_4(func_2(Struct_5(global0.b.xx, Struct_4(Struct_3(Struct_1(global0.a.a, 9007u, 33237u), global0.b, global0.c)), Struct_4(Struct_3(Struct_1(vec4<u32>(var_1, 8486u, global0.c, 4294967295u), global0.a.c, 4294967295u), global0.b, 0u))), var_1, Struct_5(global0.b.xz, Struct_4(Struct_3(Struct_1(global0.a.a, global0.a.b, var_1), vec3<f32>(arg_0.c.x, global0.b.x, global0.b.x), var_1)), Struct_4(Struct_3(global0.a, global0.b, var_1))), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, -1000f, -757f), 0u))))), ~global0.a.c, Struct_5(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(abs(-1668f))), Struct_4(func_2(Struct_5(arg_0.c.yz, Struct_4(Struct_3(Struct_1(vec4<u32>(global0.c, 3323u, global0.c, 21038u), 4294967295u, global0.a.a.x), arg_0.c, var_1)), Struct_4(Struct_3(Struct_1(global0.a.a, var_1, global0.c), vec3<f32>(global0.b.x, -272f, 431f), 0u))), global0.c, Struct_5(global0.b.xy, Struct_4(Struct_3(Struct_1(global0.a.a, 1u, global0.c), global0.b, global0.c)), Struct_4(Struct_3(global0.a, global0.b, 81395u))), Struct_4(Struct_3(global0.a, global0.b, var_1)))), Struct_4(func_2(Struct_5(arg_0.c.zz, Struct_4(Struct_3(global0.a, arg_0.c, global0.c)), Struct_4(Struct_3(global0.a, global0.b, 42896u))), var_1, Struct_5(arg_0.c.yy, Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, 1000f, -554f), 15908u)), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, 1000f, global0.b.x), 1u))), Struct_4(Struct_3(global0.a, vec3<f32>(-819f, -1000f, 1257f), 4294967295u))))), Struct_4(Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, -215f, arg_0.c.x) + vec3<f32>(1403f, arg_0.c.x, -386f)), ~7994u))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, 630f, arg_0.c.x)), vec3<f32>(arg_0.c.x, arg_0.c.x, func_4(Struct_3(global0.a, arg_0.c, 28257u), 972f, global0.a.a).c.x))), global0.c & _wgslsmith_mod_u32(global0.a.c, _wgslsmith_dot_vec3_u32(global0.a.a.xzz, global0.a.a.zwx)));
    let var_2 = select(vec4<i32>(33678i & min(abs(61184i), _wgslsmith_dot_vec3_i32(arg_0.a, u_input.a)), abs(_wgslsmith_div_i32(arg_0.a.x, u_input.b)) & select(-1811i, ~arg_0.a.x, false), ~(-_wgslsmith_clamp_i32(arg_0.a.x, 0i, arg_0.a.x)), arg_0.a.x), _wgslsmith_sub_vec4_i32(~countOneBits(select(vec4<i32>(arg_0.a.x, 23934i, -21489i, arg_0.a.x), vec4<i32>(0i, arg_0.a.x, u_input.a.x, 2147483647i), arg_0.b)), -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, 0i, -36359i, 2147483647i), max(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(0i, 2147483647i, 0i, 15621i)))), !(arg_0.c.x <= _wgslsmith_f_op_f32(ceil(-311f))));
    let var_3 = all(select(arg_0.b, arg_0.b, select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), select(!arg_0.b, select(arg_0.b, vec4<bool>(false, false, false, arg_0.b.x), arg_0.b), arg_0.b), !vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))));
    return ~_wgslsmith_clamp_u32(4294967295u, ~4294967295u, _wgslsmith_mod_u32(global0.c, 154743u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_5) -> u32 {
    var var_0 = arg_2;
    global0 = Struct_3(Struct_1(global0.a.a, global0.a.b, func_5(func_4(func_2(Struct_5(vec2<f32>(arg_1.c.x, 112f), Struct_4(Struct_3(global0.a, vec3<f32>(var_0.c.x, global0.b.x, global0.b.x), 11206u)), Struct_4(arg_3.b.a)), 40784u, arg_3, arg_3.c), _wgslsmith_f_op_f32(sign(-213f)), ~vec4<u32>(61312u, 4294967295u, arg_3.c.a.c, 4294967295u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.c.a.b, arg_1.c) + _wgslsmith_f_op_vec3_f32(arg_1.c * arg_2.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.b, vec3<f32>(-1000f, -301f, global0.b.x))) * _wgslsmith_f_op_vec3_f32(sign(var_0.c))) + arg_3.c.a.b))), ~func_5(Struct_2(vec3<i32>(0i, -9579i, arg_2.a.x), select(vec4<bool>(false, var_0.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_2.b.x, true, var_0.b.x, false), arg_1.b.x), _wgslsmith_f_op_vec3_f32(-arg_1.c))));
    global0 = func_2(Struct_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.xx)), vec2<f32>(var_0.c.x, arg_0.x))), Struct_4(func_2(arg_3, ~55302u, Struct_5(arg_1.c.yz, Struct_4(Struct_3(Struct_1(arg_3.b.a.a.a, 4294967295u, arg_3.c.a.a.c), vec3<f32>(-2107f, -467f, arg_2.c.x), arg_3.b.a.a.a.x)), arg_3.c), arg_3.b)), arg_3.b), global0.c & _wgslsmith_clamp_u32(4294967295u, ~(~arg_3.c.a.c), firstTrailingBit(_wgslsmith_div_u32(global0.a.c, 0u))), arg_3, arg_3.b);
    var var_1 = any(vec2<bool>(var_0.b.x, true)) & true;
    var_0 = Struct_2(firstLeadingBit(max(max(arg_1.a, vec3<i32>(45241i, 0i, arg_2.a.x)), ~var_0.a) & -(~u_input.a)), vec4<bool>(var_0.b.x, !arg_1.b.x, true, arg_1.b.x), vec3<f32>(323f, _wgslsmith_f_op_f32(floor(-545f)), _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(-1525f + func_4(arg_3.b.a, -740f, vec4<u32>(0u, 4294967295u, 4294967295u, 5637u)).c.x))));
    return select(arg_3.c.a.a.a.x, 1u, arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_sub_vec4_u32(global0.a.a, vec4<u32>(1u, 1u, global0.c, 79094u))), _wgslsmith_sub_vec4_u32(~global0.a.a, ~global0.a.a)), global0.a.a.x, select(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 311u, global0.c), vec4<u32>(global0.c, global0.a.c, 4294967295u, global0.c)), func_1(vec2<f32>(1515f, global0.b.x), Struct_2(vec3<i32>(u_input.b, u_input.a.x, 31673i), vec4<bool>(true, false, false, true), global0.b), Struct_2(u_input.a, vec4<bool>(true, false, false, false), vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), Struct_5(global0.b.xx, Struct_4(Struct_3(Struct_1(vec4<u32>(32579u, global0.a.b, 4294967295u, 45031u), 9651u, global0.a.a.x), vec3<f32>(-1672f, global0.b.x, -136f), global0.a.b)), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, -310f), 0u))))), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(global0.b))))))), ~10281u);
    global0 = func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, 1727f)) * global0.b.yx)), Struct_4(func_2(Struct_5(global0.b.xx, Struct_4(Struct_3(Struct_1(vec4<u32>(73415u, global0.c, 47496u, 4294967295u), 4294967295u, global0.c), vec3<f32>(-1308f, global0.b.x, global0.b.x), global0.c)), Struct_4(Struct_3(Struct_1(vec4<u32>(global0.c, 67645u, 17880u, global0.c), global0.c, 95213u), global0.b, 1u))), func_5(Struct_2(u_input.a, vec4<bool>(true, false, false, true), vec3<f32>(1000f, -172f, global0.b.x))), Struct_5(global0.b.xz, Struct_4(Struct_3(global0.a, global0.b, global0.c)), Struct_4(Struct_3(global0.a, global0.b, global0.c))), Struct_4(Struct_3(global0.a, vec3<f32>(-331f, -1383f, 1858f), global0.a.a.x)))), Struct_4(Struct_3(Struct_1(vec4<u32>(26449u, global0.a.c, global0.c, 4294967295u), 11935u, global0.c), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, -1376f, global0.b.x), vec3<f32>(712f, global0.b.x, global0.b.x)), global0.a.b << (1u % 32u)))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.b.yz, vec2<f32>(533f, 1525f))) * _wgslsmith_f_op_vec2_f32(-global0.b.zx)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(143f, global0.b.x), global0.b.xz, false))))), Struct_2(~(-vec3<i32>(u_input.b, u_input.b, 16320i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-943f, 2062f, global0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, global0.b.x, global0.b.x))))), func_4(func_2(Struct_5(vec2<f32>(456f, global0.b.x), Struct_4(Struct_3(global0.a, global0.b, global0.a.b)), Struct_4(Struct_3(Struct_1(global0.a.a, 4294967295u, global0.a.a.x), global0.b, global0.a.a.x))), 0u, Struct_5(vec2<f32>(365f, 123f), Struct_4(Struct_3(Struct_1(global0.a.a, 4294967295u, 47u), global0.b, 4294967295u)), Struct_4(Struct_3(Struct_1(global0.a.a, 0u, global0.c), global0.b, 0u))), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, 2104f, global0.b.x), global0.c))), 2703f, ~global0.a.a), Struct_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.b.yz - global0.b.zy))), Struct_4(func_2(Struct_5(global0.b.yy, Struct_4(Struct_3(global0.a, global0.b, 1u)), Struct_4(Struct_3(Struct_1(vec4<u32>(36003u, global0.a.c, 4294967295u, 4294967295u), 84979u, global0.c), vec3<f32>(1050f, global0.b.x, global0.b.x), 4294967295u))), global0.a.a.x, Struct_5(vec2<f32>(global0.b.x, global0.b.x), Struct_4(Struct_3(Struct_1(global0.a.a, global0.a.a.x, 55993u), global0.b, 7372u)), Struct_4(Struct_3(Struct_1(vec4<u32>(global0.c, global0.c, global0.c, global0.c), 70858u, 4294967295u), vec3<f32>(global0.b.x, -1079f, -849f), global0.a.a.x))), Struct_4(Struct_3(Struct_1(vec4<u32>(41035u, global0.a.c, 1u, 21884u), 3074u, global0.c), global0.b, global0.c)))), Struct_4(func_2(Struct_5(global0.b.yx, Struct_4(Struct_3(global0.a, global0.b, 10770u)), Struct_4(Struct_3(Struct_1(global0.a.a, 1u, global0.a.a.x), vec3<f32>(global0.b.x, global0.b.x, 420f), 4294967295u))), global0.a.a.x, Struct_5(global0.b.xx, Struct_4(Struct_3(Struct_1(global0.a.a, 44152u, global0.c), global0.b, 15283u)), Struct_4(Struct_3(Struct_1(global0.a.a, global0.c, 4294967295u), vec3<f32>(-1000f, -1027f, -691f), global0.c))), Struct_4(Struct_3(global0.a, vec3<f32>(385f, global0.b.x, 232f), 4294967295u)))))), Struct_5(_wgslsmith_f_op_vec2_f32(-global0.b.yx), Struct_4(func_2(Struct_5(vec2<f32>(global0.b.x, global0.b.x), Struct_4(Struct_3(Struct_1(global0.a.a, global0.c, global0.c), vec3<f32>(global0.b.x, 121f, 844f), global0.a.b)), Struct_4(Struct_3(Struct_1(global0.a.a, 4294967295u, global0.a.a.x), global0.b, 12105u))), _wgslsmith_mod_u32(global0.c, 5761u), Struct_5(global0.b.yy, Struct_4(Struct_3(global0.a, vec3<f32>(1407f, 2364f, 1000f), 20499u)), Struct_4(Struct_3(global0.a, global0.b, global0.c))), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, global0.b.x), global0.a.b)))), Struct_4(func_2(Struct_5(vec2<f32>(global0.b.x, -373f), Struct_4(Struct_3(global0.a, global0.b, 18292u)), Struct_4(Struct_3(global0.a, vec3<f32>(-119f, global0.b.x, global0.b.x), global0.c))), select(global0.a.c, 265u, true), Struct_5(vec2<f32>(global0.b.x, -1011f), Struct_4(Struct_3(Struct_1(global0.a.a, global0.a.c, global0.c), global0.b, 27375u)), Struct_4(Struct_3(Struct_1(vec4<u32>(0u, 4294967295u, global0.a.c, 1u), global0.a.b, 4294967295u), global0.b, global0.c))), Struct_4(Struct_3(Struct_1(vec4<u32>(global0.c, global0.a.b, 20554u, 1u), 1u, 0u), global0.b, 0u))))), Struct_4(Struct_3(global0.a, vec3<f32>(_wgslsmith_f_op_f32(global0.b.x * -593f), 1201f, global0.b.x), min(4294967295u, 4294967295u) << ((global0.c >> (0u % 32u)) % 32u))));
    let var_0 = 4294967295u;
    let var_1 = var_0;
    global0 = func_2(Struct_5(global0.b.zy, Struct_4(func_2(Struct_5(global0.b.zz, Struct_4(Struct_3(Struct_1(global0.a.a, 0u, 24814u), vec3<f32>(global0.b.x, -323f, global0.b.x), var_1)), Struct_4(Struct_3(Struct_1(global0.a.a, var_0, 17810u), vec3<f32>(global0.b.x, global0.b.x, global0.b.x), var_1))), 0u, Struct_5(global0.b.zz, Struct_4(Struct_3(global0.a, vec3<f32>(1000f, -190f, global0.b.x), var_1)), Struct_4(Struct_3(global0.a, global0.b, var_0))), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, -1452f, global0.b.x), var_1)))), Struct_4(func_2(Struct_5(global0.b.yx, Struct_4(Struct_3(Struct_1(global0.a.a, var_0, var_0), global0.b, 76089u)), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, 692f), 66793u))), _wgslsmith_sub_u32(global0.a.a.x, 28670u), Struct_5(global0.b.zy, Struct_4(Struct_3(global0.a, global0.b, var_1)), Struct_4(Struct_3(Struct_1(global0.a.a, 57466u, 52481u), vec3<f32>(global0.b.x, global0.b.x, 182f), 0u))), Struct_4(Struct_3(global0.a, global0.b, var_1))))), _wgslsmith_mult_u32(var_1, firstTrailingBit(4294967295u)), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.zy)), Struct_4(func_2(Struct_5(global0.b.zz, Struct_4(Struct_3(Struct_1(vec4<u32>(31205u, global0.a.c, 4294967295u, 30676u), 1u, var_0), global0.b, 4294967295u)), Struct_4(Struct_3(Struct_1(global0.a.a, var_1, global0.c), vec3<f32>(-872f, -1387f, 1223f), var_0))), min(var_0, 0u), Struct_5(vec2<f32>(global0.b.x, global0.b.x), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, global0.b.x), var_0)), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, global0.b.x), var_1))), Struct_4(Struct_3(Struct_1(global0.a.a, 39715u, 21637u), vec3<f32>(global0.b.x, global0.b.x, global0.b.x), 43425u)))), Struct_4(Struct_3(func_2(Struct_5(global0.b.xx, Struct_4(Struct_3(Struct_1(global0.a.a, var_1, 41795u), global0.b, 33421u)), Struct_4(Struct_3(global0.a, vec3<f32>(1000f, global0.b.x, 830f), var_0))), var_0, Struct_5(global0.b.yy, Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, 468f), global0.c)), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, global0.b.x, global0.b.x), global0.c))), Struct_4(Struct_3(global0.a, global0.b, global0.a.b))).a, _wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, global0.a.a.x, 59031u, var_1), vec4<u32>(1u, global0.c, 0u, global0.a.a.x))))), Struct_4(func_2(Struct_5(vec2<f32>(-1254f, global0.b.x), Struct_4(Struct_3(Struct_1(vec4<u32>(global0.c, 1u, global0.a.a.x, var_1), var_1, var_1), global0.b, var_0)), Struct_4(Struct_3(Struct_1(vec4<u32>(var_1, 0u, 4294967295u, var_0), 16931u, 83430u), vec3<f32>(-212f, 126f, 1452f), var_0))), var_1, Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, global0.b.x), vec2<f32>(global0.b.x, -298f)), Struct_4(Struct_3(global0.a, vec3<f32>(-930f, global0.b.x, 1498f), 86365u)), Struct_4(Struct_3(Struct_1(global0.a.a, var_1, 11762u), global0.b, 48128u))), Struct_4(Struct_3(Struct_1(vec4<u32>(41841u, 29540u, 10911u, var_1), var_1, 4294967295u), vec3<f32>(global0.b.x, global0.b.x, global0.b.x), 5443u)))));
    var var_2 = Struct_3(Struct_1(select(_wgslsmith_add_vec4_u32(~global0.a.a, vec4<u32>(var_0, var_0, 12717u, 13395u) | vec4<u32>(var_1, var_0, 20716u, 68058u)), firstTrailingBit(vec4<u32>(7921u, global0.c, var_0, var_0)) | ~vec4<u32>(14048u, global0.a.a.x, 13367u, 1u), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), select(true, true, true))), _wgslsmith_mod_u32(var_1, 0u), ~(~75291u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, global0.b.x, 1267f)))))), var_1);
    var_2 = Struct_3(func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.xx - var_2.b.xy)), Struct_4(Struct_3(Struct_1(global0.a.a, 1u, 78725u), vec3<f32>(-474f, 723f, global0.b.x), 3626u)), Struct_4(Struct_3(global0.a, vec3<f32>(global0.b.x, -519f, global0.b.x), 44221u))), var_0, Struct_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)))), Struct_4(Struct_3(var_2.a, var_2.b, 0u)), Struct_4(Struct_3(var_2.a, var_2.b, var_2.a.b))), Struct_4(func_2(Struct_5(vec2<f32>(var_2.b.x, global0.b.x), Struct_4(Struct_3(Struct_1(global0.a.a, global0.c, var_2.c), var_2.b, var_2.a.a.x)), Struct_4(Struct_3(Struct_1(global0.a.a, var_1, 4294967295u), global0.b, var_0))), ~var_2.c, Struct_5(global0.b.yy, Struct_4(Struct_3(Struct_1(vec4<u32>(var_1, global0.a.b, var_2.c, var_0), var_1, var_2.c), global0.b, var_1)), Struct_4(Struct_3(global0.a, var_2.b, 1u))), Struct_4(Struct_3(var_2.a, global0.b, global0.c))))).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(func_4(Struct_3(Struct_1(vec4<u32>(7362u, 16992u, 28562u, 1u), var_1, 0u), vec3<f32>(var_2.b.x, -1530f, global0.b.x), global0.c), var_2.b.x, vec4<u32>(66443u, global0.c, var_1, 1u)).c.x)), _wgslsmith_f_op_f32(-global0.b.x), -1985f) - vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), func_4(Struct_3(Struct_1(vec4<u32>(72674u, 1u, var_0, 0u), var_0, var_0), global0.b, 0u), 669f, vec4<u32>(47162u, 28714u, var_1, 19300u)).c.x, var_2.b.x)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz);
}

