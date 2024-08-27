struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), 100966u));
    let var_1 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false))), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(566f, -380f), vec2<f32>(-1215f, 1394f), vec2<bool>(var_1.x, var_1.x))) - vec2<f32>(-2343f, 1170f)))))));
    var var_3 = Struct_3(select(select(!select(var_1, vec2<bool>(false, var_1.x), true), !vec2<bool>(var_1.x, false), var_1), var_1, !var_1.x), ~(~abs(_wgslsmith_div_u32(var_0.a.x, 0u))), Struct_2(select(vec3<bool>(true, !var_1.x, var_1.x & false), select(!vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(true, var_1.x, var_1.x), true), !vec3<bool>(var_1.x, false, true))), Struct_2(!(!vec3<bool>(var_1.x, var_1.x, var_1.x))));
    var var_4 = var_3.d;
    return vec3<bool>(!(!(!all(vec4<bool>(true, true, var_1.x, var_1.x)))), false, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_3(!vec2<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, false, false))), ~countOneBits(arg_2), Struct_2(vec3<bool>(all(vec3<bool>(true, true, true)), true, !any(vec4<bool>(true, true, true, false)))), Struct_2(func_3()));
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(518f, 2034f))))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, arg_1))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 515f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(678f, 148f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-259f, 1000f), vec2<f32>(arg_1, 1513f))) + vec2<f32>(arg_1, -376f)))))));
    let var_3 = vec2<u32>(firstTrailingBit(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(38475u, u_input.a), var_0.b & u_input.a)), var_0.b);
    var var_4 = _wgslsmith_add_u32(max(~var_0.b, _wgslsmith_mult_u32(~var_0.b, _wgslsmith_div_u32(var_0.b, 14659u) << (14724u % 32u))), 59193u);
    return _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(~arg_0.x, -abs(arg_0.x))), vec2<i32>(2243i, -4647i), -countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0.yx), ~arg_0.xz)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    let var_0 = !(all(vec3<bool>(true, true, true)) | true) | !(!select(any(vec2<bool>(false, false)), false, true));
    var var_1 = -2147483647i << (u_input.a % 32u);
    var_1 = 2147483647i;
    var_1 = _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(4303i, 51615i, -1i, -46364i), vec4<i32>(18967i, 1i, 32333i, _wgslsmith_mod_i32(-57933i, -2147483647i))), vec4<i32>(1i, 1i, -26458i, _wgslsmith_clamp_i32(1i >> (arg_0.a.x % 32u), -3064i, _wgslsmith_sub_i32(29756i, -8785i))) >> ((firstLeadingBit(vec4<u32>(48542u, 2836u, arg_0.a.x, arg_0.a.x) | vec4<u32>(2433u, arg_1.x, 1u, u_input.a)) >> ((vec4<u32>(3395u, arg_1.x, arg_0.a.x, 4294967295u) ^ select(vec4<u32>(144586u, 18645u, arg_0.a.x, 16996u), vec4<u32>(4294967295u, arg_0.a.x, arg_1.x, u_input.a), true)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-10362i, 1i), func_2(vec4<i32>(31765i, 39696i, -1i, -16585i), 2690f, u_input.a)), ~1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-46334i, -13596i), _wgslsmith_dot_vec2_i32(vec2<i32>(20271i, 5526i), vec2<i32>(0i, 2147483647i))), -1i) ^ ~vec4<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(-2147483647i, -1i), 0i >> (arg_1.x % 32u)), abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -2147483647i, -1i, 0i), select(vec4<i32>(2147483647i, -28242i, -31044i, 2147483647i), vec4<i32>(-14258i, -1i, 2147483647i, 16425i), vec4<bool>(var_0, var_0, var_0, var_0)))) ^ vec4<i32>(~(-31759i), ~(-44051i), 19069i, abs(-7859i)), vec4<i32>(-45425i, -23606i, 18409i, -51487i));
    return _wgslsmith_dot_vec3_i32(var_2.xyx, var_2.wwy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(-2147483647i, i32(-1i) * -_wgslsmith_mod_i32(-18350i, 5728i)), -countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -42099i, 1i), vec4<i32>(1i, 121i, 2147483647i, 0i))));
    var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(34016i, var_0.x, var_0.x, var_0.x) | vec4<i32>(-8586i, var_0.x, var_0.x, -21747i)), select(vec4<i32>(var_0.x, var_0.x, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1676i, 1i), vec2<i32>(1i, var_0.x))), -vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) << (~vec4<u32>(0u, 1394u, 4294967295u, 28628u) % vec4<u32>(32u)), !all(vec2<bool>(false, true)))), _wgslsmith_add_i32(_wgslsmith_div_i32(func_1(Struct_1(vec2<u32>(u_input.a, 0u)), vec2<u32>(1u, 0u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), -9396i), 2147483647i), ~(-(var_0.x << (u_input.a % 32u))) >> ((u_input.a & _wgslsmith_add_u32(~4294967295u, ~69851u)) % 32u));
    var_0 = abs(-countOneBits(-vec3<i32>(1i, -2147483647i, 2147483647i)));
    var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), select(var_0.x, var_0.x, true), -1i), vec3<i32>(-2147483647i, var_0.x, 20561i)) | select(_wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(39729i, -38998i, 2147483647i), vec3<i32>(var_0.x, -15924i, var_0.x), vec3<i32>(var_0.x, 25658i, -14144i)), -(~vec3<i32>(-41390i, 0i, -4337i))), abs(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-2147483647i, 0i, 3582i)))), true);
    let var_1 = Struct_1(vec2<u32>(24652u, u_input.a));
    let var_2 = true;
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~(~vec3<i32>(var_0.x, 2147483647i, 1i)) >> (vec3<u32>(_wgslsmith_clamp_u32(0u, var_1.a.x, var_1.a.x), _wgslsmith_mod_u32(1u, 51893u), reverseBits(0u)) % vec3<u32>(32u)), min(vec3<i32>(1i, 0i, -2147483647i) >> (vec3<u32>(4294967295u, var_1.a.x, 70051u) % vec3<u32>(32u)), reverseBits(vec3<i32>(var_0.x, var_0.x, 1i))) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, var_1.a.x), vec3<u32>(var_1.a.x, u_input.a, var_1.a.x)), ~vec3<u32>(17929u, u_input.a, 15140u), select(vec3<bool>(true, var_2, true), vec3<bool>(var_2, false, var_2), vec3<bool>(false, true, var_2))) % vec3<u32>(32u))), -firstTrailingBit(firstLeadingBit(vec3<i32>(11539i, var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1214f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(338f * 571f))), _wgslsmith_f_op_f32(558f + -797f))), 0u);
}

