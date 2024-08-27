struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = arg_0.e;
    return -46945i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(1i, -20476i);
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, _wgslsmith_f_op_f32(445f * 553f), _wgslsmith_f_op_f32(f32(-1f) * -692f))), vec2<i32>(u_input.a, -u_input.a) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(33805u, u_input.b), ~vec2<u32>(47207u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(785f + 1000f)) + 727f), !(arg_0.x && any(vec4<bool>(false, arg_0.x, true, arg_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -639f), ~_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(u_input.b, 0u, 1u, u_input.b)), ~(vec4<u32>(u_input.b, u_input.b, 0u, 10194u) | vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, -437f, 1283f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -936f, -155f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(245f, 772f, -823f) + vec3<f32>(131f, -1171f, 325f)) - vec3<f32>(-510f, -416f, 533f))), vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2287f, 939f))), arg_0.x));
    var_0 = _wgslsmith_mod_i32(func_3(var_1) | (_wgslsmith_mod_i32(16447i ^ u_input.a, var_1.e.b.x) >> ((1630u >> (1u % 32u)) % 32u)), u_input.a);
    var_0 = -_wgslsmith_mod_i32(var_1.b.b.x, func_3(Struct_2(!arg_0.x, var_1.e, _wgslsmith_f_op_f32(var_1.e.c * 1141f), max(vec4<u32>(56355u, 4294967295u, var_1.d.x, 4294967295u), vec4<u32>(var_1.d.x, 1u, 17549u, u_input.b)), var_1.e)));
    var_0 = var_1.b.b.x;
    return var_1.b;
}

fn func_1() -> f32 {
    let var_0 = ~_wgslsmith_add_u32(4294967295u, 4294967295u & u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1489f, 253f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -341f)))));
    var_1 = -285f;
    let var_2 = func_2(!vec2<bool>(!any(vec2<bool>(false, false)), all(vec2<bool>(true, true))));
    var_1 = var_2.c;
    return 1503f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -256f <= _wgslsmith_f_op_f32(func_1());
    var var_1 = Struct_2(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false)) && true, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-613f, 1661f, -1523f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, -872f)))), _wgslsmith_sub_vec2_i32(~select(vec2<i32>(2147483647i, -30588i), vec2<i32>(1i, u_input.a), true), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1382f + -258f) * _wgslsmith_f_op_f32(-271f - 1407f))), !all(vec2<bool>(true, true))), -1203f, _wgslsmith_div_vec4_u32(vec4<u32>(abs(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 96828u, 2482u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u)), u_input.b, 0u), (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, 40021u, 1u, 1u), vec4<u32>(36337u, 26582u, 17903u, u_input.b)) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 1u, 4294967295u), vec4<u32>(15211u, u_input.b, u_input.b, 4294967295u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 39423u, u_input.b), ~vec4<u32>(u_input.b, 4294967295u, 22433u, 0u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1770f, -283f, -111f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, 220f, -233f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-195f, 1000f, -257f)))), max(-vec2<i32>(-2147483647i, 2147483647i), ~vec2<i32>(-18884i, u_input.a)) | (_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)) >> (vec2<u32>(u_input.b, 64662u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f)))), !(u_input.a <= u_input.a) & any(vec2<bool>(false, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_1.b.a)), vec2<i32>(abs(2147483647i), min(5268i, u_input.a)), var_1.e.a.x, true);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1212f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(873f, var_2.a.x)))))))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), -509f), _wgslsmith_f_op_f32(-var_2.c));
    var_1 = Struct_2(var_1.a, func_2(vec2<bool>(var_2.d, var_1.e.d)), var_1.b.c, _wgslsmith_mult_vec4_u32(var_1.d, ~vec4<u32>(1u >> (0u % 32u), ~var_1.d.x, u_input.b | u_input.b, abs(u_input.b))), var_1.e);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_1.d, abs(_wgslsmith_clamp_vec4_u32(~var_1.d, ~var_1.d, ~var_1.d))), -countOneBits(vec4<i32>(-1i, -40957i, 2147483647i, var_2.b.x)) | (vec4<i32>(var_1.e.b.x, abs(-22461i), var_1.e.b.x, _wgslsmith_mult_i32(2147483647i, u_input.a)) & (vec4<i32>(0i, u_input.a, -19380i, var_2.b.x) | ~vec4<i32>(1i, 2147483647i, var_2.b.x, var_2.b.x))));
}

