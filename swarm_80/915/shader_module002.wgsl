struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(91616u, 41367u, 0u, 106880u);

var<private> global1: Struct_1;

var<private> global2: vec2<bool>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(countOneBits(countOneBits(select(vec2<i32>(-1i, -3161i), global1.a, vec2<bool>(global1.e, global2.x)) ^ firstLeadingBit(u_input.b))), ~(-firstLeadingBit(vec2<i32>(u_input.b.x, 0i))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(-7241i, 15528i, u_input.b.x)), abs(~vec3<i32>(u_input.b.x, 0i, global1.a.x))) >> (abs(0u) % 32u), ~(-24110i));
    global2 = !vec2<bool>(false, select(true, global1.e, any(!vec4<bool>(global3.x, global2.x, true, false))));
    var var_2 = Struct_2(Struct_1(~firstLeadingBit(global1.a) | _wgslsmith_div_vec2_i32(vec2<i32>(10252i, var_0.x), global1.a ^ vec2<i32>(var_1, global1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(sign(global1.b.x))), ~(~global0.wzz), _wgslsmith_mult_vec4_u32(abs(countOneBits(global1.d)), abs(~global1.d)), 205f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.x * 777f), _wgslsmith_f_op_f32(global1.b.x * global1.b.x)))), Struct_1(-(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -110177i), var_0) & -vec2<i32>(0i, -2102i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, global1.b.x, 524f, global1.b.x)))), vec3<u32>(firstTrailingBit(global1.c.x), 21039u, ~reverseBits(4294967295u)), firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(49024u, 4294967295u, 10247u, 0u), vec4<u32>(83693u, u_input.a, global1.c.x, 27942u))), var_1 <= -14920i), _wgslsmith_mod_i32(-1i, -global1.a.x));
    var var_3 = -vec4<i32>(-30701i, ~max(var_2.b.a.x ^ -13056i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, -36499i), vec3<i32>(global1.a.x, var_0.x, var_0.x))), max(~abs(-8693i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1, var_0.x), vec3<i32>(var_2.b.a.x, 40700i, -1072i)), u_input.b.x)), -2147483647i);
    return select(vec4<bool>(true, true, true, true), vec4<bool>(all(!(!vec2<bool>(var_2.a.e, global2.x))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, true, true), global1.e), true)), !(_wgslsmith_f_op_f32(var_2.a.b.x + -352f) >= 548f), all(!vec2<bool>(true, global1.e))), select(vec4<bool>(select(true, select(global2.x, var_2.b.e, true), all(vec4<bool>(global3.x, global1.e, var_2.b.e, global3.x))), true, !(!global1.e), _wgslsmith_dot_vec4_i32(vec4<i32>(-22963i, 0i, -19326i, 2147483647i), vec4<i32>(var_1, 16365i, var_3.x, 10533i)) <= -20987i), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.a.e, global3.x, global1.e, true), global3.x), vec4<bool>(global2.x, false, global2.x, global3.x), !vec4<bool>(true, false, global3.x, false)), !vec4<bool>(var_2.a.e, true, true, global1.e), !vec4<bool>(global1.e, true, var_2.a.e, false)), !(!select(vec4<bool>(global3.x, global2.x, true, true), vec4<bool>(global1.e, var_2.a.e, true, global3.x), global3.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_div_f32(global1.b.x, global1.b.x);
    let var_2 = true;
    let var_3 = Struct_2(arg_1, Struct_1(u_input.b | _wgslsmith_mod_vec2_i32(select(arg_3, vec2<i32>(arg_1.a.x, -32853i), vec2<bool>(var_2, false)), arg_1.a), var_0.b, _wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(arg_1.d.zyx, global1.c)), abs(var_0.c)), arg_1.d, !(!(!arg_2))), global1.a.x);
    var var_4 = Struct_1(max(var_3.a.a, min(_wgslsmith_div_vec2_i32(vec2<i32>(48166i, var_3.b.a.x), -vec2<i32>(arg_1.a.x, 7867i)), _wgslsmith_clamp_vec2_i32(~var_3.b.a, -var_0.a, _wgslsmith_mod_vec2_i32(u_input.b, arg_1.a)))), global1.b, firstTrailingBit(min(global1.c >> (global1.c % vec3<u32>(32u)), select(var_3.b.d.zyx, vec3<u32>(global1.d.x, 46301u, var_3.b.d.x), true)) | vec3<u32>(reverseBits(u_input.a), ~4294967295u, var_0.c.x)), arg_1.d, !(var_3.b.e || var_2));
    return vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_3.c, global1.a.x), arg_3.x), -33726i);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(4294967295u, ~(~1u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(func_4(func_3(), Struct_1(u_input.b, global1.b, vec3<u32>(6340u, global0.x, global1.d.x), vec4<u32>(var_0, 14264u, 0u, 38079u), true), !global2.x, global1.a), global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)))), vec3<u32>(~(var_0 & u_input.a), global0.x, 1u), global1.d, global3.x), Struct_1(vec2<i32>(abs(15910i), u_input.b.x & u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, -720f, global1.b.x)), select(vec4<bool>(false, global1.e, false, global3.x), vec4<bool>(false, false, global3.x, global1.e), true)))), global0.yyz, _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 20546u, global0.x, u_input.a), global1.d), global2.x), ~countOneBits(firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, arg_0.x))));
    global1 = var_1.a;
    global1 = var_1.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(305f, global1.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2309f, var_1.a.b.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x + -2818f)), vec2<f32>(_wgslsmith_f_op_f32(-1446f + var_1.b.b.x), _wgslsmith_f_op_f32(global1.b.x + 1422f)), func_3().x)))), var_1.a.b.xx));
    return var_1;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = func_2(vec2<i32>(_wgslsmith_mod_i32(~u_input.b.x, -1i >> (1u % 32u)) | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, 0i, 1i), vec4<i32>(-22382i, 0i, global1.a.x, global1.a.x)), vec4<i32>(u_input.b.x, arg_0.b.a.x, arg_0.c, 0i)), global1.a.x));
    var var_1 = ~global0.zxw;
    var_0 = Struct_2(Struct_1(var_0.b.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)) + global1.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.b.b.x)), _wgslsmith_div_f32(var_0.b.b.x, -261f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-584f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_0.a.b.x + 1343f))), vec3<u32>(var_0.a.d.x, _wgslsmith_mult_u32(global0.x, var_1.x), global0.x & 0u) ^ global1.d.xyx, select(max(~global1.d, vec4<u32>(global0.x, 3524u, 0u, 5173u)), ~abs(arg_0.b.d), false), var_0.c > _wgslsmith_sub_i32(reverseBits(-4991i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a.x, 16049i, -19665i, 7036i), vec4<i32>(global1.a.x, 0i, u_input.b.x, global1.a.x)))), var_0.a, 2147483647i);
    let var_2 = func_2(abs(vec2<i32>(_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_div_i32(var_0.b.a.x, _wgslsmith_div_i32(global1.a.x, 2147483647i)))));
    global2 = select(!vec2<bool>(true, var_2.a.e), vec2<bool>(~(~global1.a.x) < (arg_0.a.a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.a.x, var_2.a.a.x, arg_0.c), vec3<i32>(var_0.c, -1i, 22161i))), var_2.b.e), _wgslsmith_f_op_f32(f32(-1f) * -1483f) <= arg_0.b.b.x);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, global1.a.x, var_0.b.a.x), vec3<i32>(0i, var_2.c, -2147483647i)) >> (_wgslsmith_sub_u32(var_2.a.c.x, 22153u) % 32u), u_input.b.x), abs(-36904i), _wgslsmith_sub_i32(-_wgslsmith_div_i32(2147483647i, -30041i), var_0.a.a.x)), vec3<i32>(func_2(vec2<i32>(56951i >> (1u % 32u), _wgslsmith_mod_i32(var_0.a.a.x, arg_0.a.a.x))).a.a.x, global1.a.x, -u_input.b.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = vec2<bool>(true, global2.x & (func_5(func_2(u_input.b)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(65616i, 33460i, global1.a.x, 1i), -vec4<i32>(u_input.b.x, 76132i, u_input.b.x, u_input.b.x))));
    global1 = func_2(func_4(vec4<bool>(true, !(!global1.e), _wgslsmith_mod_i32(-25670i, -29069i) <= ~u_input.b.x, !(global3.x || true)), func_2(~_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(global1.a.x, u_input.b.x), global1.a)).a, false, vec2<i32>(29162i, 2147483647i))).b;
    var var_0 = Struct_2(Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(-global1.b), global0.zyx, vec4<u32>(global0.x ^ _wgslsmith_div_u32(u_input.a, global1.d.x), arg_0, reverseBits(u_input.a), countOneBits(~global0.x)), global2.x), Struct_1(global1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.b, global1.b)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.b)))), global0.xzy, ~vec4<u32>(1u, ~9643u, _wgslsmith_mod_u32(global1.c.x, 4294967295u), ~u_input.a), global1.b.x > global1.b.x), _wgslsmith_sub_i32(-6937i ^ global1.a.x, select(1i, 2147483647i, func_2(vec2<i32>(u_input.b.x, -1i)).a.e | (global2.x & global2.x))));
    let var_1 = global0.yzz;
    var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(-var_0.b.a, global1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 430f, -1035f, 1306f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1693f, -430f, global1.b.x, var_0.b.b.x) * var_0.a.b))), global0.xyz, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x << (global0.x % 32u), 74840u, 1u, firstTrailingBit(var_1.x)), ~(~global1.d)), var_0.a.e), var_0.b, 1i);
    return var_0.a;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global3 = select(!vec2<bool>(false, !func_3().x), !vec2<bool>(var_0.b.x >= _wgslsmith_f_op_f32(ceil(804f)), arg_1.e), vec2<bool>(_wgslsmith_clamp_u32(25244u, ~0u, ~1u) != 112u, all(vec3<bool>(true, true, func_2(var_0.a).b.e))));
    global3 = select(!vec2<bool>(!var_0.e, all(!vec2<bool>(var_0.e, var_0.e))), vec2<bool>(false, arg_1.e), vec2<bool>(all(vec4<bool>(true, true, global2.x, all(vec4<bool>(global2.x, var_0.e, global3.x, arg_1.e)))), func_2(abs(_wgslsmith_div_vec2_i32(global1.a, vec2<i32>(46312i, global1.a.x)))).b.e));
    global2 = !(!vec2<bool>(any(vec3<bool>(global2.x, true, global1.e)) | arg_1.e, global3.x | true));
    global3 = !(!(!select(select(vec2<bool>(global3.x, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(var_0.e, true), vec2<bool>(global2.x, global3.x))));
    return 1u;
}

fn func_7(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-1194f)), arg_2.x);
    let var_1 = func_2(global1.a).a;
    global1 = var_1;
    global0 = vec4<u32>(u_input.a, 1u, _wgslsmith_sub_u32(arg_0, ~_wgslsmith_clamp_u32(38290u, 0u, u_input.a)) & arg_0, _wgslsmith_dot_vec2_u32(var_1.c.xz, firstTrailingBit(vec2<u32>(~arg_0, _wgslsmith_mod_u32(20814u, var_1.c.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_1.b.x), _wgslsmith_f_op_f32(ceil(-1371f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(-var_0.x)))), func_2(vec2<i32>(min(-2147483647i, -2147483647i), -1i)).a.b.x));
    return func_2(firstLeadingBit(-func_4(!vec4<bool>(global3.x, global2.x, true, true), func_1(u_input.a), global1.e, u_input.b << (global1.d.xw % vec2<u32>(32u))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(-(~global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1438f, -262f, global1.b.x, global1.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, 1000f, global1.b.x)))), global0.zxw, select(global1.d | global1.d, vec4<u32>(~1u, ~global1.d.x, 4294967295u, u_input.a), ~40502u == u_input.a), all(select(!vec2<bool>(false, global3.x), !vec2<bool>(global1.e, global2.x), !vec2<bool>(global2.x, true)))), func_7(1u, _wgslsmith_mult_u32(func_6(~global0.x, func_1(1u)), global1.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec4_f32(-global1.b)), 1i), _wgslsmith_sub_i32(max(i32(-1i) * -69208i, global1.a.x) >> (~_wgslsmith_clamp_u32(0u, 71493u, global0.x) % 32u), -1i));
    var var_1 = var_0;
    var var_2 = abs(firstTrailingBit(var_0.a.d));
    var var_3 = var_0;
    global3 = select(!select(select(vec2<bool>(true, true), func_3().xx, vec2<bool>(var_1.a.e, var_3.b.e)), select(select(vec2<bool>(false, false), vec2<bool>(var_1.b.e, var_3.a.e), vec2<bool>(true, var_3.b.e)), vec2<bool>(false, global1.e), true), (true && var_1.b.e) | true), !(!(!vec2<bool>(true, var_3.b.e))), global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.b.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.b.xy))))));
}

