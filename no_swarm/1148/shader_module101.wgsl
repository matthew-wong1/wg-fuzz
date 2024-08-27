struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    return max(min(-arg_0.a, ~arg_2.a), arg_2.a);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_1(4336i, !select(!select(arg_0.ywy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.xyx), vec3<bool>(true, true, true), !(u_input.a.x < u_input.a.x)));
    var_0 = Struct_1(-1442i, !(!(!var_0.b)));
    var var_1 = Struct_1(min(var_0.a, var_0.a), vec3<bool>(arg_0.x, !(func_2(Struct_1(var_0.a, var_0.b), vec4<f32>(686f, -264f, 781f, 1627f), Struct_1(var_0.a, vec3<bool>(true, var_0.b.x, true)), vec4<u32>(4294967295u, 30214u, 61436u, 6527u)) != -1i), !(!(var_0.a > 27462i))));
    var_0 = Struct_1(-413i, var_1.b);
    var_1 = Struct_1(36028i, !vec3<bool>(any(arg_0), any(vec4<bool>(true, true, true, false)), all(arg_0)));
    return 4294967295u;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_i32(arg_0.wwx, min(vec3<i32>(_wgslsmith_add_i32(~(-33287i), reverseBits(-1i)), ~_wgslsmith_add_i32(arg_0.x, 1i), 10526i << (arg_1.x % 32u)), vec3<i32>(select(_wgslsmith_div_i32(arg_0.x, -24198i), arg_3.a, any(vec3<bool>(true, arg_3.b.x, arg_3.b.x))), ~(-8534i), countOneBits(_wgslsmith_mod_i32(-1i, arg_0.x)))));
    var_0 = max(_wgslsmith_add_vec3_i32(select(arg_0.xyz, _wgslsmith_div_vec3_i32(firstTrailingBit(arg_0.wyw), vec3<i32>(arg_0.x, 13740i, arg_3.a)), false), arg_0.zww), abs(vec3<i32>(-arg_3.a, 23966i, -1i)));
    var_0 = arg_0.zzw;
    let var_1 = var_0.xz;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 674f, -826f, 925f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-268f, 111f, -323f, 1234f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f + 527f) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1412f) - _wgslsmith_div_f32(-329f, -1038f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2256f, 117f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(308f)) - _wgslsmith_f_op_f32(-2279f - -730f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-430f - 1058f), _wgslsmith_f_op_f32(f32(-1f) * -758f), true))), _wgslsmith_f_op_f32(abs(-341f))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), 540f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) - _wgslsmith_div_f32(var_2.x, -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-vec4<i32>(-5944i, 1073i, 24671i, -43286i), vec4<u32>(var_0, func_1(vec4<bool>(false, false, false, false)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(var_0, u_input.a.x)), u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), ~vec4<u32>(var_0, var_0, u_input.a.x, var_0)), Struct_1(-1i, vec3<bool>(true, true, true))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1350f));
    let var_2 = ~(~(vec2<u32>(_wgslsmith_clamp_u32(0u, 70838u, u_input.a.x), var_0) << ((min(vec2<u32>(7423u, 4294967295u), u_input.a.wz) << (vec2<u32>(u_input.a.x, var_0) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, _wgslsmith_clamp_i32(-40954i, 0i, 30107i), 1i), ~(vec4<i32>(15946i, 1i, -2147483647i, 2147483647i) >> (vec4<u32>(var_2.x, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(~max(u_input.a.x, u_input.a.x), var_0, func_1(vec4<bool>(true, true, true, true)), var_2.x), min(reverseBits(vec4<u32>(var_0, 1u, var_0, 1u)) ^ vec4<u32>(5712u, 0u, u_input.a.x, 0u), ~(~u_input.a)), Struct_1(firstTrailingBit(i32(-1i) * -21279i), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))), -2123f));
    let var_3 = ((_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(34800i, -25723i, 27530i)) << (var_2.x % 32u)) <= select(-2147483647i >> (1u % 32u), ~53709i, false)) | true;
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-768f * 261f), _wgslsmith_f_op_f32(round(-228f)), _wgslsmith_f_op_f32(trunc(687f)), _wgslsmith_f_op_f32(f32(-1f) * -492f)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 483f, -1197f, -333f), vec4<f32>(-1000f, -228f, -248f, 279f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(171f, -351f, -1906f, 1292f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1090f, 595f), -269f, _wgslsmith_f_op_f32(534f * -1269f), -194f))))));
    let var_5 = Struct_1(-max(1i, ~(-1i)), vec3<bool>(var_3, var_3, all(vec2<bool>(true, all(vec2<bool>(var_3, var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(1i, _wgslsmith_div_i32(1i, 3553i), var_5.a, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_5.a, var_5.a), var_5.a ^ var_5.a, _wgslsmith_clamp_i32(var_5.a, 36329i, var_5.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-851f, 142f, var_4.x, var_4.x), var_4, vec4<bool>(var_5.b.x, var_3, true, var_3)))))), _wgslsmith_clamp_u32(4294967295u | ~(var_0 & 44552u), 0u, ~1u ^ ~var_2.x), -vec4<i32>(select(12320i, var_5.a, all(var_5.b.zz)), i32(-1i) * -1i, 2147483647i, var_5.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), var_4.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.x)) - _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, var_5.a, var_5.a, var_5.a), u_input.a, vec4<u32>(0u, var_0, 4294967295u, 0u), var_5))), _wgslsmith_f_op_f32(406f * var_4.x)));
}

