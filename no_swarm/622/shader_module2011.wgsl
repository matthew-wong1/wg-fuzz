struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) - _wgslsmith_f_op_f32(round(-180f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1350f)), _wgslsmith_f_op_f32(-312f - 1026f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(301f, -523f) * _wgslsmith_f_op_f32(f32(-1f) * -843f)) - _wgslsmith_f_op_f32(f32(-1f) * -265f)), -519f)));
    let var_1 = -(vec2<i32>(u_input.b, reverseBits(-6090i)) << (arg_0.xz % vec2<u32>(32u)));
    let var_2 = Struct_2(vec4<i32>(0i, ~countOneBits(reverseBits(61762i)), ~(-81715i), var_1.x));
    let var_3 = 2145f;
    let var_4 = Struct_2(var_2.a);
    return 1u;
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = ~(~select(select(vec4<i32>(0i, -3489i, u_input.a, -10388i), vec4<i32>(-670i, -3330i, -1i, arg_0), vec4<bool>(true, false, false, true)) ^ vec4<i32>(arg_1, arg_1, u_input.b, u_input.b), max(select(vec4<i32>(1i, -43231i, 2147483647i, 1i), vec4<i32>(u_input.b, u_input.a, -43825i, -46826i), vec4<bool>(false, true, true, false)), vec4<i32>(60152i, 2147483647i, u_input.b, 0i)), true));
    var var_1 = ~vec2<i32>(arg_1, -(~0i));
    let var_2 = abs(~countOneBits(max(vec4<i32>(arg_1, arg_0, -1i, var_1.x), vec4<i32>(-1i, 1i, var_1.x, 24291i)))) >> (abs(vec4<u32>(func_3(vec3<u32>(0u, 60766u, 44887u)), 0u, firstTrailingBit(1u), _wgslsmith_div_u32(max(20999u, 4294967295u), 1u))) % vec4<u32>(32u));
    var var_3 = vec2<u32>(func_3(~(select(vec3<u32>(61129u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<bool>(false, false, false)) | max(vec3<u32>(65338u, 17147u, 37074u), vec3<u32>(4294967295u, 4294967295u, 44194u)))), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(54147u, 4294967295u, 0u), ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(47660u, 27067u), firstTrailingBit(vec2<u32>(1u, 1u))), 4294967295u)));
    return -11254i;
}

fn func_1() -> u32 {
    var var_0 = ~u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(~select(4294967295u, 1u, true), abs(0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(36216u, 16624u, 1u, 17164u), ~vec4<u32>(53592u, 0u, 4294967295u, 0u)), ~4294967295u << (~4294967295u % 32u)), firstTrailingBit(vec4<u32>(1u, 13123u, 0u, firstLeadingBit(15318u)))) % 32u);
    var var_1 = 1i;
    var var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(func_2(abs(u_input.a), 0i), u_input.a << (43925u % 32u), u_input.a, ~(~16087i)), firstTrailingBit(-vec4<i32>(-1i, 1i, 41287i, 0i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 0i, -2147483647i), vec4<i32>(7632i, u_input.a, u_input.a, u_input.a))));
    var_2 = ~(-(~min(vec4<i32>(u_input.b, u_input.a, -26441i, var_2.x) & vec4<i32>(0i, -2147483647i, u_input.b, 18560i), ~vec4<i32>(var_2.x, var_2.x, u_input.b, u_input.a))));
    var_2 = _wgslsmith_add_vec4_i32(min(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.x, var_2.x, -40849i, var_2.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(-20022i, u_input.b, u_input.b, 36941i), vec4<i32>(-34577i, 5433i, 1i, var_2.x) >> (vec4<u32>(1u, 18362u, 1u, 1u) % vec4<u32>(32u)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1349i, u_input.b, u_input.b, 2147483647i) & vec4<i32>(-2147483647i, 35525i, var_2.x, var_2.x), vec4<i32>(u_input.a, -28481i, -2147483647i, -1i), min(vec4<i32>(var_2.x, u_input.b, u_input.a, var_2.x), vec4<i32>(u_input.b, var_2.x, u_input.b, u_input.a)))), max(firstLeadingBit(firstTrailingBit(vec4<i32>(40108i, var_2.x, u_input.b, u_input.a))), vec4<i32>(max(func_2(u_input.b, 25842i), -9738i), _wgslsmith_clamp_i32(-1i, 1i, reverseBits(u_input.b)), 1i, u_input.a)));
    return ~57918u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(false, ~115916u < _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 22668u, 59581u), vec3<u32>(4294967295u, 19554u, 0u)), !any(vec2<bool>(false, true))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), true), !all(vec4<bool>(true, true, true, true))), true, !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = func_1();
    var var_2 = Struct_1(select(vec3<bool>(true, any(vec3<bool>(false, var_0.c.x, true)), var_0.a.x), select(!(!var_0.a), select(select(var_0.a, vec3<bool>(var_0.c.x, false, false), vec3<bool>(var_0.b, false, true)), select(var_0.a, var_0.a, false), false & var_0.a.x), !select(var_0.a, var_0.a, var_0.a)), var_0.a.x), false, !select(!(!var_0.a.zz), vec2<bool>(true, var_0.a.x), var_0.c.x));
    let var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(1i, 0i, u_input.a)) & _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.b, u_input.a, -3936i)), abs(vec3<i32>(1i, u_input.a, 0i))), vec3<i32>(-4956i, u_input.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -45287i), ~u_input.a))), -select(~abs(vec3<i32>(-50629i, u_input.b, u_input.b)), -(~vec3<i32>(0i, u_input.a, -16775i)), select(!vec3<bool>(var_2.b, false, true), vec3<bool>(true, true, var_2.a.x), true)));
    var_2 = Struct_1(select(var_0.a, var_0.a, !select(vec3<bool>(false, var_0.b, var_0.c.x), !vec3<bool>(var_2.a.x, var_0.a.x, true), var_2.a)), true, !select(vec2<bool>(true, true), select(vec2<bool>(var_2.a.x, true), select(vec2<bool>(var_2.b, var_2.c.x), var_2.c, true), vec2<bool>(true, var_0.c.x)), true));
    let var_4 = Struct_1(select(var_2.a, vec3<bool>(any(!var_0.a.yy), any(select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a.x, var_2.c.x, false, var_0.a.x), var_0.b)), !var_2.a.x), vec3<bool>(14951u >= (4294967295u | var_1), any(vec2<bool>(var_0.a.x, true)), any(var_2.c))), any(!var_2.a), var_2.c);
    let var_5 = Struct_2(~(-firstTrailingBit(min(vec4<i32>(u_input.a, 1i, 2147483647i, -46701i), vec4<i32>(var_3.x, u_input.a, 44857i, -2147483647i)))));
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(12685i, var_3.x)), var_6.a.xx), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, ~4294967295u, ~var_1), vec4<u32>(var_1, var_1, 0u, 47780u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(384f, -1581f)))), _wgslsmith_f_op_f32(-269f + 519f))), -1i, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(622f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -235f))))));
}

