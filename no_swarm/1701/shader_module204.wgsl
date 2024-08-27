struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<i32>(1i, 0i, i32(-2147483648), -29188i)), vec2<i32>(1i, -86868i), Struct_1(vec2<u32>(0u, 24790u), vec4<i32>(1i, i32(-2147483648), 2147483647i, -42116i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(1i, 0i, 8489i, -1i)), 20087u), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(62042i, i32(-2147483648), 24924i, -6760i)), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(0u, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), 9057i, -12484i)), Struct_1(vec2<u32>(31442u, 70743u), vec4<i32>(0i, -17384i, 29989i, -22043i)), 1u), Struct_2(Struct_1(vec2<u32>(9595u, 4294967295u), vec4<i32>(-21187i, 5863i, 39045i, 0i)), vec2<i32>(-1i, 36791i), Struct_1(vec2<u32>(18652u, 0u), vec4<i32>(-6575i, 17416i, -14524i, -13339i)), Struct_1(vec2<u32>(34492u, 0u), vec4<i32>(2147483647i, 0i, 1i, 0i)), 1u), Struct_2(Struct_1(vec2<u32>(18172u, 1u), vec4<i32>(67238i, 0i, 22506i, -22290i)), vec2<i32>(-8086i, -1016i), Struct_1(vec2<u32>(4294967295u, 19755u), vec4<i32>(6377i, 2147483647i, 258i, 1i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(2147483647i, 2147483647i, -31822i, 31610i)), 1u), Struct_2(Struct_1(vec2<u32>(7810u, 65715u), vec4<i32>(-17791i, -1i, -1i, i32(-2147483648))), vec2<i32>(32651i, -94231i), Struct_1(vec2<u32>(4967u, 1u), vec4<i32>(2147483647i, -11109i, 0i, 0i)), Struct_1(vec2<u32>(1u, 23511u), vec4<i32>(1i, 26780i, 7689i, 16322i)), 17518u), Struct_2(Struct_1(vec2<u32>(1u, 30459u), vec4<i32>(-1016i, 32260i, 16515i, -49032i)), vec2<i32>(-33210i, 38735i), Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-17558i, 2147483647i, 0i, 14051i)), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(0i, -13102i, 0i, -1i)), 1u), Struct_2(Struct_1(vec2<u32>(72481u, 27860u), vec4<i32>(15668i, -29763i, -37692i, i32(-2147483648))), vec2<i32>(-30237i, -15651i), Struct_1(vec2<u32>(113624u, 4294967295u), vec4<i32>(i32(-2147483648), 7161i, 2147483647i, 22149i)), Struct_1(vec2<u32>(0u, 14006u), vec4<i32>(0i, 45610i, 11503i, 2147483647i)), 19289u), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<i32>(2147483647i, 13116i, i32(-2147483648), 1i)), vec2<i32>(-53194i, 1i), Struct_1(vec2<u32>(39888u, 155398u), vec4<i32>(-5958i, 0i, 2147483647i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(30510i, 34956i, -21714i, -34017i)), 22170u), Struct_2(Struct_1(vec2<u32>(7793u, 29110u), vec4<i32>(i32(-2147483648), -13605i, -1i, -21198i)), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<u32>(13350u, 48744u), vec4<i32>(i32(-2147483648), i32(-2147483648), -8597i, -37236i)), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(-1i, i32(-2147483648), 377i, 2147483647i)), 31665u), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<i32>(0i, 25299i, -64567i, 2147483647i)), vec2<i32>(0i, 0i), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(-1i, -98266i, i32(-2147483648), 1i)), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(2147483647i, 0i, 23706i, 1i)), 86049u), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<i32>(1i, -1i, 47476i, -36631i)), vec2<i32>(-1i, -62950i), Struct_1(vec2<u32>(29906u, 41065u), vec4<i32>(0i, i32(-2147483648), 0i, 55963i)), Struct_1(vec2<u32>(34317u, 6204u), vec4<i32>(-19743i, -14307i, -51538i, -52454i)), 0u), Struct_2(Struct_1(vec2<u32>(7935u, 4294967295u), vec4<i32>(0i, -11274i, i32(-2147483648), 85103i)), vec2<i32>(2147483647i, 11351i), Struct_1(vec2<u32>(35740u, 23620u), vec4<i32>(1i, 25169i, -122i, 13532i)), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(1i, 16831i, 46961i, 1i)), 0u), Struct_2(Struct_1(vec2<u32>(0u, 30456u), vec4<i32>(2147483647i, 0i, 3758i, 1i)), vec2<i32>(1i, 1038i), Struct_1(vec2<u32>(51221u, 26064u), vec4<i32>(-1i, 66987i, -1i, 0i)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(-20662i, -30025i, 1i, -28380i)), 1262u), Struct_2(Struct_1(vec2<u32>(38791u, 54218u), vec4<i32>(-5920i, -1i, 2443i, 2147483647i)), vec2<i32>(-1i, -1i), Struct_1(vec2<u32>(66418u, 0u), vec4<i32>(-22700i, i32(-2147483648), 23044i, 32934i)), Struct_1(vec2<u32>(47521u, 11587u), vec4<i32>(-37502i, 41730i, 1i, 1i)), 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(1594i, 38270i, 2147483647i, 1i)), vec2<i32>(2147483647i, 15805i), Struct_1(vec2<u32>(13732u, 9448u), vec4<i32>(50339i, -9723i, 0i, 1i)), Struct_1(vec2<u32>(4294967295u, 28978u), vec4<i32>(2147483647i, -15031i, 2147483647i, 67065i)), 1u), Struct_2(Struct_1(vec2<u32>(0u, 43757u), vec4<i32>(-34093i, -5659i, -16339i, -19135i)), vec2<i32>(1i, 4852i), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(-1i, 1i, -26554i, 14406i)), Struct_1(vec2<u32>(74686u, 0u), vec4<i32>(35865i, 1i, -24658i, 0i)), 30537u), Struct_2(Struct_1(vec2<u32>(38969u, 22528u), vec4<i32>(30798i, 27513i, -23175i, 76924i)), vec2<i32>(7662i, -34439i), Struct_1(vec2<u32>(9917u, 4294967295u), vec4<i32>(1i, -43412i, 0i, 0i)), Struct_1(vec2<u32>(38606u, 9435u), vec4<i32>(9377i, -1i, -12104i, i32(-2147483648))), 2833u), Struct_2(Struct_1(vec2<u32>(0u, 34786u), vec4<i32>(-32274i, 10810i, 21052i, 10708i)), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec2<u32>(6407u, 30542u), vec4<i32>(i32(-2147483648), 0i, 0i, 1i)), Struct_1(vec2<u32>(59819u, 4294967295u), vec4<i32>(1i, 2147483647i, 2147483647i, 0i)), 1u), Struct_2(Struct_1(vec2<u32>(4294967295u, 10444u), vec4<i32>(0i, -1i, 2147483647i, -61205i)), vec2<i32>(2147483647i, -70485i), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(30554i, 42794i, 14684i, 41864i)), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(44735i, 0i, -48591i, -43707i)), 4294967295u), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec4<i32>(-1i, 1i, 1i, 2147483647i)), vec2<i32>(4090i, -15933i), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(30029i, i32(-2147483648), 2147483647i, -1i)), Struct_1(vec2<u32>(19762u, 1u), vec4<i32>(2147483647i, -44033i, 2147483647i, 37366i)), 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 20663u), vec4<i32>(16279i, 6581i, i32(-2147483648), 1110i)), vec2<i32>(-34027i, -10573i), Struct_1(vec2<u32>(4294967295u, 69965u), vec4<i32>(-13724i, 4559i, 61287i, -53046i)), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i)), 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> u32 {
    global1 = u_input.e;
    global1 = abs(~(~(vec2<u32>(global1.x, global1.x) ^ _wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(16030u, 23859u)))));
    let var_0 = Struct_2(Struct_1(u_input.e, vec4<i32>(-u_input.a, -(i32(-1i) * -2147483647i), i32(-1i) * -2147483647i, u_input.a)), u_input.b, Struct_1(vec2<u32>(global1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.e.x, global1.x), vec3<u32>(u_input.e.x, 53739u, u_input.c))), vec4<i32>(-1i) * -(vec4<i32>(u_input.d, -2147483647i, u_input.b.x, u_input.a) & vec4<i32>(u_input.b.x, 25918i, u_input.a, 2147483647i))), Struct_1(u_input.e, vec4<i32>(abs(_wgslsmith_sub_i32(u_input.b.x, u_input.d)), -_wgslsmith_add_i32(u_input.b.x, u_input.d), _wgslsmith_mult_i32(u_input.d << (u_input.e.x % 32u), firstLeadingBit(1i)), ~0i)), _wgslsmith_mod_u32(~(~u_input.e.x), select(_wgslsmith_dot_vec2_u32(abs(u_input.e), firstTrailingBit(vec2<u32>(4294967295u, global1.x))), ~(u_input.c ^ 0u), select(-69526i == u_input.a, u_input.d >= -2147483647i, all(vec2<bool>(arg_0, arg_0))))));
    global0 = -947f;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) * -464f) + _wgslsmith_f_op_f32(step(662f, _wgslsmith_f_op_f32(floor(649f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-766f)))) * -475f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, 237f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-320f, -490f), vec2<f32>(-381f, 268f)))))), vec2<f32>(953f, 793f))));
    return u_input.e.x;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    global0 = arg_0;
    let var_0 = ~u_input.c;
    var var_1 = arg_0;
    var var_2 = global2[_wgslsmith_index_u32(func_3(arg_1.x), 21u)];
    var_1 = arg_0;
    return select(u_input.d, var_2.d.b.x >> (4294967295u % 32u), -_wgslsmith_add_i32(var_2.c.b.x, u_input.d) > var_2.d.b.x) >> (45490u % 32u);
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = ~vec3<i32>(24041i, func_2(-1079f, vec2<bool>(true, true)) | u_input.b.x, countOneBits(-1i));
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(~(~(~(global1.x << (global1.x % 32u))))), 21u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-796f - 966f), _wgslsmith_f_op_f32(f32(-1f) * -559f)))))));
    var var_3 = vec2<bool>(!select(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(min(var_2.x, 542f)) <= 392f, ~var_1.a.b.x > -var_0.x), false);
    var var_4 = Struct_1(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.e.x, arg_0) & var_1.c.a, var_1.d.a, ~(~u_input.e)), countOneBits(countOneBits(var_1.c.b)));
    return vec2<bool>(true, !all(select(select(vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(false, false, var_3.x, var_3.x), var_3.x), select(vec4<bool>(true, var_3.x, true, true), vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(true, var_3.x, var_3.x, false)), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_mult_u32(u_input.e.x, 26822u);
    let var_1 = func_1(abs(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c), vec3<u32>(0u, 1u, 3471u))), abs(_wgslsmith_mult_u32(var_0, 88268u)), global1.x)));
    let var_2 = !(!vec4<bool>(var_1.x, all(vec4<bool>(false, arg_0.x, arg_0.x, var_1.x)), var_1.x, all(!arg_2)));
    var var_3 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, arg_3.x)), _wgslsmith_f_op_vec2_f32(arg_3.zy + vec2<f32>(arg_3.x, var_3.x))))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.xy), _wgslsmith_f_op_vec2_f32(round(arg_3.zy)), arg_0))), arg_3.xw)));
    return StorageBuffer(arg_1 & arg_1, arg_3.ww, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * var_4.x) * 986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) * _wgslsmith_f_op_f32(-1302f + _wgslsmith_f_op_f32(-var_4.x)))), arg_3.zwx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!func_1(~u_input.e.x >> (59248u % 32u)), firstTrailingBit(4294967295u), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1656f, -205f, -218f, -974f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1315f, -1000f, 900f, 688f)))));
}

