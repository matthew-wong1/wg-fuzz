struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    return _wgslsmith_f_op_f32(min(689f, _wgslsmith_f_op_f32(-arg_0.a.x)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> bool {
    var var_0 = vec4<bool>(true, true, true, any(arg_0.yz) == false);
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_mod_i32(~u_input.c, 1i);
    var var_3 = vec3<u32>(select(~1u, abs(_wgslsmith_sub_u32(u_input.b, u_input.b)) | 39199u, select(54171u >= _wgslsmith_dot_vec2_u32(vec2<u32>(19278u, u_input.a), vec2<u32>(u_input.a, u_input.b)), select(-1i, -67490i, false) > _wgslsmith_clamp_i32(u_input.c, -1i, -2147483647i), true)), ~min(u_input.a, u_input.b), ~max(reverseBits(_wgslsmith_div_u32(u_input.a, u_input.a)), u_input.a));
    var_3 = ~(~min(~(vec3<u32>(var_3.x, u_input.a, 4294967295u) & vec3<u32>(44229u, 0u, var_3.x)), ~vec3<u32>(var_3.x, u_input.b, 50345u) >> (select(vec3<u32>(27541u, 4294967295u, u_input.a), vec3<u32>(550u, 12983u, u_input.a), var_0.x) % vec3<u32>(32u))));
    return ~(-35831i) <= min(_wgslsmith_mod_i32(select(1i, -44119i, select(var_0.x, arg_0.x, arg_0.x)), _wgslsmith_mult_i32(abs(var_2), -14749i)), _wgslsmith_add_i32(-63071i, 1i));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), -770f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.a.x, arg_0.a.x))))), 1757f));
    var var_1 = vec3<i32>(reverseBits(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_sub_i32(firstLeadingBit(-1419i), firstTrailingBit(2147483647i)), -(u_input.c << (1u % 32u)))), u_input.c, -26627i);
    var var_2 = arg_3;
    var_2 = firstTrailingBit(2180u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1164f * arg_0.a.x), arg_0.a.x, arg_1.x)), _wgslsmith_f_op_f32(-145f - _wgslsmith_f_op_f32(round(arg_2.a.x))), arg_2.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), -440f, arg_2.a.x, _wgslsmith_f_op_f32(-1334f * -696f)))));
    return abs(var_1.zz);
}

fn func_1() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, 2103f, -994f, 645f))), vec4<f32>(1281f, -1954f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-1648f, -986f, 916f, -908f)), vec3<bool>(false, true, false), vec4<f32>(-742f, 107f, -1060f, -588f), 2064f)), -1421f)))));
    var var_1 = firstTrailingBit(abs(_wgslsmith_add_vec2_i32(vec2<i32>(max(9464i, u_input.c), ~2147483647i), vec2<i32>(-u_input.c, 2147483647i))));
    var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1679f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(-147f)))))), vec3<bool>(func_3(vec3<bool>(-1621f <= var_0.a.x, true, true), ~1888i << (u_input.b % 32u)), false, any(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), false))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -284f))) * var_0.a)), u_input.b);
    let var_2 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), u_input.a != 64513u), !vec3<bool>(u_input.a != u_input.b, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), ~67265u != u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(trunc(-496f)), -276f, 605f) - var_0.a)));
    return _wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(var_1.x ^ u_input.c, ~(~11341i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(1308f, 1248f, 159f, -1666f)), vec3<bool>(false, false, false), vec4<f32>(-102f, -1601f, 102f, 121f), 1745f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1040f, -1855f)))), all(vec4<bool>(true, true, true, true)) != true)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-289f - -525f))));
    let var_2 = !select(!(!vec4<bool>(true, true, var_1, false)), !select(!vec4<bool>(true, var_1, false, true), select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, var_1, true, true), var_1), select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, var_1, false, var_1), var_1)), false && all(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, false, true), var_1)));
    var var_3 = !((false & all(select(vec3<bool>(var_2.x, var_1, var_1), var_2.xyw, false))) | true);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1825f, -396f, 137f, 534f)), vec4<f32>(1f, 1f, 1f, 1f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(var_4.x - -2028f), true)))) * var_4.x), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_mod_i32(-23432i, u_input.c), 2147483647i), u_input.c, ~0i & _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 0i, var_0), vec3<i32>(u_input.c, var_0, -11606i) ^ vec3<i32>(u_input.c, -1i, 1i)), u_input.c), -257f, _wgslsmith_f_op_f32(551f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.x)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, var_4.x, _wgslsmith_f_op_f32(-var_4.x)), var_4.wyz, !var_2.xwx)))));
}

