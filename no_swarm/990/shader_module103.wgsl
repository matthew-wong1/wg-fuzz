struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), -25030i, 13488i), true, vec3<f32>(-980f, 193f, 114f), -1i, -142f);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-7415i, 19530i, -8381i), true, vec3<f32>(1566f, -1000f, -724f), 19097i, 773f);

var<private> global2: u32;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var_0 = arg_0;
    let var_2 = Struct_1(abs(arg_0.a) << (~(~(~vec3<u32>(u_input.c, u_input.d, 1u))) % vec3<u32>(32u)), !(!(true || !global3.x)), global0.c, ~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0.a.x, global1.a.x) ^ arg_0.a.yx), _wgslsmith_sub_vec2_i32(var_1.a.yz, -arg_0.a.zz)), _wgslsmith_f_op_f32(1611f * global1.c.x));
    global3 = select(arg_2.yz, vec2<bool>(true, !all(vec3<bool>(global3.x, false, arg_2.x))), !(!vec2<bool>(true, !var_1.b)));
    return Struct_1(~(-_wgslsmith_mod_vec3_i32(arg_0.a, vec3<i32>(0i, global0.a.x, global0.d) & vec3<i32>(global0.a.x, var_1.d, global1.d))), true, global0.c, _wgslsmith_mult_i32(max(global1.a.x, global0.d), arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.e, _wgslsmith_f_op_f32(ceil(921f))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(!select(select(!vec4<bool>(global0.b, false, false, global1.b), vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, true, false, false)), select(!vec4<bool>(global1.b, false, global0.b, true), !vec4<bool>(false, global1.b, true, true), select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(global1.b, global0.b, true, global1.b), arg_1.b)), !vec4<bool>(global1.b, arg_1.b, arg_1.b, true)), vec4<bool>(all(select(!vec3<bool>(global1.b, true, global0.b), vec3<bool>(true, false, true), global0.b)), global1.b, false, false), false && global0.b);
    var var_1 = !select(false, any(select(select(var_0.xwy, var_0.ywz, vec3<bool>(global3.x, true, var_0.x)), !var_0.wyy, !var_0.wzy)), !global0.b);
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(~(~arg_0), global0.a) | arg_0, true, _wgslsmith_f_op_vec3_f32(-global0.c), u_input.b.x, 936f);
    let var_2 = Struct_1(min(arg_1.a, firstTrailingBit(vec3<i32>(u_input.b.x, 2147483647i, global1.d) | abs(vec3<i32>(2147483647i, -5511i, arg_1.d)))), !(!(!(arg_1.a.x < -1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1889f, 260f, -1000f) - global1.c)))), 68613i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(1437f + global1.c.x)), global1.c.x));
    var_0 = !(!(!(!select(vec4<bool>(arg_1.b, var_0.x, global3.x, true), vec4<bool>(true, arg_1.b, false, global0.b), arg_1.b))));
    return Struct_1(~_wgslsmith_sub_vec3_i32(~select(vec3<i32>(global1.d, 2147483647i, u_input.b.x), vec3<i32>(arg_0.x, 1i, 1i), vec3<bool>(var_2.b, var_2.b, false)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.x, arg_1.a.x, 0i)), global0.a)), var_2.b && var_0.x, var_2.c, global0.a.x, -1880f);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * _wgslsmith_f_op_f32(f32(-1f) * -864f)));
    var_0 = (!(-global0.a.x < _wgslsmith_mod_i32(-2147483647i, -55813i)) || !(!(!arg_1.b))) || global0.b;
    global3 = !(!select(vec2<bool>(arg_1.b, false), !select(vec2<bool>(false, true), vec2<bool>(arg_2.b, arg_1.b), vec2<bool>(arg_3.b, false)), !func_2(Struct_1(arg_3.a, false, vec3<f32>(global1.c.x, -1661f, -2020f), global1.d, var_1), -1011f, vec4<bool>(arg_3.b, arg_1.b, true, true)).b));
    global0 = Struct_1(select(firstLeadingBit(max(arg_2.a, vec3<i32>(arg_0, arg_3.a.x, 7807i) | global0.a)), vec3<i32>(~func_3(arg_3.a, arg_2).a.x, min(21855i, ~26755i), -u_input.b.x), false), true, _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.c + vec3<f32>(global1.e, global0.c.x, -196f))))), -15407i, global0.c.x);
    return Struct_1(~vec3<i32>(-_wgslsmith_dot_vec3_i32(global0.a, arg_3.a), ~firstLeadingBit(1111i), ~_wgslsmith_mod_i32(u_input.b.x, 0i)), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_3.c)) * _wgslsmith_f_op_vec3_f32(arg_3.c * global1.c)), -543i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e, _wgslsmith_f_op_f32(step(arg_1.e, 1250f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = func_3(vec3<i32>(abs(reverseBits(_wgslsmith_div_i32(-18016i, -36493i))), -12544i | arg_1.d, arg_1.a.x), func_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(select(vec4<bool>(global1.b, true, global0.b, global3.x), vec4<bool>(true, true, true, true), vec4<bool>(global0.b, false, global1.b, arg_0.b)), vec4<bool>(any(vec2<bool>(false, false)), false, 2147483647i >= global0.a.x, global0.b), select(select(vec4<bool>(arg_0.b, false, true, global3.x), vec4<bool>(false, true, global0.b, true), vec4<bool>(true, true, arg_1.b, true)), vec4<bool>(global1.b, true, arg_1.b, true), true))));
    let var_1 = arg_1;
    let var_2 = func_2(func_3(-select(vec3<i32>(global1.d, -1560i, global1.d), global1.a, false) & vec3<i32>(-2147483647i, arg_0.a.x, var_1.a.x), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -42705i, 2147483647i), global1.a, var_0.a) << (~vec3<u32>(1u, 4294967295u, 56656u) % vec3<u32>(32u)), true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, global0.e, global1.c.x), var_0.c, false)))), global1.a.x, var_1.c.x)), global1.e, select(!(!vec4<bool>(var_1.b, false, false, false)), !select(!vec4<bool>(arg_0.b, false, var_0.b, global3.x), select(vec4<bool>(var_1.b, global1.b, true, var_0.b), vec4<bool>(false, arg_0.b, global3.x, global0.b), vec4<bool>(true, global1.b, true, global0.b)), true), var_0.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1341f + _wgslsmith_div_f32(_wgslsmith_div_f32(919f, arg_0.e), _wgslsmith_f_op_f32(-global0.c.x))), -146f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.e * global0.e))), -226f))));
    let var_4 = min(vec3<i32>(arg_1.d, global1.d, func_4(abs(-48859i), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(5555i, 2147483647i, 57153i), vec3<i32>(40846i, arg_0.a.x, 1i), arg_0.a), true, global0.c, firstLeadingBit(4528i), var_1.e), Struct_1(var_1.a | vec3<i32>(var_0.d, 0i, 56337i), false, vec3<f32>(-1000f, var_0.c.x, 1000f), 1i, _wgslsmith_f_op_f32(-1515f - var_3.x)), arg_1).a.x), global1.a);
    return ~vec3<i32>(~var_0.a.x, _wgslsmith_clamp_i32(2147483647i, 15382i, -27844i), -(_wgslsmith_clamp_i32(arg_1.a.x, 35050i, var_1.d) ^ 1i));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(firstLeadingBit(func_5(func_4(-4008i, func_2(Struct_1(global0.a, global3.x, vec3<f32>(global1.c.x, 1081f, arg_2), global1.a.x, 444f), 331f, vec4<bool>(global0.b, global1.b, true, global1.b)), func_3(vec3<i32>(62029i, global0.d, u_input.b.x), Struct_1(vec3<i32>(arg_1.x, -1915i, -1i), global0.b, global0.c, arg_3.x, arg_2)), Struct_1(arg_1, true, global0.c, arg_1.x, 1153f)), func_2(func_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, global0.d), true, vec3<f32>(global1.c.x, -639f, global0.e), 0i, global1.e), global1.e, vec4<bool>(false, true, true, global0.b)), _wgslsmith_f_op_f32(global1.e - 613f), vec4<bool>(global1.b, false, global1.b, global1.b)))), true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(797f, global1.c.x, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 321f, -1852f)))), _wgslsmith_f_op_vec3_f32(exp2(global0.c)))))), abs(~(firstTrailingBit(u_input.b.x) & _wgslsmith_mod_i32(0i, arg_3.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 973f) - global1.c.x))));
    global1 = var_0;
    let var_1 = Struct_1(vec3<i32>(firstLeadingBit(~(-2147483647i)), firstLeadingBit(i32(-1i) * -58636i), 49393i), arg_0 == ~(~u_input.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, var_0.c.x)) * global0.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.c)) * _wgslsmith_f_op_vec3_f32(global1.c * global1.c))), func_4((i32(-1i) * -2147483647i) >> (1u % 32u), var_0, var_0, var_0).c)), var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))), _wgslsmith_f_op_f32(round(global0.c.x))));
    let var_2 = func_4(-25446i, Struct_1(abs(-global0.a), false, var_0.c, ~10197i, -328f), func_4(reverseBits(_wgslsmith_div_i32(select(2147483647i, -1i, var_0.b), abs(global1.a.x))), func_2(Struct_1(firstTrailingBit(vec3<i32>(2147483647i, -27297i, var_0.a.x)), any(vec4<bool>(false, global0.b, true, var_0.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, 905f, -737f), global1.c)), ~u_input.b.x, _wgslsmith_f_op_f32(arg_2 * global0.c.x)), func_2(Struct_1(vec3<i32>(global1.d, arg_3.x, 1i), false, var_1.c, u_input.b.x, 1000f), global1.e, !vec4<bool>(true, var_0.b, global1.b, global3.x)).c.x, vec4<bool>(true, var_0.d != 1i, true, true)), var_1, Struct_1(~vec3<i32>(2147483647i, arg_1.x, global1.a.x), _wgslsmith_f_op_f32(-171f + 534f) <= arg_2, vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), -199f, _wgslsmith_f_op_f32(f32(-1f) * -673f)), -firstTrailingBit(global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), var_1);
    global0 = func_3(vec3<i32>(72466i, firstTrailingBit(11556i), max(-44814i, -func_5(var_0, Struct_1(arg_3, var_0.b, vec3<f32>(-262f, arg_2, var_1.c.x), u_input.b.x, var_0.c.x)).x)), func_2(Struct_1(select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.x, 1i, arg_1.x), vec3<i32>(0i, arg_3.x, 1i)), select(arg_3, vec3<i32>(var_0.d, global1.a.x, u_input.b.x), false), global1.b), func_3(-vec3<i32>(0i, global1.a.x, 0i), Struct_1(global0.a, global0.b, vec3<f32>(arg_2, 1000f, global1.c.x), u_input.b.x, 225f)).b, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e, 768f, -994f), func_3(vec3<i32>(-2147483647i, -1i, arg_1.x), var_0).c), _wgslsmith_add_i32(var_1.d, var_1.a.x & 60391i), 1f), global1.c.x, vec4<bool>(var_2.a.x > var_0.d, global1.b || var_1.b, firstTrailingBit(35808u) >= u_input.e, var_2.b)));
    return any(vec4<bool>(var_2.b, !(!func_4(global1.d, Struct_1(vec3<i32>(var_0.d, global1.d, var_0.d), true, var_1.c, var_0.a.x, var_2.e), Struct_1(vec3<i32>(arg_1.x, var_0.a.x, var_2.a.x), false, vec3<f32>(var_0.e, var_2.e, var_1.e), arg_1.x, -1187f), var_2).b), all(!select(vec2<bool>(global3.x, false), vec2<bool>(false, var_1.b), var_0.b)), true));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(func_4(-1908i, Struct_1(global1.a, all(select(vec2<bool>(false, arg_1), vec2<bool>(false, false), vec2<bool>(true, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c)), func_3(vec3<i32>(-7579i, global1.a.x, global0.d), func_4(0i, arg_2, Struct_1(arg_0.a, global1.b, vec3<f32>(global0.c.x, -738f, arg_0.e), global1.a.x, global0.c.x), Struct_1(global0.a, true, global0.c, global0.d, -649f))).a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -899f)))), func_4(-arg_2.a.x, func_3(arg_0.a, Struct_1(vec3<i32>(global1.a.x, -12363i, u_input.b.x), arg_2.b, vec3<f32>(arg_2.e, global0.e, global0.c.x), arg_0.d, -870f)), func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, -31072i), arg_2.a), arg_2), func_2(Struct_1(vec3<i32>(arg_0.a.x, arg_2.d, -1i), arg_0.b, arg_2.c, 2147483647i, 1149f), _wgslsmith_f_op_f32(-global0.c.x), !vec4<bool>(arg_0.b, false, global1.b, true))), func_2(arg_0, global0.e, vec4<bool>(true, true, !arg_2.b, all(vec4<bool>(arg_1, true, arg_1, global0.b))))), _wgslsmith_f_op_f32(select(735f, _wgslsmith_f_op_f32(793f - func_2(func_2(arg_0, global1.c.x, vec4<bool>(true, arg_0.b, false, false)), _wgslsmith_f_op_f32(min(725f, -922f)), vec4<bool>(true, true, false, true)).e), func_4(~_wgslsmith_mod_i32(u_input.b.x, -8427i), arg_0, arg_2, Struct_1(vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.b.x) ^ vec3<i32>(u_input.b.x, -1i, u_input.b.x), true, _wgslsmith_f_op_vec3_f32(-global0.c), 23766i, _wgslsmith_f_op_f32(global0.e * -1598f))).b)), select(select(!(!vec4<bool>(true, arg_2.b, true, global3.x)), !select(vec4<bool>(arg_1, global3.x, true, global3.x), vec4<bool>(false, true, false, false), true), select(select(vec4<bool>(false, false, global1.b, false), vec4<bool>(false, true, global0.b, arg_2.b), vec4<bool>(global3.x, true, true, false)), vec4<bool>(true, arg_2.b, global3.x, false), global0.b)), select(select(vec4<bool>(false, global1.b, global1.b, false), select(vec4<bool>(arg_1, true, arg_0.b, true), vec4<bool>(false, true, arg_2.b, true), vec4<bool>(arg_2.b, arg_1, arg_2.b, arg_1)), !vec4<bool>(arg_0.b, true, true, arg_1)), !select(vec4<bool>(global1.b, true, global3.x, arg_2.b), vec4<bool>(true, false, arg_0.b, false), false), arg_2.b), func_4(_wgslsmith_sub_i32(select(-26310i, arg_2.d, true), u_input.b.x), func_2(Struct_1(vec3<i32>(arg_0.d, -2147483647i, -2147483647i), false, arg_0.c, 24167i, 223f), -333f, select(vec4<bool>(true, false, global3.x, arg_2.b), vec4<bool>(arg_1, arg_2.b, true, true), vec4<bool>(global3.x, true, false, true))), arg_0, Struct_1(~vec3<i32>(-63394i, -15370i, 2147483647i), true, vec3<f32>(479f, arg_0.c.x, 290f), select(global1.d, global1.a.x, false), -887f)).b));
    global3 = !(!select(vec2<bool>(var_0.b, all(vec3<bool>(true, var_0.b, true))), select(!vec2<bool>(true, global3.x), vec2<bool>(arg_1, global0.b), func_4(arg_2.d, Struct_1(global1.a, false, vec3<f32>(global0.c.x, arg_0.e, arg_0.e), arg_2.d, arg_2.c.x), arg_2, arg_0).b), arg_1 || true));
    let var_1 = func_3(vec3<i32>(arg_2.d, arg_0.a.x, abs(1i)), func_4(arg_0.d, Struct_1(~arg_0.a, true, arg_2.c, -38875i, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.c.x, -2598f), global0.c.x))), func_3(vec3<i32>(global0.a.x, _wgslsmith_sub_i32(-2147483647i, -26005i), arg_2.a.x << (u_input.a % 32u)), func_3(arg_2.a, arg_0)), arg_2));
    var var_2 = u_input.d;
    global2 = 1u;
    return Struct_1(-var_0.a, false, _wgslsmith_f_op_vec3_f32(arg_2.c * global0.c), min(u_input.b.x, global1.d), _wgslsmith_f_op_f32(-594f * func_3(vec3<i32>(39397i, global1.d, abs(var_0.a.x)), Struct_1(vec3<i32>(2147483647i, arg_2.d, -2147483647i), -782f < var_1.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e, -1000f, arg_2.c.x)), 47633i, _wgslsmith_f_op_f32(global1.c.x * 221f))).e));
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), 502f);
    let var_1 = vec3<i32>(global1.d, (func_3(_wgslsmith_div_vec3_i32(global0.a, global1.a), Struct_1(vec3<i32>(-10055i, 34i, global0.d), global3.x, global1.c, global0.a.x, 424f)).a.x << (~arg_2.x % 32u)) ^ _wgslsmith_div_i32(func_6(Struct_1(global1.a, true, global0.c, global0.a.x, arg_1.e), false, func_6(arg_1, true, Struct_1(global1.a, arg_1.b, global0.c, global0.d, global1.e))).d, func_3(func_3(global1.a, Struct_1(vec3<i32>(-1i, arg_1.d, 2147483647i), false, vec3<f32>(global0.e, global1.c.x, global1.c.x), 0i, var_0.x)).a, arg_1).a.x), reverseBits(~2147483647i));
    global0 = Struct_1(func_3(vec3<i32>(~u_input.b.x & -3800i, ~(-global1.a.x), arg_0.x), arg_1).a, arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1288f, global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e, -381f)))), _wgslsmith_f_op_f32(-1f), 1856f), select(func_3(_wgslsmith_sub_vec3_i32(min(global1.a, arg_1.a), func_2(Struct_1(vec3<i32>(-1i, -4846i, global0.d), false, global1.c, arg_1.d, global1.e), var_0.x, vec4<bool>(false, global0.b, true, global1.b)).a), arg_1).a.x, abs(-(15023i ^ arg_0.x)), !(!any(vec3<bool>(global0.b, global1.b, false)))), arg_1.e);
    let var_2 = !(-func_4(14775i, func_4(-16259i, arg_1, arg_1, Struct_1(vec3<i32>(2147483647i, u_input.b.x, arg_0.x), false, global1.c, 39189i, global1.c.x)), func_4(global1.a.x, arg_1, arg_1, Struct_1(vec3<i32>(-41758i, 35651i, -2147483647i), global3.x, arg_1.c, 23331i, -1633f)), Struct_1(vec3<i32>(global1.a.x, arg_0.x, arg_1.d), arg_1.b, global0.c, var_1.x, -1277f)).d == -6132i);
    var var_3 = vec3<bool>(!(any(vec2<bool>(false, global3.x)) != var_2), var_2, true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(29351i, global1.d << (u_input.a % 32u), u_input.b.x), true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c.x, global1.e, global0.b)), _wgslsmith_f_op_f32(-global1.e))), 156f, _wgslsmith_div_f32(-175f, -445f)), -global1.d, 825f);
    var var_1 = reverseBits(u_input.b << (vec2<u32>(1u, select(reverseBits(u_input.e), 4294967295u, true)) % vec2<u32>(32u)));
    global3 = select(vec2<bool>(true, select(var_0.b, true, any(vec2<bool>(true, true)))), vec2<bool>(global1.b, true), vec2<bool>(true, (var_0.b | true) | !any(vec3<bool>(var_0.b, false, true))));
    var var_2 = func_7(u_input.b, func_6(Struct_1(~(~vec3<i32>(1116i, u_input.b.x, global1.d)), func_1(u_input.d, var_0.a, global0.c.x, vec3<i32>(17381i, -7889i, 8808i)) && select(false, global1.b, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c * var_0.c)), abs(var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.c.x))))), true, Struct_1(select(vec3<i32>(-39146i, -1i, 13989i), var_0.a, global1.b && false), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, global1.e, -507f), vec3<f32>(global0.e, global1.e, 764f), vec3<bool>(true, false, var_0.b))) - vec3<f32>(-883f, global0.c.x, 1472f)), _wgslsmith_add_i32(-57444i, i32(-1i) * -3159i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c.x * 817f))))), _wgslsmith_mod_vec2_u32(max(vec2<u32>(40843u, 4294967295u), ~(~vec2<u32>(u_input.a, u_input.e))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e), ~vec2<u32>(u_input.d, u_input.c))));
    var var_3 = func_3(vec3<i32>(1i, ~_wgslsmith_div_i32(global0.a.x, var_1.x), countOneBits(_wgslsmith_dot_vec2_i32(abs(var_0.a.zx), var_0.a.zx >> (vec2<u32>(0u, 27783u) % vec2<u32>(32u))))), Struct_1(~countOneBits(func_7(vec2<i32>(-2147483647i, -2147483647i), Struct_1(vec3<i32>(var_1.x, global1.d, 0i), global1.b, vec3<f32>(471f, 644f, -457f), 33855i, var_2.c.x), vec2<u32>(u_input.a, 1u)).a), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.e, var_0.e) + var_0.c) + _wgslsmith_f_op_vec3_f32(-global1.c))), ~(i32(-1i) * -2147483647i), func_3(var_0.a, func_6(func_4(-2237i, Struct_1(global0.a, global0.b, vec3<f32>(1467f, global0.e, var_2.e), -10988i, 443f), Struct_1(global0.a, global3.x, var_2.c, -10098i, global0.e), Struct_1(vec3<i32>(-1i, -20359i, global0.a.x), false, global0.c, global1.a.x, 1210f)), any(vec2<bool>(global0.b, var_0.b)), func_2(Struct_1(vec3<i32>(global0.a.x, 46276i, 2147483647i), var_2.b, vec3<f32>(global0.e, global0.e, 1000f), -2147483647i, var_2.c.x), 1079f, vec4<bool>(true, false, var_0.b, true)))).c.x));
    let var_4 = func_3(vec3<i32>(u_input.b.x, ~_wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_add_i32(-1i, u_input.b.x)), -22945i), Struct_1(_wgslsmith_sub_vec3_i32(~(global0.a << (vec3<u32>(u_input.e, u_input.d, 49060u) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(var_2.a, ~vec3<i32>(2147483647i, 45313i, 39414i))), !(!(!var_2.b)), vec3<f32>(_wgslsmith_f_op_f32(max(-1640f, _wgslsmith_f_op_f32(global1.e * var_2.c.x))), 172f, var_2.c.x), u_input.b.x, global1.e));
    var_1 = max(var_2.a.xz, firstLeadingBit(_wgslsmith_add_vec2_i32(select(var_4.a.xy, vec2<i32>(var_1.x, -47251i), var_4.b) & var_3.a.zz, (u_input.b >> (vec2<u32>(736u, 44396u) % vec2<u32>(32u))) << (~vec2<u32>(76432u, u_input.a) % vec2<u32>(32u)))));
    var var_5 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(50461i, u_input.b.x, global0.a.x, global1.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, -29452i, 24636i, u_input.b.x), vec4<i32>(var_0.d, global0.a.x, 0i, 2147483647i), vec4<i32>(0i, global0.d, -27644i, global0.a.x)))), _wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(var_4.a.x, -1i, -18612i, -2147483647i)), max(~vec4<i32>(2147483647i, 0i, 13525i, var_3.d), vec4<i32>(var_2.d, -2147483647i, -23333i, -1i)))), _wgslsmith_f_op_f32(trunc(global1.c.x)), u_input.c);
}

