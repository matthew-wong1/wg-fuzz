struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec2<bool> {
    global0 = select(!vec2<bool>(any(arg_0.a.c.xz) && all(vec2<bool>(false, true)), all(arg_0.a.c)), !select(vec2<bool>(true, false), arg_0.a.c.zx, !arg_1), select(select(select(select(arg_0.a.c.xx, vec2<bool>(true, arg_1), arg_0.a.c.zx), select(arg_0.a.c.yx, arg_0.a.c.yy, arg_1), false), vec2<bool>(any(arg_0.a.c.yz), false), select(!arg_0.a.c.zz, !arg_0.a.c.zz, vec2<bool>(true, false))), vec2<bool>(false, true == (199f < arg_0.b.x)), arg_0.a.c.zx));
    let var_0 = Struct_3(vec3<i32>(abs(-_wgslsmith_div_i32(29957i, 22083i)), -select(firstLeadingBit(-48740i), _wgslsmith_clamp_i32(51357i, -19285i, 1i), true), _wgslsmith_clamp_i32(-1i, -1i, -(i32(-1i) * -6591i))), arg_0.d, Struct_2(-15346i, countOneBits(0u), vec3<bool>(!arg_0.a.c.x, !all(vec4<bool>(true, global0.x, global0.x, global0.x)), select(false, true, arg_0.b.x <= arg_0.b.x))));
    var var_1 = var_0;
    let var_2 = firstTrailingBit(vec4<u32>(0u, _wgslsmith_sub_u32(firstTrailingBit(~arg_0.d.a.x), ~var_0.b.a.x), _wgslsmith_sub_u32(max(var_0.b.a.x, u_input.a), u_input.a), ~1u));
    var_1 = var_0;
    return select(vec2<bool>(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_1, var_0.c.c.x, arg_0.a.c.x, true), false)), true), arg_0.a.c.yx, select(select(vec2<bool>(!var_1.c.c.x, !arg_1), vec2<bool>(global0.x, false), any(select(vec4<bool>(arg_1, true, var_0.c.c.x, true), vec4<bool>(var_1.c.c.x, var_1.c.c.x, true, global0.x), var_1.c.c.x))), vec2<bool>(true, global0.x), arg_0.a.c.xz));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<bool> {
    global0 = select(select(vec2<bool>(any(select(arg_3.a.c.yy, arg_3.a.c.zz, arg_0)), true), func_3(arg_3, !(!arg_3.a.c.x)), all(select(!vec2<bool>(arg_3.a.c.x, true), !vec2<bool>(false, arg_0), all(arg_3.a.c.xx)))), vec2<bool>(arg_3.a.c.x, true), func_3(Struct_4(Struct_2(countOneBits(arg_1), 20072u, vec3<bool>(true, arg_3.a.c.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.x, arg_3.b.x) + vec2<f32>(-1667f, arg_3.b.x)) * arg_3.b), ~(-vec2<i32>(u_input.b, arg_3.c.x)), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.b, 4294967295u), vec2<u32>(4294967295u, u_input.a)))), !global0.x));
    global0 = !arg_3.a.c.yz;
    global0 = !arg_3.a.c.yx;
    let var_0 = Struct_4(Struct_2(firstTrailingBit(arg_1), ~1u, !(!arg_3.a.c)), _wgslsmith_f_op_vec2_f32(-arg_3.b), arg_3.c, arg_3.d);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1 & ((arg_1 << (u_input.a % 32u)) ^ -1i), min(arg_3.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(12731i, arg_1, u_input.b), vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(1i, u_input.b, arg_1))))), _wgslsmith_div_vec2_i32(-min(countOneBits(var_0.c), ~vec2<i32>(0i, arg_3.a.a)), arg_3.c));
    return select(arg_3.a.c, select(!(!(!arg_3.a.c)), !select(arg_3.a.c, arg_3.a.c, false), select(true, any(!vec3<bool>(global0.x, false, false)), all(select(vec4<bool>(var_0.a.c.x, true, arg_0, false), vec4<bool>(false, false, false, false), true)))), select(!(_wgslsmith_dot_vec2_i32(arg_3.c, arg_3.c) < _wgslsmith_mult_i32(-5555i, u_input.b)), true, arg_3.a.c.x));
}

