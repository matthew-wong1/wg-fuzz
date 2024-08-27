struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(40032u, 1u, 0u), vec3<u32>(4294967295u, 358u, 0u), vec3<u32>(0u, 4294967295u, 19730u), vec3<u32>(16806u, 95076u, 4294967295u), vec3<u32>(67075u, 0u, 4294967295u), vec3<u32>(1u, 57060u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 48519u, 17397u), vec3<u32>(1u, 48960u, 1u), vec3<u32>(804u, 1u, 73059u), vec3<u32>(27805u, 20109u, 12106u), vec3<u32>(0u, 2753u, 0u), vec3<u32>(4294967295u, 45814u, 4294967295u), vec3<u32>(55819u, 1u, 3419u), vec3<u32>(35178u, 34432u, 4294967295u), vec3<u32>(25220u, 0u, 0u), vec3<u32>(65253u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 33109u), vec3<u32>(0u, 1u, 1u));

var<private> global1: vec4<u32> = vec4<u32>(21725u, 28054u, 138240u, 26775u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec3<bool> {
    return !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec3<bool>(u_input.d <= u_input.c, all(vec3<bool>(true, true, false)), true), arg_1 == global1.x), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_0;
    let var_1 = !vec4<bool>(arg_2.x, !arg_0, arg_2.x, true);
    let var_2 = abs(~vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1, ~vec3<u32>(global1.x, arg_1.x, global1.x)), arg_1.x, 191924u, 44821u));
    global0 = array<vec3<u32>, 19>();
    let var_3 = Struct_1(var_1.zxy, vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.a), ~1u, (vec3<i32>(u_input.d, -14130i, _wgslsmith_dot_vec2_i32(vec2<i32>(14110i, u_input.d), vec2<i32>(u_input.c, u_input.d))) | vec3<i32>(u_input.c, 1i, select(u_input.c, u_input.c, true))) & ~(~vec3<i32>(5768i, -2147483647i, 1476i) & -vec3<i32>(u_input.d, u_input.d, -19477i)), _wgslsmith_add_i32(u_input.c, reverseBits(_wgslsmith_mult_i32(~u_input.c, ~u_input.c))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f - -443f) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-231f, 329f), _wgslsmith_f_op_f32(step(473f, -460f)))))) * 1769f);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec3<u32>, 19>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, global1.zyy, arg_0.a.xz)) - arg_2.x), arg_2.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0)), arg_2.x, _wgslsmith_f_op_f32(ceil(-1319f)), -1275f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, arg_2.x, arg_2.x)) + vec4<f32>(var_0, 693f, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1980f, arg_2.x, var_0, 523f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f) * var_1.x))), _wgslsmith_f_op_f32(-177f + -354f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -185f)));
    global1 = ~vec4<u32>(1u, 1u, min(min(39527u, 75983u) | global1.x, firstTrailingBit(arg_1.x)), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.b.x)), 708u | arg_1.x));
    return -299f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = ~0u;
    let var_2 = Struct_1(select(select(!func_1(vec4<u32>(var_0.x, global1.x, global1.x, var_0.x), global1.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(select(true, true, true), _wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(false, false, true, true), false, vec2<i32>(u_input.d, -55201i), true), global1.yw, vec3<f32>(-879f, -373f, -1000f), vec3<i32>(16880i, u_input.d, u_input.c))) > -120f, true), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)) || true), vec3<u32>(~firstTrailingBit(u_input.b.x), _wgslsmith_mult_u32(28447u, 25826u), var_1), 4294967295u, vec3<i32>(u_input.d, max((u_input.c | 8432i) ^ ~u_input.c, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), abs(-vec2<i32>(2147483647i, u_input.d)))), ~abs(~u_input.c & 1i));
    var var_3 = vec2<bool>(true, !(!var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)), -220f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-884f - -492f), _wgslsmith_f_op_f32(round(-2225f)))), _wgslsmith_f_op_f32(545f - _wgslsmith_f_op_f32(-2166f * -242f))))));
}

