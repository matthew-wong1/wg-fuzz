struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec2<bool>(all(vec3<bool>(true, true, false)), true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, all(vec4<bool>(true, false, false, true)) & true), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), u_input.b <= u_input.b))), ~u_input.c.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x))));
    var_0 = Struct_1(var_0.a, countOneBits(_wgslsmith_mod_vec2_u32(u_input.c.yy, ~(~var_0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(step(-1588f, 1053f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.yy))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-659f, var_0.c.x)))))));
    var var_1 = Struct_1(!var_0.a, u_input.c.xz, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, false))) + 1049f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -968f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -1803f)), true))));
    let var_2 = select(firstTrailingBit(u_input.a.yz), u_input.a.yz << ((min(var_1.b << (var_1.b % vec2<u32>(32u)), var_1.b) >> (var_0.b % vec2<u32>(32u))) % vec2<u32>(32u)), !var_0.a);
    var var_3 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1490f, global0.x, var_1.c.x), vec4<f32>(var_1.c.x, var_1.c.x, var_0.c.x, -624f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, global0.x, var_0.c.x, var_0.c.x), vec4<f32>(-1122f, 504f, -1388f, -376f))))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> bool {
    var var_0 = min(~select(~vec3<u32>(u_input.b, u_input.b, 0u), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, u_input.b)), true), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_div_u32(~u_input.c.x, 105230u), _wgslsmith_sub_u32(~0u, u_input.b & u_input.b), u_input.b)));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(max(~vec3<u32>(u_input.c.x, var_0.x, var_0.x) | u_input.c, _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 1u), ~u_input.c)), u_input.c), ~vec3<u32>(firstTrailingBit(var_0.x) | abs(u_input.c.x), ~1u, max(~var_0.x, u_input.b | var_0.x)));
    var_0 = vec3<u32>(firstTrailingBit(34659u), 0u, 67319u);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1293f, _wgslsmith_f_op_f32(f32(-1f) * -713f), -735f, _wgslsmith_f_op_f32(997f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) * _wgslsmith_f_op_f32(select(arg_0, arg_1.x, false))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(arg_1.x, -611f, 1745f, 1297f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(102f - global0.x), _wgslsmith_f_op_f32(arg_1.x - 1451f), arg_0, _wgslsmith_f_op_f32(-global0.x)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, arg_0, -1546f, arg_0)))));
    let var_2 = Struct_1(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), var_0.zz, vec2<f32>(234f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), -917f, all(vec4<bool>(true, false, false, false))))));
    return var_2.a.x;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    global0 = vec4<f32>(global0.x, 690f, _wgslsmith_f_op_vec4_f32(func_3()).x, 1000f);
    let var_0 = !select(vec2<bool>(!arg_0, !select(false, arg_0, true)), vec2<bool>(!func_2(-1000f, vec2<f32>(global0.x, global0.x)), 4294967295u == u_input.c.x), false);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-910f, 397f, 1159f, 520f), vec4<f32>(-696f, global0.x, global0.x, -1699f))))));
    var var_1 = u_input.a.x;
    let var_2 = reverseBits(min(select(vec2<u32>(84438u, u_input.c.x) | vec2<u32>(1u, 1u), u_input.c.yx, vec2<bool>(all(var_0), var_0.x)), u_input.c.xz));
    return vec2<i32>(u_input.a.x, 30818i);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = vec2<i32>(u_input.a.x, -u_input.a.x);
    let var_1 = -1i;
    var_0 = min(~(-func_4(func_2(125f, global0.wy))), ~(~(-(u_input.a.yx << (u_input.c.xy % vec2<u32>(32u))))));
    var var_2 = -min(u_input.a, -firstLeadingBit(u_input.a)) | _wgslsmith_clamp_vec3_i32(max(max(vec3<i32>(var_0.x, var_1, 3827i), firstLeadingBit(vec3<i32>(-4125i, var_1, var_1))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_1, -24234i), u_input.a), u_input.a)), u_input.a, ~u_input.a);
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~min(arg_1 & arg_1, _wgslsmith_dot_vec2_u32(arg_2.xy, u_input.c.xx)), countOneBits(1u << (0u % 32u)), ~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 24925u))), ~(~(arg_2.x >> (arg_2.x % 32u)))), vec4<u32>(select(~_wgslsmith_add_u32(arg_0, u_input.b), _wgslsmith_div_u32(~arg_1, _wgslsmith_mod_u32(arg_0, 1u)), func_2(global0.x, global0.wy) & true), 55774u, ~_wgslsmith_mult_u32(9355u, 52428u), _wgslsmith_add_u32(countOneBits(~arg_0), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))));
    return 1u;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> bool {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f + -319f))) * global0.x), 387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(3108f + -448f))))), global0.x);
    var var_0 = arg_1 << (20552u % 32u);
    var var_1 = Struct_1(!arg_0.zz, u_input.c.xx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.zw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yw))))));
    var_1 = Struct_1(select(vec2<bool>(true, any(select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(true, false, var_1.a.x, true), arg_0.x))), vec2<bool>(true, !any(vec2<bool>(arg_0.x, true))), !(!(!arg_0.zx))), ~vec2<u32>(u_input.b, _wgslsmith_div_u32(~0u, firstLeadingBit(var_1.b.x))), global0.yx);
    let var_2 = Struct_1(vec2<bool>(!any(vec2<bool>(var_1.a.x, true)), all(!vec2<bool>(arg_0.x, false))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(~(~var_1.b), ~u_input.c.yy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(global0.x - var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1583f)));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(vec3<bool>(true, true, true), _wgslsmith_add_u32(abs(u_input.b), _wgslsmith_mod_u32(23571u, u_input.b)) | ((u_input.b & u_input.c.x) & func_1(21953u, u_input.b, vec3<u32>(54184u, 3027u, u_input.c.x), 645f))), false, true);
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.x)))))), global0.x, -314f, global0.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(508f, -615f, global0.x, 783f), vec4<f32>(-560f, global0.x, -1049f, global0.x), vec4<bool>(true, var_0, var_0, var_0))))))))), !vec4<bool>(any(vec4<bool>(var_0, var_0, var_0, var_0)), var_0, var_0, _wgslsmith_f_op_f32(ceil(217f)) >= global0.x)));
    let var_1 = ~func_4((_wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(-975f - global0.x)) & (global0.x < -249f)).x;
    var var_2 = 1366f;
    var var_3 = Struct_1(!select(!(!vec2<bool>(false, var_0)), !vec2<bool>(var_0, false), true), vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.c.x) << (u_input.c % vec3<u32>(32u)), vec3<u32>(u_input.c.x, u_input.b, u_input.b) >> (u_input.c % vec3<u32>(32u)))), func_1(u_input.c.x, u_input.b, ~(~vec3<u32>(u_input.b, u_input.b, 4294967295u)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(820f - global0.x), global0.x)), global0.x)));
    var var_4 = vec3<bool>(func_5(!select(!vec3<bool>(var_0, false, false), vec3<bool>(var_0, false, false), vec3<bool>(false, true, true)), var_3.b.x), var_0, any(!select(select(vec3<bool>(var_3.a.x, var_0, false), vec3<bool>(var_0, true, var_0), vec3<bool>(var_3.a.x, var_0, true)), select(vec3<bool>(var_3.a.x, true, false), vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_3.a.x, var_0)), vec3<bool>(var_0, var_0, var_3.a.x))));
    let var_5 = Struct_1(!var_3.a, abs(select(~var_3.b, _wgslsmith_sub_vec2_u32(~u_input.c.xz, ~vec2<u32>(var_3.b.x, 43070u)), true | func_5(vec3<bool>(var_4.x, var_3.a.x, false), u_input.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_3.c, vec2<f32>(582f, -158f))), global0.xw)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-186f, var_3.c.x) * vec2<f32>(-1000f, 1000f)))))));
    var var_6 = var_5;
    var var_7 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, ~_wgslsmith_mod_u32(abs(u_input.b), max(var_3.b.x, 122511u)), firstTrailingBit(var_6.b.x) >> (_wgslsmith_div_u32(34725u, var_6.b.x) % 32u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_3.b.x, var_3.b.x, u_input.b)), ~(~vec4<u32>(0u, var_3.b.x, 1159u, u_input.c.x)), (vec4<u32>(41373u, 4294967295u, 25487u, var_6.b.x) & vec4<u32>(4294967295u, var_6.b.x, 1u, var_6.b.x)) >> ((vec4<u32>(0u, 1u, 52172u, 36950u) & vec4<u32>(u_input.c.x, u_input.b, 35446u, u_input.c.x)) % vec4<u32>(32u))) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(21104u, 1u, 620u, var_5.b.x), vec4<u32>(var_3.b.x, var_6.b.x, 22285u, 41051u) >> (vec4<u32>(u_input.b, var_5.b.x, 6546u, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, var_3.b.x ^ 84378u, u_input.b << (36958u % 32u), func_1(1u, var_5.b.x, u_input.c, -444f)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_3.c, -(min(34523i, u_input.a.x) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 24726i), u_input.a.yx), u_input.a.x)));
}

