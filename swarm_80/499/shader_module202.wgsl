struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b.x;
    var var_1 = select(select(vec3<bool>(arg_1.a.c.x, true, true), !arg_1.a.c, select(vec3<bool>(arg_1.a.b.x > arg_0.x, arg_1.a.c.x, all(vec3<bool>(arg_1.a.a, true, arg_1.a.c.x))), arg_1.a.c, !select(vec3<bool>(arg_1.a.c.x, true, arg_1.a.a), vec3<bool>(arg_1.a.a, arg_1.a.c.x, false), vec3<bool>(false, arg_1.a.c.x, true)))), arg_1.a.c, arg_1.a.c);
    let var_2 = arg_1.b.x;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(min(595f, -1843f))) - -628f)))));
    var var_3 = arg_1.a;
    return arg_1.a;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    let var_0 = !any(vec3<bool>(min(-19644i, arg_2.a.b.x) <= max(24463i, 11253i), arg_2.a.c.x, _wgslsmith_f_op_f32(-861f - arg_2.b.x) > -805f));
    let var_1 = arg_2.a;
    let var_2 = ~vec3<i32>(-_wgslsmith_mult_i32(u_input.c.x, 17111i), _wgslsmith_sub_i32(select(2147483647i, 1i, var_0), ~20774i), arg_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(step(arg_2.b.x, arg_2.b.x))))), -1044f, arg_2.b.x));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.b, vec4<f32>(arg_2.b.x, var_3.x, 2210f, 1721f))), arg_2.b)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_2.b))) + _wgslsmith_f_op_vec4_f32(min(arg_2.b, _wgslsmith_f_op_vec4_f32(-arg_2.b)))))));
    return -7510i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_2(Struct_1(!arg_0.a, vec2<i32>(-(~2147483647i), func_3(1u, u_input.a.wyw, Struct_2(Struct_1(arg_0.a, arg_0.d, vec3<bool>(false, arg_2.x, true), arg_0.d, arg_0.e), vec4<f32>(arg_1, arg_1, arg_1, arg_1)), u_input.a.xw >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), select(vec3<bool>(true, true, true), vec3<bool>(arg_2.x, true, !arg_2.x), !arg_2), vec2<i32>(-1i, -3171i), u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-810f))), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), arg_2.x)), _wgslsmith_f_op_f32(arg_1 + 124f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 908f)) - vec4<f32>(_wgslsmith_f_op_f32(433f - arg_1), _wgslsmith_div_f32(-754f, -1852f), arg_1, _wgslsmith_f_op_f32(arg_1 * 807f)))));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b));
    let var_1 = Struct_2(func_1(u_input.a.yyy, Struct_2(Struct_1(true, u_input.c, arg_2, -arg_0.d, _wgslsmith_mult_u32(102737u, 33647u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -881f, var_0.b.x, -1295f)))), _wgslsmith_f_op_vec4_f32(-var_0.b));
    var_0 = Struct_2(var_1.a, var_1.b);
    var var_2 = ~(-u_input.a.zyw ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.xzz, -u_input.a.zyy, ~vec3<i32>(-2147483647i, 2147483647i, var_1.a.b.x)), ~vec3<i32>(811i, var_0.a.b.x, var_1.a.b.x), _wgslsmith_div_vec3_i32(-u_input.a.wzx, select(vec3<i32>(u_input.a.x, u_input.c.x, -47302i), u_input.a.ywx, true))));
    return -569f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(515f, _wgslsmith_f_op_f32(func_2(func_1(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), Struct_2(Struct_1(false, u_input.c, vec3<bool>(true, true, false), u_input.c, u_input.d), vec4<f32>(-1157f, -269f, 152f, -146f))), _wgslsmith_f_op_f32(-226f * 191f), vec3<bool>(true, true, true))))))));
    let var_1 = _wgslsmith_sub_u32(~(u_input.e.x >> (u_input.d % 32u)), ~select(u_input.b.x, ~_wgslsmith_clamp_u32(u_input.e.x, u_input.b.x, u_input.e.x), select(false, true, true)));
    var var_2 = _wgslsmith_div_u32(u_input.e.x, u_input.e.x);
    var_0 = -313f;
    var_0 = _wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(193f)) * -920f));
    let var_3 = true;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(func_2(Struct_1(var_3, vec2<i32>(func_1(vec3<i32>(u_input.a.x, 11145i, 1i), Struct_2(Struct_1(var_3, u_input.a.zw, vec3<bool>(false, false, var_3), vec2<i32>(u_input.a.x, 31089i), u_input.e.x), vec4<f32>(1000f, -624f, -846f, 514f))).b.x, -1i), vec3<bool>(var_3, any(vec4<bool>(true, var_3, var_3, false)), true), ~u_input.c, ~max(u_input.e.x, u_input.b.x)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1130f)) - _wgslsmith_f_op_f32(f32(-1f) * -388f))), vec3<bool>(true, !all(vec3<bool>(var_3, false, var_3)), true))));
    var var_4 = Struct_1(var_3, _wgslsmith_mult_vec2_i32(u_input.c, u_input.c), !select(!vec3<bool>(true, var_3, var_3), !vec3<bool>(var_3, var_3, var_3), vec3<bool>(u_input.d >= 5309u, var_3 && true, true)), -abs(~vec2<i32>(u_input.c.x, 2147483647i)), countOneBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(23413u, u_input.c.x, vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(u_input.c.x)), i32(-1i) * -func_3(var_1, u_input.a.wyy, Struct_2(Struct_1(var_4.c.x, vec2<i32>(u_input.a.x, 2147483647i), var_4.c, vec2<i32>(3661i, u_input.c.x), var_4.e), vec4<f32>(-369f, 1822f, 1000f, 588f)), u_input.c)), _wgslsmith_add_vec2_u32(~u_input.e.zy, u_input.e.xz) ^ ~(~select(u_input.e.yx, vec2<u32>(1u, u_input.d), false)), var_4.e);
}

