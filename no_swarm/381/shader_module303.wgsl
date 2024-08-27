struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = vec2<u32>(1u, ~21691u);
    var var_1 = Struct_2(~countOneBits(1987u), any(vec3<bool>(any(vec4<bool>(true, false, false, true)), any(!vec3<bool>(arg_0.x, true, false)), !(65345i > u_input.b))));
    let var_2 = _wgslsmith_clamp_i32(u_input.a.x, -23599i << (((_wgslsmith_sub_u32(1u, var_1.a) >> (countOneBits(1848u) % 32u)) | (firstTrailingBit(4294967295u) | abs(var_1.a))) % 32u), u_input.b & abs(1i));
    let var_3 = ~(-1i);
    var_1 = Struct_2(var_1.a, var_2 == ~(i32(-1i) * -2147483647i));
    return !vec4<bool>(!var_1.b, !(!(37496i > u_input.a.x)), !var_1.b, !(true && (0u < var_0.x)));
}

fn func_2() -> vec2<f32> {
    let var_0 = ~(~1u);
    let var_1 = select(vec4<bool>(true, select(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), false), all(vec3<bool>(true, true, true)), true), vec4<bool>(all(func_3(vec2<bool>(false, true))), _wgslsmith_f_op_f32(111f + _wgslsmith_f_op_f32(sign(-211f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(370f - 1311f) - _wgslsmith_f_op_f32(abs(-561f))), !select(false, true, any(vec4<bool>(true, true, true, false))), any(vec4<bool>(all(vec3<bool>(false, false, false)), true, select(true, true, true), all(vec2<bool>(false, false))))), !vec4<bool>(true, !(u_input.b < -7461i), !any(vec3<bool>(false, true, true)), any(vec2<bool>(false, false))));
    var var_2 = 0i;
    var_2 = 1i;
    var_2 = -1i;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-212f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1270f)))) - _wgslsmith_f_op_vec2_f32(func_2()));
    var var_1 = !vec2<bool>(func_3(vec2<bool>(true | arg_2.a, true)).x, false);
    let var_2 = Struct_3(arg_2.a, vec4<u32>(_wgslsmith_dot_vec4_u32(min(abs(arg_2.b), arg_2.b), ~(~vec4<u32>(47741u, 1u, 0u, arg_3.x))), min(22115u, 1u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1 | arg_1, arg_1, reverseBits(arg_2.c.x)), arg_2.b.x), firstLeadingBit(1u)), ~(~select(arg_2.b.wwx, vec3<u32>(arg_1, 508u, arg_2.b.x), vec3<bool>(true, false, false)) & arg_2.c));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-406f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1758f)));
    return Struct_4(abs(vec2<u32>(~41696u, ~var_2.c.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(abs(arg_3.a.x), arg_3.a.x, _wgslsmith_sub_u32(firstLeadingBit(~arg_1.x), 1u)), true);
    var_0 = Struct_2(4294967295u >> (~_wgslsmith_mult_u32(var_0.a, 43349u >> (1u % 32u)) % 32u), true);
    var_0 = Struct_2(51803u, !select(select(all(arg_0.yy), true, arg_0.x), false, !all(vec4<bool>(var_0.b, true, false, true))));
    var_0 = Struct_2(arg_3.a.x, true | any(!(!vec4<bool>(true, var_0.b, arg_0.x, var_0.b))));
    let var_1 = arg_3;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, false);
    var_0 = select(!(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), true))), select(!(!(!vec2<bool>(var_0.x, false))), vec2<bool>(var_0.x, true), false), abs(func_4(!vec3<bool>(true, var_0.x, false), firstTrailingBit(vec3<u32>(4323u, 0u, 8944u)), 1i, func_1(-704f, 1u, Struct_3(false, vec4<u32>(47990u, 16184u, 609u, 0u), vec3<u32>(74819u, 1u, 0u)), vec2<u32>(1u, 25578u)))) == 30310u);
    var_0 = !select(select(select(func_3(vec2<bool>(false, var_0.x)).ww, vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), vec2<bool>(var_0.x, false)), true), !(!vec2<bool>(var_0.x, false)), false || (_wgslsmith_f_op_f32(ceil(564f)) > 184f));
    var var_1 = Struct_4(~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(108402u, 17090u)) >> (func_1(-549f, 0u, Struct_3(false, vec4<u32>(35574u, 4294967295u, 4294967295u, 1u), vec3<u32>(0u, 45565u, 469u)), vec2<u32>(34441u, 4294967295u)).a % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(1u, _wgslsmith_mult_u32(1u, 0u))));
    var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1298f)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.x, 45954u), vec2<u32>(var_1.a.x, 74294u) << ((vec2<u32>(113249u, 1u) << (var_1.a % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_3(!(!all(vec3<bool>(var_0.x, var_0.x, false))), max(_wgslsmith_add_vec4_u32(min(vec4<u32>(var_1.a.x, var_1.a.x, 22897u, 4294967295u), vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, var_1.a.x)), ~vec4<u32>(1u, 17241u, 4294967295u, 1u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(59374u, 1u, 19523u, var_1.a.x), vec4<u32>(var_1.a.x, 1u, var_1.a.x, 66752u)), ~vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), vec3<u32>(max(_wgslsmith_add_u32(65709u, 0u), firstLeadingBit(var_1.a.x)), _wgslsmith_clamp_u32(var_1.a.x, ~var_1.a.x, _wgslsmith_mult_u32(54102u, var_1.a.x)), ~(~1u))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_1.a.x, 1u, 0u) << (vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x) % vec3<u32>(32u))), select(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x))), 1u >> (max(~var_1.a.x, var_1.a.x >> (var_1.a.x % 32u)) % 32u)), vec4<i32>(-2147483647i, u_input.a.x, ~(-u_input.c.x), 2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(898f + -2065f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1452f)) - 1f))), -450f);
}

