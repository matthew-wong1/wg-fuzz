struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec2<bool> {
    global0 = Struct_2(!(!global0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-377f, -171f))))), abs(global0.d), firstLeadingBit(global0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(min(global0.e.x, -1000f))))));
    return select(vec2<bool>(all(select(select(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, true, false, false), vec4<bool>(global0.a.x, global0.a.x, true, false)), select(vec4<bool>(true, false, true, global0.a.x), vec4<bool>(global0.a.x, false, true, true), vec4<bool>(false, global0.a.x, global0.a.x, true)), select(vec4<bool>(true, global0.a.x, false, global0.a.x), vec4<bool>(true, global0.a.x, false, global0.a.x), vec4<bool>(true, false, global0.a.x, true)))), global0.a.x & global0.a.x), !select(vec2<bool>(all(vec2<bool>(global0.a.x, global0.a.x)), !global0.a.x), !(!global0.a), !select(global0.a, global0.a, global0.a)), any(vec2<bool>(select(true, global0.a.x, global0.a.x), 1u >= _wgslsmith_clamp_u32(arg_1, 35388u, 1u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_4(Struct_2(select(global0.a, !select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(!global0.a.x, any(vec4<bool>(false, global0.a.x, true, false)))), _wgslsmith_f_op_f32(-arg_3.x), u_input.a, max(~(-2717i), global0.c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_3.x) - arg_3.ww), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))))))), Struct_2(func_3(arg_3, firstLeadingBit(~arg_2)), 296f, global0.c, reverseBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, arg_0.x), firstLeadingBit(0i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-311f, arg_3.x))), _wgslsmith_f_op_f32(abs(-865f)))), (max(u_input.b, ~(-2147483647i)) ^ ~_wgslsmith_div_i32(u_input.b, 1i)) > _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstLeadingBit(arg_0.x), arg_0.x), min(_wgslsmith_add_i32(u_input.c, u_input.a), select(-1i, arg_0.x, global0.a.x)), _wgslsmith_mult_i32(countOneBits(global0.c), arg_0.x)), vec3<bool>(false, all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), reverseBits(-1i) <= (i32(-1i) * -global0.c)));
    var var_1 = vec3<bool>(all(var_0.b.a), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(407f, -231f), _wgslsmith_div_f32(var_0.b.e.x, var_0.b.e.x), _wgslsmith_f_op_f32(876f - -555f), -1229f)), countOneBits(13365u)).x, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.x, arg_2, 0u), abs(arg_1.x)) > abs(_wgslsmith_div_u32(arg_2, _wgslsmith_mult_u32(1u, arg_1.x))));
    var_0 = Struct_4(var_0.b, var_0.b, var_1.x, !vec3<bool>(!var_0.c, select(all(var_0.d), global0.a.x, true), global0.a.x));
    var var_2 = true;
    global0 = var_0.b;
    return -583f;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_2(!vec2<bool>(true, true || all(vec2<bool>(global0.a.x, false))), global0.e.x, global0.c, 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(936f, -870f) + global0.e)));
    var_0 = Struct_2(!vec2<bool>(global0.a.x, true), arg_0.x, 58227i, firstLeadingBit(var_0.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -198f)));
    return Struct_2(select(func_3(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * -966f), _wgslsmith_f_op_f32(-global0.b), -1000f, _wgslsmith_f_op_f32(ceil(-2586f))), 1318u), var_0.a, vec2<bool>(_wgslsmith_f_op_f32(var_0.b + arg_0.x) > arg_0.x, !global0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-143f * -356f))), firstTrailingBit(27033i), max(abs(-countOneBits(var_0.d)), 1i), _wgslsmith_f_op_vec2_f32(exp2(global0.e)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global0 = func_4(vec4<f32>(global0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b + -1088f), 597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.e.x, global0.b)) * _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) * -1096f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(692f)) - global0.b) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec3<i32>(global0.c, u_input.a, global0.d), vec3<u32>(1u, 4294967295u, 70150u), 83242u, vec4<f32>(-1226f, 675f, -1902f, -841f))))))), 0u);
    var var_0 = 0u;
    let var_1 = Struct_1(vec2<bool>(!(!(false & global0.a.x)), true & func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.e.x, -991f, 805f, -1000f))), _wgslsmith_mod_u32(1u, 5407u)).x), select(_wgslsmith_sub_i32(-2147483647i, reverseBits(global0.d)), _wgslsmith_mod_i32(-2379i, 43415i), !arg_0), _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(35175u, 9154u, 28866u)), ~8912u, select(1u, 1u, false)), vec3<u32>(_wgslsmith_mult_u32(~10413u, 0u), 85306u, 93772u >> (~4294967295u % 32u))), !(!all(!vec4<bool>(false, global0.a.x, true, arg_0))));
    let var_2 = Struct_4(Struct_2(select(select(vec2<bool>(false, arg_0), !var_1.a, select(var_1.a, vec2<bool>(arg_0, var_1.a.x), var_1.a)), !global0.a, !global0.a.x), _wgslsmith_div_f32(-1000f, global0.e.x), _wgslsmith_clamp_i32(-global0.d, -abs(u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(20994i, -1i, var_1.b), abs(vec3<i32>(49919i, var_1.b, -2147483647i)))), _wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_clamp_i32(global0.c, _wgslsmith_clamp_i32(-1782i, 1i, 16750i), _wgslsmith_sub_i32(global0.d, global0.d))), _wgslsmith_f_op_vec2_f32(-global0.e)), Struct_2(!select(func_3(vec4<f32>(global0.e.x, global0.b, global0.e.x, -197f), 4294967295u), vec2<bool>(true, true), vec2<bool>(global0.a.x, false)), global0.e.x, -5555i, (36359i << (var_1.c % 32u)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 0u), vec2<u32>(4294967295u, 4294967295u)) % 32u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(global0.e.x + global0.e.x))))), select(true, any(vec4<bool>(var_1.a.x, any(global0.a), true, all(vec2<bool>(true, true)))), select(global0.a.x, true, global0.b <= 171f)), vec3<bool>(~_wgslsmith_mult_u32(17448u, 16482u) <= _wgslsmith_clamp_u32(firstLeadingBit(1u), var_1.c, 2710u), false, !(!arg_0)));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = Struct_5(Struct_3(!select(vec3<bool>(false, false, false), vec3<bool>(arg_2, false, global0.a.x), vec3<bool>(arg_1.a.a.x, arg_0.d, true)), _wgslsmith_f_op_vec2_f32(-global0.e)), !select(!(!vec4<bool>(arg_1.c, arg_1.c, false, false)), select(!vec4<bool>(arg_1.c, arg_1.c, true, arg_1.b.a.x), select(vec4<bool>(false, true, global0.a.x, false), vec4<bool>(true, arg_0.d, true, false), vec4<bool>(true, arg_0.d, true, arg_2)), 973u >= arg_0.c), select(all(arg_0.a), global0.a.x, any(vec4<bool>(true, true, true, arg_0.d)))), vec2<u32>(~(~87576u) >> (abs(_wgslsmith_clamp_u32(1u, 1614u, arg_0.c)) % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(~arg_0.c, ~1u), ~40516u)), -arg_1.b.d);
    var var_1 = arg_1;
    let var_2 = var_1.a;
    var var_3 = arg_1.a;
    var var_4 = (true & !all(vec2<bool>(var_3.a.x, true))) & func_3(vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(266f - -1923f), _wgslsmith_f_op_f32(1148f - -503f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_2.b, 1462f))))), reverseBits(arg_0.c)).x;
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(296f, 369f, 389f, 713f) + vec4<f32>(var_2.e.x, -926f, -714f, var_1.b.b)))), arg_0.c).b + arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.a, global0.b, ~_wgslsmith_div_i32(select(79444i, 0i, all(vec4<bool>(false, false, global0.a.x, global0.a.x))), global0.c), -2147483647i, _wgslsmith_f_op_vec2_f32(global0.e - global0.e));
    let var_1 = ~(~(~abs(~4294967295u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + 2231f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(Struct_1(select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), true), global0.d, ~var_1, var_0.a.x), func_1(var_0.a.x), true, -22553i)))), var_0.e.x);
    let var_3 = func_1(true);
    let var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(42983u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 2975u), ~vec3<u32>(47964u, 0u, var_1)) % 32u)), var_0.e.x, select(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0.c, 2147483647i, u_input.c), vec4<i32>(-9939i, var_0.d, -14047i, -27550i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, var_1, var_1), vec4<u32>(var_1, var_1, var_1, 1u) << (vec4<u32>(var_1, var_1, var_1, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-65527i, -1i, 8215i, -23702i), vec4<i32>(38142i, -2102i, var_0.d, u_input.b), vec4<bool>(var_0.a.x, global0.a.x, global0.a.x, var_3.c)), ~vec4<i32>(var_0.c, -52057i, u_input.a, global0.c)), max(vec4<i32>(global0.c, global0.c, var_3.b.c, 13591i), ~vec4<i32>(var_3.b.c, -1i, var_3.a.c, global0.d)), true), !var_0.a.x), var_3.a.d);
}

