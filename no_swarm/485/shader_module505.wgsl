struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-12981i, 2616i);

var<private> global1: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_3.xy))))));
    let var_1 = select(vec3<bool>(true, false, true), !(!select(vec3<bool>(false, arg_0.a.c.x, false), select(arg_0.a.c, arg_0.d.c, arg_0.c), vec3<bool>(arg_0.d.b, arg_0.a.b, arg_0.c))), select(select(select(select(arg_0.d.c, vec3<bool>(arg_0.a.c.x, arg_0.c, arg_0.c), arg_0.a.b), select(vec3<bool>(arg_0.d.c.x, arg_0.a.c.x, arg_0.d.c.x), vec3<bool>(arg_0.a.c.x, arg_0.c, arg_0.c), arg_0.d.c), vec3<bool>(arg_0.a.b, arg_0.a.b, true)), !vec3<bool>(arg_0.c, true, true), select(select(arg_0.d.c, arg_0.d.c, arg_0.d.c), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), select(!vec3<bool>(false, arg_0.a.b, false), select(select(vec3<bool>(arg_0.d.b, arg_0.a.c.x, false), arg_0.d.c, arg_0.d.c), arg_0.d.c, select(arg_0.a.b, arg_0.c, arg_0.d.b)), !(!arg_0.a.c)), select(arg_0.a.c, arg_0.d.c, false)));
    global0 = abs(global1.yy);
    let var_2 = Struct_2(var_1.x, false);
    global1 = vec3<i32>(-37422i, arg_1, -47967i);
    return vec4<bool>(var_1.x, select(var_1.x, var_2.b, arg_2.x <= (arg_0.a.d << (305u % 32u))), false, arg_2.x != 41098u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: f32) -> vec3<i32> {
    let var_0 = Struct_2(true, any(!select(select(vec4<bool>(true, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(true, arg_1.x, false, arg_1.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), arg_1.x))));
    let var_1 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(-1000f + 474f))))) > arg_2;
    global1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(15455i, 4799i, -14348i), ~vec3<i32>(global1.x, global1.x, global0.x), vec3<i32>(2563i, u_input.b, u_input.a) >> (vec3<u32>(21802u, 0u, 6084u) % vec3<u32>(32u))) >> (~(~vec3<u32>(56616u, 4294967295u, 37618u)) % vec3<u32>(32u)), ~vec3<i32>(0i & global1.x, 1i, -85397i));
    global0 = global1.yx | global1.yy;
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-566f, arg_2) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1000f))))), var_0.a & !var_1, Struct_1(reverseBits(-vec3<i32>(6931i, -1i, -8339i)), all(vec3<bool>(true, true, all(vec2<bool>(var_0.a, var_0.b)))), arg_0, ~(~_wgslsmith_mult_u32(1u, 4294967295u)), reverseBits(_wgslsmith_sub_u32(1u, 1u))));
    return -vec3<i32>(-1i, -_wgslsmith_dot_vec2_i32(~global1.yy, u_input.c), u_input.b);
}

