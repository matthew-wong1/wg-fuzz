struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(~firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(-1i, u_input.b, u_input.b))), vec3<i32>(abs(u_input.c), u_input.c, -2147483647i), (min(vec3<i32>(u_input.c, u_input.b, 0i), vec3<i32>(u_input.c, 2147483647i, 2147483647i)) & (vec3<i32>(u_input.c, 24942i, u_input.b) | vec3<i32>(10390i, 2147483647i, 2147483647i))) >> (vec3<u32>(u_input.d.x, 30471u, 0u | u_input.a.x) % vec3<u32>(32u))));
    var var_1 = Struct_3(86702u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(528f, -1037f, global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(935f * _wgslsmith_div_f32(1120f, 1169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1481f + 1350f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1114f)))), -vec2<i32>(var_0.x, u_input.c), select(!select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), false), global0.yz, global0.x));
    var_1 = Struct_3(_wgslsmith_sub_u32(var_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(-var_1.b), var_1.c, global0.yz);
    let var_2 = reverseBits(firstTrailingBit(4294967295u));
    global0 = vec4<bool>(var_1.d.x, !(!var_1.d.x), true, !all(!global0.ywy));
    return !vec4<bool>(select(global0.x, var_1.d.x, true), true, 1i > (_wgslsmith_dot_vec2_i32(var_1.c, vec2<i32>(u_input.b, u_input.c)) & u_input.c), true);
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = !vec4<bool>(all(select(vec4<bool>(arg_0.d, false, true, global0.x), vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), !vec4<bool>(true, true, false, global0.x))), any(vec2<bool>(arg_0.d || arg_0.d, !global0.x)), arg_0.d, u_input.a.x >= u_input.a.x);
    global0 = vec4<bool>(51310u != (1u & u_input.d.x), arg_0.d, true, any(select(vec4<bool>(global0.x, 47553u > u_input.d.x, select(false, false, true), 8362u == u_input.d.x), !func_3(), all(!vec2<bool>(arg_0.d, false)))));
    let var_0 = !select(select(vec4<bool>(false, arg_0.d || arg_0.d, all(global0.xy), all(vec4<bool>(arg_0.d, true, global0.x, true))), !vec4<bool>(arg_0.d, true, false, arg_0.d), !global0.x || true), select(select(vec4<bool>(false, global0.x, global0.x, false), select(vec4<bool>(global0.x, global0.x, true, arg_0.d), vec4<bool>(false, global0.x, false, false), vec4<bool>(true, false, arg_0.d, false)), !vec4<bool>(arg_0.d, true, arg_0.d, true)), func_3(), false), select(!vec4<bool>(arg_0.d, global0.x, arg_0.d, false), func_3(), select(vec4<bool>(false, arg_0.d, arg_0.d, false), !vec4<bool>(true, false, arg_0.d, arg_0.d), select(vec4<bool>(false, global0.x, true, false), vec4<bool>(arg_0.d, global0.x, true, true), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c)))) * _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.wz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1661f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.a.wz + _wgslsmith_f_op_vec2_f32(ceil(arg_0.a.wy)))))));
    return !global0.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: i32) -> vec2<i32> {
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 2148f, -303f))), vec3<f32>(arg_0, 301f, arg_0), !global0.yzx)))), vec2<i32>(u_input.c, abs(2147483647i)), select(!global0.wz, !select(select(vec2<bool>(true, false), global0.zw, global0.x), vec2<bool>(true, true), func_2(Struct_2(vec4<f32>(-722f, 551f, arg_0, arg_0), vec2<i32>(20284i, 1495i), arg_0, global0.x))), !global0.x));
    global0 = func_3();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f)) - _wgslsmith_f_op_f32(447f + -479f))), _wgslsmith_f_op_f32(-2248f * var_0.b.x));
    let var_2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zy), min(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, var_0.a)), u_input.a.zz), vec2<u32>(0u, u_input.d.x)));
    global0 = vec4<bool>(true, true & !(!(!var_0.d.x)), !all(!(!vec4<bool>(true, false, true, global0.x))), 8270i >= ~u_input.c);
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(var_0.c, select(vec2<i32>(arg_1, arg_1), vec2<i32>(-14403i, arg_1), false)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-488f)), 790f), _wgslsmith_f_op_f32(-2298f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -212f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(341f, -174f, -1484f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(657f)), _wgslsmith_div_f32(1762f, 135f), -1000f))), -func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f + -459f)), -3846i, ~(~0u), firstLeadingBit(27362i)), global0.ww);
    var var_1 = var_0;
    let var_2 = Struct_1(var_1.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.zz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + vec2<f32>(-562f, -1841f)) - vec2<f32>(1f, 1f)))));
    var var_3 = var_0.b;
    global0 = !(!(!vec4<bool>(var_0.d.x, global0.x, var_1.d.x, true)));
    let var_4 = 26084u ^ var_1.a;
    let var_5 = any(!var_0.d);
    let var_6 = Struct_2(vec4<f32>(-1010f, _wgslsmith_f_op_f32(524f - -481f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1044f, _wgslsmith_f_op_f32(var_1.b.x - 323f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -1042f))), _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(var_0.b.x * 239f))), -var_0.c, var_2.b.x, var_5);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_6.b.x, 0i, ~(-1i), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.c, u_input.b), vec3<i32>(1i, -37243i, var_6.b.x)), vec3<i32>(-12994i, u_input.c, var_6.b.x))), vec4<i32>(2147483647i, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.c.x, 2147483647i, -19126i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_0.c.x, u_input.b, 0i), vec4<i32>(var_0.c.x, var_6.b.x, var_1.c.x, -1i))), -48299i, -35066i), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 42398i, u_input.b) & vec3<i32>(u_input.b, u_input.b, 2147483647i), -vec3<i32>(-1058i, -16161i, 54680i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(var_0.c.x, 2147483647i, var_0.c.x)), reverseBits(vec3<i32>(var_1.c.x, -2147483647i, var_0.c.x))) ^ -select(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(var_1.c.x, var_0.c.x, 2147483647i), global0.xww)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * -1814f), 1929f, _wgslsmith_div_f32(var_0.b.x, 1f), _wgslsmith_f_op_f32(sign(-1625f))))), -vec2<i32>(u_input.c, var_6.b.x));
}

