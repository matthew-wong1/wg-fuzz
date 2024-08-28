struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1077f))), _wgslsmith_f_op_f32(-837f + 189f), arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(747f, 801f)), 1324f, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.a))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a)), 1460f, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, arg_0.b.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.a)))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + -173f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), arg_0.a))));
    var var_1 = Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1113f), arg_0.a, _wgslsmith_f_op_f32(floor(arg_0.b.x)))), ~arg_0.c, arg_0.d));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(1f - arg_0.b.x), 1488f, -503f), ~firstLeadingBit(select(u_input.d.zz, vec2<u32>(4294967295u, var_1.a.c.x), true)), var_1.a.d));
    var var_2 = !(!arg_0.d);
    return _wgslsmith_dot_vec4_i32(-abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(14419i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x)), min(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(u_input.b, 5007i, -2147483647i, -2147483647i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.b, -2147483647i, 0i) | vec3<i32>(u_input.a.x, -1i, -1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1389i, u_input.b, 1i), u_input.a), -1i), u_input.a.x), -vec4<i32>(~0i, ~1i, _wgslsmith_mult_i32(-58725i, u_input.a.x), -3002i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = 1778f;
    let var_1 = Struct_3(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(5817i, firstLeadingBit(-53446i))), func_3(arg_0.a.a));
    let var_2 = select(!(!vec2<bool>(false, all(arg_0.a.a.d.ywy))), vec2<bool>(arg_0.a.a.d.x, any(vec2<bool>(false, arg_1.x)) | all(arg_0.a.a.d)), arg_0.a.a.d.xz);
    let var_3 = ~vec2<i32>(~(-24775i), -37153i) << (_wgslsmith_mod_vec2_u32(abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4317u), u_input.e, u_input.e)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.a.a.c.x, 130u), vec2<u32>(u_input.c, 3382u), u_input.d.xy), select(vec2<u32>(arg_0.a.a.c.x, arg_0.a.a.c.x), arg_0.a.a.c, select(vec2<bool>(true, var_2.x), arg_0.a.a.d.xy, arg_1)))) % vec2<u32>(32u));
    var var_4 = var_1;
    return vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.a.a.a))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.a.b.x, arg_0.a.a.a)) * 1491f)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = vec3<bool>(all(vec3<bool>(!arg_1, any(vec4<bool>(true, arg_1, arg_1, arg_1)), false)) || all(!(!vec4<bool>(arg_1, arg_1, true, true))), true, !any(select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), arg_1))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2149f - arg_2.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, 1732f, -1166f)))), vec2<u32>(28929u, ~u_input.d.x), !vec4<bool>(false, false, arg_1, true))), 21217i);
    var var_2 = var_1.a.a;
    var_2 = var_1.a.a;
    var_2 = Struct_1(-348f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.a.a.b)))), vec2<u32>(min(_wgslsmith_div_u32(var_2.c.x, var_2.c.x), 1u), abs(_wgslsmith_clamp_u32(22994u, 4707u, 0u))) ^ abs(abs(countOneBits(vec2<u32>(0u, var_1.a.a.c.x)))), !vec4<bool>(true, var_0.x, !select(false, var_0.x, true), var_1.b < -u_input.a.x));
    return Struct_3(select(vec2<i32>(-65721i, u_input.a.x), u_input.a.zx, select(var_1.a.a.d.yx, vec2<bool>(all(var_1.a.a.d), false), select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_1.a.a.d.x, true), arg_1), var_0.zx, var_2.d.wy))), _wgslsmith_div_i32(~u_input.b, ~u_input.b));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = func_4(Struct_3(_wgslsmith_add_vec2_i32(max(vec2<i32>(arg_1, 22608i), u_input.a.yz), u_input.a.xy), 0i), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-364f, -1488f, _wgslsmith_f_op_f32(abs(arg_0.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(Struct_2(Struct_1(1181f, vec3<f32>(arg_0.x, 1000f, -833f), u_input.e, vec4<bool>(false, true, true, true))), 30878i), vec2<bool>(false, false))), vec3<f32>(arg_0.x, -1327f, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-389f, 238f, arg_0.x) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(937f, -580f, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, -132f, arg_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 436f) + vec3<f32>(-913f, -434f, arg_0.x))))));
    let var_1 = 361f;
    var var_2 = Struct_3(~_wgslsmith_div_vec2_i32(u_input.a.yz, ~var_0.a), -1i);
    let var_3 = _wgslsmith_f_op_f32(446f + _wgslsmith_div_f32(-1402f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, 241f)), var_1), var_1))));
    let var_4 = Struct_2(Struct_1(var_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(777f, -600f, var_3), vec3<f32>(645f, -408f, -1127f))) * vec3<f32>(1944f, var_3, var_1)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1319f, var_1, -757f), vec3<f32>(var_3, 1185f, 2406f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2077f, -1349f, arg_0.x) - vec3<f32>(var_3, 890f, 684f)), vec3<bool>(true, true, true)))), vec2<u32>(27636u, 4294967295u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1, 1i, var_2.a.x), vec4<i32>(-1i, 4682i, 2147483647i, u_input.b)) != -u_input.a.x)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(abs(_wgslsmith_div_i32(-max(2147483647i, u_input.a.x), 9032i)), ~abs(max(-2147483647i >> (u_input.d.x % 32u), u_input.b)));
    let var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -788f))), 594f)), -1664f), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(-835f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1866f)))));
    var var_3 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1387f)), vec3<f32>(659f, _wgslsmith_f_op_f32(-825f - 583f), -459f), ~(~vec2<u32>(1u, u_input.e.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), all(vec2<bool>(true, true))))), 1i);
    var_2 = _wgslsmith_f_op_f32(step(var_3.a.a.a, -3282f));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a.b.x))), var_3.a.a.a)), var_3.a.a.b.x, -755f, _wgslsmith_f_op_f32(-var_3.a.a.b.x));
    var_2 = -550f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xyz, var_3.a.a.c.x, -(_wgslsmith_sub_vec2_i32(max(vec2<i32>(0i, -38470i), var_1.a), -u_input.a.xx) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.a.a.c.x, u_input.d.x), vec2<u32>(var_3.a.a.c.x, u_input.e.x) >> (u_input.e % vec2<u32>(32u))) % vec2<u32>(32u))), vec4<u32>(~_wgslsmith_dot_vec2_u32(~u_input.d.xy, vec2<u32>(var_3.a.a.c.x, 25457u)), u_input.d.x, 1u, ~(_wgslsmith_mod_u32(u_input.e.x, var_3.a.a.c.x) ^ (u_input.c | u_input.c))));
}

