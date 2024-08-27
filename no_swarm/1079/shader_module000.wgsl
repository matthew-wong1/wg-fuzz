struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<f32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: Struct_4 = Struct_4(vec4<bool>(false, true, false, true), 1i, 4294967295u, Struct_2(-13268i, 1034f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> i32 {
    global0 = -_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(0i, global3.d.a, 0i, arg_1)), vec4<i32>(arg_1, arg_1, -2147483647i, -27712i) & vec4<i32>(global0.x, -27037i, 0i, global0.x), reverseBits(vec4<i32>(-2147483647i, arg_2, -2147483647i, arg_2))), vec4<i32>((global3.d.a | global3.d.a) >> ((u_input.a.x << (0u % 32u)) % 32u), ~(~92483i), -37947i, 1i));
    var var_0 = Struct_1(countOneBits(global3.c), _wgslsmith_f_op_f32(floor(global1.x)), 0i);
    var var_1 = Struct_1(firstLeadingBit(global3.c >> (_wgslsmith_mult_u32(1u, 1u) % 32u)), 1000f, _wgslsmith_clamp_i32(reverseBits(-2147483647i) >> (max(u_input.c.x ^ u_input.b, ~0u) % 32u), _wgslsmith_div_i32(1i, 2147483647i), -1i));
    var var_2 = arg_1;
    var var_3 = false;
    return 15406i;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(202f + global1.x))))));
    var var_1 = min(~(~u_input.a << (abs(vec3<u32>(1u, u_input.b, 4294967295u)) % vec3<u32>(32u))) & u_input.a, vec3<u32>(~_wgslsmith_dot_vec3_u32(~u_input.a, ~u_input.c), 26677u, reverseBits(70685u)));
    var var_2 = arg_3;
    var var_3 = vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(global3.b, -1i)), global0.xz)), 3872i, var_2.d.a, var_2.b);
    global2 = !(!vec4<bool>(var_2.a.x, global2.x, _wgslsmith_f_op_f32(var_2.d.b + -244f) > _wgslsmith_f_op_f32(-global3.d.b), false));
    return _wgslsmith_mult_vec3_u32(abs(u_input.c), _wgslsmith_add_vec3_u32(abs(~u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c, abs(u_input.b), var_1.x), vec3<u32>(max(0u, global3.c), abs(global3.c), _wgslsmith_add_u32(arg_3.c, 10870u)), u_input.c)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec2_i32(global0.yy, -global0.xy ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 1i) ^ global0.zw, _wgslsmith_add_vec2_i32(-global0.ww, -global0.wy), global0.wz));
    let var_1 = ~_wgslsmith_mult_vec3_u32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.d.b, -537f)))), 0i, global2.yzy, Struct_4(vec4<bool>(true, true, true, global3.a.x), func_3(global3.a.x, arg_0.a, -56900i), 13040u, arg_0)), ~vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a.x), firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(1u, global3.c))));
    global3 = Struct_4(select(select(vec4<bool>(global3.a.x, true, any(vec4<bool>(global3.a.x, global2.x, true, true)), global3.a.x), global3.a, !select(vec4<bool>(false, false, false, true), global3.a, global3.a)), !vec4<bool>(all(vec3<bool>(global3.a.x, false, false)), all(vec2<bool>(false, global3.a.x)), false, global2.x), true), -select(2147483647i, i32(-1i) * -8611i, (arg_0.a | global3.d.a) < global3.b), ~0u, global3.d);
    var var_2 = global3.a;
    var var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(global0.ww, vec2<i32>(1i, -2147483647i)), -1i, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(global3.d.a, _wgslsmith_add_i32(arg_0.a, -24517i)), global3.d.a), global3.b);
    return select(_wgslsmith_add_vec4_i32(select(~(-vec4<i32>(arg_0.a, var_0.x, 1i, var_0.x)), vec4<i32>(arg_0.a, var_3.x, 2147483647i, -22760i) | -vec4<i32>(var_3.x, 1i, var_3.x, 61686i), true), vec4<i32>(~6911i, select(firstTrailingBit(5001i), 65683i, false), ~1i, _wgslsmith_mod_i32(-arg_0.a, global0.x))), ~select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -41139i, var_0.x, global0.x), firstLeadingBit(vec4<i32>(-37019i, var_0.x, 2147483647i, 2147483647i))), vec4<i32>(-global3.d.a, _wgslsmith_dot_vec2_i32(global0.xy, var_3.yw), 0i, -global0.x), !vec4<bool>(true, var_2.x, false, global3.a.x)), vec4<bool>(select(true, var_2.x, true), any(!(!vec2<bool>(global3.a.x, global3.a.x))), ~(~13796i) <= arg_0.a, global2.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = -abs(global0.yw);
    var var_1 = Struct_4(select(global3.a, vec4<bool>(!global3.a.x, true, false, any(!vec3<bool>(false, global3.a.x, false))), all(!(!global2.xxz))), -(~(-16087i)), u_input.c.x, Struct_2(abs(_wgslsmith_clamp_i32(global3.b, global3.d.a, -4677i)), arg_1.b.x));
    var var_2 = -110f;
    let var_3 = var_1.d;
    global3 = Struct_4(global3.a, 1198i, firstLeadingBit(var_1.c), Struct_2(var_0.x, global3.d.b));
    return Struct_3(global3.d, arg_1.b);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.xy)));
    let var_0 = global3.a.ywy;
    global1 = vec2<f32>(arg_0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)));
    let var_1 = -50041i;
    var var_2 = Struct_4(arg_0.a, -global0.x, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.b, -2143f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.zx))), i32(-1i) * -abs(arg_0.d.a), !vec3<bool>(global2.x, all(vec3<bool>(global2.x, true, global2.x)), global3.a.x), arg_0).x, Struct_2(-_wgslsmith_dot_vec2_i32(reverseBits(global0.zx), -vec2<i32>(3684i, arg_0.b)), global1.x));
    return arg_0;
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = global0.yyw;
    global3 = func_6(Struct_4(vec4<bool>(global3.a.x || true, false == all(global2.zxy), global3.a.x, true), abs(48377i), _wgslsmith_add_u32(43414u, _wgslsmith_sub_u32(4294967295u, 4294967295u) << (abs(u_input.c.x) % 32u)), arg_0.d), func_5(func_2(Struct_2(0i, _wgslsmith_f_op_f32(arg_0.d.b + 989f)), global3.d.b), Struct_3(global3.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(246f, 217f, 175f), vec3<f32>(-1027f, global1.x, 929f)) + vec3<f32>(-966f, -234f, arg_0.d.b)))), !arg_0.a.x, 66164i);
    var var_1 = max(_wgslsmith_add_i32(-31012i, 20888i), firstTrailingBit(global3.d.a));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global3.d.b, global3.d.b), vec2<f32>(arg_0.d.b, arg_0.d.b))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.b, global1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -646f))), false)))));
    var var_2 = _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(1i | arg_0.b, global3.d.a, _wgslsmith_div_i32(global3.d.a, global3.b), -2147483647i)), ~(~(abs(vec4<i32>(global0.x, -2147483647i, 10213i, var_0.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, global3.b, 2147483647i, arg_0.d.a), vec4<i32>(1i, 1i, global3.b, arg_0.d.a)))));
    return arg_0.c;
}

