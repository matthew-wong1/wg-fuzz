struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_f32(1772f - -1557f);
    let var_2 = Struct_1(!select(select(select(arg_0.a.b, vec4<bool>(true, true, true, false), vec4<bool>(false, arg_3.a.x, var_0.a.x, arg_0.b.a.x)), vec4<bool>(false, false, false, arg_3.b.x), var_0.a), !vec4<bool>(arg_3.b.x, var_0.c.x, true, var_0.b.x), var_0.b.x), vec4<bool>(false && (true & all(vec2<bool>(var_0.b.x, arg_0.a.a.x))), arg_3.b.x, arg_3.b.x, arg_3.d <= _wgslsmith_f_op_f32(global0.x * arg_0.a.d)), var_0.a.yyx, global0.x, ~vec2<i32>(arg_0.a.e.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(45884u, 1u, 56829u), vec3<u32>(41749u, 0u, 1u)) % 32u), ~_wgslsmith_div_i32(u_input.c.x, var_0.e.x)));
    var_0 = arg_3;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(374f))), _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(exp2(var_2.d))))), _wgslsmith_f_op_f32(-arg_3.d))), _wgslsmith_f_op_f32(ceil(566f)));
    return var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(arg_0, Struct_1(!select(select(arg_0.b, vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x), arg_0.a.x), vec4<bool>(false, arg_0.b.x, true, true), !arg_0.b), select(arg_0.b, !func_3(Struct_2(Struct_1(arg_0.b, vec4<bool>(arg_0.c.x, arg_0.b.x, arg_0.c.x, arg_0.b.x), vec3<bool>(arg_0.c.x, false, arg_0.b.x), global0.x, vec2<i32>(-20107i, u_input.c.x)), Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.b.x, true), vec4<bool>(true, false, false, false), vec3<bool>(true, arg_0.c.x, arg_0.a.x), arg_1.x, vec2<i32>(-2147483647i, -1i))), vec4<i32>(u_input.c.x, u_input.c.x, arg_0.e.x, 13663i), vec2<i32>(u_input.c.x, 82979i), Struct_1(arg_0.a, arg_0.b, vec3<bool>(false, true, arg_0.a.x), -298f, u_input.d.xy)), _wgslsmith_f_op_f32(-750f - global0.x) >= 1000f), vec3<bool>(arg_0.b.x, any(vec2<bool>(arg_0.a.x, false)), (arg_0.a.x & true) && !arg_0.a.x), -597f, vec2<i32>(12818i, u_input.b)));
    var var_1 = 3233u;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1)) - _wgslsmith_f_op_vec4_f32(step(arg_1, arg_1)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2149f, arg_1.x, arg_0.d, arg_0.d)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.x, 114f)), _wgslsmith_f_op_f32(abs(var_0.a.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1530f), -1224f), 673f, 126f))));
    var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~select(0u, 4294967295u, arg_0.c.x), ~min(1u, 0u)), ~countOneBits(select(vec2<u32>(16921u, 35163u), vec2<u32>(38735u, 0u), var_0.b.a.yz)));
    return Struct_2(Struct_1(vec4<bool>(var_0.a.c.x, arg_0.c.x, all(var_0.a.b.yy), true & arg_0.c.x), vec4<bool>(arg_0.a.x, true, true, !all(vec4<bool>(true, false, arg_0.c.x, var_0.b.b.x))), !arg_0.a.zww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(26730i, 0i), vec2<i32>(0i, 0i)))), var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-arg_0.b.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))) + 197f)), arg_0.b.d);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
    global0 = arg_1;
    var var_1 = 1u;
    var var_2 = u_input.a;
    return arg_0.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = -352f;
    let var_1 = func_4(func_2(Struct_1(!select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, false)), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), select(!vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, arg_1.x, arg_1.x), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) + -692f), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -37292i) ^ u_input.a.xy, arg_0.xy)), arg_2), vec4<f32>(arg_2.x, _wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.x, 309f)))), 248f, _wgslsmith_f_op_f32(-global0.x)));
    var var_2 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, 4092u, reverseBits(4294967295u)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(57059u, 4294967295u, 1u, 0u), vec4<u32>(1u, 33652u, 1u, 1u), vec4<u32>(1u, 0u, 51894u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 16944u, 48541u), vec4<u32>(1u, 1u, 0u, 1u))))) ^ ~(~_wgslsmith_mod_u32(4423u, abs(148915u)));
    var var_3 = Struct_2(func_4(Struct_2(var_1, func_2(Struct_1(vec4<bool>(arg_1.x, var_1.a.x, var_1.a.x, arg_1.x), var_1.b, var_1.a.wzx, var_1.d, vec2<i32>(u_input.b, var_1.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415f, var_1.d, -908f, arg_2.x))).b), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1327f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(178f))), _wgslsmith_f_op_f32(min(global0.x, -1005f)))), var_1);
    var var_4 = ~arg_0;
    return Struct_2(Struct_1(func_4(Struct_2(func_4(Struct_2(Struct_1(vec4<bool>(true, var_3.b.c.x, arg_1.x, false), var_3.a.a, vec3<bool>(true, var_3.b.b.x, true), 2524f, u_input.d.yx), var_1), vec4<f32>(arg_2.x, global0.x, var_3.a.d, -296f)), Struct_1(vec4<bool>(false, var_3.a.a.x, false, arg_1.x), vec4<bool>(var_1.c.x, var_3.b.c.x, false, arg_1.x), var_1.a.zzx, 780f, var_1.e)), vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - 305f), 223f, 1088f, _wgslsmith_f_op_f32(max(global0.x, -1204f)))).b, var_3.a.b, select(var_3.a.c, select(var_1.b.xxx, var_1.a.zzz, false), select(!var_3.b.a.wzy, var_3.b.b.zwz, func_3(Struct_2(Struct_1(vec4<bool>(var_3.a.b.x, false, var_3.a.c.x, arg_1.x), vec4<bool>(var_3.a.b.x, arg_1.x, arg_1.x, false), var_1.c, var_3.a.d, var_1.e), var_3.b), vec4<i32>(0i, arg_0.x, var_4.x, arg_0.x), vec2<i32>(arg_0.x, var_3.a.e.x), Struct_1(var_3.b.b, var_3.b.b, var_1.a.zyy, -544f, var_3.b.e)).x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-796f, -362f, var_3.b.c.x)), 2108f)))), var_4.yw), var_3.b);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 407f, 173f, 1301f) + vec4<f32>(global0.x, arg_2, arg_3.a.d, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, var_0, arg_2, 241f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, 570f, arg_2, 638f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-650f, var_0, var_0, -896f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -666f, var_0, 792f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -1322f) * vec4<f32>(var_0, -492f, var_0, arg_3.a.d))))))));
    var var_1 = vec2<u32>(_wgslsmith_add_u32(~(~_wgslsmith_add_u32(27255u, 57102u)), _wgslsmith_mod_u32(firstTrailingBit(arg_0), 0u)), arg_0);
    let var_2 = arg_3.a;
    var_1 = vec2<u32>(_wgslsmith_div_u32(72533u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, arg_0, var_1.x, var_1.x), vec4<u32>(var_1.x, 10980u, 0u, 4294967295u)) & var_1.x), reverseBits(var_1.x) | ~(countOneBits(52948u) & firstLeadingBit(var_1.x)));
    return func_2(func_1(_wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(17924i, arg_1, -53379i, var_2.e.x), vec4<i32>(arg_3.a.e.x, arg_3.b.e.x, u_input.a.x, -34445i)), vec4<i32>(firstTrailingBit(arg_3.a.e.x), _wgslsmith_sub_i32(-1i, 31849i), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(var_2.e.x, 1i, 1i)), -33133i)), !vec2<bool>(!var_2.c.x, !arg_3.a.a.x), vec4<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(trunc(arg_3.b.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1360f, _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(var_2.d - var_2.d), _wgslsmith_f_op_f32(floor(global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~8509u, u_input.d.x, global0.x, func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-431i, 2147483647i, -2147483647i, -u_input.a.x), vec4<i32>(select(u_input.b, -25103i, false), _wgslsmith_mod_i32(-43884i, u_input.d.x), max(u_input.a.x, u_input.a.x), u_input.d.x)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), global0.x < 1000f), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, global0.x, 473f, global0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 646f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-744f, global0.x, global0.x, -1000f) + vec4<f32>(-2179f, global0.x, global0.x, 1000f))))));
    var var_1 = vec3<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(countOneBits(41470u), abs(1u)), max(3711u, 4294967295u), reverseBits(1u)));
    var var_2 = u_input.b;
    var_1 = countOneBits(vec3<u32>(0u, _wgslsmith_add_u32(var_1.x, _wgslsmith_add_u32(var_1.x & 4294967295u, var_1.x)), 35419u));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(252f, -189f))), _wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_0.b.d)), 2544f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-623f - 233f), -438f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d, global0.x, -575f, -1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -320f) + -249f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d * global0.x) * global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(select(~vec3<u32>(var_1.x, var_1.x, 5342u), ~vec3<u32>(var_1.x, 4294967295u, 0u), false)), ~reverseBits(vec3<u32>(52635u, var_1.x, var_1.x)) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, 52816u), vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, 41123u, var_1.x)) | _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(34891u, 1u, var_1.x))) % vec3<u32>(32u)), var_0.b.c.x));
}

