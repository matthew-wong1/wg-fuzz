struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_2(min(~min(vec4<i32>(2147483647i, 0i, arg_1.x, 31381i) | vec4<i32>(u_input.b.x, u_input.d.x, -2147483647i, 1i), ~vec4<i32>(-1i, arg_1.x, -1i, arg_1.x)), vec4<i32>(u_input.d.x, firstTrailingBit(-17423i) >> (46520u % 32u), u_input.b.x | 1i, arg_1.x)), ~abs(99150u), vec3<i32>(abs(~(~59592i)), 2055i, _wgslsmith_mod_i32(arg_1.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 0i), u_input.d.yy)))));
    var var_1 = Struct_2(firstTrailingBit(vec4<i32>(-68165i, -2147483647i, var_0.c.x, 2301i)), _wgslsmith_add_u32(abs(~u_input.a), ~1u), arg_1);
    let var_2 = all(vec4<bool>(true, all(!(!vec3<bool>(arg_0.x, arg_0.x, true))), false, true));
    var_0 = Struct_2(reverseBits(-(vec4<i32>(-2147483647i, var_0.c.x, 2147483647i, u_input.d.x) << (vec4<u32>(1u, u_input.a, var_1.b, var_0.b) % vec4<u32>(32u))) & (var_0.a >> (select(vec4<u32>(var_0.b, 4294967295u, u_input.c.x, 51901u), vec4<u32>(45273u, 91357u, var_0.b, 130146u), var_2) % vec4<u32>(32u)))), u_input.a, -var_1.a.zww);
    var_0 = Struct_2(~(vec4<i32>(-1i) * -var_1.a), ~(~var_1.b), vec3<i32>(~min(14419i, -8876i), arg_1.x, select(var_1.c.x, 0i, all(vec4<bool>(var_2, true, true, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-3137f, _wgslsmith_div_f32(1424f, 1064f)))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = vec3<f32>(-102f, _wgslsmith_f_op_f32(sign(arg_1.c)), 505f);
    let var_1 = _wgslsmith_f_op_f32(-arg_1.c);
    var var_2 = Struct_3(any(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true, true)), Struct_2(firstLeadingBit(_wgslsmith_mod_vec4_i32(select(vec4<i32>(7745i, arg_2.c.a, -38888i, 4469i), vec4<i32>(u_input.b.x, -1i, arg_2.a, u_input.b.x), true), reverseBits(vec4<i32>(-65747i, arg_2.a, arg_0.b.x, arg_1.a)))), min(firstTrailingBit(23387u), _wgslsmith_dot_vec2_u32(arg_1.b.wx, abs(vec2<u32>(0u, arg_2.c.b.x)))), max(-u_input.d, abs(_wgslsmith_div_vec3_i32(u_input.d, u_input.d)))), arg_1);
    let var_3 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(-(arg_1.a >> (var_2.c.b.x % 32u)), abs(_wgslsmith_div_i32(2147483647i, var_2.b.c.x)), arg_0.a), ~firstLeadingBit(select(vec3<i32>(39746i, 0i, var_2.b.c.x), u_input.d, false)), select(!vec3<bool>(var_2.a, var_2.a, true), !select(vec3<bool>(true, var_2.a, var_2.a), vec3<bool>(var_2.a, true, false), vec3<bool>(false, var_2.a, var_2.a)), var_2.b.b <= 1u)), u_input.d);
    var var_4 = arg_2.c.b.wyx;
    return -var_2.b.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, 1i) >> (reverseBits(0u | arg_0.x) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.zz, firstTrailingBit(u_input.d.xx)), -(~u_input.d.yx)), u_input.b.x, 1i), u_input.a, func_4(Struct_5(-34646i, reverseBits(vec2<i32>(2147483647i, u_input.d.x)), ~(u_input.b.x >> (1u % 32u))), Struct_1(3920i, abs(~vec4<u32>(arg_2, arg_3.x, 4294967295u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-261f, 1143f)) + _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec3<i32>(45194i, u_input.d.x, u_input.b.x))))), Struct_4(-max(-25984i, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, -1000f, 741f, 1352f)), Struct_1(firstTrailingBit(u_input.b.x), vec4<u32>(54587u, arg_2, 0u, arg_2), _wgslsmith_f_op_f32(-1103f * -1195f)))));
    let var_1 = ~(i32(-1i) * -28628i);
    var var_2 = countOneBits(vec4<u32>(arg_0.x, max(firstLeadingBit(~4294967295u), _wgslsmith_add_u32(~arg_0.x, select(arg_1.x, arg_1.x, false))), ~58547u, arg_3.x));
    var_2 = ~(~firstTrailingBit(select(vec4<u32>(0u, 0u, 8979u, u_input.c.x), vec4<u32>(u_input.a, 118215u, u_input.a, arg_3.x), vec4<bool>(false, false, false, false)))) ^ min(firstLeadingBit(firstTrailingBit(vec4<u32>(arg_2, arg_3.x, arg_1.x, 50937u)) & min(vec4<u32>(1u, 50788u, arg_3.x, arg_0.x), vec4<u32>(79296u, arg_2, arg_3.x, arg_3.x))), firstLeadingBit(~select(vec4<u32>(u_input.a, var_2.x, 70267u, 0u), vec4<u32>(var_2.x, 16484u, arg_2, arg_0.x), vec4<bool>(true, false, false, false))));
    var var_3 = _wgslsmith_mult_u32(0u, ~(~0u));
    return Struct_3(!any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true)), Struct_2(-firstTrailingBit(~vec4<i32>(var_0.c.x, u_input.b.x, 0i, 2147483647i)), min(4073u, u_input.c.x), var_0.c), Struct_1(~(2147483647i & firstTrailingBit(60755i)), abs(vec4<u32>(u_input.a, _wgslsmith_mod_u32(91655u, arg_3.x), 0u, arg_1.x)), 1036f));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec4_i32(-min(~vec4<i32>(1i, 0i, -24734i, 2749i) << ((vec4<u32>(0u, arg_2.x, arg_3.c.b.x, arg_2.x) ^ arg_1) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(6718i, 54375i, u_input.b.x, u_input.d.x) >> (arg_0.c.b % vec4<u32>(32u)), -vec4<i32>(arg_0.a, arg_0.a, 2147483647i, -2147483647i))), ~arg_3.b.a);
    var var_1 = func_2(_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_1.xx), ~arg_3.c.b.zx), arg_1.zwy, _wgslsmith_mod_u32(22077u, min(_wgslsmith_mult_u32(95113u, _wgslsmith_mod_u32(arg_1.x, 148796u)), firstLeadingBit(arg_0.c.b.x))), arg_0.c.b.xyz);
    var_1 = arg_3;
    var_1 = func_2(abs(vec2<u32>(abs(countOneBits(arg_2.x)), _wgslsmith_add_u32(arg_3.b.b, arg_3.b.b))), ~vec3<u32>(firstTrailingBit(reverseBits(arg_2.x)), _wgslsmith_sub_u32(20625u, 150u) ^ arg_0.c.b.x, arg_1.x << (arg_0.c.b.x % 32u)), 4294967295u, vec3<u32>(~arg_3.b.b, 75148u, ~56658u));
    var_1 = func_2(vec2<u32>(18430u, _wgslsmith_dot_vec3_u32(arg_0.c.b.ywy, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_2.x, arg_2.x), vec3<u32>(1u, 47430u, arg_1.x) & vec3<u32>(1u, 25809u, 75620u)))), vec3<u32>(_wgslsmith_clamp_u32(1u >> (~arg_1.x % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_3.c.b.x, arg_0.c.b.x, var_1.c.b.x, var_1.c.b.x)), countOneBits(arg_3.c.b)), 1u), _wgslsmith_mult_u32(arg_3.c.b.x, ~4294967295u | _wgslsmith_dot_vec4_u32(arg_2, arg_1)), 17999u), _wgslsmith_dot_vec2_u32(firstLeadingBit(~arg_3.c.b.zz), vec2<u32>(arg_0.c.b.x, ~(~arg_1.x))), firstTrailingBit(~var_1.c.b.wzx));
    return func_2(arg_2.xz, vec3<u32>(0u, firstLeadingBit(var_1.c.b.x | 4294967295u), 36267u | min(~1u, arg_3.b.b)), arg_0.c.b.x ^ ((_wgslsmith_add_u32(37780u, var_1.b.b) ^ ~4294967295u) << (~func_2(vec2<u32>(arg_1.x, 0u), vec3<u32>(arg_2.x, var_1.c.b.x, 0u), u_input.a, vec3<u32>(0u, arg_3.b.b, arg_3.c.b.x)).b.b % 32u)), vec3<u32>(64198u, countOneBits(17359u), u_input.c.x | firstTrailingBit(~u_input.c.x)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_2(-firstTrailingBit(select(arg_0.b.a, max(vec4<i32>(53708i, -59821i, arg_0.b.c.x, arg_0.b.a.x), arg_0.b.a), select(true, false, arg_0.a))), 41735u, func_4(Struct_5(arg_0.c.a, -arg_0.b.c.xz, ~(arg_1.a.x ^ -28535i)), arg_0.c, Struct_4(-_wgslsmith_dot_vec2_i32(arg_0.b.c.xy, vec2<i32>(arg_1.c.x, 6115i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.c, arg_0.c.c, arg_0.c.c, arg_0.c.c))), arg_0.c)));
    let var_1 = Struct_3(!(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.b, 1u), _wgslsmith_clamp_u32(var_0.b, arg_1.b, arg_2.x)) < abs(15449u)), func_1(Struct_4(1i, vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.c * 1980f), arg_0.c.c, arg_0.c.c, arg_0.c.c), func_1(Struct_4(u_input.b.x, vec4<f32>(arg_0.c.c, arg_0.c.c, 653f, arg_0.c.c), arg_0.c), abs(vec4<u32>(arg_2.x, u_input.c.x, 1u, arg_2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(30923u, arg_1.b, arg_2.x, 1u), vec4<u32>(arg_2.x, 4294967295u, u_input.c.x, 14323u)), Struct_3(arg_0.a, Struct_2(vec4<i32>(0i, u_input.d.x, 2147483647i, -1i), 36272u, vec3<i32>(31832i, u_input.b.x, -1i)), Struct_1(u_input.d.x, arg_0.c.b, arg_0.c.c))).c), min(_wgslsmith_sub_vec4_u32(vec4<u32>(13088u, 15228u, 38579u, 59262u), ~arg_0.c.b), select(vec4<u32>(12149u, 0u, arg_0.b.b, arg_1.b), arg_0.c.b, any(vec3<bool>(true, arg_0.a, arg_0.a)))), vec4<u32>(~arg_0.c.b.x, ~arg_1.b, 24172u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29089u, 1u, u_input.a), arg_0.c.b), arg_2.x)), arg_0).b, func_2((vec2<u32>(1u, arg_0.b.b) ^ (vec2<u32>(arg_1.b, 24374u) & vec2<u32>(arg_2.x, arg_0.c.b.x))) ^ _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 47171u), vec2<u32>(4294967295u, arg_1.b))), abs(countOneBits(vec3<u32>(11466u, 61056u, var_0.b) & arg_0.c.b.yzx)), ~(~0u << (~arg_1.b % 32u)), abs(arg_2)).c);
    var_0 = func_1(Struct_4(max(var_1.b.c.x, _wgslsmith_mod_i32(firstTrailingBit(var_0.a.x), -1i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c, -690f, var_1.c.c, -175f)), vec4<f32>(1989f, arg_0.c.c, var_1.c.c, var_1.c.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, var_1.c.c, arg_0.c.c, arg_0.c.c)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1000f, var_1.c.c, -256f), vec4<f32>(var_1.c.c, 1325f, arg_0.c.c, arg_0.c.c)))))), func_1(Struct_4(~var_1.b.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-370f, -135f, 1660f, 1033f), vec4<f32>(-1276f, arg_0.c.c, 951f, -598f), true)), func_2(vec2<u32>(arg_0.c.b.x, arg_2.x), var_1.c.b.ywx, 19598u, vec3<u32>(arg_1.b, 32675u, 3401u)).c), ~abs(vec4<u32>(1u, var_0.b, 17736u, 35352u)), var_1.c.b, func_2(vec2<u32>(4294967295u, 13081u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.b, 4294967295u, arg_0.c.b.x), arg_2), 1u, ~var_1.c.b.xwx)).c), func_2(~(~(~arg_2.yx)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, arg_2.x, 4294967295u), vec4<u32>(var_1.b.b, 0u, var_0.b, 1u)), 28083u), 0u ^ _wgslsmith_dot_vec2_u32(arg_0.c.b.yw, vec2<u32>(arg_2.x, var_1.c.b.x)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, arg_0.b.b, arg_1.b, arg_1.b)), ~vec4<u32>(arg_1.b, var_1.b.b, arg_0.b.b, 23232u))), var_1.b.b, min(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.b, 4371u, 12839u), vec3<u32>(885u, 56146u, 0u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, var_1.c.b.x, var_0.b), var_1.c.b.www)))).c.b, ~(~vec4<u32>(min(arg_0.b.b, 4294967295u), firstTrailingBit(var_0.b), _wgslsmith_add_u32(1u, arg_1.b), ~21192u)), func_2(_wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(arg_1.b), ~arg_0.c.b.x), abs(func_1(Struct_4(arg_1.a.x, vec4<f32>(-811f, var_1.c.c, 571f, arg_0.c.c), Struct_1(u_input.b.x, arg_0.c.b, arg_0.c.c)), vec4<u32>(var_1.b.b, arg_0.b.b, 5887u, 43588u), vec4<u32>(0u, 4294967295u, 0u, arg_0.b.b), arg_0).c.b.wz)), var_1.c.b.wwy, ~1u, vec3<u32>(select(1u ^ arg_2.x, _wgslsmith_mod_u32(arg_1.b, 3171u), true), min(_wgslsmith_dot_vec3_u32(vec3<u32>(4651u, 1u, arg_0.b.b), arg_0.c.b.yxx), max(72550u, u_input.c.x)), arg_0.b.b | select(1u, 4294967295u, true)))).b;
    var var_2 = ~abs(-10031i);
    var var_3 = func_2(vec2<u32>(arg_1.b, var_1.b.b), var_1.c.b.zyy, 6686u, _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, 47288u, _wgslsmith_add_u32(1u, 17750u)) | (vec3<u32>(var_0.b, var_1.c.b.x, arg_2.x) | arg_2), arg_0.c.b.wxy, firstTrailingBit(vec3<u32>(0u, _wgslsmith_mult_u32(4294967295u, arg_0.c.b.x), var_0.b)))).c;
    return func_2(vec2<u32>(arg_0.c.b.x, _wgslsmith_sub_u32(max(arg_2.x, func_1(Struct_4(-2147483647i, vec4<f32>(103f, arg_0.c.c, var_3.c, 1883f), Struct_1(-5784i, vec4<u32>(u_input.c.x, 1912u, 57486u, 4294967295u), -1339f)), vec4<u32>(var_3.b.x, u_input.a, 6066u, 3583u), arg_0.c.b, Struct_3(false, arg_0.b, arg_0.c)).c.b.x), firstTrailingBit(_wgslsmith_mult_u32(var_3.b.x, 4294967295u)))), vec3<u32>(1u, var_0.b, _wgslsmith_mod_u32(arg_1.b << (abs(24810u) % 32u), arg_1.b)), arg_1.b, vec3<u32>(1060u, _wgslsmith_clamp_u32(countOneBits(4294967295u), abs(9732u), ~arg_2.x), ~(~30757u))).b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(403f, -1248f)), -1940f)) * -974f));
    var_0 = 273f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(346f * -1163f), _wgslsmith_f_op_f32(floor(985f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1030f)))) * _wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -943f))))));
    let var_1 = Struct_2(abs(abs(~(~vec4<i32>(-1i, 40205i, u_input.b.x, u_input.d.x)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~u_input.a, u_input.c.x, _wgslsmith_div_u32(29058u, 1u)), ~(~vec4<u32>(u_input.a, 57110u, u_input.c.x, 100189u))), vec3<i32>(6203i, u_input.d.x, _wgslsmith_div_i32(func_5(func_1(Struct_4(-2147483647i, vec4<f32>(-1294f, -1176f, 861f, -334f), Struct_1(4926i, vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u), -1602f)), vec4<u32>(4294967295u, 81368u, 4294967295u, u_input.a), vec4<u32>(76991u, u_input.c.x, 34174u, 0u), Struct_3(false, Struct_2(vec4<i32>(2147483647i, 47134i, -16548i, u_input.b.x), u_input.a, vec3<i32>(20072i, 0i, u_input.b.x)), Struct_1(u_input.d.x, vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 4294967295u), -1000f))), Struct_2(vec4<i32>(2147483647i, u_input.d.x, u_input.b.x, 44508i), 92655u, vec3<i32>(u_input.b.x, 9394i, 2147483647i)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 30940u, 42053u), vec3<u32>(u_input.c.x, u_input.a, 23489u))), max(i32(-1i) * -28455i, u_input.d.x))));
    var_0 = -1166f;
    let var_2 = countOneBits(~(~0u));
    var_0 = -504f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), -180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(102f, -500f)))), _wgslsmith_f_op_f32(f32(-1f) * -172f)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-208f, 843f))))), _wgslsmith_f_op_f32(-func_1(Struct_4(u_input.d.x, vec4<f32>(-488f, -1000f, -482f, -1135f), Struct_1(1i, vec4<u32>(30378u, u_input.a, var_1.b, var_1.b), 1382f)), vec4<u32>(var_1.b, 1u, 0u, var_1.b), vec4<u32>(var_2, 1u, 1u, 6241u), func_2(vec2<u32>(2333u, var_2), vec3<u32>(0u, 11407u, 1u), 0u, vec3<u32>(1u, 4294967295u, 33340u))).c.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1672f))))), ~u_input.d.x & -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, -7185i)), ~var_1.a.zx), var_1.c.x, vec2<f32>(470f, _wgslsmith_f_op_f32(select(-1611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))))));
}

