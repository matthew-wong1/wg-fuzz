struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<i32>(10678i, 1i, 1i), -372f, vec4<bool>(true, false, true, true), i32(-2147483648)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 2147483647i), -673f, vec4<bool>(true, true, false, true), -16217i), Struct_1(vec3<i32>(i32(-2147483648), -49987i, 2204i), -1066f, vec4<bool>(true, false, true, false), 2147483647i), Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), -921f, vec4<bool>(false, false, true, true), -22891i), Struct_1(vec3<i32>(-38204i, 2147483647i, -1i), 1959f, vec4<bool>(false, true, false, true), 11513i), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), -584f, vec4<bool>(true, false, false, true), 0i), Struct_1(vec3<i32>(4447i, 11769i, -7898i), 1146f, vec4<bool>(true, false, false, false), 2147483647i), Struct_1(vec3<i32>(-2219i, i32(-2147483648), 0i), -734f, vec4<bool>(false, true, true, false), -46198i), Struct_1(vec3<i32>(4430i, -1i, 37322i), -590f, vec4<bool>(true, false, false, true), 27794i), Struct_1(vec3<i32>(i32(-2147483648), 35229i, 2147483647i), -1202f, vec4<bool>(false, false, false, false), -20618i), Struct_1(vec3<i32>(-1i, 14780i, 22783i), 1164f, vec4<bool>(true, false, false, true), 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), 1655f, vec4<bool>(false, true, true, true), 42399i), Struct_1(vec3<i32>(1i, 2147483647i, 66057i), -638f, vec4<bool>(false, false, false, true), 0i), Struct_1(vec3<i32>(i32(-2147483648), -47491i, -23131i), 910f, vec4<bool>(true, true, false, true), i32(-2147483648)), Struct_1(vec3<i32>(2645i, -1i, 0i), 433f, vec4<bool>(true, true, true, true), i32(-2147483648)), Struct_1(vec3<i32>(0i, -37176i, 8346i), -1041f, vec4<bool>(false, true, false, true), 1i), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), 562f, vec4<bool>(true, true, true, false), 33796i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = reverseBits(-(~(-41856i) >> (~u_input.a.x % 32u)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), vec4<u32>(0u, 0u, 8899u, u_input.a.x))), ~vec4<u32>(_wgslsmith_clamp_u32(17281u, 3422u, 88717u), 4294967295u, 58807u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(38210u, u_input.a.x, u_input.a.x, 48105u)))), 1u);
    let var_2 = u_input.b;
    let var_3 = 1412f;
    let var_4 = (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, var_1) | vec3<u32>(var_1, 62227u, 6806u), _wgslsmith_sub_vec3_u32(vec3<u32>(60243u, 19613u, var_1), vec3<u32>(85228u, var_1, u_input.a.x))) << (~(~(~vec3<u32>(0u, 0u, 28636u))) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, var_1, var_1)), vec3<u32>(15005u, u_input.a.x, var_1)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1, 29778u) ^ vec3<u32>(var_1, u_input.a.x, 13787u), _wgslsmith_add_vec3_u32(vec3<u32>(52243u, u_input.a.x, 2106u), vec3<u32>(u_input.a.x, 57945u, 4294967295u)))), ~(vec3<u32>(var_1, var_1, 1u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(var_1, u_input.a.x, 67552u))));
    return -1i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_2.a.x, arg_1.x, arg_2.d)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, func_3(arg_0.x, Struct_1(arg_2.a, arg_2.b, arg_0, -2147483647i), 891f, Struct_1(arg_2.a, arg_2.b, arg_2.c, u_input.b)), firstTrailingBit(u_input.b)), ~arg_2.a >> (_wgslsmith_mod_vec3_u32(vec3<u32>(73693u, u_input.a.x, 59465u), vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(ceil(1000f)), select(select(!select(vec4<bool>(true, arg_2.c.x, arg_3, arg_2.c.x), vec4<bool>(arg_3, arg_2.c.x, arg_3, arg_0.x), vec4<bool>(false, arg_3, false, arg_2.c.x)), vec4<bool>(arg_3, arg_3, arg_2.c.x, true), !vec4<bool>(arg_3, true, true, arg_2.c.x)), !arg_2.c, any(vec2<bool>(!arg_2.c.x, !arg_2.c.x))), max(u_input.b, -countOneBits(~arg_2.d)));
    let var_1 = Struct_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, min(-2147483647i, -24271i), -13459i), vec3<i32>(u_input.b ^ var_0.a.x, -arg_2.a.x, var_0.d << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(-arg_2.b), !vec4<bool>(true, true, true, !all(arg_2.c.yww)), ~firstLeadingBit(-1i));
    global0 = array<Struct_1, 17>();
    let var_2 = ~0u;
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(~abs(arg_2.d), firstTrailingBit(1i), ~var_0.d >> (2514u % 32u), firstTrailingBit(arg_1.x)), ~abs(vec4<i32>(-1i, arg_1.x, var_0.a.x, var_1.a.x) >> (~vec4<u32>(47773u, u_input.a.x, var_2, 0u) % vec4<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = vec3<i32>(-_wgslsmith_clamp_i32(-20779i, arg_1.d, arg_1.d), u_input.b, ~max(-1i, -func_2(arg_1.c, arg_1.a.zy, Struct_1(arg_1.a, -662f, vec4<bool>(true, arg_1.c.x, true, arg_1.c.x), arg_1.a.x), arg_1.c.x)));
    var var_1 = Struct_1(max(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.x, 0i, u_input.b), vec3<i32>(select(var_0.x, 2147483647i, false), abs(var_0.x), 0i)), vec3<i32>(arg_1.a.x, arg_1.a.x, 10209i) | ~arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(639f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), arg_1.b)))) + arg_1.b), !(!select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, true), !arg_1.c, true)), u_input.b);
    let var_2 = 0i;
    return global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 17u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(abs(vec3<i32>(arg_0.a.x, ~(-u_input.b), abs(min(u_input.b, -28695i)))), -1034f, func_1(u_input.a.x, arg_1).c, i32(-1i) * -firstLeadingBit(abs(-11773i)));
    global0 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-369f, var_0.b), vec2<f32>(-143f, -705f), var_0.c.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, arg_0.b), vec2<f32>(var_0.b, -113f))))), func_1(_wgslsmith_add_u32(abs(u_input.a.x), 1u), arg_0).c.xw)));
    let var_2 = vec4<bool>(arg_0.c.x, true, arg_1.c.x, var_0.c.x);
    var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_0.b));
    return arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_div_i32(-1i, arg_0.x);
    var var_1 = u_input.b;
    global0 = array<Struct_1, 17>();
    let var_2 = any(arg_2.c.zw);
    global0 = array<Struct_1, 17>();
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.b, ~0i, _wgslsmith_add_i32(-11335i, 1i)), max(firstLeadingBit(vec3<i32>(13996i, -2147483647i, u_input.b)), firstTrailingBit(vec3<i32>(2147483647i, u_input.b, 2147483647i))) & (vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1215f), func_5(vec4<i32>(78485i, 2147483647i, _wgslsmith_add_i32(~u_input.b, 1i), _wgslsmith_mult_i32(0i, -34404i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(494f, -360f, -373f) + vec3<f32>(-440f, -387f, 426f)))), func_4(Struct_1(vec3<i32>(-2147483647i, -1i, u_input.b) & vec3<i32>(-1i, u_input.b, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -771f), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), 2147483647i), func_1(~u_input.a.x, Struct_1(vec3<i32>(u_input.b, -27250i, -1i), -2384f, vec4<bool>(true, false, false, false), u_input.b)))), _wgslsmith_mult_i32(func_3(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 70828u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 17u)]).c.x, Struct_1(vec3<i32>(-1i, u_input.b, -3684i) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(-1251f)), func_1(4011u, Struct_1(vec3<i32>(u_input.b, 30597i, u_input.b), -1963f, vec4<bool>(false, true, true, false), 2147483647i)).c, u_input.b), -1310f, func_4(func_4(global0[_wgslsmith_index_u32(12732u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), u_input.b));
    let var_1 = Struct_1(firstTrailingBit(var_0.a), _wgslsmith_f_op_f32(select(-119f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -757f)))), false)), select(var_0.c, !var_0.c, true), u_input.b);
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, -_wgslsmith_sub_i32(var_0.a.x, i32(-1i) * -27597i), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(firstTrailingBit(u_input.a.x), func_4(var_0, var_0)).b, _wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(max(1000f, -198f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * 677f)))) * vec3<f32>(768f, -1260f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, var_0.b))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)), -1451f)));
}

