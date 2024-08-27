struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(-420f, -1327f, -527f), vec2<i32>(56383i, -16034i), vec4<i32>(2147483647i, 2147483647i, 30879i, 1i), vec2<f32>(392f, -406f)), Struct_1(vec3<f32>(1747f, 1469f, 415f), vec2<i32>(0i, 1i), vec4<i32>(-23353i, -1i, 22440i, i32(-2147483648)), vec2<f32>(-208f, 711f)), Struct_1(vec3<f32>(-1826f, -1000f, 1918f), vec2<i32>(1i, 13544i), vec4<i32>(43091i, -33839i, i32(-2147483648), 4686i), vec2<f32>(-1000f, -729f)), Struct_1(vec3<f32>(991f, -595f, 1751f), vec2<i32>(-1i, 38571i), vec4<i32>(i32(-2147483648), 0i, -1i, -1i), vec2<f32>(-567f, 950f)), Struct_1(vec3<f32>(372f, 995f, -186f), vec2<i32>(8099i, 0i), vec4<i32>(32370i, -1i, 34273i, -4111i), vec2<f32>(962f, -651f)), Struct_1(vec3<f32>(1107f, 1205f, -1000f), vec2<i32>(-26015i, 36125i), vec4<i32>(-12253i, -1i, -25869i, -30522i), vec2<f32>(141f, 265f)), Struct_1(vec3<f32>(218f, -1203f, 545f), vec2<i32>(1i, i32(-2147483648)), vec4<i32>(-8821i, i32(-2147483648), -41055i, i32(-2147483648)), vec2<f32>(-816f, 2755f)), Struct_1(vec3<f32>(1139f, 1753f, 590f), vec2<i32>(i32(-2147483648), 1i), vec4<i32>(-2263i, 29079i, i32(-2147483648), 42837i), vec2<f32>(505f, 549f)), Struct_1(vec3<f32>(-1746f, 771f, -722f), vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -1i, 2147483647i), vec2<f32>(-842f, 367f)), Struct_1(vec3<f32>(1108f, -1000f, 346f), vec2<i32>(4393i, i32(-2147483648)), vec4<i32>(13729i, -1i, -1i, -1i), vec2<f32>(1146f, -127f)), Struct_1(vec3<f32>(-143f, -420f, 1000f), vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(39171i, 2147483647i, 17448i, 14400i), vec2<f32>(-1949f, 1000f)), Struct_1(vec3<f32>(-383f, -1000f, -2403f), vec2<i32>(-1i, 25379i), vec4<i32>(-42406i, 1i, i32(-2147483648), -7592i), vec2<f32>(-437f, -1000f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> bool {
    var var_0 = any(select(select(vec2<bool>(u_input.a.x >= arg_2.x, all(vec2<bool>(true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), 0i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(arg_2.x, 1i))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(trunc(arg_1.x)), arg_1.x)))), select(-reverseBits(~vec2<i32>(arg_0, 29748i)), arg_2.xz, all(vec2<bool>(true, true))), ~(~vec4<i32>(-14578i, u_input.a.x, 1i, 43970i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))))));
    let var_3 = global0[_wgslsmith_index_u32(u_input.c, 12u)];
    var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 52276u, 0u), vec3<u32>(0u, 115831u, u_input.b))) ^ ~(_wgslsmith_mod_u32(u_input.b, 4294967295u) | select(u_input.b, 1364u, true))), 12u)];
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-996f - _wgslsmith_f_op_f32(f32(-1f) * -326f)), -340f) <= _wgslsmith_f_op_f32(floor(-395f)));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 12>();
    let var_0 = select(!(!vec4<bool>(select(false, false, false), true, true, true)), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), true), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, func_3(-34221i, vec4<f32>(369f, -551f, 918f, 343f), vec3<i32>(u_input.a.x, -52288i, 1i))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, 22029i == u_input.a.x)), vec4<bool>(true, (i32(-1i) * -21585i) < select(1i, u_input.a.x, false), true, true)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), all(vec2<bool>(false, true)))));
    global0 = array<Struct_1, 12>();
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, 0u, u_input.b, u_input.c) ^ vec4<u32>(1232u, 18520u, 4294967295u, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 21223u, u_input.b, 4294967295u), abs(vec4<u32>(40370u, 4294967295u, u_input.b, u_input.b)))), min(0u, ~4294967295u), firstTrailingBit(~(~abs(0u))), 4294967295u << (_wgslsmith_mod_u32(u_input.b, 90660u) % 32u));
    let var_2 = vec3<u32>(select(~u_input.b, 47797u >> ((_wgslsmith_mult_u32(var_1.x, 1u) >> (_wgslsmith_mod_u32(u_input.b, 44530u) % 32u)) % 32u), any(!vec3<bool>(var_0.x, true, false)) || var_0.x), firstLeadingBit(0u), u_input.c);
    return all(!(!var_0.wz));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-2178f + 1f), -386f, _wgslsmith_f_op_f32(f32(-1f) * -1010f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(356f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, -2131f, 912f, -613f)), vec4<f32>(1f, 1f, 1f, 1f), all(vec4<bool>(false, false, true, true)))))), !(0u >= u_input.c)))));
    var var_1 = select(!func_2(), u_input.a.x != 1i, func_2());
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.wzz), vec2<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i) | max(firstLeadingBit(u_input.a.x), ~u_input.a.x)), _wgslsmith_sub_vec4_i32((select(vec4<i32>(u_input.a.x, u_input.a.x, -29593i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -29771i, u_input.a.x), vec4<bool>(true, false, true, true)) ^ ~vec4<i32>(8538i, u_input.a.x, 38701i, u_input.a.x)) >> (reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 16940u, arg_0, arg_0), vec4<u32>(arg_0, 4294967295u, arg_0, u_input.c), vec4<u32>(15051u, u_input.b, 20089u, u_input.b))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -185i, 1i | u_input.a.x), u_input.a.x, abs(-2147483647i), ~(-1497i))), var_0.zz);
    let var_3 = vec4<i32>(2147483647i, -max(reverseBits(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i)), var_2.c.x), u_input.a.x, countOneBits(countOneBits(-11345i)) ^ var_2.c.x);
    let var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, var_2.d.x, 1699f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-623f, var_0.x, -519f)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -335f)), var_2.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -159f), -101f)))), ~vec2<i32>(min(u_input.a.x, 1i), var_2.b.x), -var_2.c, _wgslsmith_f_op_vec2_f32(var_0.ww + vec2<f32>(var_2.a.x, 1852f)));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-275f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2161f)))), 204f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1800f, 921f))))), vec2<i32>(51681i, func_1(u_input.c) & firstTrailingBit(2147483647i)), -reverseBits(-(~vec4<i32>(-2147483647i, 1i, u_input.a.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1507f + -1000f)), _wgslsmith_f_op_f32(sign(758f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2312f), -257f), vec2<f32>(-250f, _wgslsmith_f_op_f32(sign(-563f)))))));
    global0 = array<Struct_1, 12>();
    let var_1 = firstLeadingBit(vec4<i32>(u_input.a.x | -2147483647i, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 32640i), var_0.c.wzx)), firstLeadingBit(-2147483647i), (36842i | u_input.a.x) >> (u_input.c % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 391f, var_0.a.x) - vec3<f32>(var_0.a.x, 775f, -2553f)))), _wgslsmith_clamp_vec2_i32(var_0.c.zw << (firstLeadingBit(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)), u_input.a, vec2<i32>(abs(-2147483647i) >> (u_input.c % 32u), -u_input.a.x)), abs(_wgslsmith_div_vec4_i32(abs(~vec4<i32>(2147483647i, 2104i, 8104i, var_1.x)), var_1)), _wgslsmith_f_op_vec2_f32(floor(var_0.d)));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.d.x, 390f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x))))), min(~max(-vec2<i32>(u_input.a.x, -28578i), var_1.wx), ~(-_wgslsmith_clamp_vec2_i32(u_input.a, var_0.b, vec2<i32>(-2147483647i, 26932i)))), var_2.c, vec2<f32>(-1496f, -619f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1082f, 1016f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(var_0.a.x, -1265f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_2.a.x, var_2.d.x, var_0.a.x) + vec4<f32>(var_0.a.x, -1002f, var_0.d.x, var_0.d.x))))))));
}

