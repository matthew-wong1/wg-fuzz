struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-537f, 1609f);

var<private> global1: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(206f * arg_0.x), -617f))) == -551f, max(firstLeadingBit(vec2<i32>(-u_input.b, ~8534i)), vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.b)), !select(vec2<bool>(select(false, false, true), any(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true)), vec3<i32>(1i, -23840i, abs(_wgslsmith_sub_i32(2147483647i, u_input.b)) >> (1u % 32u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f + 1f) - -165f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, 2040f))))));
    let var_2 = vec2<u32>(0u, firstLeadingBit(4294967295u));
    var_0 = Struct_1(arg_0.x, true, vec2<i32>(u_input.b, -1i), !vec2<bool>(true, !(var_0.d.x == var_0.b)), var_0.e);
    let var_3 = Struct_1(-1000f, all(vec3<bool>(select(var_0.d.x, var_0.d.x, true), var_0.d.x, var_0.b)) | !(1u == var_2.x), ~(~var_0.e.zx) & var_0.c, select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.d.x), !var_0.d, 14753i <= var_0.e.x), select(var_0.d, !vec2<bool>(var_0.b, true), !var_0.b)), !vec2<bool>(select(var_0.d.x, true, var_0.b), var_0.b), select(vec2<bool>(4294967295u == var_2.x, false & var_0.d.x), !vec2<bool>(var_0.b, var_0.d.x), true)), -((var_0.e >> (vec3<u32>(var_2.x, var_2.x, var_2.x) % vec3<u32>(32u))) | vec3<i32>(u_input.b, u_input.b, var_0.e.x)) | vec3<i32>(-u_input.a, -_wgslsmith_mult_i32(var_0.e.x, var_0.c.x), ~42562i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-186f, var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -258f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, var_3.a, var_0.a))), vec3<f32>(-123f, 543f, 439f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1439f, 1133f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(929f, -727f, -350f) - vec3<f32>(var_3.a, global0.x, arg_0.x)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * 277f)), arg_2.d.x, arg_1.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.a)), _wgslsmith_f_op_f32(-arg_2.c.a), global0.x == -155f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-967f, arg_2.b)))), 880f);
    let var_0 = select(vec4<bool>(false, select(arg_2.c.d.x, !any(arg_2.c.d), select(all(vec2<bool>(arg_1.b, arg_1.d.x)), -2654i >= arg_1.e.x, true)), all(select(!vec4<bool>(false, arg_2.c.b, arg_2.c.b, true), select(vec4<bool>(arg_2.c.b, arg_2.c.d.x, arg_1.d.x, arg_2.c.d.x), vec4<bool>(false, false, arg_2.c.b, true), arg_1.d.x), arg_0 == arg_0)), !((u_input.a >= arg_2.a.x) == (-2147483647i < arg_1.e.x))), vec4<bool>(all(!select(vec4<bool>(arg_2.c.b, arg_2.c.d.x, arg_1.b, arg_2.c.b), vec4<bool>(arg_2.c.d.x, arg_1.b, arg_1.d.x, arg_2.c.d.x), vec4<bool>(arg_2.c.d.x, arg_1.b, true, false))), arg_1.d.x, false || !(!arg_2.c.b), false), ~(~(-16496i)) == -u_input.a);
    let var_1 = _wgslsmith_dot_vec3_i32(~arg_2.c.e, vec3<i32>(-2147483647i, -_wgslsmith_div_i32(0i, arg_1.c.x), countOneBits(min(~2147483647i, -arg_2.a.x))));
    var var_2 = arg_1.e.x;
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(59621u, 12056u, 29095u), vec3<u32>(37342u, arg_0, 792u)), _wgslsmith_div_u32(20434u, arg_0)) & ~52759u, ~1u), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, 4294967295u)), ~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 5910u) ^ vec2<u32>(1u, arg_0)) >> ((vec2<u32>(10306u, arg_0) & min(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0))) % vec2<u32>(32u)), ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 55083u), vec2<u32>(0u, 22464u)))), _wgslsmith_clamp_u32(abs(34613u), ~_wgslsmith_clamp_u32(abs(arg_0), ~12845u, 16573u), ~4294967295u));
    return _wgslsmith_f_op_f32(sign(arg_1.a));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = arg_1.xx;
    var var_0 = vec2<u32>(~0u, 24263u);
    let var_1 = arg_3;
    global1 = var_0.x;
    global0 = vec2<f32>(arg_3.a, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(~(~4294967295u), var_1, Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(15820i, -2147483647i, arg_2.e.x), arg_3.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), Struct_1(_wgslsmith_f_op_f32(-global0.x), false, ~arg_2.c, arg_3.d, -var_1.e), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, arg_1.x) + arg_1.xz)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(-arg_1.x)), (u_input.a >= u_input.a) | all(select(vec3<bool>(var_1.d.x, arg_3.b, arg_3.d.x), !vec3<bool>(arg_2.b, arg_3.b, false), true))));
}

