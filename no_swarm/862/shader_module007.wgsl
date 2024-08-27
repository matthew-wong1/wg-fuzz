struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1937f, vec2<i32>(0i, 1i), vec3<i32>(10115i, 20718i, 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = arg_1.c;
    let var_1 = vec2<i32>(u_input.e, countOneBits(arg_0)) >> (~(select(vec2<u32>(0u, u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.d.x, 0u)), true) >> (min(~u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = Struct_1(global0.a, arg_3, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(1i, var_1.x)) << (4294967295u % 32u), 2147483647i, -2147483647i), vec3<i32>(reverseBits(-31927i), ~_wgslsmith_mod_i32(arg_3.x, u_input.c.x), 1i)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f + -105f) + -1302f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - arg_1.a) - _wgslsmith_f_op_f32(118f * var_0.a.x))) + -891f), _wgslsmith_clamp_vec2_i32((~vec2<i32>(-8408i, 24234i) & ~u_input.c.yz) & min(arg_3, reverseBits(vec2<i32>(global0.c.x, arg_0))), -(~(vec2<i32>(-32846i, 1i) << (vec2<u32>(u_input.a.x, 24913u) % vec2<u32>(32u)))), ~(_wgslsmith_add_vec2_i32(arg_3, var_1) >> (min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.d.x, 25098u)) % vec2<u32>(32u)))), _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(global0.c, u_input.c) ^ abs(u_input.c)), u_input.c));
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(317f)) + global0.a))), vec2<i32>(-1i) * -vec2<i32>(arg_0, -var_1.x), global0.c);
    return ~(-countOneBits(~u_input.c << (~u_input.d.zyw % vec3<u32>(32u))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~(~(~u_input.d.yww))) | _wgslsmith_mult_vec3_u32(~firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.d.zyy, u_input.d.xww)), u_input.d.zyx);
    var var_1 = Struct_2(vec3<f32>(global0.a, _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a + 171f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), global0.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1815f, _wgslsmith_f_op_f32(select(-2303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) - _wgslsmith_f_op_f32(898f * var_1.a.x)), true)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1671f), _wgslsmith_f_op_f32(f32(-1f) * -110f), true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, -603f)), var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -1743f), -1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1054f, _wgslsmith_div_f32(var_1.a.x, global0.a), _wgslsmith_f_op_f32(-global0.a), -275f), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, -398f, var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(689f, global0.a, var_1.a.x, var_1.a.x))))))));
    var var_3 = true;
    let var_4 = ~select(vec4<i32>(-2541i, 34372i, u_input.e, 0i), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.x, 59288i, -2147483647i, global0.b.x), vec4<i32>(2147483647i, -2147483647i, u_input.b, global0.c.x) ^ vec4<i32>(0i, u_input.b, 2147483647i, u_input.e)), -vec4<i32>(-2224i, global0.c.x, global0.c.x, u_input.e)), select(vec4<bool>(any(vec3<bool>(false, true, true)), select(false, false, true), global0.b.x < u_input.e, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)) & (4294967295u != var_0.x)));
    return Struct_1(global0.a, reverseBits(vec2<i32>(_wgslsmith_add_i32(u_input.e, global0.c.x) << (u_input.a.x % 32u), ~2147483647i)), var_4.xwx | _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(-2147483647i, Struct_3(1000f, false, Struct_2(var_1.a), vec4<f32>(-314f, var_1.a.x, global0.a, var_2.x)), true, vec2<i32>(-16341i, 1i)), _wgslsmith_div_vec3_i32(global0.c, u_input.c), -vec3<i32>(29372i, 0i, 3272i)), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(global0.c, vec3<i32>(2147483647i, var_4.x, global0.b.x)), global0.b.x << (var_0.x % 32u))));
}

fn func_1() -> vec2<bool> {
    global0 = func_2();
    var var_0 = ~_wgslsmith_sub_vec3_u32(reverseBits(~(~u_input.d.yyy)), ~vec3<u32>(~1u, max(u_input.d.x, u_input.d.x), 34705u));
    var_0 = u_input.d.ywx;
    let var_1 = func_2();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a)))) + _wgslsmith_f_op_f32(-global0.a)), -abs(vec2<i32>(2147483647i, 1i >> (var_0.x % 32u))), ~vec3<i32>(1i, func_2().c.x, ~(53235i << (0u % 32u))));
    return select(vec2<bool>(true, select(true, false, all(vec4<bool>(false, true, true, false)))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, u_input.a.x != reverseBits(var_0.x)), vec2<bool>(any(vec3<bool>(true, true, true)), false)), !(u_input.d.x != _wgslsmith_add_u32(u_input.d.x & 0u, min(4294967295u, u_input.d.x))));
}

fn func_4(arg_0: bool) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -455f), global0.b, ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(global0.c, global0.c & vec3<i32>(0i, 0i, -11645i)), ~vec3<i32>(u_input.b, 7895i, u_input.c.x) >> (vec3<u32>(43109u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.a)))), -449f))), u_input.c.zx, _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.e, ~global0.c.x, _wgslsmith_mod_i32(-2147483647i, 9351i)), _wgslsmith_clamp_vec3_i32(-(global0.c << (vec3<u32>(u_input.a.x, u_input.d.x, 23763u) % vec3<u32>(32u))), abs(global0.c) ^ -global0.c, global0.c >> (abs(vec3<u32>(5656u, 1u, u_input.d.x)) % vec3<u32>(32u)))));
    global0 = Struct_1(-360f, u_input.c.zx, vec3<i32>(global0.b.x, ~u_input.b, _wgslsmith_dot_vec3_i32(countOneBits(abs(u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(-3632i, global0.b.x, global0.b.x), ~vec3<i32>(1i, -11025i, 2147483647i)))));
    var var_0 = ~max(_wgslsmith_clamp_u32(~2332u, min(1u, 0u), 34237u), u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-1615f - _wgslsmith_f_op_f32(round(global0.a))))), u_input.c.zx, ~countOneBits(-_wgslsmith_mod_vec3_i32(global0.c, u_input.c)));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1502f, global0.c.yy, select(vec3<i32>(-26290i, u_input.e, i32(-1i) * -2147483647i), -(global0.c >> (vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(abs(u_input.d.xzw), vec3<u32>(u_input.d.x, 50516u, 0u)) % vec3<u32>(32u)), true));
    var var_0 = global0.c.x;
    global0 = Struct_1(-884f, u_input.c.yz & global0.b, global0.c ^ (vec3<i32>(-1i) * -(~global0.c)));
    var var_1 = _wgslsmith_mult_u32(0u, reverseBits(7956u));
    var_1 = func_4(any(select(func_1(), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false))))));
    var_0 = -(~_wgslsmith_add_i32(10125i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a)), _wgslsmith_mult_i32(u_input.b, 2147483647i), global0.c);
}

