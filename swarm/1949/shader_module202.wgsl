struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(vec2<bool>(true, select(any(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(false, false, true), vec3<bool>(arg_0.a, var_0, var_0))), any(vec3<bool>(true, true, true)), any(!vec3<bool>(var_0, arg_0.a, arg_0.a)))), -54645i, min(vec2<i32>(15857i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) ^ ~u_input.b, abs(u_input.b)), ~_wgslsmith_mult_i32(-u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1259f, -163f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, 1276f)), !var_0)), vec2<f32>(_wgslsmith_div_f32(365f, 1084f), _wgslsmith_f_op_f32(397f * -866f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(541f, -508f), _wgslsmith_div_vec2_f32(vec2<f32>(-124f, -554f), vec2<f32>(-571f, -654f))))))));
    var var_2 = Struct_1(select(vec2<bool>(!arg_0.a, true), !vec2<bool>(!arg_0.a, any(vec4<bool>(arg_0.a, var_1.a.x, false, var_1.a.x))), (all(vec4<bool>(var_0, var_1.a.x, arg_0.a, var_0)) | select(false, false, var_1.a.x)) && any(!vec3<bool>(var_1.a.x, var_1.a.x, false))), ~var_1.c.x, firstTrailingBit(u_input.b), -(~var_1.d), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1432f, _wgslsmith_f_op_f32(-var_1.e.x), var_1.e.x < var_1.e.x)))));
    var var_3 = arg_1;
    var_3 = arg_3.x;
    return ~_wgslsmith_add_u32(u_input.a, 40886u);
}

fn func_2() -> vec3<u32> {
    var var_0 = func_3(Struct_2(true), ~0u, ~(~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 15425u, u_input.a), vec3<u32>(59704u, u_input.a, 61144u)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(select(54797u, u_input.a, true), 6514u, u_input.a >> (u_input.a % 32u), u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a, u_input.a, 0u)), ~vec4<u32>(4294967295u, u_input.a, 1u, 41394u)), vec4<u32>(countOneBits(16885u), firstLeadingBit(u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a), max(101599u, u_input.a)))));
    var var_1 = !vec4<bool>(false, true, all(vec2<bool>(false, true)), true);
    var var_2 = !(!(!all(vec3<bool>(false, var_1.x, true))));
    let var_3 = Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)) | true, any(vec4<bool>(true, true, true, true))), _wgslsmith_div_i32(i32(-1i) * -1i, max(u_input.b.x, u_input.b.x) << (1u % 32u)) ^ -1i, u_input.b, ~(-7072i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1303f, -343f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1129f, -1048f) + vec2<f32>(-1467f, 1944f)))))));
    var_2 = all(!vec2<bool>(!var_1.x, false));
    return vec3<u32>(u_input.a, 58317u >> (u_input.a % 32u), ~u_input.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, -975f, arg_2.e.x, -1310f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(731f, -291f, arg_2.e.x, 1931f) + vec4<f32>(-1028f, 1233f, 434f, 946f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.x, arg_2.e.x, 1459f, arg_2.e.x) * vec4<f32>(arg_2.e.x, arg_2.e.x, -1380f, arg_2.e.x)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-1618f)), 684f, -910f, -851f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-939f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)), -154f, 711f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, var_0.x, arg_2.e.x, -152f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1423f, 201f, -488f, var_0.x), vec4<f32>(-273f, -1113f, -501f, arg_2.e.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.e.x, 355f, arg_2.e.x, var_0.x), vec4<f32>(var_0.x, arg_2.e.x, arg_2.e.x, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-658f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -175f), -1364f, _wgslsmith_f_op_f32(var_0.x - 910f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 964f, arg_2.e.x, var_0.x)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(1702f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - -725f), _wgslsmith_div_f32(-1000f, arg_2.e.x), any(vec4<bool>(arg_2.a.x, true, arg_2.a.x, true)))) - arg_2.e.x)), -1327f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.e.x), arg_2.e.x)), var_0.x);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1652f, 975f, var_0.x, arg_2.e.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(268f, -799f, arg_2.e.x, -266f), vec4<f32>(arg_2.e.x, 1456f, var_0.x, arg_2.e.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(220f, arg_2.e.x, var_0.x, arg_2.e.x))) + vec4<f32>(var_0.x, 1132f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1309f, var_0.x, var_0.x, arg_2.e.x), vec4<f32>(-3458f, 384f, var_0.x, arg_2.e.x), vec4<bool>(false, false, arg_2.a.x, arg_2.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-318f * -2105f), _wgslsmith_div_f32(113f, 777f), var_0.x, _wgslsmith_f_op_f32(min(var_0.x, arg_2.e.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1971f, -339f, 1162f, -518f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1845f, -1607f, -395f, 341f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -1253f, 526f, var_0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(-577f, -2199f, var_0.x, -123f), vec4<f32>(var_0.x, var_0.x, -1004f, 889f)))))));
    return firstTrailingBit(~arg_0.x);
}

