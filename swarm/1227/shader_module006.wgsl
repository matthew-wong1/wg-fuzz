struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(29772u);

var<private> global3: vec3<i32>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(11948u, 0u, 1926u, 8553u), false, vec4<i32>(5335i, 10195i, 2147483647i, -12456i), 4294967295u, -988f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = all(vec4<bool>(global1.e.b, global4.b, all(vec3<bool>(all(arg_1.xy), global1.e.b == false, arg_2.x >= 1i)), all(vec2<bool>(arg_1.x, select(true, arg_1.x, true)))));
    let var_1 = global1.c.wy;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1555f, arg_0), vec2<f32>(global4.e, 1039f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-161f, 1512f) * vec2<f32>(-833f, arg_0)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.e, global1.e.e), vec2<f32>(global4.e, arg_0)))) * vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), global1.e.e))), true, 77772u);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-866f, var_2.a.x), vec2<f32>(arg_0, 398f)), var_2.a) + vec2<f32>(global1.e.e, global4.e)))), (arg_2.x ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global1.e.c, global4.c), u_input.a.x, global1.e.c.x)) < u_input.a.x, ~(((var_2.c >> (15109u % 32u)) >> (~var_1.x % 32u)) & 35270u));
    let var_4 = 941f;
    return global2.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = -2147483647i;
    var_0 = ~(~1i);
    var var_1 = global1.e;
    var var_2 = select(!select(select(vec4<bool>(global4.b, true, var_1.b, var_1.b), select(vec4<bool>(false, false, true, false), vec4<bool>(global0.x, global4.b, false, false), global0.x), global0.x | true), vec4<bool>(true, false, global4.c.x < -52091i, true), global0.x), select(vec4<bool>(true, !all(vec3<bool>(true, false, false)), true, false), vec4<bool>(false, true, !(var_1.b && global0.x), !(u_input.c.x != u_input.d.x)), false), !vec4<bool>(var_1.b, any(!vec2<bool>(global1.e.b, true)), true, global0.x));
    global0 = select(vec2<bool>(true, false), select(var_2.zy, var_2.yx, false), var_2.xx);
    return vec2<bool>(true, global4.b);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = global1.e.a >> (~(~abs(~vec4<u32>(30567u, arg_1, 25421u, arg_1))) % vec4<u32>(32u));
    global3 = vec3<i32>(_wgslsmith_dot_vec4_i32(abs(global4.c), arg_0), ~_wgslsmith_mult_i32(abs(_wgslsmith_add_i32(u_input.b.x, 2147483647i)), i32(-1i) * -30657i), -1i);
    global0 = func_4(Struct_2(_wgslsmith_clamp_u32(func_3(1f, !vec3<bool>(arg_3, global4.b, false), vec2<i32>(global4.c.x, -4378i), ~global1.b.x), ~0u, u_input.c.x)), vec4<i32>(-(-2147483647i >> (~4294967295u % 32u)), -_wgslsmith_clamp_i32(-8094i, -2147483647i, global1.e.c.x), -select(global1.e.c.x, global1.e.c.x, false), u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.e), _wgslsmith_f_op_f32(global1.e.e * global1.e.e)), global4.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(abs(325f))) * global4.e)));
    var var_2 = Struct_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 17885u & global2.a) >> ((var_0.x << (10333u % 32u)) % 32u), 1u), vec2<i32>(-(~39005i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(global4.c.x, global4.c.x), vec2<i32>(-1i, global4.c.x)) & vec2<i32>(-16384i, 40640i), vec2<i32>(~9803i, _wgslsmith_add_i32(global1.e.c.x, -1i)))), ~(~firstTrailingBit(global4.a)), global1.d, Struct_1(~vec4<u32>(~4294967295u, firstTrailingBit(arg_1), firstTrailingBit(4294967295u), 0u), true, arg_0, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_div_f32(570f, global4.e))))));
    return var_2.e;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> Struct_4 {
    let var_0 = !any(select(select(select(vec2<bool>(global1.e.b, true), vec2<bool>(global4.b, true), true), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, global0.x), vec2<bool>(arg_2, global0.x)), !select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), false)));
    var var_1 = _wgslsmith_f_op_f32(global1.e.e - global1.e.e);
    global1 = Struct_3(global2.a & ~0u, vec2<i32>(global3.x, _wgslsmith_add_i32(4356i, ~arg_1 << (u_input.c.x % 32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(~10548u), 4294967295u, (u_input.c.x << (global1.e.d % 32u)) & (1u >> (u_input.d.x % 32u)), 6064u), u_input.c >> (~vec4<u32>(3068u, 1u, global2.a, u_input.c.x) % vec4<u32>(32u))), Struct_2(u_input.d.x), func_2(vec4<i32>(1i, 1i, abs(-3103i), -16611i), u_input.c.x, global1.b, arg_2));
    let var_2 = u_input.b.x;
    global1 = Struct_3(_wgslsmith_add_u32(_wgslsmith_sub_u32(global2.a, min(65583u, 4301u)), 46820u) >> (~53417u % 32u), abs(~global4.c.yx), global4.a, Struct_2(~1u), func_2(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(-5229i, -1i)), abs(var_2), 0i, var_2), arg_0.a << (global2.a % 32u), ~select(u_input.b << (u_input.d.xy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(global4.c.zz, vec2<i32>(-1i, arg_1), u_input.b), select(vec2<bool>(false, arg_2), vec2<bool>(false, var_0), vec2<bool>(true, global4.b))), !(global2.a != 78419u)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(918f, -774f), vec2<f32>(global4.e, 1256f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-649f, -1390f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.e + -409f) - -131f), 305f), global0.x | var_0)), true, 53651u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-446f, global1.e.e, 1000f), vec3<f32>(global4.e, global4.e, global1.e.e))))))));
    let var_1 = func_1(global1.d, min(2147483647i, min(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(0i, 0i)), 2147483647i)), global1.e.b);
    let var_2 = global1.d;
    global2 = Struct_2(min(func_1(global1.d, -33496i, !var_1.b).c, 1u));
    let var_3 = var_1.b;
    var var_4 = !select(select(select(vec4<bool>(var_3, true, true, true), select(vec4<bool>(var_1.b, false, global0.x, global4.b), vec4<bool>(global1.e.b, var_3, var_3, false), vec4<bool>(var_3, var_1.b, false, global0.x)), !vec4<bool>(var_1.b, true, var_1.b, var_1.b)), vec4<bool>(any(vec3<bool>(global4.b, true, false)), -524f < global1.e.e, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), !var_3, true)), select(select(vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(global1.e.b, global4.b, false, global0.x), select(vec4<bool>(var_1.b, false, true, global0.x), vec4<bool>(false, true, true, true), vec4<bool>(global4.b, var_1.b, global0.x, false))), vec4<bool>(global1.e.e != global4.e, any(vec4<bool>(true, var_1.b, true, var_1.b)), func_4(Struct_2(11496u), vec4<i32>(global4.c.x, -2147483647i, -17727i, global1.e.c.x)).x, var_3), select(!vec4<bool>(true, true, var_3, var_1.b), vec4<bool>(true, true, global0.x, var_1.b), var_3)), !var_3);
    var var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global1.d, _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(global1.e.c.x, -2147483647i)), 1i), false & var_3).c, _wgslsmith_clamp_i32(-68528i, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(global3.x, 1i), abs(global1.e.c.x)), reverseBits(select(global3.x, -2147483647i, false) & _wgslsmith_mult_i32(37894i, global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, global4.e, false)) * _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * global1.e.e), _wgslsmith_f_op_f32(min(var_1.a.x, global4.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1243f * 179f)))), _wgslsmith_div_f32(global1.e.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(433f * 1922f))))), 5228u);
}

