struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = ~0i;
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.c.x, var_0) ^ _wgslsmith_dot_vec3_i32(arg_0, _wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(var_0, -22196i, arg_0.x) << (u_input.a % vec3<u32>(32u)))));
    var var_2 = Struct_1(true, _wgslsmith_clamp_u32(~firstTrailingBit(11620u), u_input.b.x, 4294967295u) >> (26869u % 32u), var_1.x);
    var var_3 = 1u;
    var_3 = ~min(0u, _wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(7526u, u_input.e), false) ^ u_input.b, vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(46845u, var_2.b))));
    return 24478i;
}

fn func_3() -> vec4<bool> {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, all(vec3<bool>(true, true, true)))), true);
    let var_1 = Struct_1(!var_0.x, u_input.a.x, u_input.c.x);
    let var_2 = min(vec2<u32>(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(var_1.b, 25998u)) & 88730u, 1u), vec2<u32>(~var_1.b, var_1.b) ^ (u_input.b | vec2<u32>(u_input.e, ~72894u)));
    let var_3 = abs(28985u);
    var var_4 = var_1;
    return select(!(!vec4<bool>(true, all(var_0.zz), all(vec4<bool>(true, false, false, var_4.a)), !var_0.x)), vec4<bool>(var_0.x, true, false, !(any(vec4<bool>(var_1.a, var_0.x, true, var_4.a)) && select(var_0.x, var_1.a, true))), true);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> bool {
    var var_0 = (i32(-1i) * -func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(25820i, 3356i, 5891i), vec3<i32>(u_input.c.x, -1i, u_input.c.x)))) | 26073i;
    var_0 = _wgslsmith_add_i32(u_input.c.x, 1i);
    let var_1 = select(!(!(!func_3())), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, false)), false, u_input.c.x <= ~(u_input.c.x << (u_input.b.x % 32u))), !all(vec3<bool>(all(vec2<bool>(false, false)), func_3().x, true)));
    var_0 = u_input.c.x;
    var var_2 = Struct_1(false, 1u, u_input.c.x);
    return !(var_2.a || func_3().x) | !var_1.x;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(405f));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(516f, 523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 702f, var_0), vec3<f32>(-672f, -1399f, var_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, 445f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 703f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(-626f, var_0, -2288f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, var_0, 444f)))))));
    let var_2 = vec4<f32>(-104f, _wgslsmith_f_op_f32(-175f - _wgslsmith_f_op_f32(round(-133f))), _wgslsmith_f_op_f32(-933f - _wgslsmith_f_op_f32(f32(-1f) * -434f)), 1202f);
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_2.wyx);
    var var_4 = u_input.d;
    return Struct_1(abs(0u) != _wgslsmith_add_u32(~u_input.d, (u_input.e >> (0u % 32u)) | ~u_input.a.x), u_input.a.x, 0i & func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -26770i, u_input.c.x) ^ vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), -vec3<i32>(-17188i, u_input.c.x, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1167f)) * -1192f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f)), all(vec4<bool>(true, false, true, false)), true, !func_1(vec3<f32>(497f, 117f, 186f), _wgslsmith_f_op_f32(select(-323f, -148f, true)))));
    var_0 = func_4(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), false), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), true)));
    let var_1 = Struct_1(false, firstLeadingBit(u_input.e & 54712u), var_0.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-614f, -105f) + vec2<f32>(781f, -906f)), vec2<f32>(-636f, 1589f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), 1663f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(742f, 306f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1399f, -201f)))))));
    var_0 = func_4(vec4<bool>(-countOneBits(var_1.c) == -(i32(-1i) * -33388i), var_0.a, all(vec3<bool>(true, var_1.a, all(vec3<bool>(var_0.a, var_1.a, var_1.a)))), false));
    var_0 = var_1;
    var var_3 = var_0.c;
    var_0 = func_4(!(!select(vec4<bool>(true, false, true, var_1.a), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_1.a, true, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-790f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(175f * -606f))) - -1000f))), -var_1.c, 1u, -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 11000i, -2147483647i), vec3<i32>(u_input.c.x, 2147483647i, var_0.c), vec3<i32>(var_1.c, 1i, u_input.c.x))));
}

