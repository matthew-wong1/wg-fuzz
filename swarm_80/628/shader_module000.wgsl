struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, vec2<f32>(1606f, -874f), vec3<f32>(1242f, 971f, 1000f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x < 38466u, false, all(vec3<bool>(false, false, true)), true), vec4<bool>(true, 43476u != u_input.b.x, true, true), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false))), !select(true, -6270i == global0.a, true)), select(select(vec4<bool>(all(vec2<bool>(false, false)), true, all(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false)), !vec4<bool>(0i > u_input.e, true, true, false)), true);
    var var_1 = ~((u_input.c ^ _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-38494i, u_input.a, u_input.e, global0.a), u_input.c)) ^ -vec4<i32>(u_input.c.x, u_input.a, 1035i, -2147483647i)) & ~vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.c.xwz, u_input.c.zxw), u_input.a, firstTrailingBit(_wgslsmith_add_i32(-33811i, global0.a)), -(~u_input.c.x));
    var_0 = vec4<bool>(var_0.x, var_0.x, var_0.x, true);
    var_0 = vec4<bool>(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, arg_0.x), min(u_input.b.x, arg_0.x)) >= (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, arg_0.x, 19285u), ~vec4<u32>(0u, 13456u, 1u, 20043u)) << (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x ^ 45838u) % 32u)), true, var_0.x, var_0.x);
    let var_2 = u_input.b.x << (1u % 32u);
    return -728f;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_3(Struct_2(-53763i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(ceil(1687f))), vec2<f32>(504f, -339f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, global0.b.x, global0.b.x))))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-558f * _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_div_f32(global0.c.x, -290f)), -314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -177f))), vec3<f32>(1509f, global0.c.x, global0.b.x), Struct_2(abs(-(~u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(564f)), _wgslsmith_f_op_f32(func_3(vec3<u32>(7364u, u_input.b.x, u_input.b.x), -436f, Struct_1(vec2<f32>(411f, global0.b.x), global0.c.x)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.b)))), _wgslsmith_f_op_vec3_f32(-global0.c)));
    var var_1 = select(true, false, select(select(true, false, true), false, !all(vec3<bool>(false, true, true))) | !(select(global0.a, var_0.a.a, true) < _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-28899i, u_input.e))));
    global0 = Struct_2(reverseBits(_wgslsmith_div_i32(max(global0.a >> (u_input.b.x % 32u), 0i), _wgslsmith_sub_i32(var_0.a.a, -2147483647i))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-243f, global0.c.x, true)) + _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-110f, -931f)) + _wgslsmith_f_op_f32(max(global0.c.x, 1000f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -281f) + -351f), -1030f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.c.x, -740f, -1062f)))))))));
    let var_2 = Struct_5(max(~firstTrailingBit(~u_input.e), -19120i), ~(~firstLeadingBit(_wgslsmith_clamp_i32(3316i, 81300i, var_0.a.a))), firstLeadingBit(~vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 23401u), ~u_input.b.x, u_input.b.x ^ u_input.b.x, ~u_input.b.x)), var_0.e, u_input.e);
    let var_3 = Struct_2(0i, var_2.d.c.zz, var_2.d.c);
    return Struct_5(~0i, 2523i | _wgslsmith_div_i32(var_2.a, -13654i), vec4<u32>(1u, u_input.b.x, _wgslsmith_add_u32(abs(6116u), 60997u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b | vec2<u32>(var_2.c.x, 15316u), ~var_2.c.xx), abs(max(var_2.c.x, u_input.b.x)))), var_2.d, var_0.e.a);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.d.c.x, arg_0.d.b.x))), vec2<f32>(global0.c.x, global0.c.x), arg_2.x))))));
    var var_1 = max(_wgslsmith_add_i32(-firstTrailingBit(global0.a), 0i), -1i);
    global0 = arg_0.d;
    var var_2 = select(!arg_2.zyx, arg_2.wzx, vec3<bool>(all(select(!arg_2.wz, arg_2.yx, vec2<bool>(false, true))), false, !arg_2.x));
    let var_3 = var_0.x;
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: bool, arg_3: vec4<f32>) -> Struct_5 {
    var var_0 = func_4(arg_1, u_input.c.zyx, !vec4<bool>(false, false != !arg_2, !any(vec4<bool>(true, true, true, arg_2)), arg_2)).c.zzz;
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(~(~_wgslsmith_sub_i32(13618i, arg_1.e)), u_input.e), abs(-2147483647i));
    var_1 = ~u_input.c.wy;
    var var_2 = select(vec2<bool>(!arg_2, true), select(!vec2<bool>(arg_2, arg_2 | arg_2), select(vec2<bool>(true, true), vec2<bool>(arg_2 == arg_2, 892f != global0.c.x), arg_1.c.x > 44337u), any(!(!vec3<bool>(true, arg_2, true)))), vec2<bool>(!(!arg_2) | (_wgslsmith_f_op_f32(abs(arg_0)) < _wgslsmith_f_op_f32(-arg_3.x)), arg_2));
    var var_3 = vec4<u32>(0u, arg_1.c.x ^ ~max(reverseBits(4294967295u), ~1u), 149824u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(0u, 0u, 4294967295u, var_0.x)), 105625u), 25017u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_1.c.x, 22779u), vec3<u32>(u_input.b.x, var_0.x, arg_1.c.x))) >> (firstLeadingBit(var_0.x) % 32u));
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_5(1007f, func_4(func_2(), ~countOneBits(vec3<i32>(20302i, u_input.d, arg_0)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), true)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-2428f)), _wgslsmith_f_op_f32(max(global0.b.x, -743f)), _wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, true)), 1524f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-641f, global0.c.x, global0.b.x, global0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1770f, global0.b.x, 1000f, -763f) + vec4<f32>(-1332f, global0.c.x, global0.c.x, -969f))) * vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * 699f), _wgslsmith_f_op_f32(-global0.c.x), global0.b.x, -272f)))));
    var var_1 = false;
    let var_2 = select(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, func_2().b, ~(firstTrailingBit(var_0.e) >> (u_input.b.x % 32u))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(max(~19222i, -3367i), arg_0), 1i, 2147483647i), true);
    let var_3 = _wgslsmith_f_op_f32(trunc(1857f));
    var var_4 = _wgslsmith_clamp_i32(var_0.d.a, ~func_5(global0.c.x, Struct_5(1i, 0i | arg_0, vec4<u32>(100875u, 5212u, var_0.c.x, var_0.c.x) >> (var_0.c % vec4<u32>(32u)), func_4(Struct_5(u_input.a, 1i, var_0.c, Struct_2(36863i, vec2<f32>(550f, 215f), global0.c), arg_0), vec3<i32>(var_2, u_input.e, u_input.a), vec4<bool>(false, true, false, false)).d, _wgslsmith_mod_i32(-6686i, 998i)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_0.d.b.x, -377f, -485f) - vec4<f32>(-261f, var_3, var_0.d.c.x, global0.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, 336f, var_3, -186f) * vec4<f32>(730f, 436f, var_0.d.c.x, -839f)))).e, var_2);
    return var_0.d;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), arg_1.e.a, u_input.d), u_input.c.zyy, vec3<i32>(arg_1.a.a, arg_1.a.a, 1i) << (abs(vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) & ~u_input.c.wzz, vec3<i32>(~0i, func_2().b, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c.wwy), u_input.c.yzw)));
    var_0 = min(vec3<i32>(0i, _wgslsmith_div_i32(0i, -global0.a), func_1(51803i).a), u_input.c.xzz) >> (select(vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 58722u, 4294967295u), 1u, u_input.b.x), min(vec3<u32>(~u_input.b.x, ~u_input.b.x, 0u), vec3<u32>(0u, u_input.b.x, u_input.b.x)), select(arg_0.xzw, select(vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(arg_2, true, arg_0.x), arg_0.wyy, vec3<bool>(false, arg_0.x, false)), 0u != u_input.b.x), select(select(vec3<bool>(arg_2, false, arg_0.x), vec3<bool>(arg_2, arg_2, true), arg_0.zww), !arg_0.zyx, arg_2))) % vec3<u32>(32u));
    let var_1 = Struct_4(select(_wgslsmith_mult_i32(arg_1.e.a, arg_1.a.a), global0.a, all(!arg_0)), arg_0, arg_1.b, false, (abs(arg_1.a.a) <= (-1i >> (1u % 32u))) || select(!arg_2, arg_2, !any(arg_0)));
    global0 = arg_1.e;
    var var_2 = countOneBits(vec4<i32>(-1i) * -select(u_input.c | u_input.c, ~u_input.c, !arg_2));
    return arg_1.e;
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2077f))), 1346f);
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(global0.c, vec3<f32>(_wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.b.x, arg_3.b.x)))), -1004f, -399f)));
    var var_1 = u_input.e;
    let var_2 = func_4(func_4(func_4(Struct_5(func_1(-2147483647i).a, _wgslsmith_add_i32(-13860i, arg_0.a), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x), Struct_2(-18755i, vec2<f32>(arg_0.c.x, global0.c.x), vec3<f32>(arg_3.b.x, 1633f, 1580f)), ~33565i), firstLeadingBit(firstTrailingBit(u_input.c.yyz)), vec4<bool>(any(vec3<bool>(false, true, true)), u_input.b.x <= 48646u, false, true)), max(u_input.c.xxz, u_input.c.xyz) | u_input.c.yyw, vec4<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(false, false)), true, true)), vec3<i32>(global0.a, global0.a, _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(-30971i, i32(-1i) * -1i))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))).d.b.x;
    var_0 = global0.c;
    var var_3 = _wgslsmith_add_vec4_i32(max(~(-vec4<i32>(-55745i, 0i, -1i, arg_3.a)), -_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(9326i, arg_3.a, -5104i, u_input.e))) ^ ~(~u_input.c), ~min(u_input.c | vec4<i32>(46367i, -2147483647i, u_input.a, arg_3.a), vec4<i32>(u_input.a, global0.a, arg_0.a >> (0u % 32u), -1i)));
    return Struct_2(u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1473f, _wgslsmith_f_op_f32(f32(-1f) * -341f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.x, var_0.x), vec2<f32>(-1481f, var_2))), vec2<f32>(-471f, -706f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 988f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1554f), arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(func_2().e).c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_8(Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(-global0.c.yz))) - global0.c.zy), _wgslsmith_div_vec3_f32(global0.c, global0.c)), func_7(vec4<bool>(true, _wgslsmith_f_op_f32(global0.c.x - global0.b.x) != _wgslsmith_f_op_f32(f32(-1f) * -614f), true, true), func_6(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), Struct_3(func_1(-2147483647i), Struct_1(vec2<f32>(-840f, global0.c.x), global0.b.x), 320f, _wgslsmith_f_op_vec3_f32(abs(global0.c)), func_4(Struct_5(global0.a, u_input.d, vec4<u32>(9581u, 5142u, u_input.b.x, 6079u), Struct_2(global0.a, vec2<f32>(-1000f, -821f), vec3<f32>(global0.c.x, -1858f, 722f)), global0.a), vec3<i32>(u_input.a, -1i, 19014i), vec4<bool>(false, false, false, false)).d), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global0.c.x))), _wgslsmith_f_op_f32(trunc(-1000f))), func_7(vec4<bool>(true, false, false, true), func_2().d, _wgslsmith_div_f32(253f, _wgslsmith_f_op_f32(-1f)), global0.b.x), Struct_2(-10310i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.b, vec2<f32>(-799f, global0.b.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(-247f, -1213f, 179f) + vec3<f32>(global0.c.x, 1000f, 1939f))))));
    let var_0 = ~(abs(~func_4(Struct_5(u_input.d, global0.a, vec4<u32>(0u, 4294967295u, 1u, u_input.b.x), Struct_2(u_input.d, vec2<f32>(-1000f, -1000f), global0.c), -35258i), u_input.c.wwx, vec4<bool>(true, true, true, true)).c.zxy) & ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x) | vec3<u32>(u_input.b.x, 0u, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.b.x, u_input.b.x))));
    var var_1 = select(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(false, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, false)))), select(!vec3<bool>(false, true, any(vec4<bool>(true, false, true, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, global0.c.x == _wgslsmith_f_op_f32(690f + global0.c.x)), vec3<bool>(true, true, true)), false);
    let var_2 = func_2().d;
    var_1 = vec3<bool>(true, var_1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, func_2().e ^ _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.zy), i32(-1i) * -1i, _wgslsmith_mod_i32(-u_input.e & _wgslsmith_dot_vec2_i32(u_input.c.wz, u_input.c.xw), _wgslsmith_div_i32(var_2.a, 1i | u_input.c.x))), select(u_input.c.zz & vec2<i32>(1i, _wgslsmith_div_i32(u_input.e, 20173i)), u_input.c.xy, select(var_1.zx, !(!vec2<bool>(true, var_1.x)), var_1.x)), ~vec4<u32>(~1u, 48528u | var_0.x, var_0.x, firstTrailingBit(16542u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(182f - var_2.c.x) - global0.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c.x, global0.b.x, true)), -497f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -317f)), global0.c.x) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c.x * global0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))))));
}

