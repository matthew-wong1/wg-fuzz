struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1824f, 1220f, -381f), vec3<f32>(1994f, -1000f, -1491f), vec3<f32>(-128f, -1000f, -1984f), vec3<f32>(-1674f, 269f, 921f), vec3<f32>(-1000f, -1000f, 789f), vec3<f32>(-745f, 610f, 1000f), vec3<f32>(-488f, -574f, -411f), vec3<f32>(-445f, -203f, 1804f), vec3<f32>(-875f, 139f, -1000f), vec3<f32>(589f, -439f, 354f), vec3<f32>(-1733f, 1109f, 584f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = Struct_5(Struct_4(Struct_1(abs(1i), -344f, vec2<bool>(true, true)), vec4<u32>(abs(1u), firstLeadingBit(1u), max(13797u, 1u), 1u)), Struct_3(countOneBits(-vec4<i32>(-47043i, 25654i, 1i, 20147i)), Struct_1(_wgslsmith_mod_i32(2147483647i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1817f)), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, 1000f, -329f, 650f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-248f, -1493f, 110f, 102f))))), vec4<f32>(1601f, _wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(f32(-1f) * -467f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-693f, -1034f) + _wgslsmith_f_op_f32(1000f - 1049f)))), Struct_3(vec4<i32>(-12925i, _wgslsmith_mult_i32(i32(-1i) * -1i, select(1i, -40560i, true)), _wgslsmith_div_i32(-2147483647i, 1i), 1049i), Struct_1(_wgslsmith_clamp_i32(1i, i32(-1i) * -35998i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(334f))), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2219f, -239f), _wgslsmith_f_op_f32(sign(-510f)))), _wgslsmith_f_op_f32(abs(-433f)), -659f, _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, -578f, -1000f, 327f))))));
    var_0 = Struct_5(Struct_4(var_0.a.a, vec4<u32>(var_0.a.b.x, ~u_input.a, 1u ^ arg_0.x, _wgslsmith_dot_vec4_u32(~var_0.a.b, select(var_0.a.b, var_0.a.b, vec4<bool>(var_0.a.a.c.x, true, true, true))))), var_0.b, Struct_3(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.b.a, 34653i, 13156i, 18457i), var_0.b.a) >> (var_0.a.b % vec4<u32>(32u)), Struct_1(var_0.b.b.a, var_0.a.a.b, !(!vec2<bool>(var_0.a.a.c.x, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.c.d - vec4<f32>(705f, var_0.c.d.x, var_0.c.c.x, var_0.c.b.b)), _wgslsmith_f_op_vec4_f32(min(var_0.b.d, vec4<f32>(var_0.a.a.b, 422f, -232f, -482f))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.d.x, 576f, var_0.b.c.x, var_0.b.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d.x, var_0.c.c.x, -426f, -676f) - _wgslsmith_f_op_vec4_f32(ceil(var_0.b.c))))));
    let var_1 = firstLeadingBit((var_0.c.b.a ^ ~_wgslsmith_sub_i32(6042i, var_0.b.a.x)) >> (abs(arg_0.x) % 32u));
    let var_2 = !any(!select(select(vec4<bool>(var_0.c.b.c.x, false, true, false), vec4<bool>(var_0.b.b.c.x, true, true, var_0.c.b.c.x), vec4<bool>(var_0.c.b.c.x, var_0.c.b.c.x, var_0.a.a.c.x, false)), vec4<bool>(var_0.c.b.c.x, false, true, var_0.b.b.c.x), !vec4<bool>(var_0.b.b.c.x, true, false, false)));
    var_0 = Struct_5(var_0.a, Struct_3(vec4<i32>(-1i) * -var_0.c.a, var_0.a.a, _wgslsmith_f_op_vec4_f32(-var_0.c.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.d)))), var_0.c);
    return var_0.b.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = array<vec3<f32>, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(1u, ~0u))).x));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(303f, 1115f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1773f, _wgslsmith_f_op_f32(floor(1343f)))))))));
    let var_1 = select(select(~(~vec3<u32>(0u, 19104u, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, 22727u)), u_input.a >= max(u_input.a, u_input.a)) >> (_wgslsmith_add_vec3_u32(~(vec3<u32>(79640u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 15280u, u_input.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(42092u, 12482u, 40763u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(48562u, u_input.a, u_input.a))) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.a, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), ~u_input.a)), min(105440u, u_input.a)), all(!select(!arg_0.yx, arg_2.c, select(arg_2.c, arg_2.c, arg_0.x))));
    var var_2 = vec2<bool>(all(arg_2.c), false);
    return ~(~firstTrailingBit(~vec4<u32>(var_1.x, u_input.a, u_input.a, 108757u)) & vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, var_1.x, 77361u), var_1), 4294967295u, 1u));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_u32(7328u, max(min(abs(arg_0) << (u_input.a % 32u), abs(1u ^ u_input.a)), ~arg_0));
    var var_1 = vec2<i32>(_wgslsmith_add_i32(~(~_wgslsmith_mod_i32(-91611i, -1i)), i32(-1i) * -(i32(-1i) * -6124i)), _wgslsmith_mod_i32(73688i, firstLeadingBit(-(~1i))));
    global0 = array<vec3<f32>, 11>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-51549i, _wgslsmith_add_i32(abs(2147483647i), -var_1.x), 10204i & var_1.x, 1i), vec4<i32>(_wgslsmith_clamp_i32(var_1.x, 2147483647i, -1i), -(-2147483647i << (arg_1 % 32u)), abs(-43831i) ^ var_1.x, _wgslsmith_sub_i32(21585i, var_1.x & var_1.x))), -325f, vec2<bool>(true, all(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true))));
    global0 = array<vec3<f32>, 11>();
    return Struct_4(Struct_1(_wgslsmith_mult_i32(i32(-1i) * -78528i, -16268i), -130f, !select(var_2.c, select(vec2<bool>(true, true), var_2.c, vec2<bool>(true, false)), !vec2<bool>(var_2.c.x, false))), max(vec4<u32>(u_input.a, u_input.a | _wgslsmith_sub_u32(var_0, 1u), ~0u, 1u), func_4(select(select(vec4<bool>(false, true, false, var_2.c.x), vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.c.x), var_2.c.x), vec4<bool>(var_2.c.x, false, false, var_2.c.x), all(vec4<bool>(true, var_2.c.x, var_2.c.x, false))), _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(77972u, var_0))), Struct_1(0i >> (arg_1 % 32u), _wgslsmith_f_op_f32(532f + 1000f), var_2.c), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2013f, -591f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b, -894f, -2094f, 324f) + vec4<f32>(arg_0.b, 1712f, arg_0.b, arg_1.a.b))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(arg_2, 98684u)))))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(ceil(arg_1.a.b))), 643f, -1720f, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * vec4<f32>(arg_1.a.b, _wgslsmith_f_op_f32(abs(149f)), _wgslsmith_f_op_f32(ceil(1642f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -593f), 325f))))));
    var var_1 = var_0.x;
    var var_2 = abs(~(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a, arg_1.a.a), _wgslsmith_div_vec2_i32(vec2<i32>(51621i, arg_0.a), vec2<i32>(2147483647i, -2147483647i))) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(44379i, arg_0.a), -vec2<i32>(arg_0.a, arg_1.a.a))));
    var var_3 = countOneBits(firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(30177i, arg_0.a, arg_0.a, 2147483647i), vec4<i32>(-9598i, -14413i, arg_1.a.a, -2147483647i) | vec4<i32>(var_2.x, 0i, arg_0.a, arg_0.a), vec4<i32>(var_2.x, arg_1.a.a, var_2.x, -34920i) ^ vec4<i32>(-2147483647i, arg_1.a.a, -6777i, -17230i)))) << ((firstLeadingBit(arg_1.b) | abs(vec4<u32>(func_4(vec4<bool>(true, arg_1.a.c.x, false, arg_1.a.c.x), vec4<f32>(877f, var_0.x, arg_0.b, -1000f), Struct_1(arg_1.a.a, arg_0.b, vec2<bool>(false, false)), var_0.wy).x, ~arg_1.b.x, 20689u, min(0u, 20837u)))) % vec4<u32>(32u));
    let var_4 = arg_0.c.x;
    return select(!arg_0.c, !arg_0.c, vec2<bool>(!(_wgslsmith_dot_vec2_i32(var_3.yy, var_3.yy) != 1i), func_2(_wgslsmith_mult_u32(firstLeadingBit(arg_1.b.x), u_input.a), 4294967295u).a.c.x));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = select(!(!func_5(Struct_1(-1i, 1000f, arg_1), func_2(1u, 37998u), ~1u)), !func_2(arg_0.a.b.x, countOneBits(arg_2.a.b.x)).a.c, (true && all(vec4<bool>(true, arg_3.x, false, arg_1.x))) & (arg_0.b.c.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.b * 941f))));
    let var_2 = Struct_3(arg_0.c.a, Struct_1(2147483647i, _wgslsmith_f_op_f32(-arg_2.a.a.b), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.d)))), _wgslsmith_f_op_vec4_f32(round(arg_2.c.c)));
    let var_3 = func_2(13867u, arg_2.a.b.x).a;
    let var_4 = countOneBits(var_2.a.x) | (19368i & func_2(95191u, ~abs(u_input.a)).a.a);
    return _wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-127f - arg_2.c.b.b), 581f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b.b.b))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = -abs(arg_0.x);
    var var_1 = -1021f;
    var var_2 = !arg_1.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1968f * -960f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x)) * 948f);
    var var_3 = vec2<u32>(54927u, 4294967295u);
    return abs(vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), -2147483647i << (~4294967295u % 32u)), (_wgslsmith_div_i32(arg_0.x, -2147483647i) ^ arg_0.x) ^ ~(-25165i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_6(vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -6435i, 1i), _wgslsmith_div_i32(~29132i, i32(-1i) * -3423i)), vec4<bool>(true, !any(vec4<bool>(false, false, true, true)), false, _wgslsmith_div_f32(-510f, 1130f) < _wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(Struct_1(8021i, 1048f, vec2<bool>(false, true)), vec4<u32>(3641u, u_input.a, 4294967295u, u_input.a)), Struct_3(vec4<i32>(-2147483647i, -32674i, 0i, 29986i), Struct_1(42305i, 1020f, vec2<bool>(true, true)), vec4<f32>(311f, 1000f, -1160f, -706f), vec4<f32>(402f, 695f, 147f, 611f)), Struct_3(vec4<i32>(4463i, -2147483647i, 1i, -1i), Struct_1(-56413i, -836f, vec2<bool>(false, true)), vec4<f32>(-547f, -2116f, -424f, -675f), vec4<f32>(-961f, -205f, 1000f, 839f))), vec2<bool>(true, true), Struct_5(Struct_4(Struct_1(0i, -1685f, vec2<bool>(false, true)), vec4<u32>(1u, u_input.a, 4294967295u, 32445u)), Struct_3(vec4<i32>(1i, 2147483647i, 2147483647i, -1i), Struct_1(1i, -581f, vec2<bool>(false, false)), vec4<f32>(-1270f, 1010f, -705f, 1504f), vec4<f32>(407f, 889f, -336f, -840f)), Struct_3(vec4<i32>(-2147483647i, 0i, 2147483647i, -2147483647i), Struct_1(-715i, 598f, vec2<bool>(false, false)), vec4<f32>(1000f, 999f, 1332f, -342f), vec4<f32>(-903f, -1114f, -1086f, 1462f))), vec3<bool>(false, false, true)))));
    var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.x, 2147483647i, 58004i)), max(vec3<i32>(7344i, var_0.x, 2147483647i), vec3<i32>(-1i, 28975i, 31303i))) >> (~firstTrailingBit(u_input.a) % 32u), -abs(i32(-1i) * -8903i)), -13375i);
    var var_1 = Struct_5(Struct_4(Struct_1(469i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(992f + 374f), 840f)), vec2<bool>(true, true)), vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(0u), u_input.a), u_input.a, 0u, firstLeadingBit(~u_input.a))), Struct_3(~(-_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -15519i, var_0.x, var_0.x), vec4<i32>(0i, var_0.x, 21098i, var_0.x))), Struct_1(~(-39030i & var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(624f, -448f)) - _wgslsmith_div_f32(1031f, 867f)), vec2<bool>(true, any(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1943f, 1000f, 2187f, -770f), vec4<f32>(-1000f, 233f, -160f, 1367f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(238f, -412f, -1092f, -1289f) + vec4<f32>(-1049f, 268f, 1301f, 2085f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-170f, 1279f)), _wgslsmith_f_op_f32(sign(631f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -355f))), -533f)), Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.x, 1i, -1i, 2147483647i), vec4<i32>(var_0.x, -2147483647i, var_0.x, 62087i), vec4<bool>(false, false, true, true)), vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i) ^ vec4<i32>(2147483647i, -16890i, var_0.x, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, var_0.x, var_0.x), ~vec4<i32>(var_0.x, var_0.x, 31579i, 0i))), func_2(193u, u_input.a).a, vec4<f32>(_wgslsmith_f_op_f32(-340f + 1443f), _wgslsmith_f_op_f32(select(-1379f, _wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(Struct_1(var_0.x, -1276f, vec2<bool>(false, false)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_3(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), Struct_1(var_0.x, 2328f, vec2<bool>(true, false)), vec4<f32>(-487f, -706f, 636f, -902f), vec4<f32>(968f, 494f, -671f, 612f)), Struct_3(vec4<i32>(var_0.x, var_0.x, 12738i, -5537i), Struct_1(var_0.x, 1726f, vec2<bool>(true, false)), vec4<f32>(1115f, 1678f, 743f, 1528f), vec4<f32>(1352f, 615f, -1000f, 1503f))), vec2<bool>(false, false), Struct_5(Struct_4(Struct_1(var_0.x, 101f, vec2<bool>(true, false)), vec4<u32>(35762u, 4294967295u, u_input.a, u_input.a)), Struct_3(vec4<i32>(var_0.x, 22605i, var_0.x, 1i), Struct_1(64453i, 522f, vec2<bool>(false, false)), vec4<f32>(875f, -1275f, -736f, -428f), vec4<f32>(281f, -1242f, 1283f, -1633f)), Struct_3(vec4<i32>(var_0.x, 5858i, 0i, 0i), Struct_1(var_0.x, 413f, vec2<bool>(true, false)), vec4<f32>(-451f, -703f, 633f, -888f), vec4<f32>(-1000f, -1005f, 1436f, -1557f))), vec3<bool>(true, false, true))), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1236f - -1765f), _wgslsmith_f_op_f32(830f - 179f))), 1089f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, 231f, 642f, -331f)))))));
    var_0 = min(select(~abs(_wgslsmith_add_vec2_i32(var_1.b.a.wz, vec2<i32>(var_0.x, var_0.x))), select(~(-var_1.c.a.ww), var_1.c.a.yz, var_1.b.b.c.x), !var_1.c.b.c), func_6(_wgslsmith_mult_vec2_i32(var_1.b.a.zy, var_1.c.a.yz | _wgslsmith_mult_vec2_i32(var_1.b.a.yz, vec2<i32>(var_1.c.a.x, var_1.b.b.a))), !select(select(vec4<bool>(var_1.c.b.c.x, var_1.a.a.c.x, var_1.c.b.c.x, var_1.a.a.c.x), vec4<bool>(false, false, var_1.b.b.c.x, var_1.c.b.c.x), var_1.c.b.c.x), vec4<bool>(var_1.b.b.c.x, var_1.a.a.c.x, var_1.c.b.c.x, var_1.c.b.c.x), false)));
    global0 = array<vec3<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(var_1.b.c.xz)), var_1.a.b.x);
}

