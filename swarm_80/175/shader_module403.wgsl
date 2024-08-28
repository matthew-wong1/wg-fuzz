struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.d.a;
    let var_1 = Struct_1(arg_1.d.a, select(vec4<bool>(arg_1.a, true, select(arg_1.a, false, arg_1.d.a.x), arg_1.a), arg_1.d.b, arg_1.d.b), ~firstTrailingBit(-vec4<i32>(-2147483647i, -84544i, arg_0.x, 41543i)), reverseBits(arg_1.d.c));
    var_0 = !vec2<bool>(!any(arg_1.d.b.xxx), true);
    return abs(~1u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 32119i, u_input.d.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-36463i, 26641i, -1i, 2147483647i), vec4<i32>(45179i, u_input.a, u_input.e.x, 10724i))), countOneBits(u_input.c.x)) == (u_input.d.x >> (func_3(~vec3<i32>(-29778i, -26575i, u_input.a), Struct_2(true, vec2<i32>(17067i, 1i), false, Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec4<i32>(u_input.d.x, 24397i, 1i, -47478i), vec4<i32>(u_input.d.x, 4644i, u_input.a, u_input.a)))) % 32u)));
    return Struct_1(var_0, !select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x && var_0.x), select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), any(var_0)), var_0.x), ~select(vec4<i32>(u_input.c.x, u_input.d.x, _wgslsmith_add_i32(u_input.d.x, -1i), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), -vec4<i32>(0i, u_input.a, 21568i, u_input.a) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.d.x, u_input.e.x), vec4<i32>(16110i, 17544i, 11936i, -2147483647i)), vec4<bool>(true, false, !var_0.x, var_0.x)), ~vec4<i32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-12996i, -2147483647i, 0i) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), -u_input.c), _wgslsmith_add_i32(1i, 14698i), ~u_input.a));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -916f, arg_2.a.x)) * _wgslsmith_div_f32(-762f, 1690f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(931f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(919f)), _wgslsmith_div_f32(-673f, -1000f))))));
    let var_1 = u_input.b;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.x, 0i, max(arg_0.d.x, 33287i), -arg_2.d.x) & -vec4<i32>(arg_1, arg_1, 41241i, arg_1), firstLeadingBit((vec4<i32>(0i, u_input.e.x, -7014i, arg_2.c.x) << (vec4<u32>(4294967295u, 4294967295u, var_1, var_1) % vec4<u32>(32u))) >> (~vec4<u32>(var_1, u_input.b, 1u, 1u) % vec4<u32>(32u)))), -24834i, 43836i);
    return func_2(vec3<f32>(-1000f, 561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-359f * -1053f))))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(true, max(u_input.e >> (_wgslsmith_mult_vec2_u32(vec2<u32>(895u, u_input.b), ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), ~(_wgslsmith_clamp_vec2_i32(u_input.e, u_input.e, vec2<i32>(u_input.e.x, u_input.d.x)) | _wgslsmith_add_vec2_i32(u_input.e, u_input.d))), true, func_4(func_2(arg_0), _wgslsmith_mult_i32(u_input.e.x, -39821i), func_2(arg_0)));
    var var_1 = Struct_3(-30163i, var_0.d.a.x, _wgslsmith_f_op_f32(-arg_0.x), Struct_2(true, -_wgslsmith_sub_vec2_i32(u_input.d | var_0.b, vec2<i32>(-2147483647i, var_0.d.c.x)), !any(func_2(arg_0).a), Struct_1(!func_4(var_0.d, u_input.d.x, var_0.d).a, vec4<bool>(true, true, u_input.b > 40131u, all(vec3<bool>(false, false, true))), -var_0.d.c ^ -var_0.d.c, ~abs(var_0.d.d))), arg_0.x);
    var var_2 = var_1.d.d.b.zyx;
    let var_3 = Struct_2(var_1.b, var_0.d.c.zx, true, Struct_1(var_1.d.d.b.ww, var_1.d.d.b, var_1.d.d.d & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d.c.x, 1i, -2147483647i, var_1.d.b.x), var_0.d.c >> (vec4<u32>(41036u, 4294967295u, 4294967295u, 36119u) % vec4<u32>(32u)), func_2(vec3<f32>(var_1.e, 1000f, 418f)).c), vec4<i32>(firstTrailingBit(reverseBits(u_input.a)), -countOneBits(var_1.a), firstTrailingBit(~(-1i)), ~(~u_input.d.x))));
    var var_4 = countOneBits(~(~(~u_input.b))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(14602u << (u_input.b % 32u), u_input.b, ~countOneBits(u_input.b))) % 32u);
    return Struct_1(vec2<bool>(false, var_2.x | var_2.x), select(func_2(arg_0).b, vec4<bool>(var_1.b, var_1.b, false, !(u_input.d.x >= u_input.c.x)), vec4<bool>(var_2.x, func_2(arg_0).b.x, var_1.d.b.x != _wgslsmith_clamp_i32(-2147483647i, 36331i, -15826i), var_2.x)), vec4<i32>(u_input.e.x, countOneBits(~0i), (u_input.c.x >> (abs(u_input.b) % 32u)) ^ var_1.a, u_input.a), min(var_0.d.d, vec4<i32>(-2147483647i, 72518i, var_3.b.x, 53467i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -954f)), -1487f, -1745f)), arg_1.d.x, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(837f, 1405f, 574f) + vec3<f32>(949f, -1041f, 980f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, 218f, -308f) + vec3<f32>(-1263f, 500f, -967f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-270f, 821f, 1314f), vec3<f32>(1000f, 614f, 639f)))))).b.wx;
    var var_1 = -179f;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-569f, -172f)))))));
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, 2954f, var_2))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -1838f, var_2) * vec3<f32>(640f, -841f, var_2)), vec3<f32>(var_2, -103f, 801f), false || var_0.x)))));
    var var_4 = arg_1;
    return vec3<f32>(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_2)), var_2)), var_2);
}

