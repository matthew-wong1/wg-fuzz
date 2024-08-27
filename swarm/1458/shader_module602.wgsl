struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_4(false, -_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_mod_i32(-37440i, reverseBits(u_input.a.x))), vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, u_input.c, arg_0.d.b.x), ~1i), global0.b.x ^ 16981i, u_input.a.x), arg_0.d);
    global1 = all(vec4<bool>(true, true, var_0.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), u_input.d.x) < min(u_input.d.x, ~6632u)));
    global0 = Struct_2(arg_0.d.c.x, vec3<i32>(-1i) * -abs(select(vec3<i32>(-2147483647i, arg_0.d.b.x, u_input.b.x), arg_0.c.wyx, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-225f - global0.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), arg_1) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.d.c)) - vec3<f32>(1000f, arg_0.d.c.x, 1218f))))));
    global0 = var_0.d;
    global0 = Struct_2(arg_1, arg_0.d.b << ((~vec3<u32>(1u, 0u, u_input.d.x) << (((vec3<u32>(44123u, 1u, 0u) ^ vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)) | select(vec3<u32>(u_input.d.x, 47692u, u_input.d.x), vec3<u32>(u_input.d.x, 61370u, 3256u), vec3<bool>(arg_0.a, false, false))) % vec3<u32>(32u))) % vec3<u32>(32u)), global0.c);
    return !select(!vec3<bool>(all(vec2<bool>(arg_0.a, false)), var_0.a, var_0.a), vec3<bool>(!(!var_0.a), arg_0.a, arg_0.a), !vec3<bool>(all(vec2<bool>(var_0.a, true)), false, true));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> vec3<bool> {
    global1 = (arg_0.d.x <= u_input.a.x) | !(!all(vec4<bool>(false, true, true, true)));
    global1 = true;
    global1 = any(vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true))), true, false, all(vec4<bool>(true, false, false, true)) && true));
    global1 = false;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, -261f, -249f), vec4<f32>(-1489f, global0.a, global0.a, -1272f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -332f, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(148f, arg_0.a.a, arg_0.a.c.x, global0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 642f, -730f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1122f, arg_0.c.c.x, 382f, 560f))))), vec4<bool>(false, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), true))));
    return !func_3(Struct_4(~u_input.d.x > _wgslsmith_mod_u32(arg_0.b.x, u_input.d.x), u_input.c, min(vec4<i32>(arg_0.d.x, u_input.c, -832i, global0.b.x), ~vec4<i32>(u_input.b.x, -27437i, arg_0.d.x, 31850i)), arg_0.a), global0.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec3_i32(u_input.a.zxx, vec3<i32>(-1i) * -vec3<i32>(-74003i, -arg_2, _wgslsmith_clamp_i32(2147483647i, global0.b.x, 0i)));
    global1 = -324f <= _wgslsmith_div_f32(376f, global0.a);
    var var_1 = ~(~1u);
    let var_2 = Struct_4(false, arg_2, u_input.a, Struct_2(_wgslsmith_f_op_f32(sign(-552f)), _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -55562i, arg_2 & 1i, select(32632i, -2147483647i, arg_0.x)), global0.b), _wgslsmith_f_op_vec3_f32(global0.c - global0.c)));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-var_2.d.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, var_2.d.c.x), _wgslsmith_f_op_f32(ceil(-887f)))), var_2.d.a, global0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), 831f, -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, var_2.d.a, var_2.d.c.x, 1585f))))));
    return !vec3<bool>(false, false, var_2.a);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> Struct_2 {
    global1 = all(!vec2<bool>(0u >= arg_0, any(vec4<bool>(false, true, false, true)))) | any(select(func_4(func_2(Struct_3(Struct_2(649f, vec3<i32>(arg_3, global0.b.x, u_input.c), arg_1.c), u_input.d, Struct_2(190f, vec3<i32>(arg_1.b.x, u_input.c, -1i), arg_1.c), u_input.b), global0.c), ~vec2<u32>(33016u, 20849u), _wgslsmith_mult_i32(arg_3, -1i), false), func_4(vec3<bool>(true, true, true), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d), 9069i, false), vec3<bool>(true, true, true)));
    global0 = arg_1;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_div_f32(236f, _wgslsmith_f_op_f32(global0.c.x - 211f)))) + _wgslsmith_f_op_f32(round(-688f))), global0.b, _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(107f, global0.a, 1000f), vec3<f32>(508f, -1000f, global0.c.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a, -359f, 1418f))), _wgslsmith_f_op_vec3_f32(arg_1.c - arg_1.c))))));
    global1 = !(global0.c.x < _wgslsmith_f_op_f32(round(-308f)));
    var var_1 = select(vec4<bool>(global0.a != global0.c.x, !(!func_2(Struct_3(var_0, u_input.d, arg_1, vec3<i32>(u_input.c, global0.b.x, arg_3)), arg_1.c).x), false, !(!any(vec3<bool>(false, true, true)))), !(!vec4<bool>(true, true, true, var_0.b.x == global0.b.x)), vec4<bool>(arg_1.a == _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(238f, arg_1.c.x), arg_1.c.x)), false, any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))));
    return Struct_2(arg_1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(52212i, ~_wgslsmith_mult_i32(arg_3, arg_2), countOneBits(12906i)), max(_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_3, arg_3), vec3<i32>(u_input.c, var_0.b.x, 41741i)) ^ vec3<i32>(-7745i, -6010i, global0.b.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 12766i, u_input.a.x), u_input.a.xyw), 1i, arg_2))), _wgslsmith_f_op_vec3_f32(exp2(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.c.x, vec3<i32>(-global0.b.x, u_input.b.x, -global0.b.x), global0.c);
    global1 = select(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)) & true, !any(vec4<bool>(any(vec4<bool>(true, true, false, false)), false, false, all(vec2<bool>(false, false)))), u_input.b.x < global0.b.x);
    global0 = func_1(countOneBits(u_input.d.x), Struct_2(global0.a, -_wgslsmith_sub_vec3_i32(abs(u_input.b), global0.b & vec3<i32>(global0.b.x, 2147483647i, u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 286f, global0.a) - vec3<f32>(-1000f, -816f, -608f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, global0.c.x, global0.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-945f, 357f, global0.a) - vec3<f32>(global0.c.x, global0.c.x, 205f)), vec3<bool>(true, false, false))))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, i32(-1i) * -15068i), -_wgslsmith_sub_i32(-21350i, 24317i)), u_input.a.x | -_wgslsmith_sub_i32(27072i, global0.b.x)), 1i);
    var var_0 = func_4(select(vec3<bool>(u_input.d.x < u_input.d.x, false, true), vec3<bool>(!any(vec2<bool>(true, false)), !any(vec3<bool>(false, true, false)), false), vec3<bool>(u_input.d.x <= select(17616u, 40249u, false), any(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(round(global0.c.x)) >= _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(u_input.d.x), _wgslsmith_div_u32(u_input.d.x, 4294967295u)) >> (~firstTrailingBit(vec2<u32>(4294967295u, u_input.d.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.d, ~u_input.d)), -_wgslsmith_dot_vec4_i32(abs(u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global0.b.x, global0.b.x, global0.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.b.x, u_input.c, -7510i, 0i), u_input.a))), firstLeadingBit(_wgslsmith_div_i32(u_input.c, i32(-1i) * -17998i)) > _wgslsmith_mult_i32(~_wgslsmith_add_i32(14159i, global0.b.x), global0.b.x)).x;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.c.x)), 1111f, ~abs(~u_input.d.x) | ~_wgslsmith_sub_u32(u_input.d.x >> (u_input.d.x % 32u), select(25754u, u_input.d.x, true)), u_input.c);
    var var_2 = any(!select(vec2<bool>(func_3(Struct_4(true, -1i, vec4<i32>(44590i, -9214i, 19393i, 2147483647i), Struct_2(1000f, u_input.b, global0.c)), var_1.b).x, any(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = Struct_2(global0.a, u_input.b, global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(abs(u_input.d), reverseBits(u_input.d), vec2<bool>(true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, ~u_input.c, ~(-var_1.d)), max(global0.b, _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(2147483647i, 2147483647i, 1i)))), vec3<u32>(~477u, ~(~var_1.c << (var_1.c % 32u)), abs(0u)), global0.c, _wgslsmith_f_op_f32(max(1824f, var_1.a)));
}

