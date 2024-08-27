struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = 1i;

var<private> global2: vec2<f32> = vec2<f32>(-446f, -241f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> i32 {
    global0 = firstTrailingBit(u_input.a);
    let var_0 = !select(vec3<bool>(true & any(arg_0.a.c.yx), arg_2.a.c.x, true), vec3<bool>(true != select(true, false, false), any(arg_2.a.c.xz), all(!vec4<bool>(false, arg_2.a.c.x, false, false))), vec3<bool>(arg_2.a.c.x, any(select(vec3<bool>(arg_2.a.c.x, arg_2.a.c.x, arg_0.a.c.x), vec3<bool>(false, arg_0.a.c.x, false), true)), arg_2.a.c.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)), 1763u, select(!select(arg_0.a.c, var_0, !arg_0.a.c), select(select(!vec3<bool>(false, arg_0.a.c.x, false), select(vec3<bool>(false, var_0.x, true), var_0, vec3<bool>(true, true, arg_2.a.c.x)), arg_2.a.c.x), select(arg_2.a.c, !vec3<bool>(false, var_0.x, false), select(vec3<bool>(true, var_0.x, true), arg_2.a.c, var_0)), arg_0.a.c), arg_0.a.c));
    var var_2 = -_wgslsmith_div_vec3_i32(~(max(vec3<i32>(u_input.b, -1i, 1973i), vec3<i32>(u_input.d, u_input.c, u_input.c)) << (vec3<u32>(arg_2.a.b, 7903u, 43019u) % vec3<u32>(32u))), select(min(-vec3<i32>(-6906i, 1i, u_input.b), vec3<i32>(-12637i, u_input.b, 2147483647i) & vec3<i32>(u_input.d, 20330i, u_input.d)), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(0i, 0i, 1027i), vec3<i32>(u_input.d, u_input.d, u_input.d)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.d, u_input.d), vec3<i32>(u_input.b, 27369i, u_input.b)), min(vec3<i32>(-30014i, 2147483647i, u_input.c), vec3<i32>(21170i, u_input.b, -20645i))), !(!vec3<bool>(arg_0.a.c.x, arg_2.a.c.x, var_1.c.x))));
    global0 = u_input.a;
    return _wgslsmith_mod_i32(u_input.c, _wgslsmith_add_i32(-var_2.x, ~(-12537i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> vec2<f32> {
    global1 = u_input.c;
    var var_0 = vec4<i32>(i32(-1i) * -1239i, abs(~u_input.d), _wgslsmith_clamp_i32(firstLeadingBit(~(-57955i)), _wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.c, 41788i), u_input.c), max(_wgslsmith_add_i32(-34145i, -29506i) >> (_wgslsmith_mod_u32(arg_0.x, global0.x) % 32u), firstLeadingBit(abs(u_input.d)))), u_input.d);
    var_0 = ~vec4<i32>(-13455i, _wgslsmith_mult_i32(func_3(Struct_2(Struct_1(global2.x, 51281u, vec3<bool>(true, true, true))), Struct_3(-133f), Struct_2(Struct_1(global2.x, 4294967295u, vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, 1000f, global2.x), vec3<f32>(global2.x, 1035f, global2.x), true))), u_input.c), _wgslsmith_mult_i32(-2147483647i, var_0.x), countOneBits(u_input.b));
    var var_1 = ~(~(var_0.zzy ^ var_0.www) >> (~(~arg_0) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_div_i32(~u_input.c, abs(var_0.x) << ((u_input.a.x ^ 0u) % 32u)), _wgslsmith_mult_i32(17920i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-3091i, -1i), func_3(Struct_2(Struct_1(-1000f, u_input.a.x, vec3<bool>(false, false, true))), arg_1, Struct_2(Struct_1(621f, arg_0.x, vec3<bool>(false, false, true))), vec3<f32>(-566f, global2.x, global2.x)))), u_input.b);
    var var_2 = -_wgslsmith_mod_vec3_i32(-var_0.xyx, -(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.x, var_1.x), vec3<i32>(-64631i, var_0.x, 2147483647i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(232f, 118f) - vec2<f32>(119f, global2.x))), vec2<f32>(global2.x, -205f))));
}

fn func_1() -> i32 {
    var var_0 = global2.x;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, 13559u, 54029u)), _wgslsmith_sub_vec3_u32(vec3<u32>(68184u, global0.x, u_input.a.x), vec3<u32>(4294967295u, 1795u, global0.x)) & reverseBits(vec3<u32>(u_input.a.x, 0u, 1u))), Struct_3(_wgslsmith_f_op_f32(step(global2.x, 1f))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(1636f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), -156f))), _wgslsmith_mult_u32(u_input.a.x, 7402u), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, any(vec4<bool>(false, false, true, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a.a, 598f), _wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(16983u, global0.x, 5432u), Struct_3(-586f))).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f - var_1.a.a)), _wgslsmith_f_op_f32(var_1.a.a + var_1.a.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(632f, 243f) * _wgslsmith_f_op_f32(global2.x + var_1.a.a)))));
    var var_3 = vec4<u32>(~var_1.a.b, ~1u & ~countOneBits(global0.x >> (u_input.a.x % 32u)), u_input.a.x, ~global0.x);
    return min(20815i, -_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.c)), vec4<i32>(u_input.b & u_input.b, -33163i, func_3(Struct_2(var_1.a), Struct_3(1288f), Struct_2(Struct_1(-953f, 64594u, var_1.a.c)), vec3<f32>(global2.x, -831f, var_2.x)), 30802i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~u_input.a);
    global1 = func_1() & abs(~u_input.b);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - vec3<f32>(global2.x, 1784f, -525f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -228f, -299f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, global2.x, 2104f)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, -1437f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, 245f, -1254f)))))));
    let var_1 = !(!(any(vec4<bool>(true, true, true, true)) | all(vec2<bool>(true, false))));
    var var_2 = Struct_2(Struct_1(var_0.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), ~vec4<u32>(global0.x, 1u, 14044u, u_input.a.x))), !(!vec3<bool>(var_1, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(-1i, u_input.b)) & _wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(-2147483647i, u_input.d, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -2261f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, _wgslsmith_div_f32(1786f, -2677f), -1389f, -1623f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1117f, 2093f, -854f))))), -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a, var_2.a.a, var_2.a.a))))) - _wgslsmith_f_op_vec3_f32(-var_0)));
}

