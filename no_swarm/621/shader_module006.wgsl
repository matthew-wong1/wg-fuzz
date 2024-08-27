struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -232f, -1737f), vec4<u32>(7560u, 4294967295u, 41300u, 1u), 568f, 0i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-1000f - global0.d)) + _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.d)), 260f)) * global0.d) + -133f), global0.d, _wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * -782f), -1434f) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(722f, -1085f))))));
    global0 = Struct_1(select(select(!(!vec4<bool>(false, global0.a.x, true, global0.a.x)), vec4<bool>(false, all(vec2<bool>(true, global0.a.x)), all(global0.a.zxx), u_input.a < -9382i), _wgslsmith_div_i32(-8924i, 12718i) == (global0.e >> (global0.c.x % 32u))), global0.a, true), var_0.ywy, ~vec4<u32>(global0.c.x, min(1u, select(1u, u_input.b.x, global0.a.x)), 1u >> (global0.c.x % 32u), ~_wgslsmith_add_u32(global0.c.x, 0u)), _wgslsmith_f_op_f32(sign(var_0.x)), select(global0.e, global0.e, true));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(0i, global0.e, global0.e)), vec3<i32>(global0.e, -2147483647i, i32(-1i) * -14586i))), global0.e, global0.e);
    var var_2 = Struct_2(true || !any(select(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, false, global0.a.x, true))), vec2<i32>(_wgslsmith_div_i32(-(~(-1i)), -1i), abs(-1i)));
    let var_3 = any(!select(vec2<bool>(true, true), vec2<bool>(global0.a.x, true), select(var_2.a, true, global0.a.x)));
    return vec2<i32>(1i, ~(abs(-35301i) & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, global0.e, -1i), vec4<i32>(var_2.b.x, -2147483647i, 64480i, -472i))) & firstLeadingBit(~u_input.a));
}