fn func_6(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_2(u_input.b != _wgslsmith_mod_u32(select(max(58652u, 9148u), u_input.b >> (u_input.b % 32u), func_4(Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, true), vec4<i32>(47854i, -31515i, -1i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.c.x, u_input.a)), u_input.a, Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.a), vec4<i32>(u_input.c.x, 2147483647i, 36168i, u_input.a))).a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 3761u), vec2<u32>(arg_0, 0u))), u_input.c.yy, !(_wgslsmith_f_op_vec3_f32(func_5(func_1(arg_1), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, false, false), vec4<i32>(-2147483647i, 2000i, u_input.a, u_input.e.x), vec4<i32>(u_input.e.x, u_input.d.x, -10233i, u_input.a)))).x <= arg_1.x), func_4(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(648f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -400f, arg_1.x)))).a, vec4<bool>(true, true, true, true), vec4<i32>(u_input.e.x, ~(-16209i), 1i, 2147483647i), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, 2147483647i, 0i, 17373i), vec4<i32>(-1i, u_input.c.x, u_input.c.x, 17973i) | vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, 0i))), _wgslsmith_add_i32(u_input.d.x, -2147483647i), func_1(vec3<f32>(_wgslsmith_f_op_f32(max(388f, arg_1.x)), _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_3(-35954i, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(102f, arg_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-1042f - arg_1.x)))), Struct_2(~(~arg_0) != countOneBits(~87817u), u_input.e, true, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1946f, arg_1.x) + arg_1), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f + _wgslsmith_f_op_f32(arg_1.x + arg_1.x)) * _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(select(-273f, arg_1.x, true))))));
    var var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(arg_0, u_input.b, 0u), vec3<u32>(0u, arg_0, u_input.b), true), ~vec3<u32>(25318u, arg_0, arg_0)) << (abs(~vec3<u32>(arg_0, 11477u, u_input.b)) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(~4294967295u, ~0u, u_input.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(12287u, 0u, 1u), vec3<u32>(u_input.b, 1u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(10645u, arg_0, 4294967295u), vec3<u32>(arg_0, u_input.b, 17471u)), abs(vec3<u32>(14749u, 20598u, 4294967295u))) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(3181u, 1u, arg_0), vec3<u32>(60159u, 4294967295u, u_input.b)) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, arg_1.x));
    var_2 = vec3<u32>(~(_wgslsmith_mod_u32(u_input.b, 1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 24604u, var_2.x) ^ vec4<u32>(var_2.x, var_2.x, 60147u, u_input.b), vec4<u32>(43420u, 14670u, arg_0, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 4682u, arg_0) % vec4<u32>(32u)))), ~(~46337u), u_input.b);
    return -340f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2079f, 669f, 355f, -105f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, 558f, 389f, -1281f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(239f, -319f, -679f, 772f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-540f, 1115f, 848f, -653f), vec4<f32>(-1030f, 577f, -173f, -1279f))))))));
    var var_1 = _wgslsmith_f_op_f32(func_6(u_input.b << (1u % 32u), _wgslsmith_f_op_vec3_f32(func_5(func_1(vec3<f32>(-747f, 916f, var_0.x)), func_1(vec3<f32>(-288f, -1482f, var_0.x)))))) > -1857f;
    let var_2 = Struct_1(vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -569f, var_0.x)))))).b, -(~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 18458i, u_input.e.x, 18982i), vec4<i32>(u_input.d.x, 10324i, -21363i, 2147483647i)) ^ (vec4<i32>(758i, u_input.d.x, 7800i, -1i) ^ vec4<i32>(u_input.d.x, 0i, u_input.e.x, 2147483647i)))), -((vec4<i32>(-1i) * -vec4<i32>(11799i, -1i, u_input.a, u_input.a)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 42868u, 1u, 0u), vec4<u32>(u_input.b, 0u, 24270u, u_input.b)) % vec4<u32>(32u))));
    let var_3 = ~0u;
    let var_4 = !var_2.a;
    var_1 = true;
    var_1 = any(func_2(var_0.zwy).b);
    var_1 = var_4.x;
    var var_5 = vec2<bool>(all(func_4(func_2(_wgslsmith_f_op_vec3_f32(-var_0.zxx)), 1i, Struct_1(!vec2<bool>(var_2.a.x, var_2.a.x), select(var_2.b, var_2.b, var_2.b.x), vec4<i32>(u_input.d.x, 22454i, -1i, u_input.d.x), vec4<i32>(-2147483647i, u_input.a, u_input.d.x, -47877i) << (vec4<u32>(21445u, 1u, 19306u, 0u) % vec4<u32>(32u)))).a), false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, var_3, var_3, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 31033u, var_3, 0u), vec4<u32>(106629u, var_3, var_3, u_input.b))), 70178u), 1000f);
}

