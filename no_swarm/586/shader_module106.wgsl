struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(false, true, vec3<u32>(869u, 1u, 0u), vec4<i32>(17234i, i32(-2147483648), -47744i, -44545i), vec2<u32>(90326u, 50549u));

var<private> global2: vec2<f32> = vec2<f32>(2126f, -181f);

var<private> global3: bool;

var<private> global4: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_1(u_input.b <= 1u, global1.a, vec3<u32>(_wgslsmith_div_u32(countOneBits(u_input.d.x), global1.c.x) >> (~1u % 32u), 98601u, ~(~(global0.e.x >> (u_input.c % 32u)))), -global1.d, global1.e);
    global4 = true;
    let var_1 = Struct_1(all(vec3<bool>(!all(vec3<bool>(false, true, global0.a)), global1.b, arg_0.x)), true, vec3<u32>(~_wgslsmith_mult_u32(global1.e.x, 1u), 68666u, abs(~var_0.c.x ^ global0.c.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.x, -10485i, u_input.a.x, 1i) << (~vec4<u32>(10995u, 0u, global1.e.x, global0.e.x) % vec4<u32>(32u)), min(abs(vec4<i32>(var_0.d.x, -1i, u_input.a.x, 2147483647i)), vec4<i32>(0i, global1.d.x, arg_1.x, 2147483647i))), countOneBits(~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_0.c.x, global1.c.x)), global0.c.xy)));
    global3 = -2147483647i >= (firstLeadingBit(global1.d.x) & var_0.d.x);
    var var_2 = Struct_1(true, !any(select(select(arg_0.zyx, vec3<bool>(var_1.a, true, true), vec3<bool>(false, global0.b, var_0.a)), select(vec3<bool>(false, arg_0.x, true), vec3<bool>(true, var_0.a, global0.b), true), true)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d, global0.c, vec3<u32>(abs(2443u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, 48858u, var_1.c.x), vec3<u32>(13155u, 1u, global0.e.x)), 17890u)), ~(~vec3<u32>(var_0.c.x, u_input.d.x, global1.e.x))), _wgslsmith_div_vec4_i32(var_0.d, -var_0.d), ~_wgslsmith_mod_vec2_u32(~var_0.e ^ (vec2<u32>(global0.c.x, global0.e.x) & vec2<u32>(var_0.c.x, 1u)), vec2<u32>(_wgslsmith_sub_u32(0u, 0u), _wgslsmith_sub_u32(30227u, 0u))));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(!all(!vec3<bool>(false, global0.a, false)), global0.b, true, all(vec2<bool>(true, true)) & any(!vec4<bool>(global0.a, global1.a, global1.a, false)));
    var var_1 = global0.e;
    var var_2 = Struct_1(true, global0.a && true, ~vec3<u32>(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 6158u), ~vec2<u32>(0u, 1u)), _wgslsmith_mult_u32(72675u, u_input.c)), vec4<i32>(18069i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.zy), _wgslsmith_mult_vec2_i32(u_input.a.zz, global0.d.zx)), ~(-1i)), min(global1.d.x, global1.d.x), global1.d.x), vec2<u32>(30839u, ~(~48004u)));
    let var_3 = global1.c.x;
    let var_4 = Struct_1(false, all(vec2<bool>(func_3(!vec4<bool>(false, true, false, var_2.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.d.x, -52107i), var_2.d.wz)), global0.a)), select(reverseBits(global0.c) >> (firstLeadingBit(var_2.c) % vec3<u32>(32u)), vec3<u32>(select(var_2.e.x, 49025u, global1.a), _wgslsmith_mod_u32(4294967295u, 51221u), 23101u), !var_0.xww) << (~vec3<u32>(var_1.x, 2153u, 0u) % vec3<u32>(32u)), global1.d, ~select(global1.c.yx, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e.x, 1u), u_input.d.zy), _wgslsmith_mod_u32(global1.e.x, u_input.d.x)), var_0.x));
    return var_4;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = arg_0 == 0u;
    let var_3 = select(_wgslsmith_mod_vec2_i32(abs(global1.d.zz), (~global1.d.zw ^ -arg_3.d.xy) >> (vec2<u32>(0u ^ var_0.c.x, arg_3.e.x) % vec2<u32>(32u))), global1.d.zx, vec2<bool>(true, var_1.b));
    var var_4 = Struct_1(true, true, ~(~(~u_input.d) << (max(u_input.d, _wgslsmith_clamp_vec3_u32(global1.c, vec3<u32>(global1.c.x, var_1.c.x, 0u), var_0.c)) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_3.d.x, u_input.a.x, -11682i) ^ (var_0.d | vec4<i32>(-48264i, -2147483647i, -1i, var_3.x)), vec4<i32>(arg_2.d.x & var_1.d.x, ~u_input.a.x, reverseBits(1i), abs(-1i)))), _wgslsmith_div_vec2_u32(func_2().c.zz, _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.e.x, 1u), select(firstTrailingBit(arg_2.c.yy), ~vec2<u32>(4294967295u, global1.c.x), true))));
    return Struct_1(!any(select(select(vec2<bool>(var_4.b, false), vec2<bool>(false, var_4.b), false), vec2<bool>(arg_3.b, true), vec2<bool>(false, global0.b))), true, _wgslsmith_clamp_vec3_u32(u_input.d, firstTrailingBit(~(~global0.c)), ~max(var_4.c, var_0.c) | abs(~var_4.c)), vec4<i32>(~1i, 28436i, -global0.d.x << (~(~11324u) % 32u), var_1.d.x), vec2<u32>(_wgslsmith_mult_u32(16711u, ~_wgslsmith_sub_u32(11278u, arg_0)), var_0.e.x));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return func_2();
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global4 = !global0.b;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(floor(-1000f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))));
    var var_1 = vec4<bool>(!global1.a, func_3(select(vec4<bool>(!arg_0.b, false, false, all(vec2<bool>(true, true))), select(select(vec4<bool>(global1.a, true, true, false), vec4<bool>(global1.b, false, false, global1.b), vec4<bool>(global1.b, global0.b, false, arg_0.b)), !vec4<bool>(arg_0.b, global0.b, arg_0.b, true), vec4<bool>(true, true, true, true)), func_3(vec4<bool>(false, true, global1.a, arg_0.b), firstLeadingBit(global1.d.ww))), arg_0.d.wz), false, any(!vec2<bool>(false || arg_0.a, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-392f + global2.x), global2.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(239f, -808f, -130f), vec3<f32>(-207f, 336f, var_0), !var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2398f, var_0, -245f), vec3<f32>(-682f, global2.x, 1000f))))))));
    let var_3 = arg_0;
    return Struct_1(any(!select(select(vec2<bool>(false, true), var_1.zy, var_1.x), var_1.yy, !vec2<bool>(true, var_1.x))), true, global1.c, vec4<i32>(16493i, arg_0.d.x, abs(countOneBits(global0.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.x, global0.e.x, u_input.c, global1.e.x), vec4<u32>(global0.c.x, 0u, arg_0.e.x, u_input.d.x)) % 32u)), arg_0.d.x), ~global1.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = !(global2.x == _wgslsmith_f_op_f32(1166f - global2.x));
    var_0 = !global0.a;
    let var_1 = func_6(func_5(1407f, ~(~vec4<u32>(4294967295u, 4294967295u, 14394u, global1.e.x)) | countOneBits(abs(vec4<u32>(0u, 75313u, global0.e.x, 1u))), Struct_1(true, true, global1.c, select(vec4<i32>(global0.d.x, -47157i, global1.d.x, -1i), vec4<i32>(global1.d.x, 2147483647i, global0.d.x, global1.d.x), select(arg_1, arg_1, vec4<bool>(false, global0.a, arg_2.x, false))), ~global0.e), func_4(~_wgslsmith_sub_u32(global1.e.x, 65223u), select(arg_1.x || true, arg_1.x, !global1.b), func_2(), Struct_1(all(vec4<bool>(false, global1.a, arg_1.x, false)), arg_1.x, abs(u_input.d), global0.d, vec2<u32>(59605u, u_input.b)))));
    let var_2 = func_5(-1532f, _wgslsmith_sub_vec4_u32(select(vec4<u32>(firstLeadingBit(var_1.c.x), global1.e.x, ~u_input.d.x, max(0u, 12221u)), ~vec4<u32>(global0.e.x, 28882u, global1.e.x, global1.c.x), arg_1), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, global0.e.x, 0u, 52025u) & vec4<u32>(1u, 0u, var_1.e.x, 11737u), ~vec4<u32>(70813u, 51060u, 82275u, global1.c.x), vec4<u32>(4294967295u, global0.e.x, u_input.b, 33542u)), vec4<u32>(1u, abs(38901u), _wgslsmith_add_u32(34446u, var_1.e.x), _wgslsmith_add_u32(global0.c.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(23468u, global1.e.x, var_1.c.x, var_1.c.x), vec4<u32>(47508u, 52020u, 34463u, u_input.c), ~vec4<u32>(global0.e.x, var_1.e.x, global1.e.x, 1u)))), var_1, var_1);
    var var_3 = Struct_1(false | arg_2.x, all(!vec2<bool>(!arg_2.x, true)), vec3<u32>(func_2().e.x >> (67134u % 32u), var_2.c.x, 1u), var_2.d, ~(u_input.d.yx ^ countOneBits(global1.c.zz)));
    return reverseBits(vec4<u32>(~(_wgslsmith_mod_u32(global1.c.x, var_1.e.x) >> (var_3.e.x % 32u)), 1u, abs(func_4(global0.c.x, global0.d.x >= var_2.d.x, var_1, func_5(global2.x, vec4<u32>(global0.c.x, global1.c.x, global0.c.x, 0u), var_1, Struct_1(false, true, vec3<u32>(25135u, 53170u, u_input.d.x), global1.d, global1.e))).e.x), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, 4294967295u, 5262u, 46625u), vec4<u32>(53760u, var_3.c.x, 4294967295u, 0u))), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(149368u << (u_input.d.x % 32u), ~_wgslsmith_mult_u32(2169u, global0.e.x), _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_add_u32(u_input.c, 0u)), global0.e.x), (func_1(vec2<f32>(132f, global2.x), vec4<bool>(global1.b, true, global1.a, global1.b), vec2<bool>(global1.b, false)) ^ vec4<u32>(1u, u_input.c, 1u, 33769u)) >> (_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(22432u, u_input.c, 1u, 1u)), ~vec4<u32>(u_input.c, 46611u, global0.e.x, global0.c.x)) % vec4<u32>(32u)));
    global1 = Struct_1(false, true, ~global1.c, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-13396i >> (global0.c.x % 32u), func_2().d.x, 9045i, min(global0.d.x, global1.d.x)), ~(~vec4<i32>(-84253i, 2147483647i, 1i, u_input.a.x)))), var_0.xy);
    global0 = Struct_1(true, true, (vec3<u32>(reverseBits(4294967295u), _wgslsmith_mod_u32(global0.c.x, 56543u), firstLeadingBit(87232u)) & ~(~vec3<u32>(global0.e.x, u_input.d.x, 6579u))) << (func_2().c % vec3<u32>(32u)), -(~global0.d), vec2<u32>(~(~global1.c.x), _wgslsmith_mod_u32(4294967295u, global0.e.x << (abs(0u) % 32u))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1162f), -1392f);
    var var_1 = func_5(-826f, var_0 ^ (~var_0 | _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_0.x, var_0.x, u_input.d.x, 0u)), var_0)), func_6(func_5(1707f, var_0, func_2(), func_4(u_input.b, global1.b, func_2(), func_2()))), Struct_1(true, !((global1.b || global0.b) || global1.a), vec3<u32>(9486u, _wgslsmith_add_u32(25u, 1u), ~4294967295u), ~global1.d, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(29311u, 33874u), vec2<u32>(u_input.b, 0u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1703f, 545f, global2.x) - vec3<f32>(972f, 499f, -1921f))))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(614f, -348f, -523f)))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, global2.x, var_2.x), vec3<f32>(932f, global2.x, var_2.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, var_2.x, var_2.x), vec3<f32>(global2.x, global2.x, 1636f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.x, var_2.x)), vec3<f32>(796f, -769f, 282f), all(vec3<bool>(true, global0.a, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(918f, 1018f, global2.x) * vec3<f32>(1000f, var_2.x, global2.x))))), vec3<bool>(!(var_1.b | false), !(var_2.x < var_2.x), func_6(Struct_1(global0.a, global1.a, vec3<u32>(var_1.e.x, 26494u, u_input.c), global0.d, global1.c.zx)).a))), vec3<f32>(_wgslsmith_f_op_f32(sign(1021f)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1192f, -1000f)) + _wgslsmith_div_f32(252f, 276f)))));
    var var_3 = Struct_1(!global0.b, true, _wgslsmith_div_vec3_u32(vec3<u32>(global1.c.x, u_input.c, 1u), global0.c) << (firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10164u, 0u, 62656u, var_1.c.x), var_0), 5250u, 37277u << (var_1.e.x % 32u))) % vec3<u32>(32u)), _wgslsmith_div_vec4_i32(reverseBits(global0.d), vec4<i32>((0i ^ var_1.d.x) | u_input.a.x, 44530i, global0.d.x, global1.d.x | _wgslsmith_dot_vec2_i32(global1.d.zz, vec2<i32>(global0.d.x, 44439i)))), vec2<u32>(~var_0.x, ~var_0.x ^ (55358u >> (~var_1.e.x % 32u))));
    global3 = !(!(true || ((global0.d.x | global0.d.x) <= -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, abs(1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, var_2.x, -838f, -1023f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(957f, global2.x, -169f, global2.x))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1029f, -127f, var_2.x, global2.x) + vec4<f32>(var_2.x, var_2.x, 801f, -340f)), _wgslsmith_div_vec4_f32(vec4<f32>(1073f, 2413f, -2416f, -768f), vec4<f32>(-868f, 3082f, -1099f, 127f)))), ~global1.c.x, firstLeadingBit(_wgslsmith_add_i32(global1.d.x, var_1.d.x) ^ func_5(var_2.x, vec4<u32>(6269u, 63664u, global1.e.x, var_0.x), Struct_1(false, global1.b, global0.c, global1.d, vec2<u32>(56751u, var_1.c.x)), func_5(177f, vec4<u32>(var_0.x, var_3.e.x, 0u, 0u), Struct_1(var_3.a, false, vec3<u32>(3919u, var_0.x, var_1.e.x), vec4<i32>(global0.d.x, var_3.d.x, 2147483647i, global1.d.x), global0.e), Struct_1(false, true, var_1.c, vec4<i32>(-27207i, global1.d.x, -2147483647i, -1i), u_input.d.yx))).d.x));
}

