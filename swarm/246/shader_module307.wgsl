struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1000f, Struct_1(vec3<i32>(21721i, 0i, 2147483647i), vec3<u32>(0u, 57328u, 1u), -776f, vec3<i32>(i32(-2147483648), -23624i, 34090i), i32(-2147483648)), vec3<u32>(6661u, 9279u, 21329u), Struct_1(vec3<i32>(0i, 16587i, -67507i), vec3<u32>(8982u, 98630u, 13714u), -560f, vec3<i32>(-5223i, -30438i, 0i), 1i));

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    var var_0 = ~(~u_input.c);
    return global0.d.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1085f * _wgslsmith_f_op_f32(floor(global0.b.c))), Struct_1(-(~global0.d.a), reverseBits(vec3<u32>(~global0.c.x, ~global1.x, ~u_input.b)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), false, vec2<u32>(u_input.b, global1.x)))))), vec3<i32>(_wgslsmith_mult_i32(global0.b.e, 23939i), _wgslsmith_clamp_i32(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.c, 9244i), vec3<i32>(arg_1, -24253i, arg_1)), select(global0.b.e, u_input.c, false)), _wgslsmith_div_i32(-33589i, _wgslsmith_add_i32(arg_1, u_input.c))), arg_1), global0.b.b, global0.b);
    global1 = ~vec2<u32>(0u ^ u_input.a, global0.b.b.x);
    let var_1 = 28391u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(u_input.c >= arg_1, true), any(vec3<bool>(true, true, true)), vec2<u32>(~var_1, firstTrailingBit(var_1))))), 25907u, var_0.d, ~select(vec4<u32>(1u, ~36630u, global1.x, var_0.b.b.x), ~(vec4<u32>(global1.x, var_0.b.b.x, 0u, global0.b.b.x) >> (vec4<u32>(var_0.b.b.x, 1u, 1u, u_input.a) % vec4<u32>(32u))), abs(70162u) >= var_1));
    global0 = var_0;
    return Struct_3(-632f, countOneBits(4294967295u), var_0.b, _wgslsmith_mod_vec4_u32(var_2.d, _wgslsmith_sub_vec4_u32(var_2.d, ~vec4<u32>(10789u, u_input.b, u_input.b, var_2.d.x))) >> (abs(~vec4<u32>(4294967295u, 60491u, 29095u, 15202u) | var_2.d) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, _wgslsmith_f_op_f32(round(226f))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_div_f32(954f, 1606f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a, -409f))))), global0.d, global0.b.b, Struct_1(global0.b.d ^ arg_0.c.d, firstLeadingBit(vec3<u32>(global1.x, countOneBits(global0.c.x), 23736u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.x)))) - _wgslsmith_f_op_f32(trunc(2046f))), global0.b.d, 7448i));
    global2 = -1i;
    return func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d.c, 404f, -497f, -1142f))))), vec4<f32>(753f, arg_0.a, 183f, _wgslsmith_f_op_f32(1726f * var_0.x))))), -19385i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_2(173f, func_4(arg_0).c, arg_0.c.b, Struct_1((countOneBits(vec3<i32>(-50023i, arg_1.a.x, arg_1.a.x)) >> (vec3<u32>(0u, arg_3.x, 27372u) % vec3<u32>(32u))) << (global0.c % vec3<u32>(32u)), select(global0.b.b, max(countOneBits(global0.d.b), vec3<u32>(0u, arg_3.x, u_input.d.x)), true), arg_1.c, reverseBits(countOneBits(arg_1.a)) & -arg_0.c.d, 19900i));
    global0 = Struct_2(arg_1.c, global0.b, _wgslsmith_add_vec3_u32(abs(vec3<u32>(0u | arg_0.c.b.x, ~0u, ~4294967295u)), firstLeadingBit(vec3<u32>(23712u, global1.x, 37671u)) & func_4(Struct_3(global0.d.c, global0.d.b.x, arg_1, arg_0.d)).c.b), func_4(func_4(arg_0)).c);
    global1 = ~select(~var_0.d.b.yy, func_4(Struct_3(_wgslsmith_f_op_f32(-1927f + arg_1.c), 36439u, Struct_1(var_0.b.d, vec3<u32>(u_input.a, var_0.d.b.x, arg_3.x), var_0.a, vec3<i32>(arg_0.c.e, 2147483647i, -2147483647i), arg_0.c.a.x), ~arg_0.d)).c.b.yz, !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)));
    global1 = vec2<u32>(arg_0.c.b.x, countOneBits(select(0u, 37090u, 457i >= var_0.b.a.x) | ~_wgslsmith_mult_u32(0u, 65816u)));
    var var_1 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-667f, -992f)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> i32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(func_4(func_2(vec4<f32>(global0.d.c, arg_3.x, -458f, arg_3.x), -2147483647i)), func_4(func_4(Struct_3(global0.b.c, arg_1, global0.b, vec4<u32>(global0.b.b.x, global1.x, 31158u, u_input.b)))).c, 1i >> (global0.c.x % 32u), ~func_4(Struct_3(-444f, 49658u, global0.b, vec4<u32>(arg_1, 1u, u_input.b, global0.b.b.x))).d)))), Struct_1(_wgslsmith_mult_vec3_i32(global0.b.a, vec3<i32>(max(36945i, 12239i), 73017i, abs(-1i))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, global1.x), vec3<u32>(arg_1, 0u, 4294967295u)), ~_wgslsmith_mod_vec3_u32(global0.c, vec3<u32>(10912u, 42570u, 4294967295u))), 810f, arg_2.wxz, 1i), global0.c, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_2.x, -2147483647i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, global0.b.d.x, -2147483647i), arg_2.zyz), vec3<i32>(_wgslsmith_div_i32(arg_0, -1i), arg_0, arg_0)), min(vec3<u32>(global0.c.x, _wgslsmith_dot_vec2_u32(global0.b.b.zz, global0.d.b.zz), global0.c.x), vec3<u32>(global1.x >> (arg_1 % 32u), ~1u, global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)) + _wgslsmith_f_op_f32(-global0.a)), vec3<i32>(arg_0, 0i, -1i), arg_0));
    global1 = u_input.d;
    var var_0 = true || !select(true, !(-1000f != arg_3.x), any(vec4<bool>(false, false, false, false)));
    global1 = ~(~u_input.d);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, global0.b.c, global0.d.c, arg_3.x))))), -47715i & arg_0);
    return ~(-(~(-arg_2.x)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(reverseBits(countOneBits(global0.d.a.x ^ global0.d.e)), max(1i, arg_0.x), ~max(_wgslsmith_mod_i32(~(-2147483647i), u_input.c), 0i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(arg_0.x >> (arg_1.x % 32u), ~0i)));
    let var_1 = global0.b;
    global1 = ~_wgslsmith_mod_vec2_u32(u_input.d, ~(~(~var_1.b.xz)));
    global0 = Struct_2(global0.a, func_2(vec4<f32>(-944f, _wgslsmith_f_op_f32(ceil(1048f)), global0.a, func_4(func_4(Struct_3(-958f, global0.d.b.x, global0.b, vec4<u32>(42304u, global0.b.b.x, arg_1.x, 0u)))).c.c), var_1.d.x).c, ~arg_1, global0.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.c, var_1.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.c)), _wgslsmith_f_op_f32(-global0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, -1039f, global0.a)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1338f, global0.d.c, var_1.c)))))))));
    return Struct_2(var_2.x, func_4(Struct_3(var_1.c, var_1.b.x, func_4(func_2(vec4<f32>(-706f, var_1.c, var_2.x, var_1.c), 15760i)).c, vec4<u32>(var_1.b.x ^ arg_1.x, var_1.b.x, u_input.b | global0.b.b.x, global1.x << (64645u % 32u)))).c, ~arg_1, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.c * global0.a), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1052f), var_1.c) - vec4<f32>(_wgslsmith_f_op_f32(-538f * var_1.c), -1365f, global0.b.c, _wgslsmith_f_op_f32(-global0.d.c))), _wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-628f, global0.b.c, var_2.x, 494f)), _wgslsmith_mod_i32(-10193i, global0.d.d.x)).c.a.x, u_input.c ^ min(0i, var_1.a.x), 30053i)).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d.a;
    global0 = func_6(~vec4<i32>(-_wgslsmith_mod_i32(2147483647i, var_0.x), -max(var_0.x, 1i), func_1(i32(-1i) * -34950i, global0.d.b.x, vec4<i32>(2147483647i, 1i, global0.b.d.x, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, 903f) - vec2<f32>(-507f, 705f))), _wgslsmith_add_i32(var_0.x & -1i, var_0.x)), ~(~vec3<u32>(global1.x, 15915u, 112403u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(8025u, global0.d.b.x, 4294967295u), global0.d.b)) << (~vec3<u32>(10806u, min(global1.x, u_input.a), ~global1.x) % vec3<u32>(32u)));
    global2 = _wgslsmith_sub_i32(global0.d.d.x, _wgslsmith_mod_i32(~(-var_0.x), abs(global0.d.e)));
    var var_1 = 73722u;
    var var_2 = ~10861u;
    global2 = abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(abs(global0.d.a.xx)), ~abs(var_0.xz)), ~global0.d.d.x ^ global0.b.e));
    var var_3 = vec2<bool>(1000f < global0.a, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_4 = Struct_3(func_6(vec4<i32>(~(-72365i), var_0.x, -u_input.c, i32(-1i) * -1i), vec3<u32>((10906u >> (global0.b.b.x % 32u)) & u_input.b, ~_wgslsmith_clamp_u32(10046u, 7490u, 68604u), u_input.a)).d.c, u_input.a, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.b.c)), global0.a, _wgslsmith_f_op_f32(step(315f, -871f)), _wgslsmith_f_op_f32(abs(140f))) + vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_3(global0.a, 1u, Struct_1(global0.d.a, global0.b.b, -226f, global0.b.d, -2147483647i), vec4<u32>(0u, global1.x, 0u, 83297u)), global0.b, global0.d.d.x, vec4<u32>(global0.c.x, 1u, global1.x, 47804u))), 237f, _wgslsmith_f_op_f32(min(global0.d.c, 181f)), _wgslsmith_f_op_f32(-1138f * global0.b.c))), u_input.c).c, firstLeadingBit(~(~(~vec4<u32>(0u, global1.x, 4294967295u, 72086u)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

