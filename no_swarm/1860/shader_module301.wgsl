struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(select(~u_input.b, 22252u, !any(vec3<bool>(false, true, true))), arg_0), max(0u, ~40897u), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0 >> (~arg_0 % 32u), 34613u), 0u));
    let var_1 = 40239u;
    var var_2 = reverseBits(~vec2<i32>(abs(~arg_2.a), 8724i));
    var var_3 = -vec4<i32>(22855i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -6657i, u_input.e)), ~u_input.a), u_input.a), ~(~(~arg_1.a)), -(~reverseBits(arg_2.a)));
    global0 = u_input.d != ((_wgslsmith_dot_vec2_u32(vec2<u32>(5061u, 4294967295u), vec2<u32>(4294967295u, 0u)) >> (18122u % 32u)) >> (min(10291u, firstTrailingBit(14781u) ^ 0u) % 32u));
    return -2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec4<u32> {
    global0 = false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1777f, -220f)))) > -103f);
    global0 = 2147483647i == func_3(_wgslsmith_mod_u32(~29875u, 1u), Struct_1(_wgslsmith_sub_i32(-1i, -2147483647i)), Struct_1(_wgslsmith_mod_i32(0i, 2147483647i)));
    var var_0 = arg_3.yz;
    let var_1 = !vec2<bool>(all(vec2<bool>(arg_1.x, select(true, arg_1.x, arg_1.x))), true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1213f - -747f), _wgslsmith_f_op_f32(-1556f + 416f))) * -751f))));
    return reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(~1u, ~arg_0.a, _wgslsmith_div_u32(u_input.d, 0u), arg_2.x), arg_2));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    global1 = array<vec2<bool>, 15>();
    let var_0 = firstTrailingBit(_wgslsmith_div_vec4_u32(func_2(Struct_2(1u, arg_1, u_input.c), vec4<bool>(true, true, true, true), ~vec4<u32>(arg_1, 7646u, 77372u, arg_1), firstLeadingBit(vec3<i32>(-14562i, -1i, arg_0))), firstLeadingBit(~vec4<u32>(arg_3.c, u_input.d, u_input.c, arg_1))) & ~(~(~vec4<u32>(46049u, u_input.b, arg_1, u_input.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-447f, -1016f, 493f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1356f, -1246f, 775f) + vec3<f32>(-865f, 1000f, 1062f)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(291f + -1233f), _wgslsmith_f_op_f32(326f + 2077f), -619f)))));
    global2 = 326f;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-1438f - var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 756f))), var_1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(211f, var_1.x, var_1.x, -124f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 2055f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -1000f, -815f), vec4<f32>(1207f, var_1.x, -1393f, var_1.x), false))))));
    return vec4<bool>(any(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), !all(vec4<bool>(all(global1[_wgslsmith_index_u32(u_input.c, 15u)]), true, any(vec3<bool>(true, false, true)), var_2.x == var_2.x)), true & (var_0.x <= ~33368u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global2 = -1280f;
    global0 = !all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), func_1(u_input.a.x, u_input.d, -1i, Struct_2(0u, u_input.c, u_input.b)), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)));
    global1 = array<vec2<bool>, 15>();
    let var_0 = func_1(~(~(-(~(-2147483647i)))), (6732u << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u)) >> ((16193u | _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, 10566u, 44684u, u_input.d), vec4<u32>(u_input.b, 91803u, u_input.d, u_input.b), true), vec4<u32>(46344u, 126700u, u_input.d, u_input.c))) % 32u), 2147483647i, Struct_2(~_wgslsmith_clamp_u32(9281u, 22290u, 1u), 0u, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-14851i, u_input.a.x, 2147483647i, 45365i), vec4<i32>(1581i, u_input.a.x, u_input.a.x, 34558i), vec4<i32>(u_input.e, -24778i, 0i, u_input.e)) >> (~vec4<u32>(94251u, 1u, 0u, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1204f, 2361f))))))), u_input.a >> (vec3<u32>(u_input.b & u_input.c, 20442u, 2101u) % vec3<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(54530u, ~_wgslsmith_add_u32(u_input.c, u_input.d), 0u), u_input.d), -vec4<i32>(-12906i, -20902i, u_input.e, _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(u_input.e, u_input.e, u_input.a.x))));
}

