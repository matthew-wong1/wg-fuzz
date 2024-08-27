struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    global0 = all(!vec4<bool>(false, 1083f > _wgslsmith_f_op_f32(-arg_0.x), select(true, 21519i < u_input.d.x, true), true));
    global1 = countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3871u, 0u, 1088u, u_input.c), vec4<u32>(global1.x, 4294967295u, global1.x, 4294967295u) | vec4<u32>(global1.x, 65722u, 4294967295u, global1.x)), firstLeadingBit(firstTrailingBit(vec4<u32>(1u, u_input.e.x, u_input.a.x, 45240u))))) << (vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, _wgslsmith_sub_u32(~69809u, 1u)), _wgslsmith_mod_u32(~(~global1.x), _wgslsmith_clamp_u32(4294967295u, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 67347u), global1.xxx))), 1u, abs(_wgslsmith_dot_vec3_u32(~u_input.a, firstLeadingBit(vec3<u32>(4294967295u, 37459u, u_input.e.x))))) % vec4<u32>(32u));
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - -364f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - _wgslsmith_f_op_f32(step(arg_0.x, -928f))), all(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, true), var_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), 687f)))));
    let var_2 = var_0.x;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, 1064f, -403f, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_div_f32(var_1, -1920f), arg_0.x, -681f) - arg_0))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> vec3<bool> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(722f, var_0.c.x, arg_1.c.x, 1266f) + arg_2))))) * var_0.c);
    global0 = !arg_3;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2109f + -413f) * 432f)))) + -1080f);
    var var_3 = arg_1.d;
    return select(select(vec3<bool>(!(!arg_1.d), any(select(vec4<bool>(true, arg_1.d, arg_3, true), vec4<bool>(false, true, arg_3, var_0.d), false)), all(!vec2<bool>(arg_3, false))), vec3<bool>(true, arg_1.d, any(vec4<bool>(var_0.d, true, arg_3, false))), any(select(!vec4<bool>(var_0.d, arg_1.d, true, true), vec4<bool>(true, arg_1.d, false, true), vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d)))), !(!(!(!vec3<bool>(var_0.d, true, arg_3)))), true);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec2<i32> {
    global0 = !select(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), any(vec4<bool>(true, true, arg_2.x == 0i, true)), any(func_2(vec2<u32>(arg_3.x, 1u), Struct_1(vec2<i32>(-9554i, arg_2.x), 41121i, vec4<f32>(1000f, arg_0.x, 192f, arg_1.x), false), vec4<f32>(851f, -2108f, 113f, arg_1.x), true)));
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(~vec2<i32>(arg_2.x, 9461i), vec2<i32>(u_input.d.x, -2147483647i)), _wgslsmith_div_vec2_i32(select(arg_2, vec2<i32>(u_input.d.x, 1i), true), countOneBits(arg_2))), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(756f, 2642f, arg_1.x, arg_0.x), vec4<f32>(arg_1.x, -110f, arg_1.x, 1117f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_0.x, arg_1.x, -749f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, -1528f, 515f, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(173f, arg_0.x, arg_1.x, -230f) * vec4<f32>(arg_0.x, arg_0.x, -1211f, arg_1.x))))), false);
    var_0 = Struct_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(abs(var_0.a.x), -1i), ~_wgslsmith_clamp_vec2_i32(var_0.a, var_0.a, vec2<i32>(u_input.d.x, arg_2.x))), _wgslsmith_clamp_i32(2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 0i, var_0.b, -55106i) << (vec4<u32>(1u, u_input.a.x, 4954u, arg_3.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2883i, var_0.a.x, -2627i, -39435i), vec4<i32>(var_0.b, arg_2.x, u_input.b.x, arg_2.x))), 48704i & _wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_mult_i32(arg_2.x, 45910i)), ~12951i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, -1208f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(select(arg_1.x, 202f, var_0.d))) * var_0.c)), _wgslsmith_dot_vec2_u32(~u_input.a.xz, arg_3.xz) == u_input.c);
    var var_1 = var_0.d;
    let var_2 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(_wgslsmith_mod_u32(5477u, 16113u), 1u, _wgslsmith_add_u32(u_input.e.x, global1.x), global1.x)), reverseBits(vec4<u32>(~0u >> (_wgslsmith_sub_u32(global1.x, u_input.a.x) % 32u), _wgslsmith_dot_vec2_u32(u_input.a.yz >> (u_input.a.xy % vec2<u32>(32u)), ~vec2<u32>(6908u, global1.x)), 75177u, _wgslsmith_sub_u32(~55111u, _wgslsmith_clamp_u32(0u, 65096u, u_input.e.x)))));
    return vec2<i32>(~1i, u_input.b.x << (global1.x % 32u)) >> ((abs(~select(global1.zx, vec2<u32>(var_2.x, arg_3.x), vec2<bool>(false, var_0.d))) >> (~vec2<u32>(~0u, abs(0u)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, 2147483647i, 0i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(17999i, u_input.d.x, -9660i, arg_0.a.x), vec4<i32>(u_input.d.x, 2147483647i, arg_0.b, -1i))), select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d.x, 1i), ~vec4<i32>(-1i, 2147483647i, u_input.d.x, arg_0.b), all(vec2<bool>(false, false)))), max(~firstLeadingBit(vec4<i32>(2147483647i, u_input.b.x, 0i, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_0.b, 1i, u_input.b.x), select(vec4<i32>(u_input.b.x, -2147483647i, arg_0.b, u_input.d.x), vec4<i32>(-41122i, -7513i, -1i, arg_0.b), true))) << (vec4<u32>(global1.x, global1.x, arg_1.x, (27501u << (global1.x % 32u)) >> (41282u % 32u)) % vec4<u32>(32u)));
    global0 = true;
    var var_1 = Struct_1(arg_0.a, firstTrailingBit(_wgslsmith_div_i32(~(~(-27580i)), 28555i)), _wgslsmith_f_op_vec4_f32(trunc(arg_0.c)), _wgslsmith_f_op_f32(max(arg_0.c.x, -1951f)) < -1292f);
    let var_2 = arg_0.a.x;
    let var_3 = Struct_1(~select(~var_0.yy << (global1.zz % vec2<u32>(32u)), ~min(vec2<i32>(-1i, -1i), vec2<i32>(u_input.b.x, 1i)), all(vec2<bool>(false, true))), select(~(~(-13732i)), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-372f, var_1.c.x), arg_0.c.wx), vec2<f32>(-1478f, arg_2), var_0.ww, u_input.a).x, false) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(62880u, 1u), ~1u, ~global1.x) % 32u), _wgslsmith_f_op_vec4_f32(-arg_0.c), func_2(~select(vec2<u32>(arg_1.x, 1u), arg_1.yx, func_2(global1.yz, Struct_1(vec2<i32>(-1i, -1i), -1i, arg_0.c, arg_0.d), vec4<f32>(arg_0.c.x, -1522f, -199f, arg_0.c.x), true).yz), Struct_1(~abs(var_0.zy), var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c)), true), _wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1657f, var_1.c.x, arg_0.c.x, arg_2))), (var_0.x == 33205i) && true).x);
    return Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2, _wgslsmith_add_i32(u_input.b.x, var_2)), abs(_wgslsmith_add_vec2_i32(var_1.a, vec2<i32>(-27139i, 36896i)))), var_1.a, u_input.d >> (vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.e, u_input.a), select(0u, u_input.a.x, true)) % vec2<u32>(32u))), -44742i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + -283f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.c.x, arg_0.c.x))), _wgslsmith_f_op_f32(-var_1.c.x))), ((_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, arg_0.b, arg_0.a.x), vec3<i32>(u_input.b.x, var_3.b, arg_0.a.x)) != 27866i) || false) & var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1279f, 823f)), vec2<f32>(1f, 1f), -vec2<i32>(-31896i, 53024i), ~(~vec3<u32>(9380u, u_input.c, u_input.a.x))), u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1163f, 1000f, 379f, 620f) + vec4<f32>(236f, -2236f, 618f, 785f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, -465f, 1000f, 1747f)))), -26180i >= (u_input.d.x | u_input.d.x)), vec3<u32>(4294967295u, u_input.c, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -544f))))));
    var var_1 = var_0.d;
    var var_2 = -1000f;
    global0 = all(vec3<bool>(false, all(select(vec4<bool>(false, false, var_0.d, var_0.d), select(vec4<bool>(false, false, var_0.d, var_0.d), vec4<bool>(var_0.d, true, var_0.d, var_0.d), vec4<bool>(true, var_0.d, false, var_0.d)), var_0.d)), var_0.d));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(-533f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1465f - _wgslsmith_f_op_f32(324f - var_0.c.x)) - var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))) - var_0.c.x), _wgslsmith_div_f32(-109f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(floor(1f)))));
    let var_4 = global1.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(128f, var_3.x)), vec3<u32>(max(_wgslsmith_div_u32(select(u_input.e.x, var_4.x, false), 96027u), 1u), _wgslsmith_add_u32(~58295u, ~(~global1.x)), max(countOneBits(max(u_input.c, u_input.c)), u_input.a.x)), (vec4<i32>(1i, ~90510i, ~27203i, ~2147483647i) >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(5016u, u_input.a.x, 4294967295u, 0u)), ~vec4<u32>(4103u, global1.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u))) | reverseBits(~(vec4<i32>(-4434i, var_0.a.x, -1i, -7511i) >> (vec4<u32>(global1.x, var_4.x, 4294967295u, 41384u) % vec4<u32>(32u)))));
}