fn func_2(arg_0: f32, arg_1: f32) -> vec2<i32> {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + global0.b), global0.c, -956f, -_wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(global0.e, global0.e, u_input.a, global0.e)), countOneBits(vec4<i32>(global0.e, -8206i, u_input.c, u_input.c))));
    return countOneBits(_wgslsmith_sub_vec2_i32(reverseBits(countOneBits(vec2<i32>(global0.e, 1i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(40852i, 1i), func_3(), _wgslsmith_clamp_vec2_i32(~vec2<i32>(global0.e, global0.e), vec2<i32>(0i, -9009i), vec2<i32>(-1499i, -2147483647i)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = global0.c.x;
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, arg_1)) + global0.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1495f, global0.b.x, global0.d) - global0.b)))), ~(~vec4<u32>(~1u, u_input.b.x, 1u >> (global0.c.x % 32u), select(15299u, 4294967295u, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1280f)) * -308f), ~_wgslsmith_clamp_i32(~min(global0.e, 14573i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e, global0.e, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.e, u_input.c, -2147483647i), vec3<i32>(arg_3.x, -11016i, -6150i)))));
    let var_2 = global0.b.x;
    var var_3 = ~_wgslsmith_clamp_vec4_u32(~var_1.c, min(max(vec4<u32>(var_1.c.x, global0.c.x, global0.c.x, u_input.b.x), var_1.c), vec4<u32>(global0.c.x, 1u, 4294967295u, ~global0.c.x)), vec4<u32>(0u, global0.c.x, global0.c.x, 4294967295u));
    global0 = Struct_1(!vec4<bool>(false && (true | var_1.a.x), global0.a.x & true, false, global0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f + var_1.d) - 185f), arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1))))) - vec3<f32>(3508f, var_1.d, arg_1)), _wgslsmith_sub_vec4_u32(~(~var_1.c), ~_wgslsmith_mod_vec4_u32(var_1.c, var_1.c)) & (vec4<u32>(1u, abs(0u), global0.c.x, select(0u, var_1.c.x, arg_2)) & countOneBits(~vec4<u32>(u_input.b.x, var_1.c.x, var_3.x, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f - -906f) * var_1.b.x), -1065f))), _wgslsmith_sub_i32(-u_input.a << (21308u % 32u), global0.e));
    return Struct_3(Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, var_1.d, 1020f)))), ~(~(var_1.c >> (vec4<u32>(4294967295u, var_3.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), -436f, arg_3.x & ~_wgslsmith_sub_i32(29294i, 64798i)), select(vec4<bool>(!(true && arg_0.x), true, false, all(var_1.a.zxx)), select(vec4<bool>(true, true, arg_2 != false, false), var_1.a, !(!vec4<bool>(global0.a.x, false, true, true))), vec4<bool>(!(!global0.a.x), 3915i < _wgslsmith_sub_i32(var_1.e, u_input.a), all(vec3<bool>(false, global0.a.x, arg_2)), all(global0.a.wxw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.b.zx))), var_3.xw);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_1.c;
    var var_1 = Struct_3(Struct_1(!(!select(vec4<bool>(global0.a.x, true, global0.a.x, false), arg_1.b, arg_1.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.b)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, 1u), 43250u), u_input.b.x, 0u, min(_wgslsmith_add_u32(15591u, 8733u), u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.b.x)))), ~(~(-2147483647i))), global0.a, arg_2.c, vec2<u32>(~(~_wgslsmith_add_u32(0u, 0u)), 1u));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.c.x);
    global0 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.d)) * 612f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1694f * arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d * arg_2.c.x)))), global0.b.x), countOneBits(vec4<u32>(select(global0.c.x, 4294967295u, false) & ~global0.c.x, 0u, 34626u, (112164u & u_input.b.x) >> (max(arg_1.d.x, global0.c.x) % 32u))), _wgslsmith_f_op_f32(-global0.b.x), 1560i);
    let var_3 = arg_0;
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<i32> {
    global0 = func_5(Struct_2(true, vec2<i32>(67589i, -3895i)), func_4(!(!select(vec4<bool>(true, global0.a.x, false, true), vec4<bool>(true, global0.a.x, arg_0.x, true), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f - global0.b.x)))), arg_1.a, func_2(_wgslsmith_div_f32(615f, _wgslsmith_div_f32(global0.b.x, 1402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(974f, -1149f)) * -1107f))), Struct_3(func_4(vec4<bool>(true, arg_1.a & global0.a.x, false, false), 596f, arg_1.a, vec2<i32>(_wgslsmith_sub_i32(arg_1.b.x, 15517i), 4375i)).a, vec4<bool>(true, func_4(global0.a, 361f, true, -vec2<i32>(global0.e, arg_1.b.x)).a.a.x, arg_1.a, !all(arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.zz)) + vec2<f32>(_wgslsmith_f_op_f32(global0.d * global0.d), 868f)), u_input.b), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_2(223f, 1040f), arg_1.b), -18011i), u_input.a));
    let var_0 = u_input.b.x & _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(38360u, u_input.b.x), u_input.b.x), countOneBits(u_input.b)), vec2<u32>(global0.c.x >> (62810u % 32u), func_4(vec4<bool>(false, false, true, arg_1.a), global0.d, arg_0.x, arg_1.b).a.c.x) ^ (~arg_2 >> (global0.c.yw % vec2<u32>(32u))));
    global0 = Struct_1(select(vec4<bool>(!(global0.a.x & false), -global0.e < 1i, any(global0.a) | (31543u != var_0), all(!vec3<bool>(false, global0.a.x, arg_1.a))), global0.a, !(!global0.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f + -342f)), 1f, func_4(!global0.a, -569f, global0.d > 1000f, ~vec2<i32>(global0.e, -59499i)).c.x))), global0.c << (max(global0.c, firstTrailingBit(global0.c)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1469f), _wgslsmith_f_op_f32(global0.d + global0.b.x)))), reverseBits(-arg_1.b.x));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_4(vec4<bool>(true, global0.a.x, arg_1.a, true), -929f, arg_1.a, vec2<i32>(global0.e, u_input.c)).a.d), func_5(Struct_2(true, vec2<i32>(u_input.a, u_input.c)), func_4(global0.a, 480f, false, arg_1.b), Struct_3(Struct_1(vec4<bool>(false, global0.a.x, true, true), vec3<f32>(386f, 377f, 1351f), vec4<u32>(1u, 102983u, 0u, var_0), global0.b.x, 2147483647i), global0.a, global0.b.zz, arg_2), arg_1.b >> (arg_2 % vec2<u32>(32u))).b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.b.x, global0.b.x)), -1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b)) - vec3<f32>(-785f, -689f, global0.d)) + global0.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(func_5(Struct_2(global0.a.x, vec2<i32>(1i, global0.e)), Struct_3(Struct_1(global0.a, vec3<f32>(-603f, global0.d, global0.b.x), vec4<u32>(43183u, 4294967295u, 21903u, arg_2.x), 676f, arg_1.b.x), global0.a, vec2<f32>(1179f, global0.d), vec2<u32>(arg_2.x, var_0)), Struct_3(Struct_1(global0.a, global0.b, vec4<u32>(17077u, 4294967295u, var_0, 15614u), global0.b.x, -2147483647i), global0.a, vec2<f32>(-2099f, 263f), global0.c.wy), vec2<i32>(arg_1.b.x, -2147483647i)).c.x, _wgslsmith_clamp_u32(arg_2.x, 52315u, var_0), ~0u, func_5(Struct_2(arg_1.a, arg_1.b), Struct_3(Struct_1(global0.a, global0.b, global0.c, 990f, global0.e), vec4<bool>(arg_1.a, false, true, arg_1.a), vec2<f32>(866f, -319f), vec2<u32>(global0.c.x, u_input.b.x)), Struct_3(Struct_1(global0.a, vec3<f32>(-1466f, global0.d, -1000f), global0.c, global0.b.x, global0.e), global0.a, global0.b.zy, vec2<u32>(u_input.b.x, 14834u)), arg_1.b).c.x), global0.c, ~(~global0.c)), -652f, -3756i);
    global0 = Struct_1(global0.a, global0.b, func_4(!global0.a, -1000f, -u_input.a != u_input.a, arg_1.b).a.c, func_4(vec4<bool>(true, false, func_5(Struct_2(arg_0.x, vec2<i32>(u_input.a, 7785i)), Struct_3(Struct_1(vec4<bool>(arg_0.x, true, false, false), global0.b, vec4<u32>(3628u, 1u, 4294967295u, u_input.b.x), -178f, global0.e), global0.a, global0.b.xy, vec2<u32>(global0.c.x, 1u)), func_4(vec4<bool>(arg_1.a, arg_0.x, arg_1.a, arg_1.a), 522f, true, vec2<i32>(2147483647i, -19905i)), arg_1.b).a.x, global0.a.x), global0.b.x, arg_1.a, arg_1.b).a.b.x, -(i32(-1i) * -8012i));
    return -(~select(max(~vec4<i32>(arg_1.b.x, global0.e, -39043i, -28990i), vec4<i32>(arg_1.b.x, global0.e, global0.e, global0.e) | vec4<i32>(u_input.c, u_input.a, global0.e, 23520i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global0.e, u_input.a, 0i), vec4<i32>(arg_1.b.x, 34383i, global0.e, 33788i) >> (vec4<u32>(arg_2.x, arg_2.x, var_0, 81182u) % vec4<u32>(32u))), !select(arg_1.a, global0.a.x, global0.a.x)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    global0 = func_4(!func_4(select(global0.a, select(global0.a, vec4<bool>(arg_1.a, true, false, global0.a.x), global0.a.x), !global0.a.x), global0.b.x, true, arg_0.xx).a.a, _wgslsmith_f_op_f32(-global0.d), false, ~(~arg_0.xw)).a;
    global0 = func_4(select(global0.a, vec4<bool>(true, true, arg_1.a, any(global0.a.yw)), select(global0.a, select(func_5(Struct_2(true, vec2<i32>(arg_1.b.x, -2147483647i)), Struct_3(Struct_1(vec4<bool>(true, arg_1.a, global0.a.x, global0.a.x), global0.b, global0.c, -844f, 2147483647i), global0.a, global0.b.zz, u_input.b), Struct_3(Struct_1(global0.a, vec3<f32>(global0.d, global0.d, global0.b.x), global0.c, global0.d, arg_1.b.x), global0.a, vec2<f32>(325f, -107f), global0.c.zw), vec2<i32>(2147483647i, -3627i)).a, vec4<bool>(true, true, arg_1.a, arg_1.a), vec4<bool>(global0.a.x, false, false, true)), global0.a)), -632f, !any(global0.a), abs(countOneBits(arg_1.b))).a;
    var var_0 = arg_0;
    var var_1 = func_5(Struct_2(!(!global0.a.x) || global0.a.x, ~abs(vec2<i32>(-10592i, 1i))), func_4(func_5(arg_1, func_4(global0.a, global0.d, any(vec3<bool>(false, arg_1.a, arg_1.a)), ~vec2<i32>(u_input.a, arg_2.x)), Struct_3(Struct_1(vec4<bool>(false, global0.a.x, false, global0.a.x), vec3<f32>(global0.b.x, 176f, -178f), global0.c, global0.d, -29581i), vec4<bool>(global0.a.x, arg_1.a, arg_1.a, arg_1.a), _wgslsmith_f_op_vec2_f32(floor(global0.b.zy)), abs(global0.c.xw)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_0.x, 1i)), arg_1.b)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-817f))), any(select(func_4(vec4<bool>(true, true, arg_1.a, false), global0.d, true, arg_1.b).b.zw, global0.a.yw, !global0.a.zx)), -_wgslsmith_sub_vec2_i32(firstLeadingBit(arg_1.b), ~vec2<i32>(454i, -2147483647i))), Struct_3(Struct_1(global0.a, _wgslsmith_div_vec3_f32(vec3<f32>(-176f, global0.b.x, global0.b.x), _wgslsmith_f_op_vec3_f32(floor(global0.b))), vec4<u32>(1873u, countOneBits(21048u), 1u, arg_3), _wgslsmith_f_op_f32(-global0.b.x), -1i), global0.a, global0.b.xx, global0.c.wy), vec2<i32>(_wgslsmith_div_i32(~func_5(Struct_2(arg_1.a, vec2<i32>(arg_2.x, arg_2.x)), Struct_3(Struct_1(global0.a, global0.b, global0.c, global0.b.x, -16079i), global0.a, global0.b.yy, vec2<u32>(59132u, global0.c.x)), Struct_3(Struct_1(global0.a, global0.b, global0.c, 657f, 2147483647i), vec4<bool>(global0.a.x, true, false, true), global0.b.yy, vec2<u32>(1u, 98u)), arg_1.b).e, firstLeadingBit(1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 14411u), global0.c.xxz) % 32u)), arg_0.x));
    var_0 = arg_0;
    return Struct_1(vec4<bool>(false, true, true && (-arg_2.x == ~arg_2.x), ~(~global0.c.x) > 66179u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-839f, _wgslsmith_f_op_f32(f32(-1f) * -861f), 687f)), global0.c, _wgslsmith_f_op_f32(2018f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2401f - var_1.b.x) * 1688f))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_1(!vec3<bool>(select(true, true, global0.a.x), true, false), Struct_2(!any(vec3<bool>(global0.a.x, true, global0.a.x)), vec2<i32>(global0.e, global0.e)), vec2<u32>(1u, ~4767u)), Struct_2(all(!vec2<bool>(global0.a.x, true)), ~min(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(global0.e, -1i) | vec2<i32>(0i, -1i))), ~min(min(_wgslsmith_mod_vec2_i32(vec2<i32>(34255i, u_input.a), vec2<i32>(global0.e, global0.e)), ~vec2<i32>(-1i, -22644i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.e, global0.e), vec2<i32>(global0.e, u_input.c))), 4294967295u);
    var var_0 = _wgslsmith_f_op_f32(sign(-308f));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.b)) - global0.b), _wgslsmith_add_vec4_u32(vec4<u32>(abs(0u), ~4294967295u, abs(u_input.b.x), ~0u), firstTrailingBit(vec4<u32>(global0.c.x, 14464u, 0u, 42063u))) & global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), -812f), -select(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.e, -28500i, 4053i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global0.e, -2147483647i, -24056i), vec4<i32>(u_input.a, u_input.c, 30876i, global0.e))), u_input.c, all(vec2<bool>(global0.a.x, global0.a.x)) || any(global0.a.xy)));
    let var_1 = -abs(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, 1i, global0.e)), abs(vec3<i32>(-20020i, u_input.c, -2147483647i)))) ^ -u_input.c;
    let var_2 = global0.b.x;
    var var_3 = global0.b.x > -192f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(57647u), u_input.b.x, ~1u | global0.c.x, u_input.b.x), func_1(global0.a.wyy, Struct_2(false, vec2<i32>(-global0.e, _wgslsmith_add_i32(u_input.a, -61160i))), func_5(Struct_2(func_6(vec4<i32>(global0.e, global0.e, var_1, u_input.c), Struct_2(false, vec2<i32>(u_input.c, -41751i)), vec2<i32>(u_input.c, var_1), u_input.b.x).a.x, vec2<i32>(-37982i, global0.e)), func_4(!global0.a, _wgslsmith_f_op_f32(-global0.b.x), all(vec2<bool>(false, false)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1), vec2<i32>(global0.e, var_1))), Struct_3(Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), global0.b, global0.c, global0.b.x, u_input.c), select(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), global0.a, global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 829f)), func_6(vec4<i32>(0i, 22494i, 0i, u_input.c), Struct_2(true, vec2<i32>(35697i, -1i)), vec2<i32>(u_input.a, 0i), global0.c.x).c.wy), -(vec2<i32>(var_1, u_input.c) << (u_input.b % vec2<u32>(32u)))).c.xy).zx, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1093f, 1000f, -152f), vec4<f32>(global0.d, -1000f, -421f, 2062f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 711f, global0.d, 1645f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.d, -1319f, -1045f, 1880f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.b.x, global0.d, global0.d) * vec4<f32>(global0.d, -1559f, global0.d, 1085f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -256f, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, 697f, -1098f) + vec4<f32>(-668f, global0.b.x, global0.b.x, global0.b.x)), func_6(vec4<i32>(u_input.a, -1i, 0i, var_1), Struct_2(false, vec2<i32>(u_input.c, u_input.a)), vec2<i32>(u_input.c, var_1), global0.c.x).a.x))))), global0.e);
}