fn func_7(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_6(Struct_4(vec4<bool>(global2.x, true, global3.a.x, global2.x), 2147483647i, u_input.c.x, Struct_2(-1i, global1.x)), Struct_3(Struct_2(2147483647i, global3.d.b), vec3<f32>(global1.x, global1.x, global3.d.b)), all(global2.wx), ~(-2147483647i)).c, ~0u | global3.c), global3.c), _wgslsmith_f_op_f32(-global1.x), ~arg_2);
    var var_1 = Struct_4(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -601f))) < var_0.b, true & (func_3(global2.x, arg_2, var_0.c) > 29456i), !(~u_input.a.x >= global3.c), ~var_0.a <= _wgslsmith_dot_vec3_u32(~arg_0, func_4(vec2<f32>(1000f, arg_1), var_0.c, vec3<bool>(global2.x, false, global2.x), Struct_4(global3.a, arg_2, 4294967295u, global3.d)))), arg_2, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(1919u, var_0.a), vec2<u32>(1u, global3.c))) << (var_0.a % 32u), func_6(Struct_4(global3.a, 0i, 17811u, global3.d), func_5(-(~vec4<i32>(var_0.c, var_0.c, -20863i, arg_2)), Struct_3(func_6(Struct_4(vec4<bool>(false, global2.x, global2.x, true), var_0.c, 0u, global3.d), Struct_3(global3.d, vec3<f32>(global1.x, -350f, 310f)), global3.a.x, arg_2).d, vec3<f32>(1000f, 656f, -1438f))), global3.a.x, -firstLeadingBit(global0.x << (0u % 32u))).d);
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, func_6(Struct_4(vec4<bool>(true, global3.a.x, var_1.a.x, global3.a.x), var_1.d.a, var_1.c, Struct_2(var_1.d.a, var_0.b)), func_5(vec4<i32>(var_0.c, global3.b, 49685i, -18845i), Struct_3(Struct_2(global3.b, 1648f), vec3<f32>(134f, -116f, -921f))), all(global2.zyw), -global0.x).d.a, _wgslsmith_clamp_i32(1i, var_0.c, ~global0.x), _wgslsmith_sub_i32(arg_2, var_0.c)) << (vec4<u32>(arg_0.x, global3.c, ~firstLeadingBit(u_input.a.x), ~var_0.a ^ (u_input.a.x >> (global3.c % 32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-9329i, var_1.d.a), _wgslsmith_clamp_i32(var_0.c, var_1.b, var_1.b), _wgslsmith_sub_i32(arg_2, var_0.c), -11082i), -vec4<i32>(var_1.b, var_0.c, -1i, 1i)) ^ -vec4<i32>(var_0.c, _wgslsmith_mod_i32(var_0.c, -23582i), -33716i, -36776i));
    let var_3 = var_0.c;
    var_0 = Struct_1(4294967295u, -1250f, ~func_3(all(!global3.a), global3.b, _wgslsmith_dot_vec3_i32(global0.zyx, vec3<i32>(-11303i, -2147483647i, -2147483647i) >> (vec3<u32>(arg_0.x, var_1.c, 25357u) % vec3<u32>(32u)))));
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), global1.x, var_1.c > _wgslsmith_div_u32(_wgslsmith_mult_u32(65971u, var_1.c), arg_0.x))), _wgslsmith_f_op_f32(step(361f, 574f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = global3.a;
    let var_2 = _wgslsmith_f_op_f32(round(-207f));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_7(vec3<u32>(u_input.c.x, 12552u, ~func_1(Struct_4(vec4<bool>(true, false, var_1.x, false), global3.d.a, global3.c, Struct_2(-6301i, global3.d.b)))), 1000f, -(~(-5752i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1001f), global1.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.d.b, 478f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, -2577f), vec2<f32>(global1.x, global1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-global3.d.b), _wgslsmith_f_op_f32(-var_2))))));
    let var_4 = func_6(Struct_4(select(vec4<bool>(!global3.a.x, 0u <= global3.c, any(global3.a.wy), global3.a.x), global3.a, !(!global3.a)), func_6(Struct_4(global3.a, 1i, global3.c, global3.d), func_5(vec4<i32>(global0.x, global0.x, 1i, 46487i), Struct_3(Struct_2(-2102i, -2021f), vec3<f32>(1930f, var_2, global1.x))), !var_1.x, -7415i).b & reverseBits(_wgslsmith_mod_i32(global0.x, 0i)), func_6(Struct_4(global3.a, 2147483647i, ~global3.c, global3.d), Struct_3(func_6(Struct_4(global3.a, global0.x, 0u, global3.d), Struct_3(global3.d, vec3<f32>(345f, var_3.x, 757f)), global3.a.x, global3.d.a).d, vec3<f32>(502f, 1045f, global1.x)), all(global3.a), select(_wgslsmith_dot_vec2_i32(global0.wx, global0.xy), global3.b, all(vec2<bool>(global2.x, false)))).c, Struct_2(global0.x, _wgslsmith_f_op_f32(-var_2))), Struct_3(global3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -139f, 1308f) - vec3<f32>(global1.x, -710f, var_3.x))))), ~_wgslsmith_sub_i32(1i, -global0.x) == firstTrailingBit(global3.b), _wgslsmith_div_i32(global3.b, global3.b));
    var var_5 = _wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(firstTrailingBit(global3.c), ~(~5070u), global3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.d.b, -144f, global3.d.b, -1186f), vec4<f32>(global1.x, -1380f, global3.d.b, 479f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.d.b + 1729f), global1.x, -420f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 335f, -905f), vec3<f32>(var_4.d.b, var_3.x, var_4.d.b), var_4.a.wwx))))), 47191i, global1.x);
}

