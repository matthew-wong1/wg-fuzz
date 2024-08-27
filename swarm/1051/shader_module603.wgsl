struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_5) -> f32 {
    var var_0 = select(select(select(vec4<bool>(true, all(vec3<bool>(arg_3.d.x, arg_1.b, arg_0.d.x)), arg_1.b, true), select(select(vec4<bool>(true, true, true, arg_3.d.x), vec4<bool>(arg_3.d.x, arg_0.d.x, true, arg_0.d.x), arg_1.b), !vec4<bool>(arg_1.b, true, true, false), false), true), !vec4<bool>(any(vec3<bool>(true, arg_3.d.x, true)), true, all(vec3<bool>(arg_3.d.x, arg_3.d.x, true)), u_input.b >= arg_2.a), vec4<bool>(arg_3.d.x, true == arg_1.b, all(vec3<bool>(true, false, arg_3.d.x)), countOneBits(arg_2.a) < min(45439i, arg_3.c.a))), select(vec4<bool>(true, arg_3.d.x, true, !any(vec4<bool>(arg_1.b, arg_1.b, arg_3.d.x, arg_1.b))), !vec4<bool>(all(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x)), false, any(vec4<bool>(true, true, false, false)), arg_0.d.x & true), -2147483647i > -_wgslsmith_add_i32(-13583i, arg_0.a.x)), !(!(!(!vec4<bool>(arg_3.d.x, arg_0.d.x, true, true)))));
    let var_1 = Struct_2(abs(u_input.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_1.d), _wgslsmith_f_op_f32(-arg_0.b.x)));
    var var_3 = vec3<i32>(countOneBits(-1i), ~21509i, ~firstTrailingBit(u_input.b));
    let var_4 = Struct_3(~var_3.x, arg_1);
    return -666f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> vec2<f32> {
    let var_0 = -((_wgslsmith_clamp_vec3_i32(vec3<i32>(36521i, arg_2, -1i), max(vec3<i32>(u_input.b, arg_2, arg_1.a), vec3<i32>(0i, arg_1.a, -8764i)), vec3<i32>(-2147483647i, -2147483647i, arg_1.a) << (vec3<u32>(56562u, 39267u, 34028u) % vec3<u32>(32u))) | -_wgslsmith_add_vec3_i32(vec3<i32>(-33964i, -79773i, arg_1.a), vec3<i32>(u_input.b, arg_1.a, -13393i))) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, -23211i, arg_2), countOneBits(vec3<i32>(arg_1.a, arg_2, 1i))) | countOneBits(vec3<i32>(arg_1.a, u_input.b, -1i))));
    let var_1 = arg_1.b.b;
    let var_2 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.c.x, arg_3 ^ 2032u, arg_1.b.c.x, 1u), reverseBits(_wgslsmith_add_vec4_u32(min(vec4<u32>(1u, arg_3, arg_3, arg_1.b.c.x), vec4<u32>(1u, arg_0.c.x, 4294967295u, 20481u)), abs(vec4<u32>(arg_0.c.x, 1018u, arg_0.c.x, arg_1.b.c.x)))));
    var var_3 = arg_0.c.x;
    var var_4 = ~vec2<u32>(~abs(0u), _wgslsmith_mult_u32(~select(arg_3, 51668u, true), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.d), arg_0.c.x)));
    return arg_1.b.a.zx;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<u32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(func_4(arg_1.b, Struct_3(~(-u_input.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<i32>(u_input.b, arg_1.c.a, 12959i, 0i), arg_1.b.a, Struct_2(arg_1.c.a), vec2<bool>(true, false)), Struct_1(arg_1.b.a, arg_1.c.b.b, vec2<u32>(arg_1.b.c.x, arg_2.x), 694f), Struct_2(u_input.b), Struct_5(vec4<i32>(-1i, arg_1.c.a, arg_1.c.a, u_input.b), arg_1.c.b.a, Struct_2(arg_1.c.a), arg_1.e))), -1026f, _wgslsmith_f_op_f32(-1585f * -537f)), false, _wgslsmith_clamp_vec2_u32(arg_1.c.b.c, _wgslsmith_mod_vec2_u32(vec2<u32>(460u, u_input.d), vec2<u32>(arg_2.x, arg_2.x)), arg_1.c.b.c), -1548f)), -1i, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(u_input.c) | _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(arg_2.x, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.c.x, 0u, arg_1.c.b.c.x), ~vec3<u32>(u_input.c.x, 0u, 1261u))), 17099u)));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.x) + vec2<f32>(-1041f, 466f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -322f) * arg_1.c.b.a.zz), arg_1.c.b.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.a.yy))));
    let var_0 = Struct_3(-arg_1.c.a, arg_1.c.b);
    let var_1 = arg_1.c.b.d;
    var var_2 = arg_1.c.b;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b.d - -674f), _wgslsmith_f_op_vec2_f32(func_4(var_0.b, Struct_3(u_input.b, var_0.b), -2147483647i, 13414u)).x, 184f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global0.x, 685f, -527f) * vec4<f32>(var_2.d, 951f, arg_0.x, arg_1.c.b.d)), _wgslsmith_div_vec4_f32(vec4<f32>(-582f, -1692f, 1771f, var_0.b.a.x), vec4<f32>(var_1, var_0.b.a.x, 143f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.a.x, var_2.a.x, -2252f, arg_1.b.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(198f, 112f, 742f, arg_1.c.b.a.x) + vec4<f32>(-526f, 1000f, 870f, var_0.b.d)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(-2061f - -1000f), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(func_3(Struct_5(vec4<i32>(u_input.b, var_0.a, 1i, var_0.a), var_2.a, Struct_2(-15258i), vec2<bool>(false, false)), Struct_1(arg_1.b.a, false, var_2.c, 2175f), Struct_2(-1i), Struct_5(vec4<i32>(var_0.a, var_0.a, arg_1.c.a, 30973i), vec3<f32>(-1510f, arg_1.c.b.a.x, -1627f), Struct_2(u_input.b), vec2<bool>(false, arg_1.b.b))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.a.x, arg_0.x, var_0.b.d, var_1), vec4<f32>(arg_1.b.a.x, arg_1.c.b.d, 1000f, -1201f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, var_0.b.d, 1027f, global0.x)))))), vec4<bool>(true || any(vec4<bool>(false, var_0.b.b, var_0.b.b, true)), arg_1.d, false, select(var_2.b, any(vec3<bool>(true, false, false)), true)))));
}

