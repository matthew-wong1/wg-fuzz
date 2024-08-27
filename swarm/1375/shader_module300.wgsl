struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: f32 = 822f;

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global0 = global2.yx;
    return arg_0.d.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_1, countOneBits(reverseBits(vec4<u32>(28592u, 0u, 0u, 4294967295u))))), (abs(~u_input.c.x) << ((select(arg_0, u_input.a, global2.x) & u_input.a) % 32u)) << (1u % 32u), _wgslsmith_sub_vec3_i32(~(~arg_1.c), vec3<i32>(1i, ~arg_1.c.x << ((61725u & u_input.a) % 32u), 39867i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), -1514f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -1805f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_1.e.x)))));
    global0 = global2.yz;
    global0 = vec2<bool>(global0.x, global0.x);
    global2 = vec3<bool>(false, global2.x, !global2.x || false);
    var var_1 = arg_1;
    return min(i32(-1i) * -1i, arg_1.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(-abs(-2147483647i), 0i, any(!vec4<bool>(arg_1.x, false, global2.x, global2.x))), 1i, arg_0.a.b, -1i), vec4<i32>(-8607i, _wgslsmith_div_i32(697i, u_input.b.x), arg_2.x, func_2(_wgslsmith_mult_u32(max(u_input.a, u_input.a), u_input.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_dot_vec3_i32(arg_0.a.c, u_input.c.yzw), ~arg_2, vec2<f32>(arg_3.e.x, 741f), _wgslsmith_f_op_vec4_f32(floor(arg_0.b.e))))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0.a, firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 16232u, 0u)))), 1f), -36417i, vec3<i32>(select(~arg_3.c.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_2.x, u_input.c.x), -77020i, var_0.x), global0.x && (arg_3.d.x < 191f)), -(i32(-1i) * -arg_3.c.x), _wgslsmith_div_i32(~(-50823i), _wgslsmith_dot_vec2_i32(~u_input.d.zw, -arg_3.c.zx))), arg_0.a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, -518f, arg_3.d.x, 1309f) * arg_0.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.d.x, arg_3.d.x, arg_0.b.e.x, arg_0.a.a) - vec4<f32>(-537f, -658f, arg_0.c.x, arg_3.e.x))))));
    let var_2 = vec2<i32>(var_1.b, _wgslsmith_sub_i32(min(select(12838i, arg_3.b, arg_1.x), var_0.x), arg_3.c.x));
    global2 = arg_1.zyy;
    let var_3 = _wgslsmith_f_op_f32(-var_1.a);
    return Struct_1(arg_0.b.e.x, 31881i, var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.xx)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(arg_3.e, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(var_1.e)))))), vec4<f32>(arg_0.d, _wgslsmith_div_f32(arg_3.e.x, 206f), -813f, arg_3.d.x), arg_1)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(max(1297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -163f), -358f))) * -1091f)));
    var var_0 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(min(arg_1.e.x, -1000f))), -2147483647i, func_1(Struct_2(Struct_1(-957f, 45127i, vec3<i32>(arg_0.c.x, u_input.b.x, 22714i), vec2<f32>(1467f, arg_1.e.x), vec4<f32>(230f, arg_1.e.x, arg_1.e.x, 834f)), Struct_1(-543f, -44058i, vec3<i32>(33175i, u_input.c.x, arg_3.x), arg_0.e.xz, vec4<f32>(-443f, arg_1.e.x, 165f, 1199f)), arg_0.e, 1335f), select(vec4<bool>(global2.x, true, false, false), vec4<bool>(global0.x, false, arg_2.x, arg_2.x), global0.x), min(arg_3.zxw, arg_1.c), Struct_1(-1638f, 1i, vec3<i32>(arg_3.x, arg_3.x, u_input.b.x), arg_0.e.yy, arg_1.e)).c, _wgslsmith_f_op_vec2_f32(-arg_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_1.d.x, arg_0.a))), func_1(Struct_2(func_1(Struct_2(Struct_1(1228f, arg_0.c.x, u_input.c.xww, vec2<f32>(-1067f, arg_1.e.x), arg_0.e), Struct_1(arg_1.d.x, u_input.c.x, arg_3.ywy, vec2<f32>(arg_1.e.x, -512f), arg_1.e), vec4<f32>(1075f, arg_0.a, -717f, -2171f), arg_1.a), vec4<bool>(true, global2.x, arg_2.x, global0.x), arg_1.c, Struct_1(arg_0.a, 32927i, vec3<i32>(-1i, arg_1.c.x, 2147483647i), vec2<f32>(arg_1.e.x, -172f), arg_0.e)), arg_0, func_1(Struct_2(arg_0, Struct_1(arg_0.a, -7716i, vec3<i32>(-2147483647i, u_input.d.x, arg_1.c.x), vec2<f32>(arg_0.a, 833f), arg_0.e), vec4<f32>(-438f, arg_1.d.x, arg_0.d.x, 2275f), arg_1.a), vec4<bool>(true, true, false, global2.x), vec3<i32>(arg_3.x, 2844i, arg_3.x), arg_1).e, arg_0.d.x), vec4<bool>(all(vec4<bool>(arg_2.x, false, false, arg_2.x)), !arg_2.x, all(vec2<bool>(global0.x, true)), !arg_2.x), vec3<i32>(~arg_0.b, 15547i, ~1i), arg_1), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(696f, arg_1.e.x, -2318f, arg_0.d.x))), arg_1.d.x), !vec4<bool>(arg_2.x, all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), global2.x, global0.x && true), vec3<i32>(_wgslsmith_add_i32(reverseBits(10335i), _wgslsmith_clamp_i32(-65933i, arg_3.x, -arg_0.b)), 5252i, -((i32(-1i) * -1i) & arg_0.b)), arg_0);
    let var_1 = arg_1;
    var_0 = arg_1;
    let var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec3_i32(arg_0.c, vec3<i32>(_wgslsmith_add_i32(~var_1.c.x, 0i & arg_1.b), -(-35789i >> (1u % 32u)), _wgslsmith_mult_i32(-var_0.b, max(arg_0.b, -34171i)))), _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, 1i, arg_1.c.x) | firstLeadingBit(vec3<i32>(arg_1.b, arg_0.b, u_input.d.x))) << (~vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_div_u32(54027u, 53522u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, 27074i, var_1.c, vec2<f32>(-217f, 110f), var_0.e), vec4<u32>(13323u, u_input.a, 30739u, u_input.a))), -2093f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) + var_1.e.x), arg_0.a, arg_1.a, _wgslsmith_f_op_f32(sign(arg_0.a))));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = -14422i | ~(-u_input.b.x);
    let var_1 = Struct_2(arg_2, func_4(Struct_1(697f, arg_2.c.x & -arg_2.b, vec3<i32>(var_0, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.c.x, arg_2.c.x), arg_2.c)), arg_2.e.wy, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -1974f, arg_2.d.x, arg_0), _wgslsmith_f_op_vec4_f32(min(arg_2.e, arg_2.e)))), arg_2, !vec3<bool>(all(vec3<bool>(global0.x, global2.x, global2.x)), any(vec3<bool>(global0.x, false, global0.x)), true), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(21263i, 41314i, arg_2.b, arg_2.b), ~u_input.c)), vec4<f32>(_wgslsmith_div_f32(func_4(func_4(Struct_1(arg_1, u_input.b.x, vec3<i32>(var_0, 22033i, -32861i), vec2<f32>(578f, 193f), vec4<f32>(-1237f, arg_2.e.x, arg_1, arg_0)), arg_2, vec3<bool>(true, true, global0.x), u_input.d), Struct_1(1545f, -61277i, u_input.c.wyw, arg_2.d, arg_2.e), vec3<bool>(false, false, global0.x), firstLeadingBit(u_input.c)).d.x, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(func_1(Struct_2(arg_2, Struct_1(arg_1, -2147483647i, vec3<i32>(-14346i, var_0, u_input.c.x), vec2<f32>(arg_0, 1335f), vec4<f32>(539f, -1621f, arg_0, arg_2.e.x)), vec4<f32>(-100f, arg_2.d.x, 387f, arg_1), arg_0), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(false, true, global2.x, global0.x), vec4<bool>(global2.x, true, global0.x, global2.x)), firstLeadingBit(vec3<i32>(0i, 11123i, 1i)), Struct_1(arg_2.e.x, u_input.c.x, vec3<i32>(u_input.b.x, -27382i, arg_2.c.x), vec2<f32>(arg_1, -1403f), arg_2.e)).a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.e.x, 125f) + arg_2.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1))))), arg_0), arg_2.a);
    var var_2 = func_1(Struct_2(var_1.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f * 953f) + func_1(Struct_2(Struct_1(arg_0, -33305i, vec3<i32>(u_input.b.x, 1i, u_input.b.x), vec2<f32>(arg_0, arg_1), var_1.c), Struct_1(-824f, var_0, arg_2.c, var_1.a.e.zx, vec4<f32>(arg_1, var_1.c.x, 204f, arg_1)), var_1.b.e, -714f), vec4<bool>(global0.x, false, true, global2.x), arg_2.c, arg_2).d.x), _wgslsmith_add_i32(~1i, select(var_0, arg_2.b, true)), vec3<i32>(2147483647i, u_input.b.x, u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(183f, 899f)), vec4<f32>(_wgslsmith_f_op_f32(max(970f, 994f)), _wgslsmith_f_op_f32(arg_1 - arg_0), arg_2.e.x, _wgslsmith_f_op_f32(305f + -2554f))), _wgslsmith_f_op_vec4_f32(floor(arg_2.e)), 169f), select(select(!(!vec4<bool>(false, true, global0.x, global0.x)), vec4<bool>(4294967295u == u_input.a, false, true, false), true), vec4<bool>(!(global0.x || false), global2.x & !global0.x, true || global2.x, any(!vec3<bool>(global0.x, global0.x, false))), vec4<bool>(any(vec3<bool>(true, true, true)), select(!global0.x, true, global0.x), global2.x, !(var_1.c.x != arg_1))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.xwy, ~var_1.b.c), func_4(arg_2, arg_2, select(vec3<bool>(global2.x, true, true), select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, global0.x), global2.x), select(vec3<bool>(global0.x, false, global2.x), vec3<bool>(false, global2.x, false), vec3<bool>(global0.x, global0.x, global2.x))), countOneBits(vec4<i32>(var_1.a.b, u_input.c.x, 25058i, var_1.a.b))).c), func_1(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(arg_2.a)), func_4(Struct_1(var_1.d, var_1.b.b, vec3<i32>(-14949i, 0i, var_0), vec2<f32>(-1567f, 509f), var_1.a.e), var_1.a, vec3<bool>(true, global2.x, global2.x), u_input.d).b, vec3<i32>(484i, var_1.b.c.x, -1i), _wgslsmith_f_op_vec2_f32(-arg_2.e.wy), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_0, -1494f, arg_2.e.x) + vec4<f32>(-1136f, 1895f, 1000f, 288f))), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1803f, var_1.b.a, -108f, arg_0)) - _wgslsmith_f_op_vec4_f32(floor(var_1.c))), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a.e.x, var_1.b.b, vec3<i32>(var_1.a.b, 1i, arg_2.b), vec2<f32>(var_1.b.a, 980f), vec4<f32>(120f, -1692f, 843f, 427f)), arg_3))), vec4<bool>(false, all(global2.xz), 0u < (4294967295u >> (arg_3.x % 32u)), false), vec3<i32>(u_input.c.x << (u_input.a % 32u), var_1.a.c.x, var_1.b.c.x) & _wgslsmith_mult_vec3_i32(select(u_input.c.wyz, vec3<i32>(4558i, 0i, 1i), vec3<bool>(global2.x, global0.x, global2.x)), vec3<i32>(25169i, -2147483647i, 47979i)), func_1(var_1, !select(vec4<bool>(false, global2.x, false, false), vec4<bool>(false, global0.x, global2.x, false), global2.x), -(var_1.a.c ^ arg_2.c), Struct_1(_wgslsmith_f_op_f32(-var_1.d), ~(-1i), max(vec3<i32>(var_1.a.c.x, 31203i, var_0), vec3<i32>(1i, u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec2_f32(select(var_1.b.e.wz, arg_2.d, global0.x)), _wgslsmith_f_op_vec4_f32(var_1.a.e * arg_2.e)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(func_4(var_1.a, Struct_1(arg_0, var_2.c.x, var_2.c, vec2<f32>(-988f, -1000f), vec4<f32>(1806f, var_2.e.x, -675f, 1052f)), vec3<bool>(global2.x, global0.x, global2.x), u_input.d).e, vec4<f32>(arg_0, arg_1, -563f, arg_1)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.e)))), vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(-arg_1), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))), select(vec4<bool>(_wgslsmith_f_op_f32(arg_0 * var_1.b.e.x) >= _wgslsmith_f_op_f32(f32(-1f) * -763f), global2.x, 78267i != -u_input.b.x, ~var_0 > _wgslsmith_add_i32(var_0, arg_2.b)), !select(!vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, true, global2.x, global2.x), 1u <= arg_3.x), select(vec4<bool>(false, true || global2.x, !global2.x, global2.x), vec4<bool>(all(vec2<bool>(global0.x, global0.x)), global0.x, true, false), vec4<bool>(global0.x, global0.x, any(vec3<bool>(true, true, global2.x)), global0.x)))));
    let var_4 = 54725u;
    return !vec3<bool>(global0.x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_5(-494f, _wgslsmith_f_op_f32(f32(-1f) * -401f), func_4(Struct_1(-380f, u_input.c.x, vec3<i32>(2147483647i, u_input.c.x, u_input.d.x), vec2<f32>(1095f, -169f), vec4<f32>(-478f, -1000f, -828f, -1748f)), func_1(Struct_2(Struct_1(-1000f, u_input.b.x, u_input.d.zwx, vec2<f32>(1709f, 405f), vec4<f32>(-1572f, -1280f, -433f, -1000f)), Struct_1(1359f, -4798i, vec3<i32>(50267i, 16874i, 0i), vec2<f32>(-186f, -1000f), vec4<f32>(725f, -1537f, 1661f, 1044f)), vec4<f32>(-528f, 1761f, -2467f, -959f), 151f), vec4<bool>(global2.x, false, true, false), vec3<i32>(u_input.b.x, -3991i, u_input.c.x), Struct_1(-960f, u_input.d.x, vec3<i32>(u_input.d.x, u_input.d.x, u_input.b.x), vec2<f32>(772f, 265f), vec4<f32>(377f, -1236f, -856f, -1000f))), vec3<bool>(global2.x, global2.x, true), ~u_input.c), reverseBits(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 6969u, 1u)))));
    var var_1 = 117f;
    var_1 = 206f;
    var_1 = _wgslsmith_f_op_f32(-func_1(Struct_2(func_4(func_1(Struct_2(Struct_1(-1628f, u_input.b.x, u_input.c.xxy, vec2<f32>(-1340f, 441f), vec4<f32>(1628f, 2373f, -425f, -103f)), Struct_1(-1235f, -1i, vec3<i32>(u_input.c.x, u_input.d.x, u_input.b.x), vec2<f32>(-861f, -716f), vec4<f32>(853f, 312f, 1227f, -1030f)), vec4<f32>(294f, 189f, -997f, 132f), -800f), vec4<bool>(false, global0.x, true, true), vec3<i32>(2147483647i, 2147483647i, -2147483647i), Struct_1(-314f, -34447i, vec3<i32>(-1i, u_input.d.x, u_input.b.x), vec2<f32>(-572f, 234f), vec4<f32>(-333f, 365f, -226f, -1243f))), Struct_1(709f, u_input.c.x, u_input.c.xxx, vec2<f32>(-379f, -536f), vec4<f32>(-113f, -1694f, 432f, 249f)), select(vec3<bool>(global2.x, false, true), vec3<bool>(false, var_0.x, var_0.x), var_0), u_input.c), Struct_1(-897f, u_input.b.x, u_input.c.ywz, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1931f, 716f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1546f, 1000f, -741f, 1654f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2329f, 1573f, 1000f, -950f))), -460f), !vec4<bool>(true, true, var_0.x, u_input.a == u_input.a), vec3<i32>(u_input.c.x, ~(-1i), _wgslsmith_clamp_i32(4611i, u_input.c.x, u_input.b.x)) ^ -_wgslsmith_sub_vec3_i32(u_input.c.xww, u_input.d.zwx), Struct_1(3013f, _wgslsmith_mult_i32(u_input.b.x >> (19672u % 32u), u_input.b.x), vec3<i32>(u_input.b.x << (1u % 32u), abs(u_input.c.x), _wgslsmith_clamp_i32(5721i, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, 512f) * vec2<f32>(-692f, -505f)), vec2<f32>(1248f, 828f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -595f, -1000f))))).d.x);
    let var_2 = vec4<u32>(min(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) | 1u), u_input.a), max(u_input.a, 4294967295u), u_input.a, u_input.a);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-3520f)), 19397i, vec3<i32>(func_1(Struct_2(Struct_1(-463f, u_input.d.x, u_input.d.wxz, vec2<f32>(834f, -1683f), vec4<f32>(269f, -1301f, -114f, 257f)), Struct_1(-2823f, u_input.b.x, vec3<i32>(u_input.c.x, u_input.b.x, 20884i), vec2<f32>(-759f, -909f), vec4<f32>(1173f, -744f, -1160f, 1236f)), vec4<f32>(-355f, -154f, -1146f, 328f), 1000f), vec4<bool>(global0.x, true, global2.x, global0.x), vec3<i32>(u_input.c.x, 0i, -25417i), func_4(Struct_1(-584f, 9221i, vec3<i32>(15980i, 2147483647i, 68635i), vec2<f32>(554f, 476f), vec4<f32>(549f, -550f, 112f, 1075f)), Struct_1(-952f, 2147483647i, u_input.d.zzy, vec2<f32>(-955f, 2715f), vec4<f32>(-703f, 802f, -392f, -891f)), var_0, vec4<i32>(u_input.b.x, -31170i, 23556i, u_input.b.x))).c.x, max(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(-1i, 1i))), 1065i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -1826f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-294f, -684f)) - _wgslsmith_f_op_f32(697f * -389f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -476f))), _wgslsmith_f_op_f32(1282f + _wgslsmith_f_op_f32(807f + 478f)))), Struct_1(-1712f, u_input.c.x, vec3<i32>(i32(-1i) * -u_input.b.x, _wgslsmith_sub_i32(~(-49300i), ~u_input.c.x), func_1(Struct_2(Struct_1(-1564f, u_input.d.x, vec3<i32>(-28528i, 1i, u_input.c.x), vec2<f32>(1482f, 1680f), vec4<f32>(-877f, 1539f, -1362f, 546f)), Struct_1(-1613f, -2147483647i, u_input.c.xxw, vec2<f32>(-362f, -233f), vec4<f32>(1489f, 313f, -2117f, 627f)), vec4<f32>(650f, 1000f, 1721f, -1491f), 630f), !vec4<bool>(true, false, global0.x, global0.x), reverseBits(vec3<i32>(63111i, 2147483647i, -25631i)), Struct_1(747f, -1i, vec3<i32>(u_input.d.x, -2147483647i, -10974i), vec2<f32>(2051f, 1460f), vec4<f32>(502f, -832f, 1022f, 1017f))).b), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1019f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f))), vec4<f32>(-441f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1157f * 1634f), _wgslsmith_f_op_f32(trunc(-886f)))), -1504f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1409f)), _wgslsmith_f_op_f32(f32(-1f) * -610f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2081f + -762f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-174f, u_input.c.x, u_input.d.zxw, vec2<f32>(111f, -1349f), vec4<f32>(-307f, -864f, 1000f, -387f)), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))))), 407f), -123f);
    global2 = vec3<bool>(!select(select(true, all(vec4<bool>(global2.x, true, true, var_0.x)), any(vec4<bool>(false, global0.x, true, false))), var_0.x, true), !(!var_0.x), !(!any(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-133f, var_3.d) - -328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(-var_3.d))), _wgslsmith_f_op_f32(1334f + _wgslsmith_f_op_f32(-1621f - var_3.b.a))), u_input.d.x, _wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(step(623f, _wgslsmith_f_op_f32(f32(-1f) * -1170f)))), var_3.b.c.x, func_2(_wgslsmith_sub_u32(abs(countOneBits(var_2.x)), _wgslsmith_mult_u32(u_input.a, 1u) | ~var_2.x), func_4(var_3.a, Struct_1(_wgslsmith_f_op_f32(-var_3.d), _wgslsmith_dot_vec2_i32(var_3.b.c.xx, var_3.b.c.yx), u_input.c.yyz & vec3<i32>(-5861i, var_3.a.c.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(var_3.b.e.ww - vec2<f32>(651f, var_3.d)), _wgslsmith_f_op_vec4_f32(select(var_3.a.e, var_3.a.e, true))), !func_5(1821f, var_3.c.x, var_3.a, vec4<u32>(u_input.a, 1u, u_input.a, 4278u)), countOneBits(u_input.d))));
}

