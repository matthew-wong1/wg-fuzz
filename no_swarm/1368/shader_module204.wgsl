struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> Struct_3 {
    return Struct_3(u_input.b.xw);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(countOneBits(0u), arg_1.x, _wgslsmith_mod_u32(arg_1.x, 0u), 40253u)), abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.x, 9423u, arg_1.x) >> (vec4<u32>(21103u, arg_1.x, 24942u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(arg_1.x, 77384u, 20295u, arg_1.x)), (vec4<u32>(1u, arg_1.x, 35896u, 15181u) & vec4<u32>(u_input.a, 0u, 0u, 0u)) >> (vec4<u32>(u_input.a, 26976u, u_input.a, arg_1.x) % vec4<u32>(32u)), true)));
    var var_1 = var_0;
    var var_2 = func_2(select(vec4<bool>(false, all(vec3<bool>(true, true, true)), true, !all(vec4<bool>(false, false, false, false))), vec4<bool>(any(vec2<bool>(false, true)), false, any(vec2<bool>(true, false)) || false, false), vec4<bool>(false, true, true | any(vec3<bool>(false, true, false)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(699f * _wgslsmith_f_op_f32(round(-1000f))))), 15046u);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2376f) + _wgslsmith_f_op_f32(-1546f * 905f)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-605f * -831f)), -1457f))));
    var_2 = arg_0;
    return Struct_3(~vec2<i32>(u_input.b.x, 0i));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = true;
    let var_1 = func_3(func_2(select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, true), arg_0.x), !vec4<bool>(false, false, arg_0.x, arg_0.x), !arg_0.x), vec4<bool>(arg_0.x, u_input.a != 48698u, -1i > u_input.b.x, u_input.a > u_input.a), select(select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0.x)), _wgslsmith_div_f32(-1359f, -1393f), 31567u), select(~vec4<u32>(80231u, 1u, u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(u_input.a, 4294967295u) >> (u_input.a % 32u), u_input.a & 0u), vec4<bool>(u_input.b.x <= ~u_input.b.x, any(vec2<bool>(arg_0.x, false)) && any(vec4<bool>(true, arg_0.x, false, true)), arg_0.x | true, arg_0.x)));
    var_0 = true;
    let var_2 = any(vec4<bool>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(282f - -736f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1677f - 964f)), true, true));
    let var_3 = _wgslsmith_div_vec3_u32(~(~(~abs(vec3<u32>(4294967295u, 48575u, u_input.a)))), abs(~vec3<u32>(u_input.a, 4294967295u, 3795u) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) >> (~vec3<u32>(1u, u_input.a, 79263u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_3.x, 4294967295u, var_3.x), vec4<u32>(u_input.a, 0u, u_input.a, 37401u) & vec4<u32>(39508u, 1u, var_3.x, var_3.x))));
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(181f * -1951f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-311f - 460f), _wgslsmith_f_op_f32(f32(-1f) * -161f)))), _wgslsmith_f_op_f32(f32(-1f) * -302f)));
    var var_1 = vec4<f32>(498f, 1f, 463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-959f, -855f))))));
    var var_2 = vec4<u32>(select(39616u, min(61101u, ~(~0u)), true & all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))), arg_0.x, ~1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.x, countOneBits(0u), ~4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(41844u, 0u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 48592u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 10354u, 78702u), arg_0, vec3<u32>(u_input.a, 17976u, 11292u)) % vec3<u32>(32u)), any(vec4<bool>(false, false, true, false))), vec3<u32>(u_input.a | (u_input.a ^ arg_0.x), 31363u, ~arg_0.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_div_f32(var_1.x, 762f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), 1987f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1253f, 705f, -555f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, -957f, -388f, -312f))))))), !(var_2.x == max(3029u, _wgslsmith_sub_u32(4294967295u, u_input.a)))));
    var_2 = ~(~(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0.x, arg_0.x), vec4<u32>(1u, var_2.x, arg_0.x, u_input.a)), vec4<u32>(arg_0.x, u_input.a, 1u, u_input.a) | vec4<u32>(arg_0.x, arg_0.x, 28140u, 4294967295u))));
    return Struct_1(!(1u != _wgslsmith_mod_u32(~112017u, var_2.x)), select(vec3<i32>(~(-u_input.b.x), firstLeadingBit(abs(0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(11938i, u_input.b.x, u_input.b.x, 0i), u_input.b ^ vec4<i32>(-2147483647i, u_input.b.x, 42376i, u_input.b.x))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, 2147483647i) ^ u_input.b.zxz, select(u_input.b.zyz, u_input.b.wxw, true), _wgslsmith_add_vec3_i32(u_input.b.yxw, vec3<i32>(u_input.b.x, 8602i, -1i))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), true)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -740f;
    let var_1 = u_input.b.zxw;
    let var_2 = func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a & func_1(vec3<bool>(false, true, true)), min(u_input.a, u_input.a)), max(~vec3<u32>(90595u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 33749u, u_input.a)) << (vec3<u32>(4294967295u, reverseBits(67345u), _wgslsmith_add_u32(5398u, u_input.a)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(trunc(1151f));
    var var_4 = Struct_3(func_3(func_2(select(vec4<bool>(var_2.a, true, true, false), vec4<bool>(false, var_2.a, true, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(vec3<u32>(35963u, u_input.a, 0u)).c), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 32140u, 0u), vec4<u32>(var_2.c, var_2.c, 91959u, 4294967295u)), vec4<u32>(u_input.a, 67720u, 32448u, 0u) >> (vec4<u32>(u_input.a, 13598u, 1u, u_input.a) % vec4<u32>(32u)))).a ^ var_2.b.zx);
    let var_5 = countOneBits(reverseBits(min(abs(vec2<u32>(1u, u_input.a)), vec2<u32>(1u, 18708u)) | vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(22687u, 28451u), vec2<u32>(var_2.c, 91632u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_4.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_4.a.x, u_input.b.x), var_4.a.x)), select(-2147483647i, firstTrailingBit(max(-2147483647i, var_1.x)), func_4(max(vec3<u32>(u_input.a, 1u, var_5.x), vec3<u32>(var_2.c, var_5.x, var_5.x))).a)), reverseBits(var_5), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(ceil(-104f)), _wgslsmith_div_f32(-1348f, -1239f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -839f, -792f) - vec3<f32>(-2020f, 1048f, var_0)) - vec3<f32>(var_0, var_0, -141f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, -1229f)))))), 1u, _wgslsmith_mod_u32(57395u, var_5.x) ^ min(4294967295u, ~select(0u, 25746u, false)));
}

