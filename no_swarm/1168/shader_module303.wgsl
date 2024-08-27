struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<f32, 28>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(-340f, 1123f), vec3<f32>(-434f, 572f, -799f), vec3<i32>(-7018i, 1i, 0i), -1066f, vec4<f32>(3271f, -317f, -343f, -1000f)), Struct_1(vec2<f32>(-1000f, 103f), vec3<f32>(1331f, -558f, 1000f), vec3<i32>(-79044i, 4712i, -1i), -267f, vec4<f32>(-238f, -818f, -1000f, 1893f)), Struct_1(vec2<f32>(-1590f, -344f), vec3<f32>(-510f, -436f, -1372f), vec3<i32>(0i, 2868i, -1i), 714f, vec4<f32>(1018f, -1000f, 1103f, 237f)), Struct_1(vec2<f32>(1253f, -483f), vec3<f32>(-291f, -664f, -1041f), vec3<i32>(i32(-2147483648), 2147483647i, 43412i), 1000f, vec4<f32>(550f, 1000f, 733f, -1000f)), Struct_1(vec2<f32>(1301f, 1726f), vec3<f32>(305f, 362f, 215f), vec3<i32>(0i, 0i, 1i), -170f, vec4<f32>(-403f, -206f, 1000f, -678f)), Struct_1(vec2<f32>(-1242f, 933f), vec3<f32>(-337f, -938f, 664f), vec3<i32>(0i, -606i, 3692i), 200f, vec4<f32>(553f, -2095f, -1191f, 1576f)), Struct_1(vec2<f32>(1000f, 664f), vec3<f32>(-301f, 294f, 1823f), vec3<i32>(0i, 31044i, -1i), 162f, vec4<f32>(-951f, 707f, 1000f, 2054f)), Struct_1(vec2<f32>(-2049f, 803f), vec3<f32>(1310f, 291f, -409f), vec3<i32>(-1i, 17878i, -40558i), 182f, vec4<f32>(-671f, -1823f, 2108f, -1961f)), Struct_1(vec2<f32>(-1000f, 1000f), vec3<f32>(1000f, -807f, 848f), vec3<i32>(-55267i, -5213i, -38492i), -538f, vec4<f32>(-1370f, 577f, 984f, -1192f)), Struct_1(vec2<f32>(280f, -3201f), vec3<f32>(899f, -1483f, -1082f), vec3<i32>(71633i, 2147483647i, 26266i), -1117f, vec4<f32>(477f, -427f, -3149f, -1524f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = -688f;
    var var_1 = Struct_1(arg_1.a, arg_1.e.zxx, vec3<i32>(-(-14198i | arg_1.c.x), arg_1.c.x & (1i << (arg_0.x % 32u)), min(-2705i, max(0i, arg_1.c.x))) ^ -_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, -1i, arg_2.c.x), -arg_2.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15844u, 28u)] * 172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.e.x, arg_2.d))))), global2[_wgslsmith_index_u32(~(4294967295u & arg_0.x) ^ _wgslsmith_sub_u32(~6005u, firstLeadingBit(10543u)), 28u)])), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.x)), global2[_wgslsmith_index_u32(~(~(~4294967295u)), 28u)], _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f + -713f) + arg_2.e.x) * arg_1.a.x)));
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, 44610u, 26064u), 28u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x - arg_2.b.x), _wgslsmith_f_op_f32(-466f * global2[_wgslsmith_index_u32(u_input.b, 28u)]))), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.e.x))), -arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-610f, global2[_wgslsmith_index_u32(arg_0.x, 28u)], 873f, 1000f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, -366f, 2555f, var_1.d) * arg_1.e), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.x, arg_1.d, 870f, var_1.d))))))));
    return select(u_input.b, select(_wgslsmith_dot_vec3_u32(abs(arg_0.yxy), ~arg_0.yyx), u_input.b, !any(vec2<bool>(true, true))), true) | ~1u;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global3 = array<Struct_1, 10>();
    let var_0 = u_input.d;
    var var_1 = arg_0.e.zwz;
    let var_2 = vec4<u32>(func_3(select(~vec4<u32>(75579u, u_input.b, 0u, u_input.b), reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 22710u)), vec4<bool>(true, true, false, false)), global3[_wgslsmith_index_u32(~1u, 10u)], Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.b.zz - vec2<f32>(var_1.x, 247f)), vec3<f32>(global2[_wgslsmith_index_u32(32379u, 28u)], -483f, -1103f), ~u_input.d.zxz, -641f, arg_0.e)) >> (~reverseBits(firstLeadingBit(0u)) % 32u), u_input.b, select(55028u, u_input.b, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 28u)] == arg_0.e.x, all(vec3<bool>(false, false, false))))), ~(~4294967295u));
    let var_3 = -189f;
    return _wgslsmith_div_vec3_i32(max(arg_0.c, max(vec3<i32>(var_0.x, 1i, 2147483647i), abs(u_input.a.xwz))) ^ firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(arg_0.c.x, var_0.x, -46411i), countOneBits(arg_0.c.x), arg_0.c.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~var_0.x, 9382i), _wgslsmith_add_vec2_i32(u_input.d.yw, arg_0.c.yy) ^ min(var_0.zw, arg_0.c.xx)), ~var_0.x, -_wgslsmith_mult_i32(var_0.x, u_input.d.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    global1 = array<Struct_1, 31>();
    global0 = 4294967295u ^ reverseBits(((9135u >> (arg_1.x % 32u)) | ~27785u) ^ arg_1.x);
    let var_0 = -(~(~abs(func_2(Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(arg_1.x, 28u)], -888f), vec3<f32>(global2[_wgslsmith_index_u32(arg_1.x, 28u)], global2[_wgslsmith_index_u32(50862u, 28u)], global2[_wgslsmith_index_u32(arg_1.x, 28u)]), vec3<i32>(u_input.a.x, 0i, arg_2), -1000f, vec4<f32>(1000f, -1000f, global2[_wgslsmith_index_u32(21935u, 28u)], -430f))))));
    var var_1 = -vec4<i32>(arg_2 << (countOneBits(~u_input.b) % 32u), ~(var_0.x | ~arg_2), _wgslsmith_sub_i32(arg_2, reverseBits(var_0.x)), u_input.d.x);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1617u, 28u)], global2[_wgslsmith_index_u32(36921u, 28u)], 1319f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], 1207f, global2[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<f32>(-492f, -530f, 2581f), vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(848f, global2[_wgslsmith_index_u32(4294967295u, 28u)], -1849f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(339f, global2[_wgslsmith_index_u32(17643u, 28u)], 512f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(85602u, 28u)], 1619f))))))));
    return -1i;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b, 28u)])), global2[_wgslsmith_index_u32(17622u, 28u)]))));
    let var_1 = _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_mod_u32(select(~52537u, u_input.b, abs(arg_0) < 6191u), _wgslsmith_mod_u32(~u_input.b, ~(u_input.b ^ u_input.b))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.b, 10u)];
    var_0 = 551f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2724f)) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 28u)] * -1407f)) * -128f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 28u)]))));
    return Struct_1(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(arg_0), 28u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b, 28u)], var_2.d))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.b)))))), _wgslsmith_mult_vec3_i32(-(_wgslsmith_sub_vec3_i32(u_input.d.wxy, vec3<i32>(-1i, 2147483647i, -49966i)) & vec3<i32>(arg_1.x, var_2.c.x, var_2.c.x)), -(~(~vec3<i32>(-16226i, var_2.c.x, arg_1.x)))), _wgslsmith_f_op_f32(-1446f - var_2.e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_2.e + vec4<f32>(var_2.e.x, var_2.d, -404f, global2[_wgslsmith_index_u32(arg_0, 28u)])))) + vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(31117u, 28u)] * 792f), var_2.e.x, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.b, 28u)], 1192f)), global2[_wgslsmith_index_u32(~u_input.b, 28u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.d, -1094f, global2[_wgslsmith_index_u32(1u, 28u)]) * vec4<f32>(-1000f, var_2.a.x, 970f, var_2.d))))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.e.yzw;
    var var_1 = 1f;
    var var_2 = abs(_wgslsmith_div_u32(u_input.b, abs(u_input.b)));
    var var_3 = arg_3;
    var var_4 = ~(~u_input.b);
    return Struct_1(vec2<f32>(-585f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-945f)) + _wgslsmith_f_op_f32(f32(-1f) * -1116f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1341f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.e.x, -2723f, var_3.b.x))))), arg_2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1146f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1286f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 28u)]), -208f, _wgslsmith_f_op_f32(arg_3.e.x - arg_1.e.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_3.d + arg_3.d), _wgslsmith_f_op_f32(1190f + var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 129532u), vec3<u32>(4294967295u, 1u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))) ^ (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(u_input.b, 4294967295u, 13321u), vec3<bool>(false, false, true)), max(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, 6180u, 25534u)), min(vec3<u32>(u_input.b, 15764u, u_input.b), vec3<u32>(54157u, 26126u, u_input.b))) << (vec3<u32>(4294967295u, reverseBits(4294967295u), 16622u) % vec3<u32>(32u))));
    global0 = ~(var_0.x ^ ~_wgslsmith_mod_u32(36479u, 1u & var_0.x));
    let var_1 = func_5(true, global3[_wgslsmith_index_u32(~1u, 10u)], func_4(_wgslsmith_sub_u32(~reverseBits(var_0.x), var_0.x), vec2<i32>(~(u_input.c >> (1u % 32u)), ~func_1(false, vec2<u32>(30649u, 57212u), 1i)), all(vec2<bool>(true, true))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0, var_0), 10u)]);
    let var_2 = func_4(reverseBits(~(~67204u)), var_1.c.xy, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a), vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(747f + _wgslsmith_f_op_f32(f32(-1f) * -2009f))), _wgslsmith_f_op_f32(abs(-795f)), _wgslsmith_f_op_f32(f32(-1f) * -1099f)), vec3<i32>(var_1.c.x, 0i, ~firstLeadingBit(u_input.d.x) >> (~_wgslsmith_add_u32(u_input.b, 6214u) % 32u)), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.e, _wgslsmith_f_op_vec4_f32(-var_1.e), true))));
    global3 = array<Struct_1, 10>();
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(round(var_3.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x + 1f)), _wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_f_op_f32(2429f * var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1093f * var_1.d) * global2[_wgslsmith_index_u32(u_input.b & u_input.b, 28u)]))), -(~(_wgslsmith_add_vec3_i32(var_1.c, var_2.c) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_3.c.x, 11557i), u_input.a.xyw, var_2.c))), 1580f, var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(min(reverseBits(vec4<u32>(4294967295u, 67726u, 1u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 2140u), vec4<u32>(u_input.b, var_0.x, 16532u, u_input.b))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 6565u, var_0.x, var_0.x), vec4<u32>(u_input.b, 77053u, 15688u, var_0.x)) % vec4<u32>(32u))), firstTrailingBit(~var_2.c.x), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], var_4.b.x), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2418i, -13538i), var_1.c.x), -(~func_2(var_4).x), -14221i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)) * _wgslsmith_f_op_f32(abs(678f))), var_2.e.x), 100f));
}