fn func_2(arg_0: f32) -> vec2<i32> {
    global1 = func_4(vec3<bool>(any(!func_3(Struct_3(Struct_1(vec3<i32>(-20562i, u_input.a, 0i), false, vec3<bool>(false, true, false), 15881u, 33996u), vec3<u32>(61824u, 36242u, 0u), false, Struct_1(vec3<i32>(-2147483647i, global0.x, 7377i), false, vec3<bool>(false, true, false), 1u, 4294967295u)), 15208i, vec3<u32>(4294967295u, 4294967295u, 1u), vec3<f32>(arg_0, -1256f, -440f))), true, select(!all(vec3<bool>(false, false, false)), all(vec2<bool>(false, true)), any(func_3(Struct_3(Struct_1(vec3<i32>(u_input.a, -43704i, 10070i), false, vec3<bool>(false, true, false), 22948u, 69591u), vec3<u32>(0u, 4294967295u, 88706u), true, Struct_1(vec3<i32>(42896i, -23750i, 18545i), false, vec3<bool>(false, false, true), 1u, 82633u)), -24246i, vec3<u32>(52311u, 0u, 4294967295u), vec3<f32>(arg_0, 1000f, arg_0))))), vec3<bool>(true != (true && func_3(Struct_3(Struct_1(vec3<i32>(global0.x, global0.x, 1986i), true, vec3<bool>(false, false, false), 34238u, 36963u), vec3<u32>(48889u, 0u, 1u), true, Struct_1(vec3<i32>(-61761i, 18007i, global0.x), false, vec3<bool>(true, true, false), 4294967295u, 4294967295u)), 29498i, vec3<u32>(17311u, 6050u, 34377u), vec3<f32>(-605f, 332f, 1627f)).x), true, all(func_3(Struct_3(Struct_1(vec3<i32>(1i, 30917i, 3695i), false, vec3<bool>(true, false, true), 4294967295u, 10551u), vec3<u32>(36626u, 4294967295u, 31528u), false, Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), true, vec3<bool>(false, false, false), 0u, 50745u)), 1i, vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-1000f, arg_0, arg_0)))))), arg_0);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(602f, 412f, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 827f, arg_0) * vec3<f32>(497f, 609f, arg_0)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, -1000f), vec3<f32>(-1000f, arg_0, arg_0))))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-163f)))) - -519f), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = 4294967295u;
    var var_2 = Struct_4(vec3<i32>(countOneBits(u_input.c.x), _wgslsmith_add_i32(u_input.b & -2778i, max(2147483647i, global0.x)) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -7683i, u_input.a, 38439i) ^ vec4<i32>(14898i, global0.x, 51821i, global0.x), min(vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, global1.x), vec4<i32>(u_input.b, global1.x, -2147483647i, -2147483647i))), -2147483647i));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(-645f, arg_0)), -1362f, arg_0, _wgslsmith_div_f32(-1317f, -2751f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0, arg_0, arg_0) - vec4<f32>(-1314f, 449f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, var_0.x, 1332f, arg_0)))))));
    return _wgslsmith_clamp_vec2_i32(-global1.xz, ~min(~vec2<i32>(var_2.a.x, var_2.a.x), -vec2<i32>(var_2.a.x, u_input.c.x)), vec2<i32>(~u_input.b, -66483i)) << (_wgslsmith_add_vec2_u32(vec2<u32>(~30200u, 1u), vec2<u32>(31208u, firstTrailingBit(1u)) & vec2<u32>(0u, 1u)) % vec2<u32>(32u));
}