fn func_5(arg_0: vec4<f32>) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.x, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<i32>(u_input.b, -1i, u_input.b, -3180i), vec3<f32>(global0.x, global0.x, arg_0.x), Struct_2(-2147483647i), vec2<bool>(false, true)), Struct_1(vec3<f32>(-533f, global0.x, -858f), false, vec2<u32>(43699u, 50503u), arg_0.x), Struct_2(u_input.b), Struct_5(vec4<i32>(0i, u_input.b, u_input.b, 51004i), arg_0.zzx, Struct_2(u_input.b), vec2<bool>(true, false)))) * _wgslsmith_div_f32(global0.x, -781f)))))));
    var var_0 = Struct_5(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, u_input.b, u_input.b, 15951i), select(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(38471i, 0i, -30558i, 2147483647i), false)), ~min(vec4<i32>(u_input.b, u_input.b, u_input.b, 44830i), vec4<i32>(u_input.b, -45565i, 22901i, -2147483647i))), ~abs(vec4<i32>(29774i, -1i, u_input.b, u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(ceil(971f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_0.yz, Struct_4(true, Struct_1(vec3<f32>(1723f, -488f, global0.x), false, vec2<u32>(0u, u_input.a), -988f), Struct_3(24882i, Struct_1(vec3<f32>(-529f, arg_0.x, -1203f), true, u_input.c.zy, 1533f)), false, vec2<bool>(true, true)), vec2<u32>(u_input.d, u_input.c.x))).x + _wgslsmith_div_f32(-223f, arg_0.x))), global0.x), Struct_2(abs(_wgslsmith_sub_i32(u_input.b, -2147483647i))), vec2<bool>(true, false));
    var var_1 = var_0.c;
    var_1 = Struct_2(~(-(i32(-1i) * -2147483647i)) | var_0.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.b.x, global0.x), _wgslsmith_f_op_f32(-134f + global0.x), -1564f), arg_0.wzw), false, ~firstTrailingBit(u_input.c.yx), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), -1116f, all(var_0.d))), var_0.b.x))), Struct_3(_wgslsmith_mod_i32(~var_0.a.x, select(-56711i, var_1.a, true)) << (u_input.c.x % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, arg_0.xzz)), true, select(u_input.c.zy << (vec2<u32>(u_input.a, u_input.d) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.c.x), select(var_0.d, vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(803f)), -1000f))), var_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), u_input.c.yx)));
    return -select(abs(-_wgslsmith_sub_vec3_i32(var_0.a.xwz, vec3<i32>(-6842i, var_0.c.a, 2147483647i))), var_0.a.yyx, !var_0.d.x);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<u32> {
    global0 = vec2<f32>(-878f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1182f, global0.x, global0.x))))), true, ~(vec2<u32>(0u, arg_1.x) & vec2<u32>(arg_1.x, arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)), Struct_3(arg_2.a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)), false, vec2<u32>(arg_1.x, u_input.c.x), _wgslsmith_f_op_f32(-global0.x))), ~firstLeadingBit(-2147483647i), ~_wgslsmith_mult_u32(1u, 13980u) | ~(u_input.a << (u_input.d % 32u)))).x);
    var var_0 = !all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), true), vec3<bool>(false, global0.x != -1231f, true), true));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f - global0.x))), global0.x), 614f);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f) * _wgslsmith_f_op_f32(step(global0.x, global0.x)))), global0.x, _wgslsmith_f_op_f32(sign(global0.x))), false, ~countOneBits(_wgslsmith_sub_vec2_u32(arg_1.zx, vec2<u32>(91591u, 26669u))), _wgslsmith_f_op_f32(f32(-1f) * -1062f));
    let var_2 = Struct_4(arg_2.a < 2147483647i, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(global0.x, global0.x, -1276f))))), true, _wgslsmith_mod_vec2_u32(vec2<u32>(83137u ^ u_input.a, abs(u_input.a)), vec2<u32>(4294967295u, var_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1009f, var_1.d) - 1000f)))), Struct_3(firstTrailingBit(~arg_2.a ^ -1i), Struct_1(var_1.a, (var_1.b || false) & all(vec2<bool>(false, var_1.b)), vec2<u32>(_wgslsmith_sub_u32(var_1.c.x, arg_1.x), arg_1.x), _wgslsmith_f_op_f32(-global0.x))), all(select(!select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, var_1.b, false), vec3<bool>(var_1.b, var_1.b, var_1.b)), !select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, var_1.b, false), vec3<bool>(true, false, true)), var_1.b)), !select(select(select(vec2<bool>(false, false), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b)), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b), var_1.b), select(vec2<bool>(true, true), vec2<bool>(var_1.b, var_1.b), false)), select(!vec2<bool>(var_1.b, var_1.b), !vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, var_1.b)), var_1.b));
    return _wgslsmith_add_vec2_u32(min(~(~var_2.c.b.c), ~select(vec2<u32>(var_1.c.x, 14566u), firstTrailingBit(vec2<u32>(var_1.c.x, 3937u)), vec2<bool>(var_1.b, false))), ~vec2<u32>(~var_1.c.x, u_input.c.x << (32582u % 32u)) << (firstTrailingBit(abs(vec2<u32>(0u, var_2.b.c.x))) % vec2<u32>(32u)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 251f), _wgslsmith_f_op_f32(global0.x * global0.x))));
    var var_1 = Struct_1(vec3<f32>(-396f, 555f, 443f), false, func_6(select(-vec3<i32>(-15464i, 0i, 2147483647i), -vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, true)) | func_5(_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(1141f, global0.x), Struct_4(true, Struct_1(vec3<f32>(global0.x, global0.x, 1000f), true, u_input.c.zx, global0.x), Struct_3(40069i, Struct_1(vec3<f32>(global0.x, global0.x, 1012f), true, vec2<u32>(u_input.a, 27807u), 244f)), true, vec2<bool>(true, false)), u_input.c.xx))), firstTrailingBit(vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.d), u_input.c.x)), Struct_2((57210i << (u_input.a % 32u)) ^ max(u_input.b, -24875i))), global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1792f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -373f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-404f, -1981f, false)) - -1223f) + var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-483f, global0.x) - _wgslsmith_f_op_f32(floor(var_1.d))))), false));
    var var_2 = 34700i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, _wgslsmith_f_op_f32(1000f - global0.x), -2308f))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.b);
    let var_1 = all(vec2<bool>(true, true));
    let var_2 = Struct_3(func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-1000f * 1029f), global0.x))), true, ~vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(454f * _wgslsmith_f_op_f32(min(global0.x, global0.x)))));
    global0 = var_2.b.a.xz;
    var var_3 = var_2.b.a;
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.b.a.x, 1459f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, 152f) * vec2<f32>(1025f, -511f))), Struct_4(true, Struct_1(vec3<f32>(var_3.x, var_3.x, var_3.x), var_2.b.b, vec2<u32>(50511u, 1u), var_2.b.a.x), Struct_3(var_0.a, var_2.b), any(vec2<bool>(var_2.b.b, var_2.b.b)), vec2<bool>(true, true)), u_input.c.xz)).x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~var_0.a, var_2.a), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-18360i, -177i, 0i), vec3<i32>(-2723i, var_2.a, 54320i), vec3<bool>(false, true, true)), func_5(vec4<f32>(747f, var_2.b.a.x, global0.x, var_2.b.a.x))), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(205f, 720f, var_3.x, -104f), vec4<f32>(-1877f, 854f, var_3.x, global0.x), var_1))), select(vec3<i32>(-1i, var_0.a, 60595i), vec3<i32>(u_input.b, -35376i, 0i), !vec3<bool>(var_1, true, true))));
}

