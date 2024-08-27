struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(1u, 0u, 0u, 1515u));

var<private> global1: Struct_3;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = Struct_2(global0.a);
    let var_0 = global1.c;
    let var_1 = vec2<f32>(global1.a, 601f);
    let var_2 = global0.a.zxz;
    global0 = Struct_2(vec4<u32>(1u | (u_input.a << (4294967295u % 32u)), var_2.x, global0.a.x, 10900u) << (global0.a % vec4<u32>(32u)));
    return 67495u ^ var_2.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(global0.a << (global0.a % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_u32(1u, func_3());
    let var_2 = global1.c.a;
    let var_3 = arg_3;
    global0 = var_0;
    return Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(~34154u) << (select(func_3(), global0.a.x | 15976u, false && arg_3.c) % 32u), max(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(28443u, 1u, global1.c.a)), vec3<u32>(0u, arg_3.a, 18784u)), ~4294967295u), global0.a.x), arg_3.b, global1.c.c, 45988i);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global1 = Struct_3(_wgslsmith_f_op_f32(global1.a + -1286f), global1.b, func_2(global1.c.a, 1i, min(4294967295u, 1u), Struct_1(global0.a.x, _wgslsmith_mult_vec3_i32(global1.b.b, vec3<i32>(52496i, u_input.b, 0i) | vec3<i32>(-1i, -63249i, u_input.b)), true, abs(u_input.b))), global0.a.x);
    let var_1 = global1.b.c;
    global0 = var_0;
    var var_2 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.a, global1.b.a), vec2<u32>(var_0.a.x, arg_0.a.x)), ~3055u, 4294967295u) << (~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(32200u, arg_0.a.x), var_0.a.yx)) % 32u);
    return global1.b;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, max(37980u, arg_0.a), ~arg_0.a), ~_wgslsmith_sub_vec3_u32(global0.a.zxw, vec3<u32>(u_input.a, 3394u, u_input.a)), countOneBits(vec3<u32>(u_input.a, 1u, 0u)))), vec3<u32>(68880u, abs(u_input.a), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 26211u, 5424u), global0.a.wyw), ~u_input.a), global0.a.x)));
    var var_1 = Struct_2(_wgslsmith_add_vec4_u32(select(firstTrailingBit(vec4<u32>(2833u, global0.a.x, 46785u, 7166u)), ~vec4<u32>(arg_0.a, 17281u, arg_0.a, 12737u), !vec4<bool>(false, global1.c.c, arg_0.c, true)), global0.a) & vec4<u32>(~arg_0.a, 9394u, ~_wgslsmith_div_u32(global1.d, 7336u), global1.c.a));
    global0 = Struct_2(~var_1.a);
    global0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(4294967295u, 4294967295u, u_input.a))), abs(vec3<u32>(u_input.a, 0u, 16798u))), _wgslsmith_dot_vec4_u32(var_1.a >> (~var_1.a % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.a, arg_0.a, 0u, arg_0.a))), var_0.x >> (1u % 32u), var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1585f - _wgslsmith_f_op_f32(floor(484f))), global1.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, global1.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a, 1375f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a, 1263f), vec2<f32>(-146f, -827f))))))), any(select(!select(vec2<bool>(global1.b.c, true), vec2<bool>(arg_0.c, false), false), vec2<bool>(!global1.c.c, true), vec2<bool>(true, false)))));
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_0.a, 64247u, arg_0.a, global0.a.x)), abs(abs(global0.a))), var_1.a.x, arg_0.a, 1u));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global1 = Struct_3(_wgslsmith_f_op_f32(-global1.a), func_1(arg_0), func_2(~(~abs(4294967295u)), global1.c.d, 1u, global1.b), 4294967295u);
    global1 = Struct_3(_wgslsmith_f_op_f32(select(797f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1134f, _wgslsmith_f_op_f32(-global1.a))), global1.a)), global1.b.c)), global1.b, global1.c, max(15345u & u_input.a, ~_wgslsmith_div_u32(global0.a.x | u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 28344u), vec3<u32>(u_input.a, u_input.a, 29102u)))));
    global1 = Struct_3(global1.a, Struct_1(global0.a.x, ~max(_wgslsmith_mult_vec3_i32(arg_1, global1.b.b), _wgslsmith_add_vec3_i32(vec3<i32>(global1.b.b.x, u_input.b, 2147483647i), global1.b.b)), all(vec4<bool>(true, false, all(vec3<bool>(false, false, false)), global1.b.c)), (max(61112i, 2147483647i) >> (1u % 32u)) ^ _wgslsmith_mod_i32(firstLeadingBit(u_input.b), 2147483647i)), func_1(arg_0), u_input.a);
    global0 = func_4(func_2(u_input.a, ~(-select(global1.b.b.x, -1i, true)), arg_0.a.x, global1.b));
    var var_0 = _wgslsmith_f_op_f32(-1340f + _wgslsmith_f_op_f32(global1.a * -1000f));
    return Struct_2(_wgslsmith_mod_vec4_u32(~func_4(Struct_1(1u, vec3<i32>(1740i, -2147483647i, u_input.b), global1.b.c, 0i)).a, ~global0.a));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(global1.c.b.x, abs(-35921i));
    global0 = arg_1;
    var var_1 = global1.a;
    var var_2 = ~firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(arg_2.b.x, arg_2.b.x), _wgslsmith_add_i32(2147483647i, arg_2.b.x), 11232i, 1i)) | abs(-min(max(vec4<i32>(6034i, global1.c.d, arg_2.b.x, 1i), vec4<i32>(global1.b.b.x, global1.b.d, global1.b.b.x, 1i)), abs(vec4<i32>(1i, -618i, 2147483647i, 0i))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1925f)) + global1.a) == _wgslsmith_f_op_f32(841f + 1430f);
    return Struct_1(_wgslsmith_mult_u32(func_3(), countOneBits(min(~4294967295u, ~global1.c.a))), global1.c.b, true, _wgslsmith_dot_vec3_i32(arg_2.b | reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, global1.c.d, 19615i), var_2.zzy, var_2.xzw)), vec3<i32>(1i, u_input.b, countOneBits(global1.b.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    var var_0 = Struct_2(global0.a);
    var var_1 = abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(global1.d, var_0.a.x)), ~_wgslsmith_sub_vec2_u32(global0.a.wy | var_0.a.zw, global0.a.yz)));
    var var_2 = countOneBits(~vec4<u32>(_wgslsmith_mult_u32(global0.a.x | 72368u, global1.b.a), ~(~42833u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(18701u, global1.c.a), ~var_0.a.x), ~_wgslsmith_mult_u32(global1.c.a, 26839u)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f)), func_6(reverseBits(vec3<u32>(4294967295u, ~var_2.x, global0.a.x)), func_5(func_4(func_1(Struct_2(vec4<u32>(u_input.a, 1u, 54162u, 1u)))), _wgslsmith_sub_vec3_i32(~global1.c.b, global1.c.b)), Struct_1(global1.c.a, vec3<i32>(firstLeadingBit(u_input.b), -global1.c.b.x, 1i), any(!vec4<bool>(true, false, global1.c.c, false)), abs(_wgslsmith_sub_i32(u_input.b, -47114i)))), func_2(~_wgslsmith_clamp_u32(1u, ~51200u, var_0.a.x), -u_input.b, _wgslsmith_div_u32(var_0.a.x, _wgslsmith_clamp_u32(global1.b.a, var_2.x, var_2.x) << (global1.d % 32u)), global1.b), 14017u);
    let var_4 = func_4(func_2(reverseBits(abs(~34309u)), _wgslsmith_sub_i32(var_3.c.b.x, global1.c.d), u_input.a, Struct_1(2074u, global1.c.b, all(select(vec4<bool>(global1.c.c, var_3.b.c, var_3.b.c, global1.c.c), vec4<bool>(var_3.b.c, global1.b.c, false, false), global1.c.c)), global1.b.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global1.b.d, global1.c.d << (22289u % 32u)), ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(36351i, global1.c.d), _wgslsmith_add_vec2_i32(global1.c.b.zy, vec2<i32>(var_3.b.b.x, var_3.c.d)), global1.b.b.yy), global1.c.b.yz, !(!vec2<bool>(var_3.b.c, global1.b.c))));
}