fn func_1() -> i32 {
    var var_0 = Struct_2(vec3<i32>(u_input.a, reverseBits(u_input.a), 1i), _wgslsmith_f_op_f32(f32(-1f) * -626f), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1337f)), Struct_1(1701f, true, vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false), vec3<i32>(-2147483647i, u_input.b, 24049i)), Struct_1(global0.x, false, vec2<i32>(-2147483647i, u_input.b), vec2<bool>(false, true), vec3<i32>(-1i, u_input.b, -7447i)))))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), _wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(18365i, u_input.a)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-13652i, 56653i), vec2<i32>(2147483647i, 1i)), vec2<i32>(-3550i, u_input.b)), abs(vec2<i32>(u_input.a, u_input.b))), vec2<bool>(true, any(vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<i32>(u_input.a, 57922i, -12986i), vec3<bool>(false, true, true)), select(vec3<i32>(-42526i, u_input.b, 34717i), vec3<i32>(u_input.a, -4877i, u_input.a), true), abs(vec3<i32>(u_input.b, 13805i, 2147483647i))), select(vec3<i32>(57269i, u_input.a, u_input.a), vec3<i32>(-72749i, -2147483647i, -8552i), vec3<bool>(true, false, false)) & vec3<i32>(u_input.b, -27396i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_div_f32(1054f, 2103f), -639f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, -212f, 1681f))))));
    var var_1 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(-(u_input.a | -1i), var_0.a.x, ~u_input.a, -53237i), vec4<i32>(-var_0.c.c.x >> (37580u % 32u), 2147483647i, 0i, _wgslsmith_clamp_i32(4637i, reverseBits(0i), u_input.a)), vec4<i32>(-(-33898i >> (1u % 32u)), -10797i, var_0.c.c.x, 139i));
    let var_2 = Struct_2(select(-firstLeadingBit(var_0.c.e) ^ ~(~vec3<i32>(u_input.b, -2147483647i, -2147483647i)), vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(var_1.xxx, vec3<i32>(u_input.a, var_0.c.c.x, var_0.c.c.x)), ~_wgslsmith_dot_vec2_i32(var_1.xw, var_1.zy)), vec3<bool>(!var_0.c.d.x, !var_0.c.d.x, any(select(vec3<bool>(false, var_0.c.d.x, false), vec3<bool>(false, var_0.c.b, var_0.c.d.x), var_0.c.d.x)))), -1029f, var_0.c, var_0.d);
    global1 = ~_wgslsmith_div_u32(countOneBits(0u), ~abs(73586u));
    var var_3 = var_2.c;
    return _wgslsmith_dot_vec3_i32(-vec3<i32>((var_3.c.x | var_1.x) >> (17111u % 32u), 0i, firstTrailingBit(var_0.a.x) | 72256i), vec3<i32>(var_1.x, -1i, _wgslsmith_mult_i32(min(abs(var_2.a.x), -u_input.b), -(~u_input.a))));
}

