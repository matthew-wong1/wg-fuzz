struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = -447f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), u_input.b >= 1172u), vec2<bool>(false, any(vec4<bool>(false, false, false, true)))), true), !(firstLeadingBit(u_input.c) <= ~u_input.c) && (all(vec4<bool>(true, true, true, true)) || any(vec2<bool>(true, true))), select(select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, u_input.c <= u_input.c), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, true))));
    let var_1 = false;
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 6838u, 0u, 0u), vec4<u32>(15723u, 0u, u_input.b, u_input.c)), vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), ~u_input.c, u_input.c, countOneBits(u_input.b))), _wgslsmith_sub_u32(reverseBits(u_input.c), ~(~u_input.b)), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 3069u, u_input.b), vec3<u32>(5386u, 41972u, u_input.b)), vec3<u32>(u_input.b, u_input.b, u_input.b) ^ _wgslsmith_add_vec3_u32(vec3<u32>(33113u, 25526u, u_input.c), vec3<u32>(1u, 24765u, u_input.b))), 0u);
    let var_3 = !vec4<bool>(true, any(!(!vec3<bool>(var_1, var_1, false))), ~u_input.a.x <= 1i, var_0.a.x);
    let var_4 = !(!(var_0.c.x & true));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(761f * _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(114f))))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f + -1180f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-406f, _wgslsmith_f_op_f32(max(-553f, -1027f)))) * 754f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(237f - 701f), _wgslsmith_f_op_f32(select(662f, -222f, true))), -509f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1789f, _wgslsmith_f_op_f32(f32(-1f) * -213f))))));
    var var_1 = arg_1.a.x;
    var var_2 = ~(~vec2<u32>(0u, 0u));
    var_2 = max(select(vec2<u32>(~(~0u), ~(~arg_0.c.x)), arg_0.c, any(!select(vec4<bool>(true, arg_0.e, false, arg_1.a.x), vec4<bool>(arg_0.e, true, true, arg_1.c.x), arg_1.a.x))), vec2<u32>(firstLeadingBit(arg_0.c.x), ~19597u));
    let var_3 = arg_0.a.a;
    return Struct_3(arg_0.a, arg_0.b, arg_0.c, -arg_0.d, var_3.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    let var_0 = !vec2<bool>(select(arg_3.e, func_2(Struct_3(arg_3.a, arg_0.a.a, vec2<u32>(2702u, 10411u), u_input.a.yz, arg_2.x), Struct_1(arg_3.b.c.xz, arg_3.b.a.x, arg_3.a.a.c)).e & arg_3.a.a.a.x, func_2(arg_3, Struct_1(arg_0.a.a.a, arg_0.b.c.x, vec3<bool>(false, arg_1, arg_1))).a.a.c.x && all(arg_2)), arg_2.x);
    var var_1 = 44463u;
    let var_2 = Struct_4(countOneBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(10082u, 21189u, 14783u)), vec3<u32>(arg_3.c.x, arg_0.c.x, 0u), select(vec3<u32>(arg_3.c.x, arg_3.c.x, arg_3.c.x), vec3<u32>(1u, 0u, 1u) << (vec3<u32>(18230u, 62193u, arg_3.c.x) % vec3<u32>(32u)), !arg_0.a.a.c))), vec4<u32>(min(countOneBits(u_input.b ^ u_input.c), countOneBits(~arg_3.c.x)), min(abs(_wgslsmith_add_u32(1u, arg_0.c.x)), 1u), 4294967295u, ~(select(43375u, arg_3.c.x, arg_3.a.a.c.x) >> (1u % 32u))), !(!func_2(arg_0, Struct_1(vec2<bool>(true, var_0.x), var_0.x, arg_3.a.a.c)).a.a.a), vec2<i32>(arg_3.d.x, _wgslsmith_mod_i32(0i, -abs(-30669i))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f + -225f)))));
    var var_3 = func_2(func_2(Struct_3(Struct_2(arg_3.b), Struct_1(select(var_2.c, arg_3.b.a, arg_0.a.a.a), arg_2.x && false, func_2(Struct_3(arg_3.a, Struct_1(vec2<bool>(arg_2.x, arg_2.x), true, vec3<bool>(arg_1, arg_2.x, false)), arg_0.c, var_2.d, arg_2.x), arg_0.a.a).a.a.c), arg_3.c, firstTrailingBit(vec2<i32>(u_input.a.x, arg_3.d.x)), !(arg_3.a.a.c.x || arg_2.x)), Struct_1(vec2<bool>(arg_0.a.a.c.x, true), true == all(arg_3.a.a.c), arg_3.b.c)), func_2(Struct_3(func_2(Struct_3(Struct_2(arg_3.b), arg_0.a.a, arg_3.c, arg_0.d, false), Struct_1(var_2.c, arg_1, vec3<bool>(arg_2.x, arg_1, arg_3.b.a.x))).a, arg_3.a.a, max(vec2<u32>(arg_3.c.x, arg_3.c.x), ~var_2.b.yw), arg_0.d, true), arg_3.a.a).b).a;
    return !(!select(true, !(!arg_0.a.a.b), !(var_0.x && true)));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -596f);
    global1 = -498f;
    global0 = false;
    let var_0 = u_input.a.x;
    var var_1 = u_input.b;
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(-1399f, false, vec4<bool>(false, arg_1.a.x, func_4(func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(arg_1.a.x, true), false, vec3<bool>(arg_1.a.x, arg_1.c.x, arg_1.a.x))), arg_1, vec2<u32>(arg_0, u_input.b), vec2<i32>(u_input.a.x, -1i), false), arg_1), any(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.b)), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.a.x, true), func_2(Struct_3(Struct_2(arg_1), arg_1, vec2<u32>(24157u, arg_0), u_input.a.zy, true), arg_1)), (arg_2 ^ 4294967295u) > 32435u))), 249f);
    var var_0 = !(!vec3<bool>(arg_0 >= _wgslsmith_dot_vec4_u32(vec4<u32>(67412u, 15169u, 1u, arg_0), vec4<u32>(12346u, 16756u, 1u, u_input.c)), arg_1.c.x, true));
    let var_1 = u_input.a.x;
    var_0 = !func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), var_0.x, arg_1.c)), Struct_1(arg_1.a, var_0.x, vec3<bool>(false, var_0.x, var_0.x)), vec2<u32>(arg_0 ^ 0u, u_input.b), select(-u_input.a.xz, countOneBits(vec2<i32>(-9775i, -20262i)), !var_0.zx), true), Struct_1(vec2<bool>(!arg_1.c.x, var_0.x), true == var_0.x, func_2(Struct_3(Struct_2(arg_1), Struct_1(arg_1.a, arg_1.c.x, vec3<bool>(arg_1.b, true, false)), vec2<u32>(arg_2, 4294967295u), u_input.a.xx, arg_1.c.x), arg_1).a.a.c)).b.c;
    var var_2 = arg_1;
    return !vec3<bool>(var_0.x, arg_1.c.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = Struct_1(vec2<bool>(true, true), true, select(select(func_1(4294967295u, Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, false, true)), u_input.b), vec3<bool>(true, true, true), func_4(func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, true))), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, false)), vec2<u32>(u_input.c, 67203u), vec2<i32>(u_input.a.x, 0i), false), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, false, true))), u_input.a.x > u_input.a.x, vec4<bool>(true, true, true, true), func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, true, false))), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false)), vec2<u32>(u_input.c, u_input.b), u_input.a.yy, true), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, false))))), vec3<bool>(true, true, false), !(!func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true))), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, false)), vec2<u32>(1u, 1u), u_input.a.zx, true), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, true, false))).a.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1284f, 536f, -867f, -386f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, 448f, -1000f, 1046f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, 1797f, 1208f, -286f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1914f, 879f, -1535f, -862f) * vec4<f32>(-124f, -494f, 367f, -837f))))), !vec4<bool>(any(var_0.a), var_0.b, true, !var_0.c.x))), 18797u, -2147483647i, 0u);
}