fn func_1() -> vec3<i32> {
    global0 = vec2<i32>(_wgslsmith_clamp_i32(global0.x, -1i, min(_wgslsmith_mult_i32(global1.x, u_input.b), u_input.a)), global1.x) & _wgslsmith_sub_vec2_i32(-global1.yx, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, func_2(-1207f)), vec2<i32>(u_input.c.x, -16903i)));
    global1 = vec3<i32>(u_input.c.x, global1.x, -u_input.c.x);
    let var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), false, true, any(vec2<bool>(false, true))), all(vec2<bool>(true, true))), !vec4<bool>(true, !all(vec4<bool>(true, false, true, true)), select(true, func_3(Struct_3(Struct_1(vec3<i32>(-2147483647i, -44993i, -17788i), true, vec3<bool>(false, false, true), 48769u, 11243u), vec3<u32>(0u, 4294967295u, 0u), false, Struct_1(vec3<i32>(u_input.a, global1.x, global0.x), false, vec3<bool>(false, false, false), 4294967295u, 7868u)), global0.x, vec3<u32>(0u, 1u, 3839u), vec3<f32>(-201f, 942f, -587f)).x, any(vec3<bool>(false, true, true))), true), true);
    global0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(_wgslsmith_mult_vec2_i32(global1.xy, u_input.c) | u_input.c, ~(-u_input.c), func_3(Struct_3(Struct_1(vec3<i32>(global1.x, -1i, u_input.b), true, var_0.wyw, 25449u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), var_0.x, Struct_1(vec3<i32>(-2147483647i, -8936i, -2147483647i), false, vec3<bool>(var_0.x, true, var_0.x), 16252u, 91419u)), _wgslsmith_mod_i32(global1.x, global1.x), ~vec3<u32>(31902u, 79477u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1357f, 156f, 1000f))).x), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, -18020i), vec3<i32>(0i, u_input.b, -1i))), max(0i, ~global0.x))), min(~vec2<i32>(-6763i, global0.x << (4294967295u % 32u)), vec2<i32>(firstTrailingBit(global0.x), min(0i, u_input.c.x))));
    global1 = vec3<i32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-679f, 753f, true)) + -698f))).x, _wgslsmith_div_i32(~(-8671i), ~global1.x) << ((_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(9858u, 68352u), vec2<u32>(35304u, 9374u))) | _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 29772u), vec2<u32>(1u, 1u))) % 32u), u_input.b);
    return _wgslsmith_mod_vec3_i32(min(countOneBits(vec3<i32>(global0.x, u_input.a, -14498i)) >> (vec3<u32>(1u, 0u, 34382u) % vec3<u32>(32u)), vec3<i32>(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -26913i, 2147483647i), vec4<i32>(global0.x, global1.x, 1i, 0i)), global1.x >> (21655u % 32u))) | _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, -2147483647i, global1.x), vec3<i32>(-2147483647i, -2147483647i, -1i)), vec3<i32>(_wgslsmith_clamp_i32(-1i, global0.x, global0.x), i32(-1i) * -2147483647i, ~2147483647i), -_wgslsmith_mult_vec3_i32(vec3<i32>(-38233i, global1.x, u_input.b), vec3<i32>(2147483647i, global0.x, -28850i))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, max(1882i, u_input.a)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(337i, 2147483647i, global1.x), vec3<i32>(-1i, global1.x, global0.x), vec3<i32>(33753i, -1i, global0.x))), firstTrailingBit(~(vec3<i32>(u_input.c.x, global1.x, 1i) & vec3<i32>(-1i, -1i, -2147483647i))), !(!func_3(Struct_3(Struct_1(vec3<i32>(u_input.c.x, 11854i, 2147483647i), var_0.x, vec3<bool>(false, false, var_0.x), 43892u, 39311u), vec3<u32>(4294967295u, 79391u, 0u), var_0.x, Struct_1(vec3<i32>(global1.x, 0i, 1i), true, var_0.ywy, 24250u, 60143u)), -3306i, vec3<u32>(44228u, 1u, 1u), vec3<f32>(-538f, -1184f, -1537f)).yyy)));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-868f - -1063f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(378f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -1956f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-157f, 1213f)))))));
    global1 = arg_2.a;
    var var_1 = vec2<bool>(arg_2.c.x, !any(vec4<bool>(arg_2.c.x, arg_2.c.x, false, true)) & false);
    global1 = vec3<i32>(abs(firstLeadingBit(func_1().x)) | (i32(-1i) * -1i), arg_2.a.x, 0i);
    var var_2 = min(0i, arg_0.a.x);
    return StorageBuffer(vec4<i32>(-46642i, firstLeadingBit(23231i), global0.x, _wgslsmith_mult_i32(~(~u_input.c.x), _wgslsmith_div_i32(-2882i, min(arg_2.a.x, global1.x)))), (arg_2.d | 73231u) | _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(vec2<u32>(arg_1.x, 50223u))), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, arg_2.d), vec2<u32>(1u, arg_1.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-551f, _wgslsmith_f_op_f32(f32(-1f) * -812f), true)) + 1153f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(global1.yy, _wgslsmith_mod_vec2_i32(u_input.c, -(global1.zy << (~vec2<u32>(4294967295u, 37675u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = func_5(Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global0.x, global0.x), func_1()) >> (~vec3<u32>(2456u, 9335u, 67405u) % vec3<u32>(32u))), vec3<u32>(1u, ~(~44955u) >> (_wgslsmith_clamp_u32(39810u, 0u, ~1u) % 32u), 36010u), Struct_1(vec3<i32>(_wgslsmith_div_i32(0i, global0.x), 36919i >> (1u % 32u), ~(~10804i)), true, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~71456u, 80324u));
}

