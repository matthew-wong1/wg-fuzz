struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), vec3<f32>(-416f, 337f, -1003f), vec4<i32>(35763i, 116067i, -18345i, 0i));

var<private> global3: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(-43470i, _wgslsmith_f_op_vec3_f32(ceil(global2.b)), ~(-(~vec4<i32>(-1i, global2.c.x, -19881i, global2.c.x)) >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))));
    global3 = !(!(global2.c.x > 12701i) | false) & true;
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(-global0.c, vec4<i32>(_wgslsmith_mod_i32(34173i, 2147483647i), select(var_0.a, var_0.a, false), 17272i, min(-1i, 31575i))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(select(-1249f, _wgslsmith_f_op_f32(-960f + global2.b.x), true)), global0.b.x))), vec4<i32>(reverseBits(firstTrailingBit(global2.a)), var_0.a, -(i32(-1i) * -2147483647i), 11734i));
    var var_2 = -8372i << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 13194u) | vec2<u32>(u_input.b, u_input.b), firstTrailingBit(vec2<u32>(u_input.b, 33104u))), ~select(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 53074u), true)), ~(vec2<u32>(u_input.b, u_input.b) | abs(vec2<u32>(1u, 13773u)))) % 32u);
    var var_3 = ~select(28468u, ~_wgslsmith_div_u32(0u, 1u), false);
    return vec4<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(global2.c.yzw), vec3<i32>(0i, ~(-6276i), _wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(-77351i, -11411i, 1i, -4041i))))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(8458i), var_1.a), _wgslsmith_mod_i32(select(global2.c.x, var_1.c.x, false), 8827i | global2.c.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, 14701i, var_0.c.x), vec3<i32>(-2147483647i, 12147i, global2.a)), var_0.a), countOneBits(global0.c)), 0i, ~min(select(~3642i, global2.c.x << (1u % 32u), true), reverseBits(firstLeadingBit(0i))));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(-25247i >> (1u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.x + global0.b.x), _wgslsmith_f_op_f32(-1698f * 452f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2102f)) * -261f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(global2.b.x, global2.b.x, global0.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, global0.b.x, 213f))))), ~abs(global2.c >> (vec4<u32>(u_input.b, u_input.b, u_input.a, 1u) % vec4<u32>(32u))));
    global2 = Struct_1(0i, vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(floor(-1713f))))), select(global0.c | ~_wgslsmith_add_vec4_i32(var_0.c, var_0.c), var_0.c, global0.a != global2.a));
    var var_1 = Struct_1(_wgslsmith_add_i32(global0.a, var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(-481f * -333f), _wgslsmith_f_op_f32(trunc(-322f))))), var_0.c);
    let var_2 = func_3() << (~vec4<u32>(31755u, 0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 23673u), 27408u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a), vec4<u32>(10411u, u_input.b, u_input.b, 1u)), u_input.b)) % vec4<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_add_i32(reverseBits(global2.c.x), select(~abs(var_0.c.x), 0i, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.b * global0.b))), select(var_2, _wgslsmith_clamp_vec4_i32(select(var_1.c, _wgslsmith_mod_vec4_i32(global2.c, global0.c), true), abs(var_0.c), ~(vec4<i32>(var_0.c.x, -27509i, 0i, var_2.x) << (vec4<u32>(4294967295u, 15327u, u_input.b, u_input.a) % vec4<u32>(32u)))), (max(global0.a, -2147483647i) <= ~(-13463i)) & true));
    return -(vec3<i32>(-1i) * -select(vec3<i32>(2147483647i, -48347i, var_3.a), var_0.c.yyx, vec3<bool>(true, true, true)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(firstLeadingBit(func_3().x), -41903i, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(global0.a, global0.c.x), _wgslsmith_div_i32(-42071i, select(38915i, 0i, true))), 2147483647i), (~arg_0 << (u_input.a % 32u)) & 1i);
    global2 = Struct_1(abs(reverseBits(_wgslsmith_dot_vec3_i32(max(vec3<i32>(43296i, arg_0, 0i), vec3<i32>(arg_0, arg_0, -53632i)), global0.c.yyy))), global2.b, firstTrailingBit(vec4<i32>(-countOneBits(0i), _wgslsmith_mod_i32(1i, 22095i), global2.a | _wgslsmith_mult_i32(0i, arg_0), arg_0)));
    let var_1 = Struct_1(countOneBits(1i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.wyy, vec3<i32>(arg_0, global0.a, -33596i)), var_0.xxy | vec3<i32>(global2.c.x, global2.c.x, 6576i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))), ~_wgslsmith_sub_vec4_i32(~(~global2.c), vec4<i32>(-44325i, global2.a, global2.a, firstTrailingBit(global0.c.x))));
    let var_2 = 41512u;
    global1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, global0.a) & _wgslsmith_mod_vec2_i32(global0.c.zx, vec2<i32>(var_0.x, global0.c.x)), -var_0.yy, global0.c.xy), global2.c.zx);
    return Struct_1(_wgslsmith_clamp_i32(arg_0, _wgslsmith_mod_i32(var_1.a, var_0.x), 0i), global0.b, var_0);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = -2147483647i;
    global2 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(select(global0.b, arg_0.b, all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))))), _wgslsmith_sub_vec4_i32(-global2.c, -(~global2.c)) << (~vec4<u32>(44587u, u_input.a, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(49347u, 44677u, u_input.b, u_input.b), vec4<u32>(u_input.a, 4294967295u, 135745u, u_input.b))) % vec4<u32>(32u)));
    let var_0 = vec4<i32>(~_wgslsmith_dot_vec3_i32(arg_0.c.yzw, _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-2147483647i, arg_0.c.x, global0.c.x)), ~vec3<i32>(-2147483647i, global2.c.x, -10576i))), global2.a, global0.c.x, abs(29267i));
    var var_1 = func_4(-global0.a, global0.b.xz);
    var var_2 = _wgslsmith_sub_u32(min(countOneBits(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 37326u), vec2<u32>(45638u, u_input.a)))), u_input.b), u_input.b);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    global1 = max(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28655i, arg_2.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(1204i, var_0.c.x), vec2<i32>(2147483647i, 1i), arg_0.c.zz))), 2147483647i);
    global2 = func_5(func_4(_wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.c.xyx), func_2()), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_3.b.x)))), arg_0.b.x)), -772f);
    let var_1 = u_input.b;
    global1 = var_0.a;
    return !vec2<bool>(true, !any(vec4<bool>(true, false, false, true)));
}

