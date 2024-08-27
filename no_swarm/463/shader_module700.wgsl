struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec3<i32> = vec3<i32>(-15496i, 1i, -95i);

var<private> global3: i32 = 32094i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = !(!vec4<bool>(true, false, all(vec2<bool>(false, true)), !all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 23u)], true, false, false))));
    global2 = vec3<i32>(arg_0.x, 0i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, global2.x, -2147483647i, u_input.b.x)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(32160u, arg_2.x, arg_2.x, arg_2.x), ~vec4<u32>(arg_2.x, 4294967295u, u_input.e, 1u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(reverseBits(8570i), -42114i), 1i, _wgslsmith_mod_i32(global2.x, 4698i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(5165i, u_input.b.x, u_input.c)), u_input.b.xzy))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_3.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1649f * _wgslsmith_f_op_f32(var_1.d.x + -300f))), _wgslsmith_f_op_f32(max(-2450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x)))), 150f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1136f, 1715f), -182f, _wgslsmith_f_op_f32(355f + arg_1.c), -154f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), -927f, _wgslsmith_div_f32(702f, -894f), _wgslsmith_f_op_f32(-arg_1.d.x))))));
    var var_3 = firstLeadingBit(firstLeadingBit(~vec3<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0.x), min(u_input.b.x, -2147483647i), ~u_input.b.x)));
    return -1400f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    global1 = !vec3<bool>(true, any(!select(vec3<bool>(false, false, arg_1.e), vec3<bool>(global1.x, global1.x, false), false)), all(!vec2<bool>(false, arg_0.a.x)));
    global2 = select(~u_input.b.yyz, u_input.b.wzz, !vec3<bool>(any(vec3<bool>(false, true, global1.x)), !(!arg_1.e), global1.x));
    global0 = array<bool, 23>();
    let var_0 = Struct_1(select(!(!(!arg_1.a)), global1.xy, all(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(44793u, 23u)], false)))), all(select(!vec3<bool>(global1.x, false, global1.x), !(!vec3<bool>(false, false, arg_0.e)), arg_0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - -165f)), _wgslsmith_div_f32(1000f, arg_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), -122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))), any(!vec4<bool>(all(arg_1.a), arg_0.b || true, all(vec4<bool>(true, arg_0.e, true, false)), true)));
    var var_1 = vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(reverseBits(u_input.b.xz), var_0, min(vec2<u32>(1u, 4294967295u), vec2<u32>(30380u, 4294967295u)), Struct_1(vec2<bool>(true, arg_0.e), arg_0.a.x, 1175f, vec2<f32>(-482f, arg_0.d.x), arg_0.a.x)))))));
    return _wgslsmith_div_u32(~arg_2.x, ~(~(max(15102u, arg_2.x) | 1u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global2.yy;
    global2 = ~(~(u_input.b.zzz & reverseBits(u_input.b.ywx)) >> (u_input.d % vec3<u32>(32u)));
    var_0 = abs(vec2<i32>(var_0.x, ~global2.x));
    global3 = 35901i;
    var_0 = _wgslsmith_add_vec2_i32(reverseBits(-(~global2.zx) & reverseBits(vec2<i32>(var_0.x, -2147483647i))), vec2<i32>(var_0.x, _wgslsmith_clamp_i32(-(~(-2147483647i)), var_0.x, 1740i >> (func_2(Struct_1(vec2<bool>(false, false), arg_0, 803f, vec2<f32>(-229f, 1705f), true), Struct_1(vec2<bool>(false, false), global1.x, 246f, vec2<f32>(1261f, -1450f), global1.x), vec3<u32>(u_input.e, u_input.e, 80833u)) % 32u))));
    return Struct_1(select(global1.xz, vec2<bool>(true, !(global1.x == arg_0)), true), true && (~u_input.a <= u_input.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(207f, 1931f)))), 1261f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1225f, -560f)) * 574f) + -460f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(488f * 2114f), -167f)) - _wgslsmith_f_op_f32(759f - 675f))), global0[_wgslsmith_index_u32(39171u, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(32964u, 23u)]);
    let var_1 = -458f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_1(false).c)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -187f, var_0.c, var_1)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_1, var_1, 213f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, 111f, var_1, var_1) - vec4<f32>(var_0.c, 315f, 2482f, -776f))), !vec4<bool>(var_0.b, false, true, true))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-552f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + -1958f) * 1818f)), _wgslsmith_f_op_f32(select(1107f, -1000f, !global1.x)), -685f), -1i, _wgslsmith_sub_vec3_u32(min(_wgslsmith_div_vec3_u32(u_input.d, ~u_input.d), vec3<u32>(23977u, ~u_input.e, 1u)), max(max(vec3<u32>(23077u, u_input.e, u_input.d.x), abs(u_input.d)), u_input.d)));
}

