struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(424f, 384f, 724f), vec3<f32>(-307f, 2348f, -920f), 279f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global1 = arg_2.b;
    var var_0 = Struct_1(arg_2.c.a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(967f, -2660f, 1218f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.c, -472f) - vec3<f32>(-1000f, arg_2.b.b.x, -1315f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_2.c.b - vec3<f32>(-1265f, global3.a.x, -805f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(287f, 1000f, arg_3) * vec3<f32>(global3.b.x, -571f, -1404f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.c - arg_2.c.b.x), _wgslsmith_f_op_f32(abs(global3.c)), -1278f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, -639f, arg_2.b.a.x))))), -1000f);
    var var_1 = abs(countOneBits(select(~u_input.a.xzx, vec3<u32>(arg_1, countOneBits(78648u), _wgslsmith_mult_u32(u_input.d.x, 0u)), vec3<bool>(false, all(arg_2.a.yx), arg_2.a.x || false))));
    return arg_2;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(func_2(vec3<i32>(global0.x, abs(u_input.c), arg_1.x), arg_2.x, func_2(arg_1, firstLeadingBit(1u), Struct_2(func_2(vec3<i32>(u_input.c, u_input.c, global0.x), 4294967295u, Struct_2(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_0.x), Struct_1(global3.a, vec3<f32>(-300f, global3.a.x, global1.c), -1039f), Struct_1(global3.b, global1.a, global1.b.x), 0u), 253f).a, Struct_1(vec3<f32>(global3.b.x, 844f, -3078f), global3.b, -629f), func_2(arg_1, 77085u, Struct_2(vec4<bool>(false, true, false, false), Struct_1(global3.a, global3.b, -1094f), Struct_1(global1.b, vec3<f32>(global1.c, 1457f, global3.c), global1.c), u_input.a.x), global1.b.x).b, abs(0u)), -1683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f))), Struct_2(vec4<bool>(arg_0.x, any(!vec2<bool>(true, arg_0.x)), true, func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -16986i, u_input.c), arg_1), ~64130u, Struct_2(vec4<bool>(true, false, arg_3.x, arg_0.x), Struct_1(vec3<f32>(global3.b.x, global3.a.x, global1.c), global3.a, global1.a.x), Struct_1(vec3<f32>(global3.c, 287f, 249f), global3.b, -397f), 0u), _wgslsmith_f_op_f32(step(2009f, global1.a.x))).a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, -407f, 207f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, global1.c, 1000f)))), -1345f), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 1015f, global3.a.x), vec3<f32>(global1.a.x, 385f, global1.b.x)))), vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(1126f + 747f), _wgslsmith_f_op_f32(-global1.c)), global3.c), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_2.x, 4294967295u)), 69468u)), max(min(~select(u_input.c, -1i, true), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global0.x), vec2<i32>(global0.x, -38487i)), vec2<i32>(global0.x, arg_1.x))), 0i));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.a, vec3<f32>(var_0.a.c.b.x, -299f, var_0.b.c.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.c, 646f, 242f)))))), global3.b, global3.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + 123f)) * _wgslsmith_f_op_f32(-var_0.b.b.a.x)), 905f, _wgslsmith_f_op_f32(-var_0.b.b.c)));
    let var_2 = abs(-_wgslsmith_mod_vec4_i32((vec4<i32>(-26072i, u_input.c, 1i, 1i) & vec4<i32>(-3682i, 55178i, global0.x, arg_1.x)) ^ vec4<i32>(-3757i, -13183i, arg_1.x, -1i), -(~vec4<i32>(54190i, global0.x, -1257i, -1i))));
    let var_3 = var_0.a;
    return Struct_1(var_0.a.c.a, vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b.c.a.x)), global3.a.x, global3.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = vec4<f32>(arg_0.b.b.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.c), _wgslsmith_f_op_f32(floor(2346f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1023f, -432f)))));
    var var_1 = arg_0;
    global1 = func_3(select(!func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c, u_input.c, var_1.c), vec3<i32>(u_input.c, arg_0.c, var_1.c)), ~arg_0.a.d, func_2(vec3<i32>(-2147483647i, u_input.c, global0.x), u_input.b.x, var_1.b, global3.c), global3.a.x).a.yx, select(arg_0.b.a.ww, !arg_0.b.a.xy, true), arg_0.b.a.yz), select(vec3<i32>(u_input.c >> (29329u % 32u), 34994i, 1i), vec3<i32>(arg_0.c, arg_0.c, u_input.c) | vec3<i32>(arg_0.c, var_1.c, 57838i), false) & vec3<i32>(global0.x, -select(arg_0.c, global0.x, arg_0.a.a.x), var_1.c), countOneBits(_wgslsmith_mult_vec3_u32(u_input.a.zyx, u_input.a.yzx)), select(func_2(-firstLeadingBit(vec3<i32>(u_input.c, arg_0.c, u_input.c)), 1u, func_2(_wgslsmith_add_vec3_i32(vec3<i32>(10222i, 22447i, arg_0.c), vec3<i32>(34789i, -15860i, 29921i)), ~6262u, Struct_2(var_1.a.a, Struct_1(var_1.a.c.a, arg_1.b, var_0.x), Struct_1(vec3<f32>(arg_2.x, arg_2.x, -1053f), vec3<f32>(global3.c, var_0.x, 417f), global1.a.x), 42997u), _wgslsmith_f_op_f32(global3.c + 464f)), 1f).a.wy, vec2<bool>(true, true), !arg_0.b.a.yz));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f + global3.b.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + 1464f), 1f)))));
    var var_3 = 1i;
    return Struct_2(arg_0.a.a, func_3(select(var_1.a.a.xx, vec2<bool>(arg_0.b.a.x, arg_0.b.a.x & var_1.b.a.x), all(!arg_0.b.a)), vec3<i32>(_wgslsmith_add_i32(arg_0.c, _wgslsmith_mult_i32(var_1.c, var_1.c)), arg_0.c, -1i), u_input.a.xwy << (~countOneBits(u_input.a.yyw) % vec3<u32>(32u)), select(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 27290i, -1i), vec3<i32>(arg_0.c, 2147483647i, arg_0.c)), ~var_1.a.d, arg_0.a, func_3(arg_0.b.a.zx, vec3<i32>(0i, 1i, var_1.c), u_input.a.wzy, vec2<bool>(true, var_1.b.a.x)).b.x).a.xx, vec2<bool>(true & var_1.b.a.x, !arg_0.b.a.x), vec2<bool>(true, var_1.b.a.x || arg_0.b.a.x))), func_2(max(vec3<i32>(-2285i, var_1.c, -1i) | vec3<i32>(arg_0.c, var_1.c, 25407i), vec3<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_clamp_i32(arg_0.c, -19269i, 1i), var_1.c | -5841i)), u_input.a.x, Struct_2(select(!vec4<bool>(arg_0.a.a.x, true, false, arg_0.b.a.x), !var_1.a.a, arg_0.b.a), var_1.b.b, Struct_1(_wgslsmith_f_op_vec3_f32(var_0.xww * var_1.a.c.a), _wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_0.b.b.a.x)), reverseBits(_wgslsmith_add_u32(arg_0.b.d, 1u))), _wgslsmith_f_op_f32(-299f * 232f)).c, arg_0.b.d);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = func_4(Struct_3(func_2(vec3<i32>(1i, 1i, abs(0i)), u_input.d.x, Struct_2(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), Struct_1(global3.b, vec3<f32>(-428f, -1000f, 1270f), 1000f), Struct_1(vec3<f32>(-686f, global3.b.x, global1.a.x), vec3<f32>(global3.b.x, global1.b.x, global1.b.x), global1.a.x), ~108118u), -813f), Struct_2(vec4<bool>(true, arg_1.x, !arg_1.x, true), func_3(vec2<bool>(arg_1.x, arg_1.x), -vec3<i32>(0i, -1i, global0.x), _wgslsmith_add_vec3_u32(u_input.a.zwz, vec3<u32>(1u, 4294967295u, u_input.a.x)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(global1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 551f, 106f) - vec3<f32>(-1298f, 1479f, global3.b.x)), 671f), 1u), _wgslsmith_div_i32(-u_input.c, countOneBits(arg_0))), func_3(arg_1.yx, vec3<i32>(-_wgslsmith_clamp_i32(arg_0, -16452i, u_input.c), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, arg_0)), vec2<i32>(u_input.c, arg_0) >> (u_input.b % vec2<u32>(32u))), u_input.c), u_input.a.yzw, arg_1.zy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(822f, global3.b.x, global3.b.x, 869f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(678f, -222f, -458f, global1.b.x)))) + vec4<f32>(global1.a.x, 351f, -691f, _wgslsmith_f_op_f32(f32(-1f) * -284f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(global3.b.x, global1.a.x), 1199f, 516f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1917f, global1.b.x, 1305f, global3.a.x)))))));
    var var_1 = func_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, global0.x, 42707i), vec3<i32>(arg_0, arg_0, u_input.c) ^ vec3<i32>(-24589i, global0.x, 1i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, 49276i, arg_0), vec3<i32>(-10663i, u_input.c, global0.x))) & (vec3<i32>(abs(-2147483647i), -1i, arg_0) << ((~vec3<u32>(u_input.a.x, 0u, var_0.d) | max(vec3<u32>(0u, var_0.d, u_input.a.x), u_input.a.wzw)) % vec3<u32>(32u))), var_0.d, func_2(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -1i, global0.x), vec3<i32>(global0.x, -1i, u_input.c)), vec3<i32>(-1i, u_input.c, -26467i) << (vec3<u32>(var_0.d, var_0.d, 87940u) % vec3<u32>(32u))), 34601u, Struct_2(!(!vec4<bool>(arg_1.x, arg_1.x, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(global3.b + vec3<f32>(1375f, global1.a.x, global3.b.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.x, global1.a.x, 856f))), -1023f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, var_0.b.a.x, global3.b.x)), _wgslsmith_div_vec3_f32(var_0.c.a, vec3<f32>(122f, -1034f, 1392f)), _wgslsmith_f_op_f32(395f + var_0.b.b.x)), 3716u), global1.a.x), 2102f).b;
    let var_2 = !(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.a.x, arg_1.x), var_0.a.x), vec3<bool>(true, false, false), true)));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(-(reverseBits(global0.x) | -arg_0), (-49317i | arg_0) | ((global0.x << (u_input.a.x % 32u)) | global0.x)), 1i, ~(-u_input.c));
    let var_4 = ~_wgslsmith_sub_u32(~1u, ~(~1u));
    return Struct_3(Struct_2(func_4(Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(global1.b.x, 1764f, 1071f), var_0.c.b, global1.a.x), Struct_1(var_0.b.b, vec3<f32>(global3.a.x, global1.a.x, 595f), global1.c), var_4), func_2(vec3<i32>(46795i, -24601i, 2147483647i), var_4, Struct_2(var_0.a, var_0.b, Struct_1(vec3<f32>(1000f, -714f, -1085f), global3.b, 493f), 39923u), -337f), -2147483647i), Struct_1(vec3<f32>(757f, var_1.c, var_0.c.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, var_0.c.a.x, global3.b.x)), _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_1.b.x, -476f, 1254f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(148f, -862f, var_1.a.x, -218f), vec4<f32>(global3.b.x, var_0.b.c, var_0.c.a.x, 1338f), vec4<bool>(false, arg_1.x, false, arg_1.x))))).a, var_0.c, func_3(arg_1.zz, ~(-vec3<i32>(0i, 1i, -4822i)), ~u_input.a.wwy & u_input.a.wyz, vec2<bool>(var_2.x, var_2.x)), ~u_input.b.x), Struct_2(select(var_0.a, vec4<bool>(false, any(vec3<bool>(var_2.x, true, var_0.a.x)), all(var_2.yz), arg_1.x), vec4<bool>(var_0.a.x, true, any(vec2<bool>(true, var_0.a.x)), var_1.a.x < 559f)), var_0.b, var_0.c, var_4 | _wgslsmith_mult_u32(var_0.d, u_input.a.x)), global0.x);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(func_1(_wgslsmith_add_i32(-1i, global0.x ^ global0.x) & _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.c, -28561i, arg_0.c), -vec4<i32>(arg_0.c, global0.x, -1i, arg_0.c)), !vec3<bool>(global0.x > arg_0.c, false, any(arg_0.b.a.zww))).b, func_2(~(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, arg_0.c, -2147483647i), vec3<i32>(arg_0.c, 4622i, 2147483647i))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(34421u, arg_0.a.d), arg_0.a.d & 4294967295u), ~(~u_input.b)), arg_0.b, -910f), _wgslsmith_div_i32(select(_wgslsmith_div_i32(-8417i, func_1(global0.x, arg_0.b.a.yzy).c), -1i, true), 0i));
    let var_1 = vec3<bool>(var_0.a.a.x, true, true);
    var var_2 = var_0.c;
    global2 = array<vec4<u32>, 5>();
    let var_3 = 58843u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.a.c.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.b.x, 1328f, 1000f))))))), 322f);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = arg_0.a.a.x;
    var var_1 = true;
    var var_2 = false;
    var_1 = !any(func_1(_wgslsmith_mult_i32(firstLeadingBit(1i), 2147483647i), arg_0.b.a.yzz).b.a.xzx);
    let var_3 = func_3(arg_0.a.a.yw, vec3<i32>(~arg_0.c, global0.x ^ firstLeadingBit(7731i), -arg_0.c), ~(~(max(u_input.a.zzy, u_input.a.zww) >> (vec3<u32>(3553u, arg_0.b.d, u_input.b.x) % vec3<u32>(32u)))), select(!vec2<bool>(!arg_0.b.a.x, true), arg_0.a.a.zx, !(!vec2<bool>(var_0, false))));
    return func_1(-_wgslsmith_mult_i32(countOneBits(1i), -28537i), !vec3<bool>(arg_0.b.a.x, !any(arg_0.b.a.zz), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(Struct_2(vec4<bool>(true, true, true, true), func_5(func_1(u_input.c, vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c, global3.a.x, 465f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.c, 1930f, 244f))), global3.c), ~70887u), func_4(Struct_3(func_2(vec3<i32>(2147483647i, u_input.c, global0.x), u_input.b.x, Struct_2(vec4<bool>(true, true, false, false), Struct_1(global3.a, vec3<f32>(1570f, global1.c, global3.a.x), global3.c), Struct_1(vec3<f32>(global1.a.x, global3.c, -158f), vec3<f32>(-576f, -1230f, global3.c), global3.c), u_input.d.x), global3.b.x), func_4(Struct_3(Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(-131f, 223f, 180f), global1.b, global3.c), Struct_1(vec3<f32>(global3.a.x, -1214f, global3.b.x), global1.a, global3.b.x), 36723u), Struct_2(vec4<bool>(true, true, false, false), Struct_1(global1.a, vec3<f32>(-907f, 387f, -776f), 1000f), Struct_1(global1.a, global3.a, global3.c), 4294967295u), 55153i), Struct_1(global3.b, global1.b, global3.b.x), vec4<f32>(global3.c, 371f, -613f, global3.b.x)), select(29609i, u_input.c, false)), func_1(u_input.c, func_4(Struct_3(Struct_2(vec4<bool>(true, false, false, true), Struct_1(global1.a, vec3<f32>(global1.b.x, global1.a.x, 722f), 295f), Struct_1(global1.b, global3.a, 1000f), 28532u), Struct_2(vec4<bool>(true, true, false, true), Struct_1(global1.a, vec3<f32>(-342f, global1.b.x, -1533f), 1787f), Struct_1(global3.a, vec3<f32>(global1.b.x, global3.a.x, 616f), global1.a.x), 2091u), 2147483647i), Struct_1(vec3<f32>(global1.c, global1.b.x, global1.c), vec3<f32>(global3.b.x, -3093f, global3.b.x), global3.a.x), vec4<f32>(-169f, 845f, 554f, global1.c)).a.yyx).b.c, vec4<f32>(func_5(Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(global1.b, vec3<f32>(global3.b.x, -618f, global1.b.x), -1390f), Struct_1(global1.a, vec3<f32>(1493f, -1437f, -1000f), -1000f), 90159u), Struct_2(vec4<bool>(true, false, false, true), Struct_1(global3.a, global3.a, -735f), Struct_1(vec3<f32>(global1.b.x, 398f, 1070f), vec3<f32>(global3.b.x, 868f, global3.c), 1139f), u_input.a.x), global0.x)).a.x, global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -501f), global1.b.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.x, 1i, -45602i), vec3<i32>(global0.x, u_input.c, -2147483647i), vec3<bool>(true, true, true)), -vec3<i32>(global0.x, global0.x, global0.x)), max(0i, global0.x) ^ (-59237i >> (u_input.a.x % 32u)))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, 577f, 1134f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), -583f, _wgslsmith_div_f32(func_3(var_0.b.a.xx, vec3<i32>(u_input.c, u_input.c, global0.x), vec3<u32>(var_0.a.d, var_0.b.d, 26838u), var_0.b.a.zz).a.x, var_0.b.b.a.x))), _wgslsmith_f_op_vec3_f32(-func_1(1i, var_0.b.a.xwz).a.c.a), var_0.b.b.b.x);
    var var_1 = var_0;
    let var_2 = func_4(func_1(-(1i | max(u_input.c, var_1.c)), var_0.b.a.xyy), Struct_1(var_0.b.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.c, -1000f, -467f), global1.a) - _wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(global3.c, global3.c, global1.c), vec3<bool>(var_1.a.a.x, var_0.a.a.x, var_0.b.a.x)))) + vec3<f32>(-146f, func_2(vec3<i32>(var_1.c, global0.x, 2147483647i), var_0.a.d, var_1.a, -424f).c.a.x, var_0.b.b.b.x)), var_0.a.c.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.b.x, 789f, 630f, 1233f), vec4<f32>(global1.a.x, -1118f, var_1.b.c.b.x, var_1.b.c.c))))))).b.a;
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.b.x, 906f, var_0.a.b.a.x)) * vec3<f32>(var_1.b.c.c, -1000f, global3.a.x)), var_1.b.b.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.c.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + -1000f), global1.b.x)), 461f);
    global0 = vec2<i32>(var_0.c, -29052i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-5048i, -23064i, global0.x)), abs(vec3<i32>(29161i, global0.x, u_input.c))))), ~countOneBits(u_input.b.x), var_2.x, 5416i, 57218u);
}

