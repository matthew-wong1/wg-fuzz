struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.yy, vec2<f32>(495f, 414f), vec2<bool>(false, false)))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -403f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1234f, var_0.x, -1385f) * vec3<f32>(var_0.x, 258f, 987f))))));
    let var_1 = Struct_2(33513i, Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -10166i, -868i), vec3<i32>(u_input.a, 0i, u_input.a)) & 13476i, _wgslsmith_mult_i32(u_input.a, i32(-1i) * -34616i))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    return var_1.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = ~1u;
    let var_1 = Struct_4(func_3(vec3<bool>(true, false, true)) != arg_3.a, 1u);
    let var_2 = vec3<f32>(global0.x, -1393f, global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(select(var_2, _wgslsmith_f_op_vec3_f32(min(var_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2, vec3<f32>(var_2.x, global0.x, 675f)))))), var_1.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), -876f)) <= _wgslsmith_f_op_f32(floor(-1447f));
    return ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(0u), _wgslsmith_add_u32(var_1.b, var_1.b)), firstTrailingBit(select(vec2<u32>(49031u, var_1.b), vec2<u32>(var_1.b, var_1.b), vec2<bool>(false, false))), countOneBits(vec2<u32>(var_1.b, 67827u) | vec2<u32>(var_1.b, 3415u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(-521f));
    let var_1 = Struct_4(true, reverseBits(0u));
    var var_2 = arg_2;
    let var_3 = vec3<f32>(1f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -403f)));
    return Struct_2(-_wgslsmith_clamp_i32(-u_input.a, ~1i, min(u_input.a, ~u_input.a)), Struct_1(-_wgslsmith_add_i32(u_input.a, u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_3 {
    global0 = vec3<f32>(-153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_div_f32(global0.x, -1508f)))), _wgslsmith_f_op_f32(f32(-1f) * -230f));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1272f, arg_1.a, -179f) - vec3<f32>(global0.x, 1797f, 290f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_1.a, global0.x) * vec3<f32>(-477f, arg_1.a, arg_1.a))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, 855f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -315f, 1142f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 166f, 1000f) * vec3<f32>(global0.x, 988f, arg_1.a)))), select(select(vec3<bool>(arg_2.x, true, true), vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(false, true, arg_2.x)), vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, false, arg_2.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a + arg_1.a)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, -780f, global0.x), vec3<f32>(arg_1.a, 1691f, -499f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 931f, -397f)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, global0.x, 386f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(arg_1.a)), -906f))), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(false, arg_2.x, false)), vec3<bool>(arg_2.x, false, true), arg_2.x))));
    let var_0 = Struct_4(!select(true, false, true), func_2(firstLeadingBit(~(vec4<i32>(-7523i, arg_0.a, arg_0.a, 22625i) >> (vec4<u32>(1u, 1u, 5546u, 1u) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(21568i, -2147483647i, u_input.a), vec3<i32>(9612i, 1i, arg_0.b.a)) & countOneBits(vec3<i32>(arg_0.a, arg_0.a, 15205i))), u_input.a, Struct_1(2147483647i)).x);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, _wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_f_op_f32(-811f - 1754f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1975f, global0.x, arg_1.a) - vec3<f32>(arg_1.a, arg_1.a, global0.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(633f, arg_1.a, 748f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 758f, -543f) + vec3<f32>(363f, -1601f, 2656f)), true)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-974f, arg_1.a, global0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, global0.x, 409f) * vec3<f32>(arg_1.a, -931f, global0.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 751f)), vec3<f32>(arg_1.a, arg_1.a, global0.x))))))), ~firstLeadingBit(var_0.b | 81268u) > ~_wgslsmith_div_u32(14601u, var_0.b)));
    return Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1792f)))));
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1735f))) + 1069f) + _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(830f - arg_1.a), arg_1.a);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2244f, _wgslsmith_f_op_f32(select(2552f, arg_1.a, false)), -1342f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(442f, arg_1.a)), _wgslsmith_f_op_f32(1312f + arg_1.a), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, -1607f, arg_1.a), vec3<f32>(-765f, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, -590f, 1542f), vec3<f32>(arg_1.a, -1100f, global0.x)))), vec3<f32>(arg_1.a, -186f, _wgslsmith_f_op_f32(min(380f, -761f))))), true));
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1.a), arg_1.a)));
    var var_0 = func_4(select(vec2<u32>(1u, 1u), vec2<u32>(func_2(vec4<i32>(25771i, u_input.a, arg_0, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a), 0i, Struct_1(arg_0)).x, max(0u, 41965u)), vec2<bool>(true, true)) >> (vec2<u32>(1u, _wgslsmith_div_u32(1u, 2448u)) % vec2<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(func_5(Struct_2(-1i, Struct_1(arg_0)), Struct_3(-343f), vec2<bool>(true, true)).a, _wgslsmith_f_op_f32(select(arg_1.a, 569f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1925f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -279f, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1427f, global0.x, -597f), vec3<f32>(-691f, -343f, -1623f)))))), -1766f, func_5(func_4(vec2<u32>(1u, 1u), vec3<f32>(global0.x, -736f, global0.x), _wgslsmith_f_op_f32(floor(-520f)), arg_1), arg_1, select(vec2<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true))), vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(false, false))))).b;
    let var_1 = true;
    return Struct_2(u_input.a, func_4(~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(19815u, 0u), vec2<u32>(11462u, 14149u)), ~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(14093u, 0u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, arg_1.a, global0.x))))), arg_1.a, Struct_3(global0.x)).b);
}