fn func_2() -> bool {
    var var_0 = Struct_2(0i, ~firstLeadingBit(_wgslsmith_div_u32(u_input.a ^ u_input.a, ~8185u)), func_4(any(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true), !vec2<bool>(global0.x, false), func_3(Struct_4(Struct_2(u_input.b, 0u, vec3<bool>(global0.x, true, global0.x)), vec2<f32>(789f, -163f), vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<u32>(0u, 35926u))), true))), _wgslsmith_dot_vec4_i32(vec4<i32>(44814i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -19859i), vec3<i32>(-55368i, -46726i, u_input.b)), 5905i, firstTrailingBit(2147483647i)), max(-vec4<i32>(u_input.b, u_input.b, u_input.b, 16294i), reverseBits(vec4<i32>(u_input.b, 1i, 46557i, 31216i)))), _wgslsmith_add_vec2_u32(vec2<u32>(0u << (u_input.a % 32u), ~1u), ~(~vec2<u32>(u_input.a, 4294967295u))), Struct_4(Struct_2(6155i, ~76208u, vec3<bool>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, -1012f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-768f, -1381f))), ~(vec2<i32>(u_input.b, 0i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), Struct_1(abs(vec2<u32>(4294967295u, u_input.a))))));
    var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -27336i) | _wgslsmith_mult_vec2_i32(vec2<i32>(-71430i, u_input.b), vec2<i32>(2147483647i, -2985i)), vec2<i32>(var_0.a, var_0.a) | vec2<i32>(u_input.b, -64162i)), -16486i), ~(~(~1u)), select(select(vec3<bool>(any(vec3<bool>(global0.x, var_0.c.x, var_0.c.x)), true & var_0.c.x, select(global0.x, global0.x, global0.x)), var_0.c, (var_0.a | u_input.b) != _wgslsmith_clamp_i32(2147483647i, -2147483647i, 1i)), var_0.c, true));
    var var_1 = abs(vec2<i32>(var_0.a, _wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, var_0.a, u_input.b, u_input.b) & vec4<i32>(7390i, 1i, var_0.a, u_input.b)), vec4<i32>(_wgslsmith_mult_i32(var_0.a, var_0.a), 1i, u_input.b, min(-27969i, 0i)))));
    var var_2 = _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u)))), ~(~countOneBits(vec3<u32>(4294967295u, 63573u, u_input.a)) & max(min(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(0u, u_input.a, 2433u)), select(vec3<u32>(66930u, 27323u, u_input.a), vec3<u32>(u_input.a, u_input.a, var_0.b), vec3<bool>(false, var_0.c.x, false)))));
    var_2 = 4294967295u;
    return global0.x;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_1(vec2<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~4294967295u, u_input.a, 60542u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_0.b, 1u, 0u), vec4<u32>(u_input.a, 19991u, 48429u, 0u)))));
    global0 = select(vec2<bool>(_wgslsmith_f_op_f32(trunc(268f)) != _wgslsmith_f_op_f32(-202f + 684f), !(_wgslsmith_f_op_f32(floor(1805f)) == -414f)), !arg_0.c.xx, func_3(Struct_4(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(381f, -137f)), -arg_3.zw, Struct_1(min(arg_2.a, vec2<u32>(var_0.a.x, arg_2.a.x)))), func_3(Struct_4(arg_0, vec2<f32>(-146f, -1956f), arg_3.xx, var_0), all(vec2<bool>(global0.x, arg_0.c.x))).x | func_4(all(vec2<bool>(true, global0.x)), -52655i, ~arg_2.a, Struct_4(Struct_2(0i, 59193u, vec3<bool>(false, arg_0.c.x, global0.x)), vec2<f32>(101f, 145f), vec2<i32>(u_input.b, -2147483647i), Struct_1(var_0.a))).x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1213f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-381f)))) - -399f))));
    var var_2 = arg_2;
    var var_3 = -2147483647i;
    return arg_0.c.zz;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    global0 = vec2<bool>(!any(!select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x))), global0.x);
    global0 = func_5(Struct_2(reverseBits(~(-28952i) >> (u_input.a % 32u)), u_input.a, select(vec3<bool>(true, global0.x, u_input.b >= 48712i), vec3<bool>(false, false == global0.x, true), vec3<bool>(true, func_2(), !global0.x))), ~2822u, Struct_1(max(firstTrailingBit(countOneBits(vec2<u32>(118038u, 3713u))), ~reverseBits(vec2<u32>(4578u, u_input.a)))), -(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, -1i, arg_2.x, u_input.b)), vec4<i32>(arg_0, 32382i, arg_2.x, arg_2.x), vec4<i32>(0i, arg_0, -2147483647i, 18565i)) >> (~vec4<u32>(u_input.a, 4294967295u, u_input.a, 37113u) % vec4<u32>(32u))));
    global0 = vec2<bool>(func_4(!(!global0.x), max(_wgslsmith_mod_i32(u_input.b, 1i), countOneBits(arg_2.x)), vec2<u32>(47698u, u_input.a), Struct_4(Struct_2(arg_0, u_input.a, vec3<bool>(true, true, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1))) * vec2<f32>(arg_1, 1043f)), arg_2.yx, Struct_1(firstTrailingBit(vec2<u32>(u_input.a, 0u))))).x, global0.x);
    global0 = vec2<bool>(global0.x | !any(!vec3<bool>(true, global0.x, global0.x)), global0.x);
    global0 = func_3(Struct_4(Struct_2(arg_2.x, _wgslsmith_mult_u32(abs(26136u), firstLeadingBit(46286u)), func_4(true, 3892i, firstLeadingBit(vec2<u32>(20365u, 4294967295u)), Struct_4(Struct_2(-9161i, 98193u, vec3<bool>(false, global0.x, false)), vec2<f32>(-294f, 1348f), vec2<i32>(23162i, -1i), Struct_1(vec2<u32>(7291u, u_input.a))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(994f, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))), vec2<i32>(reverseBits(arg_2.x), firstTrailingBit(-u_input.b)), Struct_1(abs(vec2<u32>(61540u, 56416u)))), !any(vec4<bool>(global0.x, true, true, !global0.x)));
    return -abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_2.x, 1i, u_input.b), vec4<i32>(1i, -2147483647i, arg_0, arg_0)) >> (~1u % 32u));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: bool) -> Struct_4 {
    global0 = arg_0.c.c.yy;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b.x, 1492f, -1000f), vec3<f32>(-1092f, 488f, arg_1.b.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), -722f, 1867f)));
    global0 = !(!select(!func_4(arg_1.a.c.x, arg_0.c.a, vec2<u32>(49091u, u_input.a), Struct_4(arg_0.c, vec2<f32>(327f, arg_1.b.x), arg_0.a.zx, arg_0.b)).zz, select(func_5(Struct_2(u_input.b, 0u, vec3<bool>(arg_0.c.c.x, true, arg_2)), arg_1.d.a.x, arg_1.d, vec4<i32>(arg_0.c.a, arg_0.c.a, arg_0.a.x, -2147483647i)), arg_1.a.c.zz, u_input.a <= 22528u), arg_1.a.c.x));
    return Struct_4(arg_1.a, vec2<f32>(arg_1.b.x, arg_1.b.x), vec2<i32>(-1i) * -vec2<i32>(abs(0i), select(2147483647i, 0i, arg_2)), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(func_1(-2147483647i, 316f, vec3<i32>(19102i, 0i, 7842i)), 2147483647i, 34976i), countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), Struct_1(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(31422u, 26031u)) & (vec2<u32>(u_input.a, 4646u) ^ vec2<u32>(1242u, u_input.a))), Struct_2(min(-u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), _wgslsmith_mod_u32(max(86953u, 0u), u_input.a), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, global0.x)), false))), Struct_4(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, 6963i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstLeadingBit(u_input.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)) % 32u), select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, false), global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), global0.x), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(166f, _wgslsmith_f_op_f32(min(-167f, 1213f))) - vec2<f32>(_wgslsmith_div_f32(-1000f, -980f), _wgslsmith_f_op_f32(-117f - 143f))), vec2<i32>(1i, u_input.b), Struct_1(vec2<u32>(0u, ~4294967295u))), !global0.x, true);
    global0 = vec2<bool>(var_0.a.c.x, true);
    var var_1 = any(!vec2<bool>(func_5(func_6(Struct_3(vec3<i32>(25167i, var_0.a.a, u_input.b), Struct_1(vec2<u32>(0u, 0u)), Struct_2(u_input.b, u_input.a, var_0.a.c)), Struct_4(var_0.a, var_0.b, var_0.c, Struct_1(var_0.d.a)), true, true).a, 0u, var_0.d, max(vec4<i32>(u_input.b, -2147483647i, 62368i, -30687i), vec4<i32>(var_0.a.a, -35895i, -25757i, 0i))).x, select(false & global0.x, var_0.a.c.x, false || var_0.a.c.x)));
    var_0 = func_6(Struct_3(-countOneBits(~vec3<i32>(var_0.c.x, -2147483647i, u_input.b)), var_0.d, Struct_2(_wgslsmith_add_i32(var_0.a.a, -1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.c.x, u_input.b), vec3<i32>(-1i, 1i, -1i)), 82057u, func_6(Struct_3(vec3<i32>(var_0.a.a, -2147483647i, 1i), var_0.d, var_0.a), func_6(Struct_3(vec3<i32>(-16207i, -23428i, -1i), Struct_1(vec2<u32>(1u, u_input.a)), var_0.a), Struct_4(var_0.a, var_0.b, vec2<i32>(var_0.c.x, var_0.a.a), Struct_1(vec2<u32>(var_0.d.a.x, u_input.a))), global0.x, global0.x), global0.x, false).a.c)), Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.b), vec2<f32>(var_0.b.x, var_0.b.x)))), var_0.c, Struct_1(~vec2<u32>(106229u, 4294967295u) | reverseBits(vec2<u32>(u_input.a, u_input.a)))), any(!func_3(func_6(Struct_3(vec3<i32>(2425i, var_0.a.a, u_input.b), Struct_1(vec2<u32>(u_input.a, var_0.d.a.x)), var_0.a), Struct_4(var_0.a, vec2<f32>(1000f, var_0.b.x), vec2<i32>(-2147483647i, var_0.c.x), Struct_1(var_0.d.a)), false, true), var_0.a.c.x)), true);
    var var_2 = Struct_4(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(Struct_3(vec3<i32>(0i, -1i, -16261i), var_0.d, var_0.a), Struct_4(var_0.a, var_0.b, var_0.c, Struct_1(var_0.d.a)), global0.x, global0.x).b.x) - 310f), 1000f), select(~abs(var_0.c), _wgslsmith_mod_vec2_i32(var_0.c >> (abs(var_0.d.a) % vec2<u32>(32u)), -var_0.c), vec2<bool>(~var_0.a.b < _wgslsmith_mod_u32(1u, 26671u), select(true, global0.x, u_input.b <= 73180i))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(~var_0.a.b, _wgslsmith_div_u32(18663u, var_0.d.a.x)), var_0.a.b)));
    var var_3 = vec4<u32>(9428u >> (~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(18705u, var_2.d.a.x, 4294967295u, var_2.d.a.x), vec4<u32>(5451u, var_2.d.a.x, u_input.a, 4294967295u)), ~vec4<u32>(0u, 48180u, var_0.d.a.x, 0u)) % 32u), _wgslsmith_add_u32(var_2.a.b, var_2.d.a.x), 20403u, 75929u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~19783u), ~func_6(Struct_3(vec3<i32>(2147483647i, -51529i, -2147483647i), Struct_1(var_2.d.a), var_0.a), Struct_4(var_2.a, vec2<f32>(1742f, -258f), var_0.c, var_0.d), true, global0.x).a.b, 1u, func_6(Struct_3(vec3<i32>(u_input.b, -1i, 0i), var_2.d, Struct_2(u_input.b, 56764u, var_2.a.c)), func_6(Struct_3(vec3<i32>(2147483647i, var_2.c.x, u_input.b), Struct_1(vec2<u32>(28614u, 7984u)), Struct_2(var_0.c.x, 97593u, vec3<bool>(var_2.a.c.x, var_2.a.c.x, global0.x))), Struct_4(var_0.a, var_2.b, var_0.c, var_0.d), false, var_2.a.c.x), func_2(), var_2.a.c.x).a.b), -_wgslsmith_div_vec4_i32(~vec4<i32>(11960i, 1i, 41112i, -9261i), vec4<i32>(u_input.b, 0i, var_2.c.x, 2147483647i)) << (vec4<u32>(firstTrailingBit(4294967295u), firstTrailingBit(max(27406u, 4294967295u)), ~0u, 0u >> (var_0.d.a.x % 32u)) % vec4<u32>(32u)), 48487u, ~u_input.b, abs(select(select(vec3<i32>(2147483647i, 28464i, var_2.c.x) >> (var_3.zzy % vec3<u32>(32u)), vec3<i32>(12562i, -11446i, u_input.b), !var_0.a.c), -abs(vec3<i32>(58626i, -25666i, 2147483647i)), !vec3<bool>(global0.x, var_2.a.c.x, var_0.a.c.x))));
}

