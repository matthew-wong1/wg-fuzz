struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_4(vec2<f32>(-812f, _wgslsmith_f_op_f32(max(1711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + _wgslsmith_f_op_f32(451f + 583f))))));
    let var_1 = countOneBits(vec3<u32>(~(~1u), ~firstTrailingBit(30708u), _wgslsmith_mult_u32(89717u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 43908u), _wgslsmith_mult_u32(84827u, 12068u), ~20662u))));
    var_0 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(select(1324f, _wgslsmith_div_f32(234f, -744f), true)), -1087f)));
    var_0 = Struct_4(var_0.a);
    var var_2 = select(vec3<bool>(false, !any(vec2<bool>(true, true)), false), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), vec3<bool>(true, (var_0.a.x != 446f) | any(vec4<bool>(true, true, true, false)), true)), vec3<bool>(28206u >= max(_wgslsmith_sub_u32(0u, var_1.x), 1u ^ var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) + -1274f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))));
    return 43264u;
}

fn func_1() -> Struct_3 {
    let var_0 = ~(~(vec4<u32>(func_2(vec3<i32>(u_input.a.x, 2131i, u_input.a.x)), 1u, 1u, 1u) ^ select(vec4<u32>(4294967295u, 1u, 3935u, 0u), select(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(41u, 126384u, 3357u, 0u), true), true)));
    let var_1 = var_0.x & _wgslsmith_dot_vec2_u32(var_0.zx, ~firstLeadingBit(countOneBits(var_0.wy)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-388f))))));
    var_2 = _wgslsmith_f_op_f32(trunc(1023f));
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -788f)))));
    return Struct_3(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.xww, var_0.yyz), max(~select(vec3<u32>(32143u, 32351u, var_1), vec3<u32>(var_1, var_1, var_0.x), vec3<bool>(false, false, true)), ~vec3<u32>(var_1, 14069u, 4294967295u) << (vec3<u32>(var_0.x, 68815u, 1u) % vec3<u32>(32u)))), Struct_2(Struct_1(vec2<bool>(true, select(true, true, true)), all(vec2<bool>(true, true)) || all(vec4<bool>(false, true, true, false)), vec3<u32>(_wgslsmith_clamp_u32(13019u, var_1, 71062u), var_0.x << (48394u % 32u), ~var_0.x), vec3<f32>(1113f, -302f, _wgslsmith_f_op_f32(528f - 373f))), vec2<f32>(_wgslsmith_f_op_f32(110f + 1801f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -909f), _wgslsmith_f_op_f32(381f * 657f)))), u_input.a.x));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = true;
    let var_1 = arg_0.x;
    var_0 = !(!func_1().b.a.b);
    var_0 = !all(select(func_1().b.a.a, vec2<bool>(all(vec2<bool>(false, false)), select(false, false, true)), false));
    var_0 = select(true, true, true);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, var_0.b.a.c.x, 61215u, 56935u) | vec4<u32>(var_0.b.a.c.x, 1u, var_0.a.x, var_0.a.x), vec4<u32>(~77171u, select(30758u, 1u, false), _wgslsmith_sub_u32(var_0.a.x, 0u), var_0.a.x), vec4<u32>(0u & var_0.b.a.c.x, 7724u, abs(4294967295u), 14073u)), ~(~reverseBits(vec4<u32>(1u, 25062u, var_0.a.x, 1u))));
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_div_f32(-1491f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1030f));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-536f, -1488f)))))) * var_0.b.a.d.x);
    let var_4 = 51666i;
    let x = u_input.a;
    s_output = StorageBuffer(-360f, var_0.b.a.d.x, 46544u, vec4<i32>(_wgslsmith_mult_i32(~countOneBits(u_input.a.x), u_input.a.x), 2147483647i, func_3(vec2<f32>(_wgslsmith_f_op_f32(699f - var_2.a.x), _wgslsmith_f_op_f32(var_3 * -894f))), 0i), vec2<i32>(var_4 ^ _wgslsmith_add_i32(~(-1i), countOneBits(-10468i)), -1i));
}