fn func_7(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !(_wgslsmith_f_op_f32(step(-816f, _wgslsmith_f_op_f32(-1896f * _wgslsmith_div_f32(791f, -532f)))) != _wgslsmith_f_op_f32(-global0.x));
    let var_1 = ~_wgslsmith_div_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(arg_0, 1u, arg_0))), firstLeadingBit(firstTrailingBit(~vec3<u32>(5207u, 0u, 0u))));
    let var_2 = ~arg_1.a;
    let var_3 = var_1.x;
    var var_4 = Struct_4(var_0, ~4294967295u | ~(~(~var_1.x)));
    return Struct_2(-6820i, func_4(vec2<u32>(~64082u, countOneBits(arg_0 ^ 4294967295u)), vec3<f32>(-152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(964f)))), Struct_3(_wgslsmith_f_op_f32(-1868f + _wgslsmith_f_op_f32(-global0.x)))).b);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = func_7(1u ^ ~(~arg_1), func_6(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(-48894i, arg_0.x, arg_0.x), 1i), func_5(func_4(func_2(vec4<i32>(-58817i, -1i, arg_0.x, arg_0.x), vec3<i32>(-30622i, arg_0.x, arg_0.x), u_input.a, Struct_1(-2147483647i)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, global0.x, -2371f)), _wgslsmith_f_op_f32(select(-230f, -173f, true)), Struct_3(-962f)), Struct_3(global0.x), vec2<bool>(any(vec3<bool>(false, false, false)), true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-629f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_div_f32(1097f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + global0.x), _wgslsmith_f_op_f32(min(-409f, _wgslsmith_f_op_f32(-global0.x)))))));
    var var_2 = !(!(!(var_1 != 1000f)));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(624f, -502f, global0.x) + vec3<f32>(var_1, -1571f, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), global0.x, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, var_1, 949f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(495f, 101f, var_1) * vec3<f32>(global0.x, 791f, -995f)))))));
    var_2 = !any(vec4<bool>(!(arg_1 <= 850u), select(false, false, false) | true, !all(vec2<bool>(false, true)), false));
    return Struct_1(abs(0i));
}

fn func_8(arg_0: Struct_1) -> bool {
    var var_0 = Struct_4(select(~(~0u), 1u, any(vec3<bool>(true, true, true))) == 4294967295u, ~61843u);
    return false | (arg_0.a != func_7(_wgslsmith_add_u32(4294967295u, var_0.b) & ~223u, func_6(60196i, func_5(Struct_2(u_input.a, arg_0), Struct_3(global0.x), vec2<bool>(true, var_0.a)))).b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2528f, 606f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, var_0, -1296f)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)))))));
    var var_1 = vec4<bool>(func_8(func_1(-vec2<i32>(u_input.a, 2147483647i), max(1u, 1u))), !any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(all(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, false)), true)), all(vec4<bool>(all(vec3<bool>(true, true, true)), false, false, true)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 685f) - _wgslsmith_f_op_f32(global0.x - global0.x))))), 1000f, -399f);
    var var_3 = _wgslsmith_div_vec3_u32(~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 52033u, 9666u), !var_1.x) ^ vec3<u32>(max(4294967295u, ~4294967295u), 1u, ~16680u), reverseBits(vec3<u32>(abs(1u), _wgslsmith_mod_u32(~70593u, ~0u), ~1u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), var_2.x, _wgslsmith_div_f32(-1866f, _wgslsmith_f_op_f32(-124f + global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(var_3.x) >> (countOneBits(1u) % 32u), func_2(-vec4<i32>(18158i, 2147483647i, 48227i, u_input.a) | (vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, 10497i, u_input.a)), countOneBits(-vec3<i32>(u_input.a, u_input.a, -2147483647i)), (u_input.a & u_input.a) | u_input.a, Struct_1(1i)).x), -15696i, vec3<f32>(920f, var_2.x, 1000f));
}