fn func_1() -> i32 {
    let var_0 = !vec3<bool>(true, true, func_4(~vec2<u32>(1u, 1u), 1i, Struct_1(vec2<bool>(true, true), u_input.b.x, u_input.b, -1i, vec2<f32>(1383f, -303f)), func_2()) >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(57400u, u_input.a, 28912u, 408u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)));
    var var_1 = Struct_1(!vec2<bool>(false, var_0.x), u_input.b.x, ~vec2<i32>(~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x), _wgslsmith_add_i32(u_input.b.x, ~(abs(u_input.b.x) | ~26997i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-710f + 488f), _wgslsmith_f_op_f32(ceil(1984f)))));
    var var_2 = var_0.yz;
    var_1 = Struct_1(vec2<bool>(var_0.x, var_2.x), u_input.b.x, vec2<i32>(~_wgslsmith_mult_i32(u_input.b.x, var_1.c.x), u_input.b.x), max(abs(0i), 20523i) >> (_wgslsmith_div_u32(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 23659u, 0u), vec4<u32>(u_input.a, u_input.a, 5393u, 0u))) % 32u), _wgslsmith_f_op_vec2_f32(var_1.e - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * var_1.e.x), _wgslsmith_f_op_f32(min(636f, var_1.e.x))) + _wgslsmith_f_op_vec2_f32(sign(var_1.e)))));
    let var_3 = Struct_1(vec2<bool>(var_2.x, any(select(!var_0, var_0, vec3<bool>(var_1.a.x, var_0.x, true)))), abs(u_input.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(select(41077i & u_input.b.x, ~u_input.b.x, false), u_input.b.x), u_input.b), var_1.c.x ^ (_wgslsmith_clamp_i32(abs(var_1.b), 2147483647i, reverseBits(u_input.b.x)) | u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.e, _wgslsmith_f_op_vec2_f32(select(var_1.e, vec2<f32>(185f, 742f), true)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(abs(var_1.e))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(f32(-1f) * -373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-725f)) * 666f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1337f)), 612f, 1f, -455f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(709f, -1180f, 794f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1468f, -527f, 1777f) - vec4<f32>(-489f, -1523f, 561f, -124f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, -1546f, -549f, -3151f) - vec4<f32>(-1203f, 1000f, 217f, 630f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1078f, -222f, 736f, -129f) - vec4<f32>(-378f, -504f, -359f, -535f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(472f)), -618f, -816f, -189f))), true));
    let var_2 = Struct_1(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b.x, 9881i), u_input.b), u_input.b))), vec2<i32>(-30368i, ~2147483647i), u_input.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(317f, var_1.x) * var_1.wx) - _wgslsmith_f_op_vec2_f32(-var_1.ww)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1004f) + _wgslsmith_f_op_vec2_f32(-var_1.zw)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1000f) - vec2<f32>(_wgslsmith_f_op_f32(sign(1202f)), 1608f))));
    var_0 = u_input.b.x;
    let var_3 = Struct_2(all(select(vec4<bool>(u_input.a > u_input.a, all(vec2<bool>(var_2.a.x, var_2.a.x)), var_2.a.x, var_2.a.x), !select(vec4<bool>(true, false, true, var_2.a.x), vec4<bool>(var_2.a.x, true, false, false), var_2.a.x), any(vec4<bool>(var_2.a.x, true, true, true)))));
    var var_4 = max(-_wgslsmith_mod_vec4_i32(-select(vec4<i32>(9733i, var_2.d, -90455i, -1i), vec4<i32>(var_2.d, -278i, u_input.b.x, -2147483647i), vec4<bool>(var_2.a.x, false, true, true)), firstTrailingBit(reverseBits(vec4<i32>(var_2.c.x, 2147483647i, var_2.d, 0i)))), countOneBits(reverseBits(vec4<i32>(24551i, 57080i, 1i, -57532i)) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u))) | vec4<i32>(~u_input.b.x, ~(-28242i), 1i, 6325i));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.e.x * -1254f), 687f))) * -1445f));
    var var_6 = 4294967295u;
    var_0 = _wgslsmith_dot_vec2_i32(select(abs(var_4.zz), var_4.yx, _wgslsmith_div_u32(u_input.a, u_input.a) < max(u_input.a, u_input.a)), vec2<i32>(~(-u_input.b.x), 1i)) | var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1());
}