fn func_6(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<u32>(0u, 0u << ((u_input.b << (u_input.b % 32u)) % 32u));
    global3 = false;
    var var_1 = _wgslsmith_f_op_f32(1175f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f + 1140f) + _wgslsmith_f_op_f32(ceil(-395f))))));
    global1 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(global2.c.x, global2.c.x), _wgslsmith_mult_i32(~(~5899i), global2.a ^ global0.a));
    global0 = func_4(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-10956i), ~(-80258i), global2.c.x, ~global2.a), vec4<i32>(-25094i, 2147483647i, _wgslsmith_sub_i32(2147483647i, global2.c.x), global2.a)), 8805i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1116f - arg_1), _wgslsmith_f_op_f32(-1051f + -819f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-433f)))))));
    return func_4(max(func_4(~1i, vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -930f)).a, select(-global2.a ^ (global0.c.x & -1i), global2.c.x, any(!vec3<bool>(false, arg_0, false)))), global0.b.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(1u);
    global0 = func_6(any(!(!func_1(Struct_1(1i, global0.b, vec4<i32>(55151i, global2.a, global2.c.x, global0.a)), vec3<u32>(1u, 1920u, u_input.a), Struct_1(global2.a, global0.b, vec4<i32>(global0.c.x, 1516i, -33706i, -1i)), Struct_1(3022i, global0.b, vec4<i32>(-2162i, 9973i, -27931i, global0.c.x))))), -1000f);
    global3 = true;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(17202u, u_input.b, 16837u), vec3<u32>(28830u, u_input.b, u_input.b), vec3<u32>(35587u, u_input.b, 8051u)), firstLeadingBit(~vec3<u32>(u_input.a, 1u, 4294967295u))), ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(u_input.b, 53484u, 0u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 90625u, 0u), vec3<u32>(4294967295u, u_input.a, 1u)))), 57965u);
    var var_2 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(false, select(true, true, false), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !((u_input.a > u_input.a) && true));
    var_0 = 0u;
    let var_3 = false;
    var var_4 = global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(1001f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, global0.b.x) - func_5(Struct_1(global0.a, vec3<f32>(1000f, global2.b.x, global0.b.x), global0.c), 789f).b.x)), func_6(u_input.b != 22504u, global2.b.x).b.x, func_6((1913f >= global2.b.x) || any(vec2<bool>(true, false)), global2.b.x).b.x));
}

