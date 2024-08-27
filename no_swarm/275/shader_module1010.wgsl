struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.a.x;
    let var_1 = Struct_2(_wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, arg_1, 91671u), vec3<u32>(0u, 40670u, arg_1), vec3<u32>(28605u, 4294967295u, arg_1)) | ~vec3<u32>(arg_1, arg_1, arg_1), ~vec3<u32>(arg_1, 27735u, arg_1), false), ~vec3<u32>(~arg_1, _wgslsmith_mult_u32(arg_1, arg_1), arg_1)), arg_2.a, select(max(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 96221u, arg_1, 51775u), vec4<u32>(4294967295u, 7812u, arg_1, arg_1)), ~vec4<u32>(arg_1, 63132u, 0u, 4294967295u)), ~(~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, arg_1, arg_1))), vec4<bool>(any(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, false, false, arg_2.a.x), true)), true, false, true)), arg_2, ~vec2<i32>(~max(33773i, 24070i), -select(-18114i, 67599i, arg_2.a.x)));
    var_0 = false;
    let var_2 = Struct_3(select(all(vec3<bool>(true, true, true)), true, !((59828i < u_input.a.x) || true)), false, Struct_2(~var_1.a, !vec2<bool>(true, !var_1.d.a.x), vec4<u32>(~(~arg_1), abs(50476u), var_1.c.x, ~arg_1 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 54034u), vec2<u32>(67075u, 6490u)) % 32u)), Struct_1(vec2<bool>(select(true, var_1.d.a.x, var_1.d.a.x), true)), vec2<i32>(abs(~var_1.e.x), firstLeadingBit(i32(-1i) * -29821i))), var_1);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = ~(-2147483647i);
    var var_1 = arg_1.c.x;
    var_1 = func_3(u_input.a, ~arg_1.c.x, Struct_1(!vec2<bool>(arg_1.d.a.x, !arg_0.a.x)));
    var var_2 = u_input.a.x;
    var_0 = _wgslsmith_div_i32(arg_1.e.x, -18622i);
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<f32>(1684f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2)));
    var var_1 = select(vec2<bool>(arg_0.b.x, !(abs(arg_0.a.x) == 4294967295u)), arg_0.d.a, arg_1.d.a.x);
    let var_2 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(1088f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -600f)), -253f)))));
    let var_3 = -767f;
    let var_4 = arg_0.e;
    return firstLeadingBit(_wgslsmith_sub_u32(57188u, ~(arg_1.a.x << (~arg_0.c.x % 32u))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = (~0u > ~func_4(func_2(Struct_1(vec2<bool>(false, false)), Struct_2(vec3<u32>(0u, 87088u, 4294967295u), vec2<bool>(true, false), vec4<u32>(59767u, 42885u, 0u, 0u), Struct_1(vec2<bool>(true, true)), vec2<i32>(u_input.a.x, -44864i)), vec2<bool>(true, false), u_input.a.x), func_2(Struct_1(vec2<bool>(false, false)), Struct_2(vec3<u32>(1u, 81221u, 0u), vec2<bool>(false, true), vec4<u32>(31153u, 72440u, 39292u, 17476u), Struct_1(vec2<bool>(true, false)), vec2<i32>(u_input.a.x, -2147483647i)), vec2<bool>(false, false), 32174i), 245f, Struct_1(vec2<bool>(true, false)))) && true;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(191f, -382f));
    var var_2 = ~vec3<u32>(min(abs(func_2(Struct_1(vec2<bool>(false, false)), Struct_2(vec3<u32>(43816u, 0u, 0u), vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 4294967295u, 67540u), Struct_1(vec2<bool>(true, true)), arg_0.yy), vec2<bool>(false, true), -16951i).a.x), reverseBits(min(1u, 0u))), abs(~4294967295u) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 5864u, 0u), ~vec3<u32>(1u, 0u, 14815u)) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(28035u, 27465u, 68036u), vec3<u32>(33625u, 0u, 1u)), max(vec3<u32>(21999u, 54255u, 0u), vec3<u32>(4294967295u, 1u, 40573u)), vec3<u32>(16927u, 9589u, 21278u)), vec3<u32>(1u, _wgslsmith_clamp_u32(4240u, 31258u, 50709u), ~0u)));
    var_0 = !all(select(vec4<bool>(true, func_2(Struct_1(vec2<bool>(true, false)), Struct_2(vec3<u32>(4294967295u, 12198u, var_2.x), vec2<bool>(false, true), vec4<u32>(var_2.x, var_2.x, 5841u, 1u), Struct_1(vec2<bool>(true, false)), vec2<i32>(arg_0.x, 7902i)), vec2<bool>(true, true), arg_0.x).b.x, true, true), vec4<bool>(select(false, false, true), select(true, true, true), false, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))));
    return func_2(Struct_1(vec2<bool>(true, any(vec4<bool>(true, false, false, false)))), Struct_2(firstTrailingBit(~vec3<u32>(1u, 1u, var_2.x)), select(vec2<bool>(true, true), vec2<bool>(var_2.x > 1u, all(vec3<bool>(false, true, true))), !all(vec3<bool>(true, false, true))), abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, var_2.x, var_2.x, 0u), vec4<u32>(4294967295u, var_2.x, 0u, 0u)), vec4<u32>(var_2.x, 28915u, 4294967295u, var_2.x) & vec4<u32>(var_2.x, var_2.x, 1u, 4294967295u))), func_2(Struct_1(vec2<bool>(true, true)), Struct_2(select(vec3<u32>(1u, 4294967295u, var_2.x), vec3<u32>(var_2.x, 1u, var_2.x), vec3<bool>(true, true, false)), vec2<bool>(true, false), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 1u, var_2.x, var_2.x), vec4<u32>(1u, var_2.x, var_2.x, var_2.x)), Struct_1(vec2<bool>(true, false)), func_2(Struct_1(vec2<bool>(false, true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 2096u), vec2<bool>(false, false), vec4<u32>(1u, 1u, 25780u, 4294967295u), Struct_1(vec2<bool>(false, true)), arg_0.xz), vec2<bool>(false, true), arg_0.x).e), vec2<bool>(true, func_2(Struct_1(vec2<bool>(false, true)), Struct_2(vec3<u32>(var_2.x, var_2.x, var_2.x), vec2<bool>(false, false), vec4<u32>(4294967295u, var_2.x, var_2.x, 0u), Struct_1(vec2<bool>(true, false)), vec2<i32>(u_input.a.x, arg_0.x)), vec2<bool>(true, true), 18570i).b.x), reverseBits(firstLeadingBit(0i))).d, func_2(Struct_1(func_2(Struct_1(vec2<bool>(true, true)), Struct_2(vec3<u32>(var_2.x, var_2.x, 40680u), vec2<bool>(false, false), vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), Struct_1(vec2<bool>(true, true)), vec2<i32>(u_input.a.x, -32558i)), vec2<bool>(false, true), u_input.a.x).b), func_2(Struct_1(vec2<bool>(true, false)), Struct_2(vec3<u32>(59489u, var_2.x, var_2.x), vec2<bool>(true, true), vec4<u32>(1u, var_2.x, var_2.x, 4294967295u), Struct_1(vec2<bool>(false, false)), vec2<i32>(arg_0.x, u_input.a.x)), vec2<bool>(false, true), arg_0.x), vec2<bool>(all(vec3<bool>(false, false, false)), true), ~(~(-21801i))).e), vec2<bool>(false, true), ~arg_0.x).d;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: vec4<u32>) -> StorageBuffer {
    var var_0 = Struct_3(~arg_3.x == ~27475u, !(!(arg_2.c.a.x <= arg_2.d.a.x)), Struct_2(firstLeadingBit(arg_3.ywx), vec2<bool>(true, true), ~arg_2.d.c, Struct_1(arg_2.c.b), max(arg_2.d.e, _wgslsmith_mult_vec2_i32(-arg_2.c.e, _wgslsmith_mod_vec2_i32(vec2<i32>(-2238i, -2147483647i), arg_2.c.e)))), func_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(arg_2.b, false, false, arg_0.a.x)))), Struct_2(vec3<u32>(arg_3.x, ~arg_3.x, arg_2.d.a.x ^ 1u), !arg_0.a, arg_2.c.c, arg_0, -arg_2.d.e), select(vec2<bool>(func_1(vec3<i32>(arg_2.d.e.x, -27830i, 2147483647i)).a.x, arg_3.x > arg_3.x), !arg_2.d.d.a, all(arg_0.a)), -7181i));
    var_0 = Struct_3(!func_2(Struct_1(arg_2.c.d.a), arg_2.d, func_2(Struct_1(vec2<bool>(var_0.d.d.a.x, var_0.b)), func_2(arg_0, var_0.d, arg_2.d.d.a, var_0.c.e.x), vec2<bool>(arg_2.a, var_0.c.b.x), i32(-1i) * -56688i).b, -32120i).d.a.x, false, arg_2.d, var_0.d);
    var var_1 = func_1(_wgslsmith_sub_vec3_i32(u_input.a, firstTrailingBit(abs(-u_input.a)))).a.x;
    let var_2 = func_1(_wgslsmith_div_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.a.x, var_0.c.e.x, arg_2.c.e.x) & countOneBits(u_input.a)), -u_input.a));
    let var_3 = ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~arg_3.wxz, arg_3.xwx), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.c.a.x, arg_2.c.a.x), arg_3.zwy) << (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20973u, 4294967295u, 2469u), vec3<u32>(arg_2.c.c.x, arg_3.x, var_0.c.c.x), vec3<u32>(arg_3.x, arg_2.c.c.x, arg_2.c.c.x)), countOneBits(vec3<u32>(2155u, 1u, var_0.c.a.x))) % vec3<u32>(32u)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-744f, -959f, -337f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(544f, 108f, 1863f) - vec3<f32>(152f, 280f, 1749f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1409f, -587f) * -2000f), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1474f - 829f)), -763f)));
    let x = u_input.a;
    s_output = func_5(func_1(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-44002i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i))), _wgslsmith_clamp_i32(reverseBits(u_input.a.x), u_input.a.x, -(_wgslsmith_sub_i32(-41728i, 1i) | -u_input.a.x)), Struct_3(!all(func_2(Struct_1(vec2<bool>(true, true)), Struct_2(vec3<u32>(17261u, 1u, 9297u), vec2<bool>(false, true), vec4<u32>(0u, 18538u, 0u, 15891u), Struct_1(vec2<bool>(false, false)), vec2<i32>(0i, 1i)), vec2<bool>(false, true), 37395i).b), true, Struct_2(~(~vec3<u32>(1u, 57298u, 0u)), vec2<bool>(select(false, false, true), false), ~max(vec4<u32>(34909u, 35299u, 4294967295u, 4294967295u), vec4<u32>(0u, 29261u, 0u, 32986u)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), abs(u_input.a.yy)), func_2(func_2(func_1(u_input.a), func_2(Struct_1(vec2<bool>(false, false)), Struct_2(vec3<u32>(0u, 1133u, 288u), vec2<bool>(false, true), vec4<u32>(4294967295u, 43836u, 24959u, 21047u), Struct_1(vec2<bool>(false, true)), vec2<i32>(2147483647i, u_input.a.x)), vec2<bool>(false, true), u_input.a.x), func_2(Struct_1(vec2<bool>(false, false)), Struct_2(vec3<u32>(13122u, 1u, 18106u), vec2<bool>(true, true), vec4<u32>(78286u, 1u, 0u, 4294967295u), Struct_1(vec2<bool>(false, false)), u_input.a.yy), vec2<bool>(false, false), u_input.a.x).b, _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yy)).d, Struct_2(vec3<u32>(0u, 4294967295u, 0u), vec2<bool>(false, true), vec4<u32>(4294967295u, 17919u, 4294967295u, 13338u), func_1(u_input.a), _wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.zx)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_1(vec3<i32>(21299i, -2147483647i, 2147483647i)).a, true), -65518i | u_input.a.x)), ~select(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(3972u, 4294967295u, 4294967295u, 39952u), vec4<u32>(23498u, 0u, 19608u, 4294967295u)), ~51278u, 1u), ~vec4<u32>(40543u, 0u, 0u, 0u), vec4<bool>(true, true, true, true)));
}

