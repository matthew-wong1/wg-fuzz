struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: vec4<i32> = vec4<i32>(-1i, 15906i, 0i, 84681i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> bool {
    global1 = u_input.c;
    var var_0 = Struct_3(Struct_2(vec3<i32>(~arg_0.a.a.x, _wgslsmith_sub_i32(-28447i, u_input.a.x), -1i) ^ vec3<i32>(-arg_0.a.a.x, 0i, 28933i), Struct_1(arg_0.b.wzy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -814f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1302f + arg_0.d.b.b))), Struct_1(select(!arg_0.d.b.a, vec3<bool>(false, false, arg_0.a.c.a.x), arg_0.a.a.x != arg_0.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2274f + 1778f), _wgslsmith_div_f32(461f, arg_0.d.b.b)), -1000f), reverseBits(~arg_0.c)), select(vec4<bool>(true, -2147483647i == -arg_0.d.a.x, all(arg_0.b), all(select(arg_0.a.c.a.zz, vec2<bool>(false, true), vec2<bool>(arg_0.b.x, arg_0.b.x)))), !select(vec4<bool>(true, false, true, arg_0.b.x), !vec4<bool>(true, arg_0.d.c.a.x, arg_0.b.x, arg_0.b.x), arg_0.a.c.a.x), any(arg_0.b)), ~(~(~global0[_wgslsmith_index_u32(1u, 30u)])) | ~(_wgslsmith_add_u32(4294967295u, arg_0.d.d) & 1u), Struct_2(-_wgslsmith_clamp_vec3_i32(abs(global1.zwx), ~global1.wxz, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d.a.x, 49193i, -73337i), vec3<i32>(38462i, u_input.b, global1.x))), Struct_1(!(!vec3<bool>(arg_0.b.x, arg_0.d.b.a.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.c + arg_0.a.b.c)), arg_0.a.b.c), Struct_1(arg_0.a.c.a, arg_0.d.b.b, -2889f), firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.c, 30u)], 30u)], arg_0.d.d), vec2<u32>(44410u, 2633u)))));
    var var_1 = vec4<bool>(true, !(true != (false & !var_0.b.x)), arg_0.d.b.a.x, arg_0.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.d.b.c, -1039f, -1225f), vec3<f32>(var_0.d.c.b, arg_0.a.b.b, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-573f, 220f, 1154f))))) + vec3<f32>(-383f, _wgslsmith_f_op_f32(select(-2063f, _wgslsmith_f_op_f32(floor(2113f)), true)), _wgslsmith_f_op_f32(min(arg_0.d.b.b, -2417f))))));
    let var_3 = var_0.a.c;
    return _wgslsmith_f_op_f32(floor(var_2.x)) <= -1000f;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global0 = array<u32, 30>();
    var var_0 = vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)) | true, !func_3(Struct_3(Struct_2(u_input.c.wxx, Struct_1(vec3<bool>(false, false, true), -1396f, 1000f), Struct_1(vec3<bool>(true, true, false), 244f, -550f), 0u), vec4<bool>(false, true, false, false), arg_0.x, Struct_2(global1.xzz, Struct_1(vec3<bool>(false, true, true), 1526f, -1000f), Struct_1(vec3<bool>(true, false, true), 1000f, 724f), 1775u))), true, true);
    let var_1 = select(vec4<bool>(var_0.x, true, var_0.x, any(!vec2<bool>(var_0.x, var_0.x))), !(!vec4<bool>(var_0.x, all(vec2<bool>(var_0.x, false)), true, !var_0.x)), vec4<bool>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1506f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f + 740f)), any(select(var_0.xzw, vec3<bool>(false, false, var_0.x), var_0.ywy)), all(select(!vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(615f + 714f), _wgslsmith_f_op_f32(-1f))));
    var var_3 = u_input.b ^ global1.x;
    return 0i;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_2 {
    global1 = _wgslsmith_clamp_vec4_i32(-u_input.c, ~u_input.c, u_input.c) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, u_input.b), 0i, u_input.a.x, abs(-102936i)), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(select(global1.x, arg_2.d.a.x, false), i32(-1i) * -48140i, func_2(vec3<u32>(18906u, 1u, arg_1)), -1i), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 24407i, -2147483647i, u_input.a.x), max(u_input.c, u_input.c))));
    let var_0 = arg_2.d;
    global0 = array<u32, 30>();
    var var_1 = (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0.d, 2095u, arg_2.c)), vec3<u32>(select(arg_2.c, 27517u, arg_2.a.c.a.x), 4294967295u ^ arg_1, 2113u & global0[_wgslsmith_index_u32(27699u, 30u)])) & min(reverseBits(abs(vec3<u32>(67289u, 4294967295u, arg_2.a.d))), select(vec3<u32>(4294967295u, arg_1, 73653u) & vec3<u32>(arg_1, var_0.d, var_0.d), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(10027u, 30u)], 52620u, var_0.d)), !arg_2.d.c.a))) << (~abs(~vec3<u32>(4294967295u, var_0.d, 27224u)) % vec3<u32>(32u));
    return arg_2.d;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~(~u_input.c);
    var var_1 = 10602i;
    var_1 = arg_0.a.x;
    let var_2 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b + 619f) * _wgslsmith_f_op_f32(771f * -1000f)))), 724f, 101f), arg_0.d, Struct_3(arg_0, vec4<bool>(false, !(!arg_0.b.a.x), arg_0.c.a.x, any(!vec2<bool>(arg_0.c.a.x, arg_0.b.a.x))), ~global0[_wgslsmith_index_u32(arg_0.d, 30u)] ^ _wgslsmith_mult_u32(select(4294967295u, 1u, arg_0.b.a.x), global0[_wgslsmith_index_u32(arg_0.d, 30u)]), Struct_2(reverseBits(vec3<i32>(var_0.x, 0i, arg_0.a.x)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, -279f, -993f, arg_0.b.b)), ~1u, Struct_3(Struct_2(var_0.xzz, Struct_1(arg_0.b.a, 1015f, -1213f), arg_0.c, 4294967295u), vec4<bool>(false, false, arg_0.c.a.x, arg_0.b.a.x), arg_0.d, Struct_2(var_0.yxw, Struct_1(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, true), -1175f, 455f), Struct_1(vec3<bool>(arg_0.c.a.x, false, arg_0.c.a.x), arg_0.b.b, arg_0.b.b), 28537u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c, -1672f, arg_0.c.c, arg_0.b.c) * vec4<f32>(2477f, arg_0.c.b, arg_0.b.b, arg_0.c.b))).b, Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(round(arg_0.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -959f)), arg_0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1405f, 413f, -727f, arg_0.b.b) - vec4<f32>(arg_0.c.c, 1187f, -483f, arg_0.b.c)))))))).d;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(162f, arg_0.b.c))), vec2<f32>(1115f, _wgslsmith_f_op_f32(abs(1031f)))), vec2<f32>(105f, -1371f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, -2456f)))))));
    return Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 197f, 916f, 1051f) - vec4<f32>(1020f, arg_0.b.c, arg_0.b.c, var_3.x))))), ~(~42854u), Struct_3(arg_0, vec4<bool>(false, select(arg_0.c.a.x, true, arg_0.c.a.x), true, true), ~(70101u << (1u % 32u)), Struct_2(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-28636i, u_input.a.x, 90754i)), arg_0.b, func_1(vec4<f32>(var_3.x, arg_0.c.b, var_3.x, 725f), arg_0.d, Struct_3(Struct_2(u_input.c.xxx, Struct_1(vec3<bool>(false, arg_0.c.a.x, arg_0.c.a.x), arg_0.c.b, 985f), Struct_1(arg_0.c.a, 1000f, var_3.x), arg_0.d), vec4<bool>(arg_0.b.a.x, true, false, true), arg_0.d, Struct_2(u_input.a, Struct_1(vec3<bool>(arg_0.c.a.x, false, true), -1265f, arg_0.c.c), Struct_1(vec3<bool>(arg_0.c.a.x, arg_0.b.a.x, arg_0.b.a.x), var_3.x, -501f), 45905u)), vec4<f32>(var_3.x, -1068f, 517f, 1000f)).b, ~0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 707f, 514f, 971f)))).a, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -1348f, -346f, -203f)) + vec4<f32>(_wgslsmith_f_op_f32(round(688f)), _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(-arg_0.b.c), var_3.x)), ~(~(~78557u)), Struct_3(arg_0, select(vec4<bool>(false, arg_0.b.a.x, arg_0.c.a.x, arg_0.b.a.x), vec4<bool>(true, arg_0.c.a.x, arg_0.b.a.x, true), !arg_0.c.a.x), 61221u, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b, 712f, arg_0.b.c, var_3.x) + vec4<f32>(arg_0.b.c, arg_0.c.b, arg_0.c.b, var_3.x)), ~var_2, Struct_3(arg_0, vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, true), arg_0.d, arg_0), vec4<f32>(1039f, arg_0.c.b, 1083f, var_3.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b, -1000f, arg_0.c.b, arg_0.c.b)))))).b, Struct_1(!func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1245f, -806f, 1000f, 1000f) * vec4<f32>(var_3.x, -695f, -901f, var_3.x)), arg_0.d, Struct_3(arg_0, vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), arg_0.d, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, arg_0.b.b, var_3.x, arg_0.c.c))).b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_3.x)), 998f)), _wgslsmith_f_op_f32(arg_0.c.b + _wgslsmith_f_op_f32(arg_0.c.b * 660f))), max(var_2, 16509u));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_1 {
    return arg_2.a.c;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = !vec3<bool>(true, !any(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), !any(!arg_1.a));
    let var_1 = vec3<i32>(select(_wgslsmith_add_i32(u_input.c.x, global1.x << (0u % 32u)), reverseBits(-2147483647i), arg_1.a.x) ^ ~(~u_input.a.x), select(33552i, i32(-1i) * -_wgslsmith_clamp_i32(u_input.c.x, -5899i, 32999i), true), ~(-(u_input.a.x << ((31980u | global0[_wgslsmith_index_u32(15443u, 30u)]) % 32u))));
    let var_2 = countOneBits(func_4(func_4(Struct_2(var_1, Struct_1(vec3<bool>(var_0.x, arg_1.a.x, false), 834f, -461f), arg_1, ~30049u))).d);
    global0 = array<u32, 30>();
    var var_3 = reverseBits(1u);
    return ~_wgslsmith_add_u32(~(~35187u), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4978i;
    let var_1 = select(true, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), abs(global1.x) == _wgslsmith_div_i32(13457i, var_0))), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))));
    let var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(abs(22651u >> (global0[_wgslsmith_index_u32(0u, 30u)] % 32u)), ~(~4294967295u), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36615u, 30u)], 30u)])), select(~vec3<u32>(1119u, global0[_wgslsmith_index_u32(46142u, 30u)], 45104u) ^ ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 0u, 89413u), min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 0u), vec3<u32>(0u, global0[_wgslsmith_index_u32(50330u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2974u, 30u)], 30u)], 30u)])), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 30u)])), var_1));
    let var_3 = var_2.x;
    let var_4 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(867f * -1160f), _wgslsmith_f_op_f32(378f + 103f), _wgslsmith_f_op_f32(338f + -119f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1795f, -618f, -488f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(989f, 190f, -1509f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(911f, -905f, -499f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(168f, -262f, 194f))))))), func_5(any(!vec4<bool>(false, false, var_1, var_1)) && true, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u), vec2<u32>(0u, var_2.x) >> (var_2.xz % vec2<u32>(32u))), Struct_3(func_4(func_1(vec4<f32>(-1031f, -1000f, 317f, -1217f), 1u, Struct_3(Struct_2(vec3<i32>(0i, global1.x, 0i), Struct_1(vec3<bool>(var_1, false, false), 844f, -767f), Struct_1(vec3<bool>(var_1, false, var_1), 1928f, -255f), var_3), vec4<bool>(false, true, var_1, var_1), var_3, Struct_2(vec3<i32>(0i, var_0, 28990i), Struct_1(vec3<bool>(true, var_1, false), 1000f, -711f), Struct_1(vec3<bool>(var_1, var_1, var_1), 937f, 420f), var_2.x)), vec4<f32>(1127f, 528f, -3239f, -783f))), !vec4<bool>(var_1, var_1, true, false), 1u, Struct_2(-u_input.a, func_1(vec4<f32>(-1290f, -1062f, -622f, 711f), var_3, Struct_3(Struct_2(u_input.a, Struct_1(vec3<bool>(var_1, var_1, false), 844f, -299f), Struct_1(vec3<bool>(var_1, var_1, var_1), 1736f, -732f), 0u), vec4<bool>(var_1, true, true, true), 0u, Struct_2(u_input.c.zzy, Struct_1(vec3<bool>(var_1, var_1, var_1), -1420f, 572f), Struct_1(vec3<bool>(var_1, var_1, true), 893f, 1000f), var_3)), vec4<f32>(873f, 1310f, 1432f, 1000f)).c, Struct_1(vec3<bool>(var_1, var_1, false), -420f, -433f), _wgslsmith_div_u32(var_2.x, global0[_wgslsmith_index_u32(var_2.x, 30u)]))), ~(var_2 | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], 42707u), vec3<u32>(1u, 0u, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1101f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_1(vec4<f32>(520f, 1032f, -1269f, 1528f), 4294967295u, Struct_3(Struct_2(global1.yzy, Struct_1(vec3<bool>(var_1, var_1, true), -512f, 1092f), Struct_1(vec3<bool>(false, var_1, true), 1000f, -1516f), 1u), vec4<bool>(var_1, true, true, true), global0[_wgslsmith_index_u32(var_3, 30u)], Struct_2(vec3<i32>(20680i, u_input.c.x, 75777i), Struct_1(vec3<bool>(var_1, false, false), 354f, -666f), Struct_1(vec3<bool>(false, true, var_1), 1158f, 2131f), var_2.x)), vec4<f32>(-773f, -273f, 807f, -226f)).b.b)) - _wgslsmith_div_f32(580f, _wgslsmith_f_op_f32(f32(-1f) * -866f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -472f)) - func_5(var_1, vec2<u32>(0u, var_3), Struct_3(Struct_2(global1.yww, Struct_1(vec3<bool>(var_1, true, var_1), 257f, 452f), Struct_1(vec3<bool>(true, var_1, true), 665f, -1000f), 0u), vec4<bool>(var_1, var_1, var_1, var_1), 0u, Struct_2(u_input.a, Struct_1(vec3<bool>(var_1, false, var_1), 225f, 112f), Struct_1(vec3<bool>(false, true, var_1), -253f, -318f), 43114u)), _wgslsmith_mult_vec3_u32(var_2, var_2)).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(764f, 128f, all(vec3<bool>(true, true, var_1)))) * -566f)), _wgslsmith_sub_vec4_u32(reverseBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_3, 30u)], 95160u, 1u, global0[_wgslsmith_index_u32(var_3, 30u)]), vec4<u32>(var_3, var_3, 26441u, 74718u)), vec4<u32>(global0[_wgslsmith_index_u32(90903u, 30u)], 8455u, global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), !var_1)), vec4<u32>(43693u, ~(var_4 | 0u), firstLeadingBit(reverseBits(1u)), var_4)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-278f, 461f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, 1318f))) - vec2<f32>(504f, _wgslsmith_f_op_f32(f32(-1f) * -1042f)))));
}

