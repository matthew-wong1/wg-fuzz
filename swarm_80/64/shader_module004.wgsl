struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    global0 = Struct_3(arg_0.ww, 1i, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1913f, _wgslsmith_f_op_f32(f32(-1f) * -457f), -1751f, _wgslsmith_f_op_f32(f32(-1f) * -466f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.a.a.x, global0.d.a.a.x, global0.c.a.x, global0.c.a.x)))))), vec3<u32>(select(_wgslsmith_mult_u32(arg_1, 54767u), _wgslsmith_div_u32(4294967295u, 4191u), global0.d.a.a.x <= 803f), ~u_input.e.x, ~u_input.d.x), firstLeadingBit(~global0.d.b.x), true, ~1i), global0.d, u_input.d.zw);
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, 336f, global0.d.a.a.x, global0.c.a.x) * vec4<f32>(global0.c.a.x, -741f, global0.d.a.a.x, 479f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d.a.a - vec4<f32>(-1000f, global0.d.a.a.x, -361f, -766f)), _wgslsmith_f_op_vec4_f32(exp2(global0.d.a.a))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0.c.a, vec4<f32>(890f, -295f, global0.d.a.a.x, -414f))))))));
    global0 = Struct_3(select(global0.d.e.zz, vec2<bool>(true, arg_0.x), false && arg_0.x), global0.c.e, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.c.a), global0.c.b, _wgslsmith_mult_u32(~(24912u & global0.e.x), 30487u), all(!(!vec4<bool>(false, global0.c.d, arg_0.x, arg_0.x))), firstTrailingBit(u_input.a.x ^ select(-2147483647i, -28999i, arg_0.x))), global0.d, vec2<u32>(68536u, _wgslsmith_mult_u32(arg_1, 43895u)));
    let var_2 = true;
    return var_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a.x + 217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-282f, -255f))), _wgslsmith_div_f32(arg_2.a.a.x, _wgslsmith_f_op_f32(arg_2.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-547f, 905f)))));
    var var_1 = global0.a.x;
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.d.e, min(4294967295u, u_input.e.x)))), -2001f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1555f, global0.c.a.x))), vec3<f32>(_wgslsmith_f_op_f32(global0.d.a.a.x * _wgslsmith_f_op_f32(-global0.d.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -924f)), _wgslsmith_f_op_f32(740f - _wgslsmith_f_op_f32(abs(603f))))));
    global0 = Struct_3(select(!arg_2.e.zx, !global0.d.d, all(arg_2.e.wwx)), arg_1.x, arg_2.a, global0.d, vec2<u32>(arg_2.b.x, ~(~0u)));
    let var_3 = true;
    return Struct_5(!vec3<bool>(arg_2.a.e >= arg_2.a.e, any(vec3<bool>(true, false, false)), !(!arg_2.c)), global0.d, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(52637i, arg_2.a.e), ~u_input.a.x), 2147483647i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_2.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.a.zy + var_2.zz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.a.a.zy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1541f), global0.d.a.a.ww, global0.d.e.zz)), vec2<bool>(true, global0.d.d.x)))))), ~46552i);
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> i32 {
    let var_0 = func_2(global0.c.b, vec4<i32>(-2147483647i, min(arg_1.e, _wgslsmith_add_i32(6012i, _wgslsmith_mod_i32(global0.b, 90833i))), _wgslsmith_add_i32(abs(-arg_0), u_input.a.x), _wgslsmith_add_i32(-2147483647i, abs(global0.b) | ~arg_1.c)), Struct_2(func_2(~global0.c.b & vec3<u32>(93125u, 50558u, 1u), vec4<i32>(global0.c.e, arg_0, _wgslsmith_add_i32(global0.c.e, 2147483647i), _wgslsmith_mod_i32(2147483647i, -33431i)), global0.d).b.a, max(~(~vec3<u32>(15334u, 1u, arg_1.b.b.x)), func_2(~u_input.e, vec4<i32>(global0.d.a.e, 27648i, 0i, -1i), Struct_2(global0.c, vec3<u32>(4294967295u, 27787u, u_input.e.x), arg_1.b.d.x, vec2<bool>(global0.c.d, false), arg_1.b.e)).b.a.b), any(vec3<bool>(true, global0.d.e.x, global0.c.d)), func_2(~(~global0.c.b), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.c, -1i, -32299i), countOneBits(u_input.a)), Struct_2(func_2(global0.c.b, vec4<i32>(-2147483647i, arg_0, arg_0, -50620i), Struct_2(Struct_1(vec4<f32>(global0.c.a.x, 1218f, arg_1.b.a.a.x, 575f), vec3<u32>(25251u, 1u, 0u), 765u, arg_1.b.d.x, 19391i), vec3<u32>(global0.c.c, u_input.d.x, 4294967295u), arg_1.b.d.x, vec2<bool>(arg_1.b.e.x, true), vec4<bool>(false, global0.c.d, true, arg_1.b.e.x))).b.a, vec3<u32>(global0.d.a.c, 24285u, arg_1.b.b.x), arg_1.b.a.a.x >= arg_1.b.a.a.x, vec2<bool>(global0.d.a.d, false), vec4<bool>(true, global0.d.d.x, true, false))).b.e.zx, vec4<bool>(any(vec3<bool>(global0.d.a.d, arg_1.a.x, false)) || global0.a.x, global0.d.c, any(global0.a), true))).b;
    global0 = Struct_3(func_2(countOneBits(~vec3<u32>(84931u, var_0.b.x, global0.c.b.x)), _wgslsmith_div_vec4_i32(countOneBits(u_input.a), abs(u_input.a)), func_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, global0.c.c), global0.c.b), u_input.a, Struct_2(global0.c, vec3<u32>(6187u, u_input.e.x, u_input.e.x), any(vec4<bool>(global0.a.x, global0.d.c, false, global0.c.d)), !vec2<bool>(var_0.c, false), arg_1.b.e)).b).a.yz, (59102i << (1u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.b.x, 55594u, func_2(arg_1.b.b, u_input.a, Struct_2(var_0.a, u_input.d.yzw, global0.a.x, var_0.e.yw, vec4<bool>(true, global0.a.x, true, false))).b.a.b.x), ~countOneBits(vec3<u32>(4294967295u, 4294967295u, 19029u))) % 32u), func_2(~(~_wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(44458u, u_input.e.x, 0u))), -vec4<i32>(1i, arg_0, -43855i, 12587i) ^ vec4<i32>(arg_0, reverseBits(-6211i), 1i, _wgslsmith_mod_i32(-2147483647i, 16766i)), arg_1.b).b.a, var_0, var_0.a.b.xy);
    let var_1 = u_input.a.wyy;
    global0 = Struct_3(vec2<bool>(var_0.a.d, global0.c.d), ~(-46497i), func_2(firstTrailingBit(~global0.c.b), u_input.a, var_0).b.a, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), global0.c.a.x, -368f, _wgslsmith_f_op_f32(1256f - var_0.a.a.x)), arg_1.b.b, _wgslsmith_div_u32(~arg_1.b.b.x, _wgslsmith_dot_vec3_u32(var_0.a.b, vec3<u32>(var_0.a.b.x, var_0.b.x, 25693u))), true && (u_input.d.x > 22504u), _wgslsmith_mod_i32(~var_1.x, 2147483647i)), _wgslsmith_mult_vec3_u32(~firstLeadingBit(arg_1.b.b), vec3<u32>(u_input.e.x, 57598u, var_0.b.x)), !select(!global0.d.a.d, arg_1.b.a.a.x > 1000f, !global0.d.d.x), func_2(abs(vec3<u32>(arg_1.b.b.x, 29547u, var_0.a.b.x)), -u_input.a, global0.d).b.e.xw, select(!(!vec4<bool>(false, var_0.a.d, true, false)), arg_1.b.e, all(var_0.e))), abs(~reverseBits(vec2<u32>(u_input.d.x, var_0.b.x) >> (global0.e % vec2<u32>(32u)))));
    global0 = Struct_3(select(arg_1.b.e.zy, !(!(!var_0.d)), all(vec2<bool>(var_0.e.x, true))), firstTrailingBit(func_2(global0.d.b, select(vec4<i32>(2147483647i, var_1.x, var_1.x, global0.b), vec4<i32>(1i, var_1.x, global0.d.a.e, 2147483647i), u_input.d.x < u_input.e.x), func_2(~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b, u_input.c, arg_1.c, arg_1.c) & vec4<i32>(arg_0, arg_1.b.a.e, 1i, 0i), func_2(var_0.a.b, vec4<i32>(-1i, arg_0, global0.b, var_0.a.e), Struct_2(Struct_1(vec4<f32>(576f, arg_1.d.x, global0.d.a.a.x, arg_1.b.a.a.x), var_0.a.b, 1u, true, global0.d.a.e), vec3<u32>(var_0.a.c, 294u, 94879u), arg_1.b.d.x, vec2<bool>(true, false), vec4<bool>(true, var_0.c, false, var_0.d.x))).b).b).b.a.e), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b.a.a)), ~(~vec3<u32>(0u, 1u, 1u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.b.x, 0u, global0.c.c), vec3<u32>(u_input.d.x, 1u, arg_1.b.a.b.x)), ~var_0.b), global0.c.e > countOneBits(global0.d.a.e), 1i), func_2(vec3<u32>(4294967295u, 76902u, ~_wgslsmith_sub_u32(var_0.b.x, global0.e.x)), vec4<i32>(~(-var_0.a.e), -1i, _wgslsmith_dot_vec4_i32(-u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), 2147483647i ^ arg_1.b.a.e), func_2(global0.c.b, u_input.a, func_2(vec3<u32>(48061u, u_input.d.x, u_input.d.x), firstLeadingBit(vec4<i32>(2147483647i, var_0.a.e, var_0.a.e, -2147483647i)), func_2(vec3<u32>(u_input.d.x, 58756u, 15475u), u_input.a, Struct_2(Struct_1(vec4<f32>(-100f, 785f, var_0.a.a.x, global0.d.a.a.x), vec3<u32>(u_input.d.x, u_input.d.x, 20352u), var_0.b.x, true, -9451i), u_input.d.www, true, var_0.e.zx, vec4<bool>(false, false, arg_1.a.x, false))).b).b).b).b, _wgslsmith_mod_vec2_u32(~vec2<u32>(~4294967295u, _wgslsmith_mult_u32(global0.d.b.x, var_0.a.c)), vec2<u32>(global0.e.x, 1u)));
    return firstTrailingBit(abs(abs(i32(-1i) * -33866i)));
}

fn func_1(arg_0: bool, arg_1: i32) -> StorageBuffer {
    var var_0 = global0.c;
    return StorageBuffer(vec3<i32>(_wgslsmith_sub_i32((-1873i & arg_1) & -2147483647i, -(~52536i)), -u_input.c, -arg_1), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(-var_0.a.x)), global0.c.a.x))), _wgslsmith_mult_i32(func_4(arg_1, func_2(~global0.c.b, u_input.a, Struct_2(global0.c, var_0.b, var_0.d, global0.d.e.zw, global0.d.e))), abs(firstTrailingBit(global0.c.e & -2147483647i))), u_input.e.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d.a;
    let x = u_input.a;
    s_output = func_1(!(true & all(vec2<bool>(true, var_0.d))), ~35079i);
}

