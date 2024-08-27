struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(1i, 38573i, 24793i), vec3<i32>(0i, -1i, 1i), vec3<i32>(0i, 0i, -44969i), vec3<i32>(4641i, -28084i, -43818i), vec3<i32>(1i, -76287i, 1i), vec3<i32>(-36575i, -40704i, i32(-2147483648)), vec3<i32>(-18875i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, 43589i, 0i), vec3<i32>(i32(-2147483648), -36564i, 0i), vec3<i32>(-43008i, 2147483647i, -68776i), vec3<i32>(105609i, -5606i, 2147483647i), vec3<i32>(-40371i, i32(-2147483648), 25533i), vec3<i32>(2147483647i, 2147483647i, -7716i), vec3<i32>(i32(-2147483648), 32980i, i32(-2147483648)), vec3<i32>(27548i, 1223i, 0i), vec3<i32>(-908i, 5471i, 0i), vec3<i32>(24268i, -9810i, -1i), vec3<i32>(i32(-2147483648), 20071i, -15673i), vec3<i32>(i32(-2147483648), 29527i, 1i), vec3<i32>(-8559i, 2847i, -25780i), vec3<i32>(26339i, 1i, 0i), vec3<i32>(2147483647i, -1i, -22374i), vec3<i32>(38646i, 12949i, 2147483647i), vec3<i32>(17141i, 2147483647i, 71425i), vec3<i32>(6326i, i32(-2147483648), i32(-2147483648)), vec3<i32>(33752i, 0i, -1i), vec3<i32>(29791i, 1i, -24569i), vec3<i32>(5387i, i32(-2147483648), -19529i), vec3<i32>(-55566i, 2147483647i, -64938i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(-46295i, 0i, 24461i), vec3<i32>(1i, i32(-2147483648), -10776i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: f32) -> bool {
    return !(!arg_0.x);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    var var_0 = u_input.d.x;
    let var_1 = all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)) || true;
    var var_2 = ~_wgslsmith_mult_u32(1u, u_input.a);
    var_2 = firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~6858u, reverseBits(u_input.d.x), firstTrailingBit(1u), ~24186u), u_input.d), 0u));
    let var_3 = -177f;
    return ~(-select(u_input.b, 0i, false) >> (~(~arg_0) % 32u));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = !vec3<bool>(func_2(vec3<bool>(true, true, true), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 837i), min(vec3<i32>(u_input.c, 17337i, u_input.b), vec3<i32>(-5624i, -23075i, 18702i))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 25358u, u_input.a), u_input.d.xyw), _wgslsmith_f_op_f32(min(691f, arg_0))), true, false);
    let var_1 = select(true, var_0.x, select(false, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))) > u_input.b, select(true, all(!vec4<bool>(true, false, var_0.x, var_0.x)), false)));
    var var_2 = select(var_0.zz, select(!(!var_0.zy), var_0.yx, var_0.xy), false && var_1);
    let var_3 = -(vec3<i32>(-16641i, countOneBits(func_3(42992u, vec2<i32>(u_input.b, u_input.c))), 1380i) ^ _wgslsmith_div_vec3_i32(-global0[_wgslsmith_index_u32(u_input.e, 32u)] >> (~vec3<u32>(u_input.d.x, u_input.e, 1u) % vec3<u32>(32u)), (global0[_wgslsmith_index_u32(u_input.e, 32u)] ^ global0[_wgslsmith_index_u32(1u, 32u)]) | -global0[_wgslsmith_index_u32(u_input.a, 32u)]));
    global0 = array<vec3<i32>, 32>();
    return _wgslsmith_div_f32(-214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f + _wgslsmith_f_op_f32(trunc(-475f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 32>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(-394f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1512f, 1227f) * 1f))));
    global0 = array<vec3<i32>, 32>();
    global0 = array<vec3<i32>, 32>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(-432f)), u_input.c, vec2<bool>(true, true), ~(abs(u_input.a) ^ ~10116u) & _wgslsmith_div_u32(~17517u, u_input.a));
    let var_2 = _wgslsmith_div_u32(firstTrailingBit(5403u), ~var_1.d);
    var_1 = Struct_1(var_1.a, _wgslsmith_div_i32(reverseBits(abs(~var_1.b)), u_input.b), select(select(vec2<bool>(true, true), select(vec2<bool>(var_1.c.x, false), select(vec2<bool>(false, var_1.c.x), vec2<bool>(true, var_1.c.x), vec2<bool>(var_1.c.x, true)), var_1.c.x), var_1.c), select(!select(vec2<bool>(true, var_1.c.x), vec2<bool>(false, var_1.c.x), var_1.c), !(!vec2<bool>(var_1.c.x, var_1.c.x)), select(false, false, var_1.c.x) | select(true, var_1.c.x, false)), !var_1.c), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -561f, var_1.a, 355f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-508f, var_0.x, var_1.a, var_0.x), vec4<f32>(var_1.a, -1242f, -389f, 650f), false)))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-813f, _wgslsmith_f_op_f32(-133f * var_1.a), _wgslsmith_f_op_f32(1117f * var_0.x), var_1.a)))), 1i, var_0.x);
}

