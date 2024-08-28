struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = -u_input.b;
    var var_1 = u_input.d.yyy;
    var var_2 = _wgslsmith_div_u32(abs(var_1.x), u_input.d.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f) + -926f), _wgslsmith_f_op_f32(max(-260f, -137f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(720f)), _wgslsmith_f_op_f32(sign(843f)))), _wgslsmith_div_f32(-2058f, -371f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var var_4 = Struct_4(9160u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 391f, var_3.x, var_3.x) - vec4<f32>(var_3.x, 980f, -1000f, var_3.x))))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, -751f) + _wgslsmith_f_op_f32(-var_3.x)), var_3.x, _wgslsmith_f_op_f32(174f + 1162f), _wgslsmith_f_op_f32(ceil(var_3.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(943f, var_3.x, 1000f, -905f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, 698f, var_3.x, var_3.x)), arg_0))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(select(countOneBits(max(vec4<i32>(2147483647i, arg_0.c.a, u_input.e.x, u_input.e.x), vec4<i32>(41472i, arg_0.c.a, u_input.e.x, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.a, -607i, arg_0.c.b.x, 18619i), ~vec4<i32>(u_input.e.x, u_input.b.x, u_input.e.x, -1i)), false) << (u_input.d % vec4<u32>(32u)), min(vec4<i32>(-arg_0.c.a, ~2147483647i, u_input.b.x, _wgslsmith_sub_i32(arg_0.c.a, arg_0.c.a) ^ -arg_0.c.a), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, arg_0.c.b.x, arg_0.c.a, arg_0.c.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.b.x, u_input.b.x, u_input.c, 0i), vec4<i32>(-9287i, u_input.b.x, -32095i, arg_0.c.a)))));
    let var_1 = Struct_3(arg_1 | true, Struct_1(_wgslsmith_f_op_vec4_f32(func_3(u_input.a <= _wgslsmith_div_u32(9224u, 64636u))), !select(arg_0.b.b, select(arg_0.c.c.b, arg_0.c.c.b, vec2<bool>(true, arg_0.a)), arg_0.c.c.b.x)), arg_0.c);
    let var_2 = arg_0.b;
    var var_3 = arg_0.c;
    var_3 = var_1.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -513f);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_2(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-44080i, 11144i, 26363i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x) ^ u_input.b), -2147483647i), vec3<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, arg_0.x, arg_0.x, -1i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 1i, -36946i), vec4<i32>(-2147483647i, 51249i, arg_0.x, 4675i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, u_input.c, -1i, arg_0.x), vec4<i32>(-6110i, 1i, u_input.b.x, 0i)), ~vec4<i32>(u_input.b.x, u_input.e.x, arg_0.x, arg_0.x))), ~(u_input.e.x << (0u % 32u)) | _wgslsmith_div_i32(i32(-1i) * -8914i, -2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-683f, -801f)), -2461f, _wgslsmith_f_op_f32(ceil(-265f)), 1f) + vec4<f32>(-636f, _wgslsmith_f_op_f32(ceil(-1000f)), -180f, _wgslsmith_f_op_f32(func_2(Struct_3(arg_1.x, Struct_1(vec4<f32>(-926f, 199f, -486f, -637f), vec2<bool>(arg_1.x, arg_1.x)), Struct_2(-2147483647i, vec3<i32>(arg_0.x, u_input.e.x, -29973i), Struct_1(vec4<f32>(305f, -748f, -3133f, -574f), vec2<bool>(false, arg_1.x)))), false)))), !vec2<bool>(arg_1.x, true)));
    let var_1 = Struct_4(1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_0.c.a.xy)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.a.x), _wgslsmith_f_op_f32(var_0.c.a.x + -706f)))), var_0.c.b)));
    var var_3 = var_1;
    var var_4 = select(select(vec4<bool>(false, true, -20288i != ~u_input.e.x, arg_1.x), select(arg_1, !vec4<bool>(arg_1.x, var_0.c.b.x, var_0.c.b.x, true), !arg_1), true), vec4<bool>(var_0.c.b.x, false, any(select(vec4<bool>(true, true, var_0.c.b.x, true), arg_1, vec4<bool>(var_0.c.b.x, false, false, true))), all(vec2<bool>(var_0.c.b.x, arg_1.x))), select(2147483647i != (arg_0.x & -18685i), !any(!vec3<bool>(arg_1.x, true, true)), !arg_1.x));
    return -210f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(-36179i, u_input.c, 1i), vec4<bool>(true, false, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1540f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_3(true, Struct_1(vec4<f32>(-1063f, -996f, 2122f, 317f), vec2<bool>(false, true)), Struct_2(u_input.b.x, u_input.b, Struct_1(vec4<f32>(-897f, -217f, 1000f, 1490f), vec2<bool>(false, false)))), false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(1301f - -671f)))))), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), 81797u >= u_input.d.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(false, false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = Struct_3(var_0.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, 1296f, 132f, -2536f)))))), !vec2<bool>(var_0.b.x, u_input.d.x < 0u)), Struct_2(1i, vec3<i32>(_wgslsmith_mod_i32(select(4268i, 1i, var_0.b.x), _wgslsmith_sub_i32(-48076i, u_input.b.x)), -74778i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-33537i, u_input.e.x, u_input.c), u_input.b, vec3<bool>(true, var_0.b.x, var_0.b.x)), -vec3<i32>(u_input.b.x, u_input.c, -39998i))), var_0));
    let var_2 = ~((u_input.d.zwx << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wzz, vec3<u32>(u_input.a, u_input.d.x, 75334u)), reverseBits(vec3<u32>(u_input.a, 19725u, 1u))) % vec3<u32>(32u))) & vec3<u32>(~u_input.a, ~u_input.a, ~(u_input.d.x << (u_input.a % 32u))));
    var var_3 = Struct_4(max(u_input.d.x, 84658u));
    let var_4 = true;
    var_3 = Struct_4(0u);
    var var_5 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_clamp_i32(var_1.c.b.x, 2147483647i, i32(-1i) * -u_input.b.x)), min(_wgslsmith_mod_i32(firstLeadingBit(~var_1.c.a), 43570i), _wgslsmith_add_i32(-1i, ~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, u_input.b.x, -80665i, u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -778f)), var_0.a.x, -1009f)));
}

