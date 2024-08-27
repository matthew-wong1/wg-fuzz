struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-7613i, 0i, 21770i), vec3<i32>(2147483647i, 1i, -9988i), vec3<i32>(-33320i, -36191i, 8903i), vec3<i32>(-1i, 0i, 20423i), vec3<i32>(-1183i, -1i, -42733i), vec3<i32>(1i, 3557i, -48892i), vec3<i32>(13736i, 0i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 35308i), vec3<i32>(-25227i, 17889i, 15753i), vec3<i32>(15824i, 0i, 10171i), vec3<i32>(26215i, 1i, -1i), vec3<i32>(103970i, 44800i, -35234i), vec3<i32>(-1i, 2147483647i, 26795i), vec3<i32>(0i, -8657i, -25621i), vec3<i32>(25401i, -21534i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 23268i), vec3<i32>(2147483647i, -1i, 10499i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 1i, 2030i), vec3<i32>(9968i, i32(-2147483648), 24188i), vec3<i32>(-43833i, -1i, -51989i), vec3<i32>(-1i, 1i, 16018i), vec3<i32>(2147483647i, -1i, -1i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = abs(arg_1.b.wyw);
    var_0 = vec3<i32>(-2147483647i, -arg_1.b.x, arg_2.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.a)) + 821f) * arg_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-365f + 1873f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-704f * arg_1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + arg_1.c))), 2904f, _wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(-arg_1.c)));
    var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(25036u, 23u)], vec3<i32>(select(~0i, var_0.x, true || arg_3.b), u_input.e.x >> (arg_3.c.c % 32u), (-2147483647i >> (u_input.d.x % 32u)) << (~arg_0 % 32u)), -(~(~arg_1.b.yyw))));
    let var_2 = max(arg_2, ~(~u_input.b.ww));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f));
}

fn func_2() -> f32 {
    let var_0 = 2147483647i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(1u, Struct_3(false, vec4<i32>(_wgslsmith_add_i32(-4543i, u_input.a.x), -26847i, u_input.a.x, max(15170i, u_input.a.x)), -1105f), u_input.a.xy, Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1127f), firstLeadingBit(u_input.e), _wgslsmith_clamp_u32(0u, 18344u, u_input.c)), Struct_1(_wgslsmith_f_op_f32(-1839f * -769f), vec2<i32>(2147483647i, u_input.b.x), ~621u), _wgslsmith_f_op_f32(round(-1327f))))), u_input.e, min(1u, ~(u_input.d.x & 4294967295u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(step(var_1.a, var_1.a))), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, -422f) + 1096f)), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(1901f - 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(513f, 1606f, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 105f, -617f), vec3<f32>(var_1.a, 1000f, var_2.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, var_1.a, 516f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(41146u, Struct_3(true, u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1.b.x, var_0), vec2<i32>(var_0, -97342i), ~vec2<i32>(var_1.b.x, -1i)) & ~vec2<i32>(2147483647i, 1i), Struct_2(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), all(vec2<bool>(false, true)), Struct_1(-1354f, ~u_input.b.yz, 15503u), Struct_1(548f, var_1.b ^ var_1.b, ~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1350f * var_1.a) - 119f)))), _wgslsmith_clamp_vec2_i32((abs(var_1.b) << (vec2<u32>(u_input.c, var_1.c) % vec2<u32>(32u))) & ~min(var_1.b, vec2<i32>(25861i, 1i)), u_input.e, abs(u_input.a.yy)), var_1.c);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, 2072f)), var_1.a))))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_3(arg_1.x, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(3969i, -2403i >> (1u % 32u), 48734i >> (u_input.d.x % 32u), -32570i)), u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -1110f, var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, arg_0, arg_0), vec3<f32>(-1454f, arg_0, 2082f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_2, arg_0)), all(vec4<bool>(true, var_0.a, false, var_0.a))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2, var_0.c)), 272f) * arg_2), -495f, _wgslsmith_f_op_f32(round(arg_0)))));
    var var_2 = vec4<bool>(all(select(vec2<bool>(var_0.a, all(vec3<bool>(arg_1.x, arg_1.x, true))), arg_1, true)), all(vec4<bool>(arg_1.x, true, all(select(vec4<bool>(var_0.a, arg_1.x, false, false), vec4<bool>(false, arg_1.x, true, var_0.a), true)), var_0.a)), all(!select(!vec4<bool>(var_0.a, false, var_0.a, true), select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(true, false, var_0.a, arg_1.x), false), !arg_1.x)), max(reverseBits(~1u), ~countOneBits(u_input.c)) <= (4294967295u ^ _wgslsmith_mult_u32(~u_input.d.x, u_input.d.x)));
    var var_3 = Struct_2(vec4<bool>(var_2.x, true, (u_input.c > _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)) & all(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, var_2.x), vec2<bool>(true, arg_1.x))), max(reverseBits(2147483647i), var_0.b.x) < 52819i), arg_1.x, Struct_1(var_0.c, -u_input.a.yx ^ max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-55716i, -2147483647i), var_0.b.zx, vec2<i32>(41145i, -41722i)), select(var_0.b.yw, u_input.b.yx, true)), u_input.c), Struct_1(arg_2, -min(firstLeadingBit(u_input.a.xz), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, -21490i), var_0.b.zw, vec2<i32>(-2147483647i, -10859i))), firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -267f));
    var var_4 = vec3<i32>(-16162i, firstTrailingBit(~var_3.d.b.x), firstTrailingBit(abs(abs(17788i)))) ^ vec3<i32>(0i, ~1i, -4205i);
    return Struct_2(select(var_3.a, select(var_3.a, var_3.a, any(select(var_3.a, var_3.a, var_3.a))), true), all(!vec3<bool>(var_0.a, false, var_0.a)) == !var_3.b, Struct_1(arg_2, var_0.b.zx, _wgslsmith_sub_u32(u_input.c, max(var_3.c.c, u_input.d.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(4054u, Struct_3(var_0.a, vec4<i32>(-38158i, u_input.b.x, 16940i, var_4.x), 597f), var_4.xy, Struct_2(var_3.a, arg_1.x, Struct_1(166f, vec2<i32>(var_3.d.b.x, u_input.e.x), 13659u), Struct_1(arg_2, vec2<i32>(72766i, u_input.a.x), u_input.d.x), -1627f))))) - _wgslsmith_f_op_f32(func_2())), select(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_3.d.b.x), var_4.yx)), select(var_4.yx, reverseBits(var_0.b.wz), true), !var_2.x & !arg_1.x), u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.d.a)) - _wgslsmith_f_op_f32(arg_0 + -1092f)), _wgslsmith_f_op_f32(-arg_0), var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -1284f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-590f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(588f, -1000f))), !any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), false);
    global0 = array<vec3<i32>, 23>();
    var_0 = vec4<bool>(var_0.x, true, u_input.d.x <= (u_input.d.x | u_input.c), true);
    let var_1 = 484f;
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    var var_2 = func_1(_wgslsmith_f_op_f32(-1657f - var_1), vec2<bool>(any(select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, false, var_0.x, true), true), !vec4<bool>(var_0.x, true, true, true), true)), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -237f));
    var var_3 = Struct_1(var_1, var_2.c.b, var_2.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, 6865i, ~_wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(u_input.e.x, 24128i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.x, 1i), var_2.d.b), _wgslsmith_clamp_i32(1i, u_input.e.x, 0i))), -(~var_2.c.b.x) << (var_2.c.c % 32u), u_input.d.x & u_input.d.x);
}

