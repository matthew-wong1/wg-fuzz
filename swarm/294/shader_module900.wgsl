struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = !select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), all(vec2<bool>(false, true)), true, true), vec4<bool>(true, firstTrailingBit(u_input.a.x) != _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), !any(vec3<bool>(true, true, false)), false), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1306f, _wgslsmith_f_op_f32(-719f - -249f))))), 3196f, -664f, -1264f);
    var_0 = !(!(!select(vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), true), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), false))));
    var var_2 = Struct_1(var_0.x, var_0.wwy, select(!select(!vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x), all(var_0.wz)), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), true));
    var var_3 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), ~vec2<u32>(1u, u_input.a.x >> (64642u % 32u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(u_input.a.zw), u_input.a.xw), vec2<u32>(~1u, 59232u))));
    return select(select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_2.b.x), vec4<bool>(var_2.b.x, false, var_2.c.x, false), var_2.c)), !select(vec4<bool>(true, var_0.x, var_2.b.x, var_2.c.x), vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.a), var_2.a), var_2.c), var_2.c, !var_0.x);
}

fn func_2() -> vec3<f32> {
    let var_0 = ~((vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), _wgslsmith_dot_vec3_u32(u_input.a.zzw, u_input.a.zwy), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 4668u) >> (vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, countOneBits(u_input.a.x)) % vec4<u32>(32u))) ^ u_input.a);
    let var_1 = vec2<i32>(-12983i, min(_wgslsmith_sub_i32(~2147483647i << (firstTrailingBit(32334u) % 32u), 1i), _wgslsmith_dot_vec2_i32(~(vec2<i32>(1i, -67348i) << (var_0.zy % vec2<u32>(32u))), -(~vec2<i32>(0i, -14745i)))));
    var var_2 = Struct_1(true, vec3<bool>(true, true, true), select(func_3(u_input.a.x), select(vec4<bool>(true, false, all(vec4<bool>(false, true, false, true)), any(vec4<bool>(false, true, true, true))), func_3(abs(35073u)), true), false));
    var var_3 = Struct_1(any(vec3<bool>(var_2.c.x, !var_2.b.x, !var_2.c.x || (var_2.b.x | true))), var_2.b, !(!(!select(vec4<bool>(var_2.b.x, var_2.a, var_2.a, var_2.a), vec4<bool>(true, var_2.c.x, var_2.c.x, var_2.a), var_2.a))));
    let var_4 = Struct_1(true, vec3<bool>(true, true, !any(var_2.c.zyz)), vec4<bool>(select(select(true, false, any(vec2<bool>(false, var_3.c.x))), all(var_2.c.xx) != true, _wgslsmith_sub_u32(var_0.x, 49209u) == 52748u), select(func_3(var_0.x).x, all(var_3.b.yz), var_2.a) && func_3(u_input.a.x).x, true, var_2.b.x));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-346f, -394f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -638f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(683f, 979f))))));
}

fn func_4(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(1423f, 735f));
    var var_2 = arg_0.x;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + var_1);
    var var_3 = abs(~14708u);
    return u_input.a.wyw;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, _wgslsmith_add_i32(1i, min(-43593i, -62315i)))), vec2<i32>(-_wgslsmith_add_i32(~(-1i), abs(-2147483647i)), ~select(abs(-2147483647i), -2147483647i, arg_0.b.x)));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2()))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(337f)) * _wgslsmith_div_f32(563f, -738f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-139f, 711f) * vec2<f32>(407f, 2355f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(119f, 1979f))), _wgslsmith_f_op_vec3_f32(func_2()).yz))));
    var var_3 = Struct_1(select(!any(!vec4<bool>(false, true, arg_0.b.x, arg_0.b.x)), arg_0.a, (var_0.x << (var_1.x % 32u)) >= -var_0.x), vec3<bool>(!(all(arg_0.c.yyz) | !arg_0.b.x), true, !all(!arg_0.c.yxw)), select(arg_0.c, !arg_0.c, !arg_0.c));
    var var_4 = Struct_1(all(arg_0.c), !vec3<bool>(all(vec3<bool>(var_3.b.x, arg_0.b.x, var_3.b.x)), any(vec3<bool>(var_3.c.x, false, true)) || var_3.c.x, var_3.c.x), arg_0.c);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(778f, 2014f), _wgslsmith_f_op_f32(min(var_2.x, 298f))))))), _wgslsmith_f_op_f32(trunc(-641f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(188f * 1f))), _wgslsmith_f_op_f32(func_1(Struct_1(all(vec4<bool>(true, false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true)))), true));
    var_0 = _wgslsmith_f_op_vec3_f32(func_2()).x;
    let var_1 = true && !all(vec3<bool>(true, true, true));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1120f))))) + -467f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-149f, 1000f), vec2<f32>(827f, -718f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(632f, -1000f) + vec2<f32>(-1333f, 342f)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(286f - var_2.x))))) - var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x));
}

