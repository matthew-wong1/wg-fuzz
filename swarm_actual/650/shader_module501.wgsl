struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(74205u, 4294967295u, 6251u), _wgslsmith_clamp_vec3_u32(vec3<u32>(79912u, 1317u, 37665u), vec3<u32>(13412u, 0u, 1u), vec3<u32>(27411u, 4294967295u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 1u)), 1u)) << (~vec3<u32>(44956u, _wgslsmith_mod_u32(21795u, 35502u), ~1u) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(-abs(vec4<i32>(-4986i, 1i, u_input.a.x, 1i)), vec4<i32>(1i, u_input.a.x, ~0i, _wgslsmith_mod_i32(-25911i, -2147483647i))) ^ -countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i)));
    var var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-744f * _wgslsmith_f_op_f32(floor(2109f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -541f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = _wgslsmith_f_op_f32(abs(var_2));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -898f))) - var_2)));
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_i32(-5787i, ~arg_1.x, _wgslsmith_div_i32(arg_0.x >> (_wgslsmith_sub_u32(89913u ^ arg_2.x, 1u) % 32u), arg_1.x));
    var var_1 = select(vec4<bool>(((4294967295u >> (arg_2.x % 32u)) >> ((arg_2.x << (67848u % 32u)) % 32u)) < 0u, false, all(vec3<bool>(true, true, true)), func_3(true)), !vec4<bool>((arg_2.x > 54480u) & true, true, false, true), vec4<bool>(all(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)))), true, !func_3(true), true));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1720f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1536f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(593f + 1000f), 512f))));
    let var_2 = !var_1.yz;
    var var_3 = all(var_1.xy);
    return ~arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(round(-782f));
    var var_0 = select(select(!select(vec4<bool>(false, false, true, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), arg_2.x), vec4<bool>(true, arg_2.x, true, true | all(vec4<bool>(true, arg_2.x, false, arg_2.x))), true), !vec4<bool>((true & arg_2.x) | true, !all(arg_2.zy), true, true), !vec4<bool>(arg_0.a.x > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 49444u, arg_0.a.x), vec4<u32>(11610u, arg_0.a.x, arg_0.a.x, arg_0.a.x)), all(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)) & true, false, false));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.a.x, firstLeadingBit(arg_0.a.x), _wgslsmith_sub_u32(1u, arg_0.a.x), arg_0.a.x)), _wgslsmith_mod_vec4_u32(func_2(u_input.a & vec3<i32>(arg_3.x, 1i, -45908i), arg_3, _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, 29802u, arg_0.a.x, arg_0.a.x), vec4<u32>(66129u, 4294967295u, arg_0.a.x, 1u))), vec4<u32>(firstLeadingBit(1u), ~20845u, ~53615u, arg_0.a.x))), arg_0.a.x);
    return select(vec2<bool>(true, true), !(!var_0.zz), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), true)), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))) | true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1255f))))), -249f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1000f, false))), -1000f, !var_0)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -999f)))));
    let var_2 = select(vec2<bool>(any(select(vec4<bool>(true, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), true), !vec4<bool>(var_0, var_0, var_0, var_0))), var_0), select(!select(func_1(Struct_1(vec3<u32>(1u, 0u, 0u), vec4<i32>(2147483647i, 706i, 8539i, u_input.a.x)), u_input.a.zz, vec3<bool>(true, true, false), vec2<i32>(-16106i, u_input.a.x)), select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), var_0), select(!func_1(Struct_1(vec3<u32>(19052u, 4294967295u, 4294967295u), vec4<i32>(u_input.a.x, -1i, 2147483647i, -38136i)), u_input.a.yy, vec3<bool>(var_0, true, var_0), vec2<i32>(u_input.a.x, 8156i)), vec2<bool>(select(var_0, var_0, var_0), var_0 & var_0), !vec2<bool>(var_0, var_0)), !(!vec2<bool>(true, var_0))), select(vec2<bool>(true, var_0), !(!func_1(Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec4<i32>(u_input.a.x, 28761i, 12978i, u_input.a.x)), u_input.a.yy, vec3<bool>(var_0, var_0, var_0), u_input.a.zz)), vec2<bool>(true, var_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + var_1.x), _wgslsmith_f_op_f32(min(-1309f, -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f))), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))))));
    let var_3 = select(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(49886i, min(-40037i, u_input.a.x), _wgslsmith_sub_i32(2147483647i, 1i)), vec3<i32>(-2147483647i, -1i, u_input.a.x) | u_input.a), u_input.a.x | countOneBits(-2147483647i), (~(-14076i) | u_input.a.x) & _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xx, u_input.a.xy), u_input.a.xy)), reverseBits(vec4<i32>(reverseBits(-45877i), min(34919i, u_input.a.x) >> (~31578u % 32u), u_input.a.x & 2147483647i, -2147483647i)), !(!(!select(vec4<bool>(false, var_2.x, var_0, var_0), vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_0, false, var_2.x, var_2.x)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1326f, var_1.x, 728f)))))));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-463f, -472f)), _wgslsmith_f_op_f32(var_1.x + 315f), 1226f != var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(~u_input.a.x), -2147483647i, var_3.x), _wgslsmith_clamp_vec3_i32(min((u_input.a ^ var_3.xzx) ^ (var_3.zzx ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(abs(var_3.xzw))), _wgslsmith_mult_vec3_i32(select(abs(vec3<i32>(-14987i, var_3.x, 1i)), u_input.a, vec3<bool>(true, var_0, var_2.x)), u_input.a), firstTrailingBit(abs(vec3<i32>(var_3.x, var_3.x, -1i)))), _wgslsmith_mult_u32(1u, ~4294967295u), 1u, -(0i << (firstTrailingBit(16726u) % 32u)) >> (4294967295u % 32u));
}

