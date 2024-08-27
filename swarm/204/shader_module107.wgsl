struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    global0 = array<vec4<i32>, 2>();
    var var_0 = arg_0;
    let var_1 = ~firstLeadingBit(var_0.b.wx << (u_input.c.xx % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.c.yy, ~u_input.c.xz >> (vec2<u32>(u_input.c.x, u_input.d) % vec2<u32>(32u))), vec2<u32>(u_input.b, u_input.b >> (u_input.c.x % 32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), var_0.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-var_0.d.x))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) + _wgslsmith_f_op_f32(f32(-1f) * -881f)));
    var var_3 = 1u;
    return ~firstLeadingBit(~_wgslsmith_div_vec4_i32(~arg_0.b, vec4<i32>(1i, var_0.e, var_0.e, u_input.a)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(-1000f, -(~select(func_2(Struct_1(-1539f, vec4<i32>(2147483647i, -2147483647i, 0i, 11895i), 354f, vec3<f32>(431f, 660f, -270f), -18770i), -617f), ~global0[_wgslsmith_index_u32(arg_0.x, 2u)], !vec4<bool>(arg_1, arg_1, arg_1, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, 552f)), -916f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, -2076f, 363f)) + vec3<f32>(1f, 1f, 1f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1326f, 268f, 1000f)), vec3<f32>(1f, 1f, 1f)))), 12831i);
    var var_1 = var_0;
    var var_2 = arg_1;
    var var_3 = select(!(!(!select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, true, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1)))), select(select(select(select(vec4<bool>(true, arg_1, true, true), vec4<bool>(false, true, arg_1, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(arg_1, true, true, arg_1), false), !vec4<bool>(arg_1, arg_1, false, arg_1)), select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1), false), true), select(vec4<bool>(false, false, all(vec4<bool>(arg_1, true, true, false)), all(vec2<bool>(arg_1, arg_1))), select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), true), select(!vec4<bool>(arg_1, false, false, arg_1), !vec4<bool>(false, arg_1, arg_1, false), true)), select(vec4<bool>(arg_1 || arg_1, 19578u == arg_0.x, !arg_1, any(vec3<bool>(true, false, arg_1))), select(!vec4<bool>(false, arg_1, false, false), !vec4<bool>(arg_1, arg_1, false, false), select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), arg_1)), true)), arg_1);
    var_1 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(240f - arg_0.c))) + _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(ceil(537f))));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11941u, firstTrailingBit(234u), _wgslsmith_sub_u32(u_input.c.x, u_input.d)), select(vec4<u32>(u_input.c.x, 0u, u_input.b, 87084u) & vec4<u32>(4294967295u, u_input.c.x, u_input.b, u_input.d), ~vec4<u32>(u_input.b, 1u, u_input.c.x, 4294967295u), u_input.c.x >= u_input.c.x)), max(abs(u_input.c.x | 35003u), min(u_input.b << (u_input.b % 32u), u_input.d)), u_input.b & abs(20504u)), vec4<u32>(~(~max(u_input.d, u_input.b)), _wgslsmith_add_u32(~(~u_input.c.x), (u_input.c.x | u_input.b) & (u_input.b ^ 7543u)), 1u, _wgslsmith_mod_u32(~(~u_input.b), ~101277u)));
    var_1 = ~4294967295u;
    var_1 = 48216u;
    var var_2 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a * arg_0.d.x)))) - arg_0.c), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(1i), u_input.a) & u_input.a, (u_input.a | -2147483647i) << ((_wgslsmith_add_u32(u_input.c.x, u_input.d) >> (u_input.b % 32u)) % 32u), arg_0.b.x, select(-22462i, -51261i, any(select(arg_1, arg_1, true)))), arg_0.a, func_3(vec4<u32>(~(u_input.c.x & 1u), _wgslsmith_div_u32(min(85107u, u_input.b), u_input.b << (u_input.b % 32u)), u_input.b, select(~0u, 43053u, any(vec3<bool>(true, true, arg_1.x)))), true, select(global0[_wgslsmith_index_u32(select(~u_input.c.x, u_input.d, 23910i > arg_0.b.x), 2u)], arg_0.b, select(vec4<bool>(arg_1.x, arg_1.x, false, true), select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), !vec4<bool>(true, arg_1.x, true, false))), 0u).d, -2147483647i);
}

fn func_1() -> u32 {
    let var_0 = func_4(func_3(~(~(~vec4<u32>(0u, u_input.d, u_input.d, 4294967295u))), false, ~min(global0[_wgslsmith_index_u32(u_input.b, 2u)], func_2(Struct_1(1000f, vec4<i32>(u_input.a, 0i, 2147483647i, 1i), -634f, vec3<f32>(189f, -661f, 1000f), u_input.a), 1360f)), ~reverseBits(4294967295u) ^ max(u_input.c.x, 4294967295u)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, any(vec2<bool>(false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec3<bool>(false, false, true))), vec2<bool>(any(vec2<bool>(false, false)) | (38628u <= u_input.d), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -699f))) - -1215f));
    global0 = array<vec4<i32>, 2>();
    var var_1 = func_3(vec4<u32>(firstTrailingBit(4294967295u), u_input.b, u_input.b, ~(~8318u)), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), var_0.b, 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.d);
    global0 = array<vec4<i32>, 2>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(786f, -(firstTrailingBit(global0[_wgslsmith_index_u32(32595u, 2u)] | global0[_wgslsmith_index_u32(0u, 2u)]) >> (vec4<u32>(36828u, u_input.d, 28244u, func_1()) % vec4<u32>(32u))), -432f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-249f, -2679f, -1064f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2272f, -2954f, -411f)))))), ~_wgslsmith_add_i32(~(~(-764i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), ~(-1i))));
    let var_1 = vec2<bool>(select((4294967295u & ~u_input.c.x) < ~abs(4294967295u), false, true), true);
    var var_2 = all(!(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, true), var_1.x))) || all(vec3<bool>(_wgslsmith_f_op_f32(var_0.c + var_0.d.x) < _wgslsmith_f_op_f32(min(var_0.a, var_0.d.x)), !var_1.x & false, false));
    global0 = array<vec4<i32>, 2>();
    let var_3 = 36549u;
    var_2 = all(vec2<bool>(true, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), u_input.c.yy ^ firstTrailingBit(~vec2<u32>(var_3, 38977u))), vec3<i32>(u_input.a & ~(-31546i), _wgslsmith_div_i32(-u_input.a, select(~u_input.a, 0i, false)), func_4(Struct_1(var_0.a, vec4<i32>(-53593i, var_0.e, var_0.b.x, var_0.b.x), func_4(Struct_1(641f, vec4<i32>(u_input.a, u_input.a, 2147483647i, var_0.e), var_0.d.x, vec3<f32>(var_0.c, var_0.c, -778f), -58805i), var_1, var_0.a).a, var_0.d, 2147483647i), !var_1, _wgslsmith_f_op_f32(sign(-704f))).e), _wgslsmith_f_op_f32(sign(603f)));
}

