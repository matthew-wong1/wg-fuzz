struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(313f - -106f))), -344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)))));
    var_0 = all(vec3<bool>(1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1290f), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), !any(vec3<bool>(false, true, false)) || all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_2 = false;
    var var_3 = u_input.a.x;
    return select(vec2<i32>(2147483647i, min(countOneBits(-26544i), 6049i)), ~abs(~vec2<i32>(-5493i, u_input.d.x)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), select(vec2<bool>(true, !any(vec2<bool>(false, false))), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44907u, 4294967295u, 0u, 4294967295u), vec4<u32>(32317u, 87548u, 4294967295u, 4294967295u)), 49362u), abs(reverseBits(615u))), _wgslsmith_dot_vec4_u32(vec4<u32>(88333u, 0u, 20179u, 0u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(39456u, 12397u, 26218u, 0u), reverseBits(vec4<u32>(65091u, 106620u, 51396u, 4294967295u)))), ~1u), firstLeadingBit(vec3<u32>(select(35019u, 4294967295u, true), 4294967295u, abs(1u)) << (~vec3<u32>(9337u, 21567u, 0u) % vec3<u32>(32u))), select(abs(~abs(vec3<u32>(1u, 0u, 38366u))), firstTrailingBit(vec3<u32>(58055u, ~1u, 27762u)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)))));
    let var_3 = firstTrailingBit(vec3<u32>(~(~(~1u)), var_2.x, abs(~_wgslsmith_div_u32(26646u, 1u))));
    let var_4 = select(~u_input.d.wwy, reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(2147483647i, arg_1.x, arg_1.x, -1i)), _wgslsmith_add_i32(arg_1.x, 17049i), -17513i)), true) >> (abs(vec3<u32>(var_2.x, 32260u ^ min(var_2.x, var_2.x), _wgslsmith_clamp_u32(var_3.x, 67791u, var_2.x & var_3.x))) % vec3<u32>(32u));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = select(select(vec3<bool>(true, all(vec2<bool>(false, false)), false), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), vec3<bool>(func_4(arg_0, func_3(), arg_1, arg_1), func_4(arg_1, -u_input.d.xz, arg_1, Struct_1(arg_0.a)), true)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))));
    var_0 = select(vec3<bool>(var_0.x, abs(_wgslsmith_mod_i32(2147483647i, u_input.c.x)) < 15451i, var_0.x), !select(select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, true)), vec3<bool>(true, !var_0.x, true), vec3<bool>(!var_0.x, select(false, var_0.x, var_0.x), var_0.x)), select(!vec3<bool>(false, any(vec3<bool>(false, true, var_0.x)), var_0.x), !vec3<bool>(var_0.x && var_0.x, var_0.x && var_0.x, false), all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), var_0.x))));
    var var_1 = _wgslsmith_add_u32(72575u, ~(~152578u));
    var var_2 = _wgslsmith_dot_vec3_i32(~(-(~u_input.d.yxy)), u_input.d.xwy);
    var var_3 = ~1u;
    return arg_1.a.x;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(621f)))) * 1453f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(trunc(116f))), _wgslsmith_f_op_f32(min(arg_0, 1703f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(1288f, arg_0, 1000f)), Struct_1(vec3<f32>(867f, arg_0, arg_0))))))));
    var_0 = firstTrailingBit(vec4<i32>(18163i ^ firstTrailingBit(_wgslsmith_sub_i32(-17908i, var_0.x)), 45160i & max(_wgslsmith_div_i32(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-23504i, 7402i, var_0.x), var_0.xwy)), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2308i, var_0.x, 2147483647i), var_0.www)), vec3<i32>(var_0.x >> (16543u % 32u), -1i, ~u_input.d.x)), -1i));
    let var_3 = vec2<bool>(true, _wgslsmith_add_u32(arg_1, reverseBits(arg_1) & 18561u) != countOneBits(0u));
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1765f, arg_0))), _wgslsmith_f_op_f32(round(-214f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(253f * 630f))), var_2));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<f32> {
    var var_0 = ~_wgslsmith_mod_u32(1u, ~1u);
    let var_1 = arg_0.a.x;
    let var_2 = any(!vec3<bool>(func_4(Struct_1(arg_0.a), -u_input.d.xz, func_1(986f, 0u), Struct_1(vec3<f32>(544f, 703f, var_1))), true, true));
    var var_3 = vec4<bool>(true, true, any(!(!vec4<bool>(true, true, var_2, var_2))) & (select(~21869u, ~1u, true) <= ~(~4294967295u)), var_2);
    var var_4 = firstTrailingBit(~vec3<u32>(~_wgslsmith_clamp_u32(16280u, 66934u, 1u), 60u, 1u));
    return arg_0.a;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = arg_2;
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_2.a.x, 728f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * arg_3) * _wgslsmith_f_op_f32(arg_3 + 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(any(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, false, true)), true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1041f, 1596f), _wgslsmith_f_op_f32(1000f - 274f))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1025f), Struct_1(_wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1458f), _wgslsmith_dot_vec3_u32(vec3<u32>(38618u, 4294967295u, 4294967295u), vec3<u32>(27253u, 4294967295u, 51938u))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2632f, 1889f, -1554f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1081f, 1417f))), _wgslsmith_f_op_f32(-1649f + -299f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(101f * 1203f) - -490f))));
    let var_1 = ~(~4294967295u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1000f)), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -358f)))));
    var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(251f)), -1778f))), 1u);
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(var_2.zxx), vec3<f32>(var_0.a.x, -519f, 968f))).x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), func_1(-131f, 1u).a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1678f, var_2.x)) + var_0.a.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1586f * -1138f))))), 86348u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(657f, -154f), firstTrailingBit(u_input.c), abs(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 52332u, var_1, 47514u), vec4<u32>(var_1, 47398u, var_1, 28495u)), max(vec4<u32>(var_1, 1u, 45220u, var_1), vec4<u32>(1u, 30031u, var_1, 1u))))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(0i, 0i, u_input.a.x), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-29345i, u_input.d.x, -55816i, 11501i), u_input.d)), vec4<i32>(u_input.c.x, countOneBits(1i), firstTrailingBit(-9517i), u_input.c.x)) ^ firstLeadingBit(_wgslsmith_sub_vec4_i32(select(u_input.d, vec4<i32>(u_input.a.x, 1i, 1i, u_input.b), false), -vec4<i32>(u_input.c.x, u_input.b, 21014i, u_input.d.x))));
}

