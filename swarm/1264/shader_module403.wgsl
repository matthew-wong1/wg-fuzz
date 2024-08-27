struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = ~vec2<u32>(27835u, ~4294967295u);
    var var_1 = Struct_5(Struct_1(arg_0.a.c.a, ~0u), arg_0.c, select(arg_0.a.c.a, !select(vec2<bool>(true, true), vec2<bool>(arg_0.d.x, arg_0.a.e.a.x), any(vec4<bool>(true, arg_0.d.x, arg_0.a.c.a.x, false))), arg_0.a.e.a.x));
    let var_2 = all(!(!vec2<bool>(var_1.a.a.x, any(vec4<bool>(var_1.c.x, false, false, true)))));
    var var_3 = Struct_2(-24443i, vec4<f32>(1597f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(-arg_0.a.b.x)), _wgslsmith_div_f32(arg_0.a.d.x, _wgslsmith_f_op_f32(arg_0.a.d.x - 856f)))), 652f, arg_0.a.b.x), var_1.a, vec3<f32>(-994f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1058f, arg_0.b.b.x) + arg_0.a.d.x), 1774f), Struct_1(select(vec2<bool>(var_1.c.x, true), select(var_1.c, vec2<bool>(true, var_2), select(var_1.b, var_1.a.a, arg_0.c)), !select(arg_0.d.yx, arg_0.d.yy, true)), _wgslsmith_mult_u32(arg_0.a.c.b >> (firstLeadingBit(4294967295u) % 32u), _wgslsmith_add_u32(0u, 0u) | ~var_1.a.b)));
    let var_4 = (arg_0.b.a << (countOneBits(abs(~var_1.a.b)) % 32u)) << (arg_0.a.c.b % 32u);
    return arg_0.a.e.a;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, -2147483647i), ~vec3<i32>(1i, 2147483647i, -1i)), -u_input.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-132f, -797f)) + -295f), 1359f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -439f))), 139f), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), 4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1154f, 1029f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-205f, 342f, -1962f), vec3<f32>(1484f, 852f, 1458f)), vec3<f32>(-1761f, 148f, -775f)))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), true), ~abs(u_input.b.x))), Struct_2(~(-2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, 2288f, _wgslsmith_f_op_f32(-1000f + 960f), _wgslsmith_f_op_f32(f32(-1f) * -160f))), Struct_1(vec2<bool>(true, any(vec4<bool>(false, true, false, false))), u_input.b.x), vec3<f32>(-536f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1000f + 204f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-848f, 850f) * -295f)), Struct_1(func_3(Struct_3(Struct_2(u_input.a, vec4<f32>(1000f, 1015f, -1074f, 170f), Struct_1(vec2<bool>(true, true), 11585u), vec3<f32>(-1000f, 942f, -182f), Struct_1(vec2<bool>(true, true), u_input.b.x)), Struct_2(u_input.c.x, vec4<f32>(735f, -2322f, -1000f, 1000f), Struct_1(vec2<bool>(true, true), 8888u), vec3<f32>(-674f, 120f, 827f), Struct_1(vec2<bool>(true, true), u_input.b.x)), vec2<bool>(true, true), vec3<bool>(true, false, false))), u_input.b.x)), vec2<bool>(false, true), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b.wwy) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.d.x * var_0.b.b.x), var_0.a.b.x, all(var_0.a.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * 1000f) * var_0.b.d.x), var_0.a.b.x)), u_input.b.x);
    return var_0;
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = vec2<bool>((true || !any(vec3<bool>(arg_0, arg_0, false))) | false, all(vec2<bool>(true, true)));
    let var_1 = u_input.b.x;
    let var_2 = var_1;
    let var_3 = func_2();
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.d.x), -548f, var_3.b.d.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(14567u | var_1, ~var_1, 27594u, ~var_2), u_input.b, true), ~abs(~vec4<u32>(var_1, var_2, var_1, u_input.b.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = -(abs(vec4<i32>(u_input.c.x >> (arg_2.b % 32u), 42606i, u_input.c.x, u_input.c.x | 2147483647i)) | ~(-max(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 0i), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 49263i))));
    var var_1 = Struct_2(var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 257f), _wgslsmith_f_op_f32(f32(-1f) * -662f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(select(319f, _wgslsmith_div_f32(-256f, arg_2.a.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.x, 1463f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, arg_2.a.x, arg_0.x, 122f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_0.x, arg_2.a.x, 705f) + vec4<f32>(arg_2.a.x, 1489f, 1043f, arg_0.x)))))), Struct_1(!select(func_2().a.e.a, vec2<bool>(true, true), true), _wgslsmith_mult_u32(~(~u_input.b.x), ~(~arg_2.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-func_1(false).a), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_f_op_f32(arg_0.x + -173f))))), func_2().a.e);
    var_1 = Struct_2(~(~u_input.c.x), var_1.b, func_2().b.c, var_1.b.xyy, var_1.c);
    let var_2 = Struct_5(func_2().a.c, var_1.e.a, !func_2().d.zy);
    var_1 = Struct_2(u_input.c.x, var_1.b, Struct_1(vec2<bool>(var_2.a.a.x, false), u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(func_1(true).a, _wgslsmith_f_op_vec3_f32(step(arg_2.a, var_1.d)))))), var_1.e);
    return Struct_1(!(!(!var_2.a.a)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.c.x), u_input.c.x), _wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), -vec3<i32>(-1848i, u_input.c.x, u_input.a) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -17817i, 85622i), vec3<i32>(u_input.c.x, u_input.a, -1i)))) << (_wgslsmith_clamp_u32(~u_input.b.x, ~firstLeadingBit(max(1u, u_input.b.x)), u_input.b.x) % 32u);
    let var_1 = -_wgslsmith_sub_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), -u_input.a, ~(-2147483647i)), -abs(vec3<i32>(u_input.a, u_input.a, u_input.c.x)), vec3<bool>(true, u_input.b.x < 1999u, u_input.a != -2147483647i)), _wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(u_input.a, 0i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.a), vec3<i32>(2147483647i, 3054i, -22987i))));
    let var_2 = func_4(vec2<f32>(_wgslsmith_div_f32(-2003f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) + _wgslsmith_f_op_f32(f32(-1f) * -147f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1575f + _wgslsmith_f_op_f32(f32(-1f) * -1443f))))), vec4<u32>(4294967295u, 15781u, u_input.b.x, u_input.b.x), func_1(true));
    var_0 = ~firstLeadingBit(var_1.x);
    let var_3 = true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1119f, -1800f)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -981f) * -147f))));
    let var_4 = 1000f;
    var var_5 = Struct_5(func_4(func_2().a.b.yy, ~u_input.b, func_1(true)), func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-520f, var_4) * vec2<f32>(var_4, 2743f)))))), _wgslsmith_mult_vec4_u32(u_input.b ^ u_input.b, ~vec4<u32>(u_input.b.x, 36270u, 47728u, var_2.b)), func_1(true)).a, func_3(func_2()));
    var var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_4)), -1272f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4)) * _wgslsmith_f_op_f32(1625f * var_4)), _wgslsmith_f_op_f32(f32(-1f) * -691f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, -437f, var_4, var_4) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, -2149f, var_4)))), _wgslsmith_div_vec4_f32(vec4<f32>(func_2().b.b.x, var_4, var_4, var_4), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1433f, 247f, -739f, 578f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_6.xwx)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, -478f, -1935f) * vec3<f32>(var_6.x, 306f, var_4))))), 134f, func_2().a.a, u_input.c.x);
}

