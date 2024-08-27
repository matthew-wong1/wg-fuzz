struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-559f, -811f, -956f, -1548f, 377f, -1131f, 1161f, 1537f, 446f, 1000f, -911f, 284f, -1000f, -1000f, 123f, 1121f, -287f, -380f, 1599f, 2117f, 1185f, 2261f, 999f, -2064f, 124f, -573f, -2134f, 1095f, -325f, 2222f);

var<private> global1: Struct_4;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: u32) -> bool {
    let var_0 = Struct_3(Struct_2(arg_1.yx), abs(~reverseBits(global1.d.x)) ^ -global1.d.x, Struct_2(global1.b), vec2<bool>((arg_3 >> (u_input.a % 32u)) > _wgslsmith_div_u32(arg_3, arg_3 << (7728u % 32u)), true));
    let var_1 = !select(!vec3<bool>(!global1.b.x, 29135i <= global1.d.x, var_0.c.a.x), !select(vec3<bool>(true, true, false), vec3<bool>(var_0.c.a.x, true, global1.b.x), vec3<bool>(var_0.d.x, arg_1.x, false)), arg_1.yxw);
    let var_2 = Struct_1(~_wgslsmith_clamp_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -19334i), vec2<i32>(var_0.b, 1i)), global1.d.x << (arg_0 % 32u)), global1.d.x ^ -var_0.b, var_0.b), select(-(vec4<i32>(global1.d.x, 18078i, var_0.b, var_0.b) | vec4<i32>(var_0.b, -1i, -17811i, 0i)), -max(vec4<i32>(global1.d.x, -1458i, var_0.b, 0i), vec4<i32>(var_0.b, 2147483647i, -14028i, -2147483647i)), vec4<bool>(global1.d.x > var_0.b, var_0.d.x, 50283i > global1.d.x, global1.b.x)) | vec4<i32>(var_0.b, i32(-1i) * -var_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.d.x, 45996i, var_0.b), vec3<i32>(-1i, var_0.b, 13194i)), min(vec3<i32>(11337i, -2147483647i, -12087i), vec3<i32>(global1.d.x, -9306i, var_0.b))), 1i), -firstLeadingBit(i32(-1i) * -17558i), _wgslsmith_clamp_vec3_u32(vec3<u32>(~2895u, 29532u, ~arg_3 >> (firstLeadingBit(u_input.a) % 32u)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(77778u, arg_3, arg_3) << (vec3<u32>(4294967295u, u_input.a, 616u) % vec3<u32>(32u)))), select(countOneBits(vec3<u32>(0u, 4294967295u, 45781u)), ~vec3<u32>(29887u, 4294967295u, 1u), true) >> (reverseBits(~vec3<u32>(u_input.a, 29283u, u_input.a)) % vec3<u32>(32u))));
    global1 = Struct_4(-300f, var_1.zx, global1.c, -var_2.b.xw);
    var var_3 = var_0.a;
    return var_0.c.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = i32(-1i) * -1i;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-global1.c), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2064f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f + global1.a) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-596f)) * 125f)), vec2<i32>(-(~32601i & (var_0 | 22200i)), arg_1.x));
    let var_2 = Struct_3(Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, arg_0.x)), global1.b, max(u_input.a, u_input.a) >= ~0u)), global1.d.x, Struct_2(arg_0), select(var_1.b, vec2<bool>((-1436f > global0[_wgslsmith_index_u32(20714u, 30u)]) & (false | arg_0.x), 2147483647i == _wgslsmith_dot_vec4_i32(arg_1, arg_2)), !(!global1.b)));
    global0 = array<f32, 30>();
    let var_3 = var_2;
    return min(firstTrailingBit(~1u), u_input.a);
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<bool> {
    var var_0 = func_4(select(select(vec2<bool>(true, true), global1.b, !(!global1.b)), global1.b, !func_3(0u, vec4<bool>(false, global1.b.x, global1.b.x, true), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], -1360f, arg_0), firstTrailingBit(u_input.a))), vec4<i32>(firstTrailingBit(global1.d.x ^ 1i), _wgslsmith_mod_i32(~(-1i), min(-74048i, arg_1)), _wgslsmith_add_i32(~arg_1, _wgslsmith_mult_i32(62032i, -1i) >> (~u_input.a % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-45142i, arg_1), reverseBits(vec2<i32>(-16582i, -9215i)))), ~(vec4<i32>(1i, global1.d.x, arg_1 | 0i, -1i) ^ vec4<i32>(~arg_1, global1.d.x, _wgslsmith_clamp_i32(arg_1, arg_1, arg_1), min(global1.d.x, 0i))));
    let var_1 = global1.b.x;
    global0 = array<f32, 30>();
    var_0 = u_input.a;
    global1 = Struct_4(-1661f, global1.b, -968f, global1.d);
    return global1.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_2;
    global1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -418f), !(!(!global1.b)), global0[_wgslsmith_index_u32(0u, 30u)], ~vec2<i32>(arg_2.a, var_0.c));
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.a)))))), vec2<bool>(global1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.x, 17110i) ^ global1.d, max(vec2<i32>(-2147483647i, arg_3.b), var_0.b.wx)) < select(~global1.d.x, var_0.b.x << (u_input.a % 32u), !arg_1.d.x)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-6377i, 49087i) << (vec2<u32>(_wgslsmith_div_u32(var_0.d.x, arg_2.d.x), _wgslsmith_clamp_u32(arg_2.d.x, var_0.d.x, arg_2.d.x)) % vec2<u32>(32u)), ~(_wgslsmith_add_vec2_i32(arg_2.b.zx, global1.d) | countOneBits(global1.d))));
    let var_1 = !arg_3.c.a.x;
    let var_2 = Struct_2(vec2<bool>(func_3(abs(max(var_0.d.x, arg_2.d.x)), select(select(vec4<bool>(var_1, false, false, false), vec4<bool>(var_1, false, false, var_1), false), select(vec4<bool>(global1.b.x, arg_3.a.a.x, false, global1.b.x), vec4<bool>(arg_1.c.a.x, global1.b.x, arg_1.a.a.x, false), vec4<bool>(global1.b.x, arg_1.d.x, global1.b.x, global1.b.x)), select(vec4<bool>(false, arg_1.d.x, global1.b.x, global1.b.x), vec4<bool>(true, false, global1.b.x, var_1), vec4<bool>(false, false, global1.b.x, global1.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, global0[_wgslsmith_index_u32(1u, 30u)], arg_0.x)), 7781u), var_1));
    return var_2;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.a, -700f)), Struct_3(Struct_2(global1.b), _wgslsmith_mult_i32(~(-2147483647i), ~global1.d.x), Struct_2(vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_1(countOneBits(~(-9616i)), min(vec4<i32>(global1.d.x, global1.d.x, 28848i, 0i) | vec4<i32>(global1.d.x, 0i, global1.d.x, global1.d.x), reverseBits(vec4<i32>(global1.d.x, -3976i, -42722i, global1.d.x))), _wgslsmith_sub_i32(-2147483647i, -2147483647i) << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 36084u, u_input.a), vec3<u32>(1u, 4294967295u, 0u))), Struct_3(Struct_2(vec2<bool>(global1.b.x, global1.b.x)), global1.d.x, Struct_2(!global1.b), select(func_2(1876f, 1i), !global1.b, select(global1.b, vec2<bool>(global1.b.x, false), global1.b)))), global1.d.x, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(65685u, 30u)], global1.c, global0[_wgslsmith_index_u32(94660u, 30u)])) * vec3<f32>(-224f, -406f, -1000f))), Struct_3(Struct_2(vec2<bool>(false, false)), 53769i, Struct_2(func_5(vec3<f32>(612f, 413f, -797f), Struct_3(Struct_2(global1.b), global1.d.x, Struct_2(vec2<bool>(true, global1.b.x)), global1.b), Struct_1(global1.d.x, vec4<i32>(global1.d.x, global1.d.x, 9770i, global1.d.x), 1i, vec3<u32>(u_input.a, u_input.a, 67232u)), Struct_3(Struct_2(vec2<bool>(global1.b.x, false)), -1i, Struct_2(global1.b), vec2<bool>(true, global1.b.x))).a), global1.b), Struct_1(_wgslsmith_mod_i32(1i, 1i), -vec4<i32>(2147483647i, global1.d.x, global1.d.x, -76153i), abs(0i), vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), 1u, u_input.a)), Struct_3(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, global1.c, global1.a) + vec3<f32>(1243f, -1328f, global0[_wgslsmith_index_u32(25049u, 30u)])), Struct_3(Struct_2(vec2<bool>(true, global1.b.x)), 48428i, Struct_2(global1.b), vec2<bool>(global1.b.x, global1.b.x)), Struct_1(35091i, vec4<i32>(2147483647i, -9292i, global1.d.x, global1.d.x), global1.d.x, vec3<u32>(10542u, 4294967295u, 1u)), Struct_3(Struct_2(vec2<bool>(global1.b.x, false)), global1.d.x, Struct_2(vec2<bool>(global1.b.x, true)), vec2<bool>(true, true))), global1.d.x, Struct_2(func_2(global0[_wgslsmith_index_u32(u_input.a, 30u)], global1.d.x)), !global1.b)), vec2<bool>(true, func_2(592f, _wgslsmith_sub_i32(global1.d.x, 0i)).x));
    global1 = Struct_4(global0[_wgslsmith_index_u32(15086u, 30u)], var_0.c.a, _wgslsmith_div_f32(-301f, _wgslsmith_div_f32(global1.a, global0[_wgslsmith_index_u32(min(~u_input.a, max(99463u, u_input.a)), 30u)])), global1.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2050f * global1.c) * _wgslsmith_div_f32(-1471f, 537f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] + _wgslsmith_f_op_f32(step(global1.c, global1.a)))), _wgslsmith_f_op_f32(-global1.a)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-188f, _wgslsmith_f_op_f32(227f - global1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -871f))))), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-812f)), -1092f)), var_0.b))));
    let var_2 = Struct_1(var_0.b, vec4<i32>(i32(-1i) * -(~global1.d.x), 60109i, 0i, var_0.b), 2147483647i, select((vec3<u32>(5645u, u_input.a, u_input.a) & vec3<u32>(4294967295u, u_input.a, u_input.a)) ^ countOneBits(abs(vec3<u32>(4825u, u_input.a, u_input.a))), firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.a)) << (max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 14561u, 20171u), vec3<u32>(0u, u_input.a, u_input.a)), max(vec3<u32>(34836u, 10154u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u))) % vec3<u32>(32u)), vec3<bool>(any(var_0.a.a) & func_5(vec3<f32>(650f, global1.a, global0[_wgslsmith_index_u32(u_input.a, 30u)]), var_0, Struct_1(var_0.b, vec4<i32>(59043i, global1.d.x, 57949i, 22630i), var_0.b, vec3<u32>(0u, u_input.a, 1u)), Struct_3(var_0.c, global1.d.x, var_0.c, vec2<bool>(global1.b.x, false))).a.x, all(vec2<bool>(global1.b.x, true)), true)));
    let var_3 = _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a, 30u)], _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(38794u, 30u)], var_1.x), _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)])))))));
    return Struct_2(select(select(global1.b, vec2<bool>(true, true), var_0.a.a), !(!func_2(global1.a, -33663i)), !vec2<bool>(any(vec4<bool>(true, global1.b.x, true, true)), global1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-1443f, vec2<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(global1.b.x, false, false), vec3<bool>(false, false, global1.b.x))), !all(vec3<bool>(global1.b.x, global1.b.x, false)) | any(select(vec3<bool>(false, true, false), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(false, false, global1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 30u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -473f))) * global0[_wgslsmith_index_u32(4294967295u, 30u)]), ~vec2<i32>(global1.d.x, abs(reverseBits(global1.d.x))));
    var var_1 = func_1();
    let var_2 = Struct_2(vec2<bool>(false, true));
    global1 = var_0;
    var var_3 = -_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.x, ~(-34842i), var_0.d.x), vec3<i32>(firstLeadingBit(~var_0.d.x), firstTrailingBit(2147483647i), -var_0.d.x));
    var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - global1.c), global1.a)), ~_wgslsmith_clamp_i32(2147483647i, ~(-2147483647i), -9929i)));
    global0 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global1.d.x, 1i) ^ abs(var_3.x), vec2<f32>(-868f, 1000f), _wgslsmith_sub_vec2_i32(~(~(~vec2<i32>(var_3.x, 2147483647i))), vec2<i32>(global1.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(13036i, 857i), vec2<i32>(2147483647i, 27885i)), var_0.d << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))))), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(66901u) >> (~1u % 32u), 30u)])));
}

