struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, -1431f, 936f, 774f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-281f, 1973f, 238f, 457f))))))));
    var var_1 = ~72368u;
    let var_2 = u_input.b.x;
    var var_3 = vec3<bool>(true, true, select(!any(vec3<bool>(true, true, true)), false, false));
    let var_4 = ~(~(~vec3<i32>(var_2, 1i, -var_2)));
    return firstLeadingBit(vec4<u32>(~max(_wgslsmith_mult_u32(0u, 0u), abs(0u)), firstTrailingBit(4294967295u), 1u, ~(~(~53262u))));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~38446u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(13168u, 60195u, 9254u, 12459u), vec4<u32>(65831u, 0u, 0u, 4294967295u)), ~4294967295u), vec4<u32>(~23182u, 66737u, countOneBits(4294967295u), 74626u)) | firstLeadingBit(abs(~(~vec4<u32>(0u, 4294967295u, 1u, 1u))));
    var_0 = min(~func_3(), vec4<u32>(22358u, _wgslsmith_dot_vec3_u32(select(abs(var_0.zyy), var_0.zyx >> (vec3<u32>(var_0.x, 4294967295u, 4294967295u) % vec3<u32>(32u)), true), ~(~vec3<u32>(53514u, 62565u, 0u))), countOneBits(select(var_0.x, ~56476u, true)), _wgslsmith_add_u32(~4294967295u & var_0.x, var_0.x)));
    let var_1 = Struct_3(select(vec3<bool>(true, false, ~var_0.x <= min(var_0.x, var_0.x)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), !vec3<bool>(true, true, any(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f - -1047f))))), (i32(-1i) * -abs(1i)) << (_wgslsmith_div_u32(abs(~var_0.x), var_0.x) % 32u), Struct_1(select(vec4<bool>(select(true, false, false), true, u_input.a == 2147483647i, true), vec4<bool>(select(true, false, false), false, true, false), vec4<bool>(true, true, true, any(vec3<bool>(false, false, false)))), -1492f, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1045f, -494f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1363f))), Struct_1(vec4<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), true), _wgslsmith_div_f32(448f, -2312f), select(vec2<bool>(true, var_0.x > 4294967295u), vec2<bool>(false, any(vec3<bool>(false, false, false))), all(vec2<bool>(true, true))), -378f));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) - _wgslsmith_f_op_f32(f32(-1f) * -1981f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.b - var_1.e.d), _wgslsmith_f_op_f32(var_1.b + var_1.d.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d.d))), _wgslsmith_f_op_f32(step(var_1.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.d))))));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, ~var_0.x, _wgslsmith_mult_u32(21329u << (var_0.x % 32u), 86725u)), _wgslsmith_clamp_vec3_u32(var_0.zxz, min(var_0.wyy, vec3<u32>(var_0.x, var_0.x, 0u)), vec3<u32>(100343u, 4294967295u, 48144u)) ^ var_0.xzx) > var_0.x;
    return ~1u;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_4(~0u, vec4<u32>(~1u, 0u, 1u, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(85543u, 1u), 4294967295u >> (0u % 32u))), 0u, vec4<u32>(~countOneBits(abs(17071u)), ~(~abs(7913u)), (1u >> (abs(0u) % 32u)) & _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 67732u, 4294967295u, 4557u), vec4<u32>(1u, 1u, 0u, 0u)), ~1u), ~(~(~4294967295u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1203f, 1220f, -1006f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(182f, 1945f, -2268f) - vec3<f32>(455f, -1231f, -1000f)))) * vec3<f32>(-831f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-320f + -1669f), -947f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(560f + -1000f))))));
    var var_2 = select(vec4<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), true, false, true), !vec4<bool>((var_1.x <= var_1.x) & true, all(vec3<bool>(true, false, false)), true, (var_0.b.x | 4294967295u) >= func_2(u_input.b.x)), vec4<bool>(false, (-17206i > (u_input.c.x & -2147483647i)) | true, false, any(vec2<bool>(false, true))));
    var var_3 = vec2<f32>(var_1.x, 2379f);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, -1573f), vec2<f32>(1501f, 445f))) - _wgslsmith_f_op_vec2_f32(-var_1.zy)))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.x, var_3.x))), -1129f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(-var_1.yx))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy + vec2<f32>(-766f, -1427f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_1.xx)), _wgslsmith_f_op_vec2_f32(max(var_1.yz, var_1.yx)), !var_2.x)), vec2<bool>(true, true)))));
    return Struct_4(_wgslsmith_clamp_u32(~(~var_0.d.x), _wgslsmith_dot_vec4_u32(~var_0.d, ~vec4<u32>(var_0.b.x, 2006u, var_0.b.x, 0u)), 4294967295u) >> (func_3().x % 32u), vec4<u32>(var_0.c, ~abs(_wgslsmith_sub_u32(var_0.a, 4294967295u)), var_0.a, max(_wgslsmith_mult_u32(var_0.d.x, 66469u), 1u)), min(48885u, var_0.a), vec4<u32>(4294967295u, _wgslsmith_mult_u32(max(var_0.a, var_0.c), reverseBits(countOneBits(var_0.b.x))), var_0.b.x, ~10590u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(~56349u, func_1().d, _wgslsmith_add_u32(var_0.d.x, _wgslsmith_div_u32(max(var_0.a | 24818u, 1u), _wgslsmith_div_u32(func_2(u_input.b.x), var_0.b.x))), _wgslsmith_mult_vec4_u32(var_0.d, var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1535f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -187f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(523f, -1000f) * _wgslsmith_f_op_f32(step(1112f, 487f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(299f + 815f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-297f, -1131f, 324f, -932f), vec4<f32>(-2311f, 1581f, 248f, -942f), vec4<bool>(false, false, true, true)))))), abs(u_input.b.yzy));
}