fn func_5(arg_0: i32) -> Struct_2 {
    let var_0 = abs(firstTrailingBit(reverseBits(max(~25067u, abs(25338u)))));
    var var_1 = Struct_2(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, arg_0, -9198i) & vec3<i32>(arg_0, -1i, 0i), ~vec3<i32>(-1i, 1i, arg_0), reverseBits(vec3<i32>(1i, 41378i, u_input.b)))), global0.x, Struct_1(_wgslsmith_f_op_f32(func_4(~firstLeadingBit(var_0), Struct_1(-250f, select(true, true, true), max(vec2<i32>(arg_0, -23424i), vec2<i32>(u_input.b, arg_0)), vec2<bool>(true, true), ~vec3<i32>(-35236i, arg_0, 2271i)), Struct_2(reverseBits(vec3<i32>(-1i, -25540i, -13478i)), _wgslsmith_f_op_f32(-2667f + 1690f), Struct_1(global0.x, false, vec2<i32>(arg_0, u_input.b), vec2<bool>(false, true), vec3<i32>(arg_0, 1i, u_input.b)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1324f, global0.x), vec3<f32>(global0.x, global0.x, 155f))))), true, ~(vec2<i32>(2147483647i, u_input.b) >> (abs(vec2<u32>(57407u, 86371u)) % vec2<u32>(32u))), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), select(true, false, true)), vec2<bool>(true, true), true), vec3<i32>(0i, 6001i, -20160i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(3180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1359f - -1602f))))));
    let var_2 = u_input.b;
    var var_3 = var_1.c.d.x;
    var_1 = Struct_2(abs(~select(-var_1.a, vec3<i32>(var_2, arg_0, arg_0), true)), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(600f + var_1.c.a)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, 1404f), vec2<f32>(var_1.d.x, -1000f)))).x, var_1.c.d.x, var_1.c.e.yx, select(vec2<bool>(true, var_1.c.d.x | var_1.c.d.x), vec2<bool>(var_1.c.d.x, var_2 > -2147483647i), true), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.c.e.xy, ~var_1.c.c), _wgslsmith_mod_i32(-arg_0, i32(-1i) * -2147483647i), ~_wgslsmith_sub_i32(u_input.a, var_2))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(-1694f, var_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.d))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), -754f, _wgslsmith_f_op_f32(select(-547f, var_1.b, var_1.c.d.x))), var_1.c.b || false)));
    return Struct_2(vec3<i32>(~_wgslsmith_mod_i32(-2147483647i, i32(-1i) * -1i), ~arg_0, select(_wgslsmith_dot_vec3_i32(vec3<i32>(9205i, u_input.a, var_2), var_1.c.e) | (1i | arg_0), func_1(), all(!vec4<bool>(true, var_1.c.b, var_1.c.b, var_1.c.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(func_4(73925u, Struct_1(global0.x, true, var_1.c.e.xy, vec2<bool>(false, true), vec3<i32>(0i, -60485i, 1i)), Struct_2(var_1.c.e, var_1.d.x, var_1.c, var_1.d)))))), Struct_1(global0.x, var_1.c.d.x, min(var_1.a.yx, var_1.c.c), vec2<bool>(all(!vec3<bool>(false, var_1.c.b, var_1.c.b)), var_1.c.d.x), _wgslsmith_div_vec3_i32(~abs(vec3<i32>(var_2, 5277i, -2147483647i)), var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global1 = 49616u;
    var var_0 = min(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 1u), 1u), abs(1u));
    let var_1 = arg_0.c;
    var var_2 = 2655u;
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_f32(func_4(0u, func_5(_wgslsmith_mod_i32(firstLeadingBit(1i), arg_1.e.x)).c, Struct_2(-(~var_1.e), -695f, arg_1, _wgslsmith_f_op_vec3_f32(-func_5(arg_0.a.x).d)))), any(!(!select(vec3<bool>(true, arg_1.d.x, arg_0.c.b), vec3<bool>(true, false, false), var_3))), countOneBits(~(~var_1.c)), func_5(arg_0.a.x).c.d, arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1071f)), vec3<f32>(global0.x, global0.x, -188f), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))))), vec3<f32>(_wgslsmith_f_op_f32(-1072f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) + _wgslsmith_f_op_f32(f32(-1f) * -501f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x)));
    var var_1 = true;
    global1 = _wgslsmith_mult_u32(4874u, 60098u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(global0.x * var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))));
    let var_3 = reverseBits(_wgslsmith_mult_u32(1u, ~0u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2)));
    var var_4 = func_6(func_5(_wgslsmith_mod_i32(31376i, countOneBits(func_1()))), Struct_1(_wgslsmith_f_op_f32(abs(var_0.x)), !func_5(u_input.b).c.b, vec2<i32>(u_input.a, _wgslsmith_mod_i32(-14542i, -1i)), select(vec2<bool>(any(vec4<bool>(false, true, false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), -(~reverseBits(vec3<i32>(-9620i, u_input.b, 41419i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1085f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), var_3, 194f);
}

