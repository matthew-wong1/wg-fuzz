struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    let var_0 = Struct_1(~0u);
    let var_1 = !(!(!(!select(vec4<bool>(false, arg_2.b.x, arg_2.b.x, true), vec4<bool>(arg_2.b.x, arg_2.b.x, false, true), vec4<bool>(arg_2.b.x, false, true, false)))));
    var var_2 = -4099i;
    var_2 = arg_2.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1665f, -2297f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-668f, -449f))), 937f, _wgslsmith_f_op_f32(round(3144f)))));
    return vec2<i32>(u_input.a.x, 0i);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1854f, 1000f, -438f) - vec3<f32>(556f, 1661f, -1919f)))), vec2<bool>(true, true), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_div_u32(25589u, 1u), 38523u)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), true));
    var var_1 = Struct_1(73858u);
    var_1 = var_0.c;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 655f, _wgslsmith_f_op_f32(select(var_0.a.x, 446f, var_0.d.x))), var_0.a) - var_0.a), !select(vec2<bool>(var_0.d.x, var_0.b.x), vec2<bool>(true, true), var_0.c.a <= ~0u), Struct_1(~35986u), vec2<bool>(false, !(_wgslsmith_sub_u32(12278u, var_1.a) < 0u)));
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(select(i32(-1i) * -74297i, u_input.a.x, false), ~(-(~u_input.a.x)), u_input.a.x >> ((4294967295u ^ _wgslsmith_mod_u32(0u, var_0.c.a)) % 32u)), u_input.a.zxx);
    return Struct_3(~_wgslsmith_clamp_vec2_i32(u_input.a.xz, -func_3(var_3.x, Struct_1(var_1.a), Struct_3(var_3.xz, var_0.b, var_2.c, Struct_1(var_2.c.a)), 1i), select(~vec2<i32>(u_input.a.x, u_input.a.x), var_3.xz | vec2<i32>(14650i, 17056i), true)), vec2<bool>(!var_2.b.x, all(vec2<bool>(false, false)) && var_2.d.x), var_2.c, Struct_1(1u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    var var_0 = -2147483647i;
    let var_1 = func_2();
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(1302f)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1415f) * _wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_f32(-arg_1.x)), select(vec2<bool>(false, !(!var_1.b.x)), select(select(!vec2<bool>(var_1.b.x, true), !var_1.b, select(vec2<bool>(var_1.b.x, true), var_1.b, vec2<bool>(var_1.b.x, true))), select(var_1.b, vec2<bool>(true, false), false), vec2<bool>(true, false)), false), func_2().c, !vec2<bool>(true, !(var_1.b.x && var_1.b.x)));
    let var_3 = abs(_wgslsmith_mod_vec2_i32(u_input.a.xx, (reverseBits(var_1.a) >> (arg_0.zx % vec2<u32>(32u))) ^ vec2<i32>(~var_1.a.x, ~u_input.a.x)));
    let var_4 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, var_2.a.x, -857f), vec3<f32>(var_2.a.x, arg_1.x, arg_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * var_2.a.x), arg_1.x, _wgslsmith_f_op_f32(trunc(var_2.a.x)))), _wgslsmith_f_op_vec3_f32(select(var_2.a, vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x - arg_1.x), var_2.a.x), !select(vec3<bool>(var_1.b.x, var_2.b.x, var_2.d.x), vec3<bool>(var_2.b.x, true, false), vec3<bool>(var_1.b.x, false, true))))), vec2<bool>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2109f)) >= _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))), Struct_1(~0u), !var_2.d);
    return vec4<u32>(4294967295u, ~(~_wgslsmith_add_u32(~68784u, 39121u)), ~min(firstLeadingBit(~1u), arg_2), ~var_4.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~_wgslsmith_sub_i32(-30245i, -24529i), u_input.a.x, ~u_input.a.x);
    var_0 = u_input.a.wzz;
    var_0 = vec3<i32>(1i, 16144i, -(u_input.a.x << (1u % 32u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 51734u, 24506u), func_1(vec3<u32>(15844u, 41028u, 71265u), vec4<f32>(-712f, 404f, 1158f, 1541f), 29592u)) % 32u));
    var_0 = u_input.a.yzy;
    let var_1 = !any(!vec2<bool>(any(vec3<bool>(false, true, true)), true));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -2018f))))), vec2<bool>(true, !var_1), func_2().c, vec2<bool>(~firstLeadingBit(3882i) == var_0.x, true));
    var var_3 = vec3<bool>(!var_2.d.x, all(!(!vec3<bool>(false, false, var_2.b.x))), all(vec3<bool>(var_2.d.x, -1358f >= _wgslsmith_f_op_f32(-1000f * var_2.a.x), any(vec4<bool>(false, var_2.b.x, false, var_2.d.x)))));
    let var_4 = var_3.yz;
    var_2 = Struct_2(vec3<f32>(var_2.a.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(750f * var_2.a.x)) + _wgslsmith_f_op_f32(exp2(var_2.a.x)))), !var_3.zz, func_2().d, select(var_2.b, select(select(!var_2.b, !var_3.zz, vec2<bool>(false, var_2.b.x)), vec2<bool>(true, any(vec4<bool>(false, true, false, var_1))), !var_2.d), var_3.zy));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), ~max(1u, 11578u));
}

