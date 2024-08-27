struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(48765u, -1i), Struct_2(1u, i32(-2147483648)), Struct_2(0u, -15503i), Struct_2(0u, -22785i), Struct_2(4294967295u, 0i), Struct_2(12505u, 0i), Struct_2(32927u, 34653i));

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(arg_3), 1u), 7u)];
    let var_2 = arg_1;
    global0 = array<Struct_2, 7>();
    var var_3 = var_2.b;
    return vec4<u32>(~_wgslsmith_dot_vec2_u32(var_2.a.zz, vec2<u32>(4294967295u, u_input.a.x)), arg_1.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.e, var_0.x >> (u_input.a.x % 32u)) | _wgslsmith_add_u32(24189u, arg_0 & 38131u), 105086u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(97123u, 5072u))), ~(~u_input.a)), ~(~(arg_1.a.x & 32694u)), _wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, arg_0, arg_0), vec4<u32>(arg_3, 1u, 1u, u_input.a.x)), 1791u), countOneBits(arg_0 | var_1.a))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(13350u << (_wgslsmith_add_u32(arg_0.x, 17666u) % 32u), arg_0.x, 1u), -(~(-(~(-1i)))));
    var var_1 = global1[_wgslsmith_index_u32(select(3054u, abs(abs(33878u)), !any(vec4<bool>(-1094f != arg_1.x, false, true, any(vec4<bool>(false, true, false, true))))), 3u)];
    return Struct_1(~(abs(arg_0) & func_3(u_input.a.x, Struct_1(vec4<u32>(arg_0.x, 90921u, 22444u, var_1.a), false, vec3<f32>(-1000f, arg_1.x, 506f), 210f, 22155u), var_0.b, abs(var_1.a))), (firstLeadingBit(-var_1.b) != var_0.b) | !(!select(false, true, true)), arg_1.wyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, -1004f))))), _wgslsmith_dot_vec3_u32(~arg_0.wxz | arg_0.yxz, select(select(vec3<u32>(4294967295u, var_0.a, 1u), arg_0.zyz, any(vec3<bool>(true, true, true))), ~arg_0.zxw, select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f)))));
    var_0 = arg_0.c.x;
    var var_1 = arg_0.c.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1.c - vec3<f32>(arg_0.c.x, arg_1.d, arg_0.d)))))));
    global0 = array<Struct_2, 7>();
    return _wgslsmith_add_u32(arg_0.a.x, reverseBits(max(1u, _wgslsmith_mult_u32(~4294967295u, abs(arg_0.a.x)))));
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_2, 3>();
    var var_0 = Struct_1(~vec4<u32>(1u, 1u, firstTrailingBit(min(0u, 96779u)), ~1u | u_input.a.x), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(589f - _wgslsmith_f_op_f32(ceil(1655f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(602f, 1582f)))))), ~func_4(func_2(vec4<u32>(u_input.a.x, 47353u, u_input.a.x, u_input.a.x) << (vec4<u32>(14690u, 28115u, 12773u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, 1871f, 1725f, 1031f))), Struct_1(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, 0u, u_input.a.x), false), true, vec3<f32>(-536f, 499f, 1814f), _wgslsmith_f_op_f32(floor(-227f)), ~u_input.a.x), false));
    var var_1 = select(!all(!select(vec2<bool>(true, true), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b))), any(select(select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, true), vec2<bool>(var_0.b, false), var_0.b)), vec2<bool>(any(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), !var_0.b), vec2<bool>(true, true))), false);
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a.x, u_input.a.x, var_0.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, func_3(66063u, Struct_1(vec4<u32>(u_input.a.x, var_0.e, 29608u, u_input.a.x), var_0.b, var_0.c, 1386f, var_0.e), 1i, 4294967295u).x, _wgslsmith_div_u32(5185u, var_0.a.x), ~u_input.a.x)), func_2(vec4<u32>(u_input.a.x << (1u % 32u), 1u, func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(57372u, 34359u, u_input.a.x, var_0.a.x), vec4<u32>(1u, u_input.a.x, 15001u, var_0.e)), func_2(var_0.a, vec4<f32>(var_0.c.x, -2739f, -1184f, -948f)), 1i, var_0.a.x).x, (var_0.e << (var_0.e % 32u)) | ~var_0.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.d, var_0.d, -1000f) * vec4<f32>(var_0.d, var_0.d, var_0.d, -404f)), vec4<f32>(-969f, var_0.c.x, -261f, -336f))))).e), 7u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = all(arg_1.zwz);
    var_0 = !(!(!select(arg_1.x != arg_1.x, false, true)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2179f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) + _wgslsmith_f_op_f32(f32(-1f) * -374f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(216f, -735f, true))))));
    global1 = array<Struct_2, 3>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(328f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-781f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 3>();
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_1(), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true))));
    global1 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x * var_0.x));
}

