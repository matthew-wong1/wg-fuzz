struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(1u, 6403u, 4347u, 1u), vec4<u32>(63870u, 4294967295u, 4050u, 55541u), vec4<u32>(0u, 55610u, 1u, 4294967295u), vec4<u32>(52800u, 1686u, 12846u, 1u), vec4<u32>(77169u, 0u, 49228u, 4294967295u), vec4<u32>(20241u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 11575u, 4294967295u, 0u), vec4<u32>(26445u, 1u, 14473u, 43458u), vec4<u32>(81975u, 1u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4294967295u, 5887u), vec4<u32>(1u, 96136u, 4294967295u, 1u), vec4<u32>(82503u, 1u, 13154u, 23740u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_1(select(_wgslsmith_div_vec2_u32(~u_input.a.yy, vec2<u32>(u_input.a.x, ~0u)), vec2<u32>(u_input.a.x, abs(~u_input.a.x)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), u_input.a.x < 47728u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(-arg_0.x), 1000f), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(68338u, u_input.a.x), u_input.a.x), u_input.a.x) & (u_input.a.yz ^ abs(_wgslsmith_clamp_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 0u)))), select(vec2<bool>(arg_1, true), vec2<bool>(true, any(vec3<bool>(arg_1, arg_1, false))), select(select(!vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)), arg_1), !vec2<bool>(arg_1, arg_1), !(!vec2<bool>(arg_1, false)))), arg_1);
    var var_1 = Struct_1(var_0.a, vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -321f)), arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(-1042f, _wgslsmith_f_op_f32(-230f + var_0.b.x)), !var_0.d.x))), _wgslsmith_add_vec2_u32(u_input.a.wz, abs(vec2<u32>(u_input.a.x, ~56337u))), select(select(vec2<bool>(all(vec3<bool>(true, true, var_0.e)), arg_1), var_0.d, true), var_0.d, any(!vec2<bool>(arg_1, var_0.e))), true);
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(~u_input.a.x, var_0.a.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, u_input.a.x, var_0.a.x), ~vec3<u32>(u_input.a.x, 19394u, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(855f * 1260f), _wgslsmith_f_op_f32(f32(-1f) * -2161f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f * arg_0.x) - -1658f)), _wgslsmith_f_op_vec3_f32(select(arg_0.xyw, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), select(vec3<bool>(true, arg_1, true), select(vec3<bool>(var_0.e, arg_1, var_0.d.x), vec3<bool>(false, var_0.d.x, true), true), vec3<bool>(false, arg_1, arg_1)))), true)), vec2<u32>(32403u, u_input.a.x), var_1.d, arg_1);
    let var_3 = var_2;
    var var_4 = ~abs(countOneBits(~45363u) << (var_3.a.x % 32u));
    return vec3<bool>(!any(var_3.d), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 887f) + _wgslsmith_f_op_f32(ceil(arg_0.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.x)))), any(vec3<bool>(var_0.e || var_1.d.x, -865f >= _wgslsmith_f_op_f32(462f * var_1.b.x), !any(vec3<bool>(var_3.d.x, false, true)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: u32) -> vec3<f32> {
    let var_0 = select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, 1541f, -1759f, -841f) + vec4<f32>(757f, arg_0, -579f, arg_0)) * vec4<f32>(-1000f, arg_0, 175f, arg_0)), !(arg_0 > _wgslsmith_f_op_f32(arg_0 - -1216f))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(func_3(vec4<f32>(344f, 1987f, arg_0, 1000f), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), arg_0 > arg_0)), vec3<bool>(_wgslsmith_f_op_f32(1203f * 1025f) < arg_0, false, true));
    let var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(37062u, 4294967295u, ~(~94084u)), 40743u);
    global0 = array<vec4<u32>, 12>();
    var var_2 = vec4<bool>(!var_0.x, false, all(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1123f, arg_0, arg_0)), true).zy), var_0.x);
    var var_3 = Struct_1(countOneBits(u_input.a.zw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-689f, arg_0, -445f))))), vec2<u32>(47842u, ~(~arg_3)) ^ ((~u_input.a.ww | countOneBits(vec2<u32>(4294967295u, arg_2.x))) & vec2<u32>(_wgslsmith_mod_u32(81559u, 14996u), select(4294967295u, arg_1.x, false))), func_3(vec4<f32>(-1190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(arg_0, arg_0)), arg_0, arg_0), all(vec3<bool>(any(var_2.wx), any(var_2.yyy), true))).zy, false);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.b.x, 2685f, var_3.b.x))))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global0 = array<vec4<u32>, 12>();
    var var_0 = abs(-vec2<i32>(arg_0, -(~arg_0)));
    var var_1 = true;
    var_1 = !(any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)) & true);
    let var_2 = Struct_1(~u_input.a.zy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(626f)))), vec3<u32>(u_input.a.x, ~62643u, max(u_input.a.x, 72955u)), ~vec3<u32>(38705u, u_input.a.x, 15603u), 55304u)), vec3<f32>(116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f - -562f)), 169f)), reverseBits(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.xz)))), !vec2<bool>(!any(vec4<bool>(false, false, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), false);
    return vec4<bool>(all(select(!vec2<bool>(var_2.d.x, false), vec2<bool>(true, true), var_2.d.x)) | !select(true, true, false), var_2.d.x, any(vec4<bool>(!(var_2.c.x < var_2.c.x), (3843u > var_2.a.x) | (var_2.b.x <= -2020f), true, false)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-950f * 348f) + 813f), 155f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, _wgslsmith_f_op_f32(741f - -1423f))))));
    var var_1 = true;
    global0 = array<vec4<u32>, 12>();
    var_1 = all(func_1(34275i));
    var var_2 = Struct_1(select(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 63814u), u_input.a.x), (u_input.a.yy << (u_input.a.wx % vec2<u32>(32u))) ^ firstTrailingBit(u_input.a.yx)), _wgslsmith_clamp_vec2_u32(u_input.a.yy, ~vec2<u32>(u_input.a.x, 35101u), abs(u_input.a.zz)) & _wgslsmith_sub_vec2_u32(u_input.a.zy >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), min(u_input.a.xw, vec2<u32>(9360u, u_input.a.x))), var_0.x <= _wgslsmith_f_op_f32(round(896f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), 392f)), -796f, _wgslsmith_f_op_f32(-214f - _wgslsmith_f_op_f32(782f - -557f))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_0.x)), u_input.a.xy, vec2<bool>(true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.wx, firstTrailingBit(vec2<u32>(1u, var_2.c.x)))), countOneBits(4449u)), ~var_2.a.x | u_input.a.x);
}

