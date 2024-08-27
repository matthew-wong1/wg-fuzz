struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: bool = false;

var<private> global3: array<vec2<f32>, 4>;

var<private> global4: array<u32, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = true;
    var var_1 = any(!vec4<bool>(false, all(vec2<bool>(true, var_0)), true, !any(vec3<bool>(var_0, true, false))));
    let var_2 = Struct_1(all(vec4<bool>(arg_0 != -614f, var_0 != !var_0, true, true)), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.c.zzw, u_input.c.xwx), vec3<i32>(u_input.c.x, u_input.b & -1i, reverseBits(0i))));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(-779f, arg_0), 1f);
    var var_4 = Struct_1(true, u_input.c.x);
    return u_input.d;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<bool>(~20024i <= arg_0.a.x, true, !all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)));
    var var_1 = u_input.a;
    var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 53276u, ~40383u, 19719u), ~func_3(-1876f));
    var var_2 = countOneBits(u_input.a.x);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(_wgslsmith_f_op_f32(round(870f))).wyy, ~(~select(select(vec3<u32>(4294967295u, 0u, 20906u), var_1.wxz, vec3<bool>(false, true, false)), vec3<u32>(var_1.x, u_input.a.x, 17366u), var_1.x > 78401u))), 5u)];
    return Struct_2(u_input.c.yyy);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = func_2(Struct_2(u_input.c.wxz), _wgslsmith_f_op_f32(f32(-1f) * -102f));
    let var_1 = u_input.d.x;
    global1 = array<Struct_2, 11>();
    global2 = arg_0.a;
    let var_2 = select(!vec3<bool>(false && any(vec4<bool>(true, arg_1, arg_1, arg_1)), false, true), vec3<bool>(true, false, all(vec4<bool>(true, false, true, true))), !(!all(vec2<bool>(arg_1, arg_1))));
    return select(vec4<bool>(any(!select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), arg_1)), true, all(vec3<bool>(arg_0.a, true, true)), any(select(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(true, arg_0.a, true, arg_1), arg_0.a), !vec4<bool>(arg_1, false, false, false), select(false, arg_0.a, false)))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, arg_0.a, false, false), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), var_2.x), select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(false, false, var_2.x, arg_0.a), false), true), any(vec4<bool>(arg_0.a, arg_1, true, arg_0.a))), any(!var_2));
}

fn func_4(arg_0: bool) -> Struct_2 {
    var var_0 = vec4<u32>(105493u & global4[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.d.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(45260u, global4[_wgslsmith_index_u32(10931u, 30u)], u_input.a.x), vec3<u32>(u_input.a.x & 0u, global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(20872u, u_input.a.x)), 30u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d.x, u_input.d.x << (9470u % 32u)), 30u)])));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(select(-1i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x), true), (26603i << (u_input.a.x % 32u)) ^ -11432i), vec2<i32>(~2664i, -5426i)));
    var var_2 = vec3<f32>(-2179f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-840f * _wgslsmith_f_op_f32(378f - -1999f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1006f * 819f)))) + _wgslsmith_f_op_f32(trunc(-166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = Struct_1(arg_0, u_input.b);
    var var_4 = !(!vec4<bool>(select(select(var_3.a, var_3.a, false), false, any(vec2<bool>(var_3.a, true))), var_3.a, false, select(false, var_3.a, false) && (var_2.x == 1142f)));
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(37366u, u_input.a.x, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(firstTrailingBit(90188u), 30u)], global4[_wgslsmith_index_u32(87167u, 30u)] << (42340u % 32u))), 5u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> StorageBuffer {
    let var_0 = Struct_1(any(func_1(Struct_1(true, 10524i), true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_2, 206f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, arg_2, 253f, arg_2) + vec4<f32>(arg_2, -202f, -657f, -1578f)))))), u_input.c.x);
    global3 = array<vec2<f32>, 4>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f - arg_2))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.x, 421f))), _wgslsmith_f_op_f32(f32(-1f) * -1208f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, 276f, -2448f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, var_1.x, -2260f))))) * arg_0) - vec3<f32>(arg_2, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(380f * _wgslsmith_div_f32(arg_0.x, 1000f))))));
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(firstTrailingBit(global4[_wgslsmith_index_u32(0u, 30u)] | u_input.d.x), _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(u_input.a.x, 30u)], 36439u))), 5u)];
    return StorageBuffer(vec3<i32>(69370i, -arg_1.a.x, -(~(u_input.c.x ^ 18413i))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), false);
    global0 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1265f))))), _wgslsmith_f_op_f32(-125f * _wgslsmith_f_op_f32(f32(-1f) * -1190f)), (firstLeadingBit(-u_input.c.x) <= u_input.b) || all(var_0.yy)));
    global2 = true;
    var var_2 = u_input.c.yww;
    let var_3 = vec3<u32>(53076u, reverseBits(37101u | ~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)])), 1u);
    var var_4 = false;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-913f * 889f) - _wgslsmith_f_op_f32(min(961f, -413f))), -218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2532f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(943f, -1387f, 1331f))))), func_4(all(func_1(Struct_1(var_0.x, u_input.b), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1352f, 1000f, -433f, 1712f) + vec4<f32>(-168f, -1083f, 758f, -343f))))), 859f);
}

