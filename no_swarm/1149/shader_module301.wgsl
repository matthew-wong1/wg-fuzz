struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(true, false), -862f, vec3<u32>(0u, 5276u, 1u), vec4<u32>(74145u, 95362u, 14506u, 67090u)), Struct_1(vec2<bool>(true, false), -498f, vec3<u32>(68719u, 1u, 0u), vec4<u32>(40738u, 36519u, 10427u, 1u)), Struct_1(vec2<bool>(false, false), -842f, vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(65884u, 49016u, 850u, 4294967295u)), Struct_1(vec2<bool>(false, true), -1201f, vec3<u32>(4294967295u, 1759u, 24478u), vec4<u32>(4294967295u, 3967u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, false), 144f, vec3<u32>(55321u, 4294967295u, 51635u), vec4<u32>(0u, 89574u, 17870u, 45423u)), Struct_1(vec2<bool>(true, true), -289f, vec3<u32>(56445u, 31998u, 14825u), vec4<u32>(1u, 2770u, 0u, 0u)), Struct_1(vec2<bool>(true, false), -2283f, vec3<u32>(51251u, 4294967295u, 4294967295u), vec4<u32>(44430u, 83578u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, true), -384f, vec3<u32>(1u, 18674u, 1u), vec4<u32>(1u, 4294967295u, 34963u, 4294967295u)), Struct_1(vec2<bool>(false, false), -1908f, vec3<u32>(4294967295u, 36109u, 12158u), vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, true), 532f, vec3<u32>(84893u, 4294967295u, 8405u), vec4<u32>(57856u, 85183u, 245u, 40815u)), Struct_1(vec2<bool>(false, true), -622f, vec3<u32>(35595u, 1u, 6177u), vec4<u32>(118558u, 0u, 4294967295u, 47152u)), Struct_1(vec2<bool>(true, false), 259f, vec3<u32>(0u, 4294967295u, 4294967295u), vec4<u32>(81124u, 0u, 21470u, 1u)), Struct_1(vec2<bool>(false, false), -412f, vec3<u32>(35465u, 4294967295u, 0u), vec4<u32>(70883u, 38079u, 0u, 0u)), Struct_1(vec2<bool>(false, true), -355f, vec3<u32>(1u, 1u, 1u), vec4<u32>(27975u, 151599u, 22518u, 1u)), Struct_1(vec2<bool>(false, true), 1389f, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(41468u, 4294967295u, 12880u, 1u)));

var<private> global1: i32 = -1i;

var<private> global2: f32 = -1626f;

var<private> global3: vec2<i32> = vec2<i32>(0i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1420f - 859f) * _wgslsmith_div_f32(895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-296f, -1000f))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0, var_0)))))) - var_0);
    let var_1 = -vec3<i32>(0i, -1i, 1i);
    var var_2 = Struct_1(!vec2<bool>(arg_1, arg_1), 132f, ~(~(~vec3<u32>(1640u, arg_0, u_input.a))), select(min(max(vec4<u32>(arg_0, arg_0, arg_0, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 40909u, 36603u), vec4<u32>(arg_0, 0u, arg_0, u_input.a))), vec4<u32>(_wgslsmith_add_u32(arg_0, 1u), _wgslsmith_mod_u32(arg_0, arg_0), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(28822u, 33355u, arg_0)))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, arg_0), vec4<u32>(2733u, 2044u, 4294967295u, arg_0), vec4<u32>(arg_0, arg_0, 45543u, 9500u)) ^ ~vec4<u32>(56313u, u_input.a, u_input.a, 45280u)), select(select(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, true, false, true), vec4<bool>(true, arg_1, true, arg_1)), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1), !(!vec4<bool>(arg_1, false, false, arg_1)), vec4<bool>(true, arg_1, arg_1, true))));
    let var_3 = true;
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-567f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -223f))))));
    var var_1 = Struct_1(select(arg_0.xz, !vec2<bool>(arg_1 | arg_1, func_3(1u, true)), arg_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), true)))), firstTrailingBit(vec3<u32>(reverseBits(~8513u), ~firstLeadingBit(u_input.a), ~55203u)), abs(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 80320u), vec4<u32>(u_input.a, 32129u, 25055u, 4294967295u)))));
    return var_0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.b)), arg_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, arg_1.b, arg_1.b) + vec3<f32>(-147f, 1497f, -658f)), vec3<f32>(1000f, arg_1.b, arg_1.b))))) + vec3<f32>(arg_1.b, _wgslsmith_div_f32(990f, arg_1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.b))))))));
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_add_i32(-45887i, select(1i, 1i, true)), 0i), ~0i);
    var var_2 = ~abs(arg_0.zx);
    let var_3 = _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(0u, abs(u_input.a))));
    var_1 = vec2<i32>(select(u_input.b, ~u_input.b, arg_1.a.x), _wgslsmith_clamp_i32(firstLeadingBit(arg_2), _wgslsmith_add_i32(2147483647i, firstLeadingBit(var_1.x)), _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, global3.x, -92843i, var_1.x), vec4<i32>(arg_2, var_1.x, 7205i, 2147483647i), vec4<i32>(u_input.c.x, arg_2, -2147483647i, u_input.b)), vec4<i32>(8865i, global3.x, global3.x, var_1.x) >> (~arg_0 % vec4<u32>(32u)))));
    return !(!(!(!(!vec4<bool>(true, arg_1.a.x, true, true)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = 1u & u_input.a;
    global3 = -(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0, ~arg_0, vec2<i32>(u_input.c.x, 56987i) | u_input.c), arg_0) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0, var_0) ^ (vec2<u32>(4294967295u, u_input.a) << (vec2<u32>(30794u, var_0) % vec2<u32>(32u))), vec2<u32>(var_0, ~var_0), vec2<u32>(u_input.a | u_input.a, var_0)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-337f, _wgslsmith_f_op_f32(max(-448f, _wgslsmith_f_op_f32(f32(-1f) * -306f))), _wgslsmith_f_op_f32(floor(-847f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2203f, 795f)), _wgslsmith_f_op_f32(ceil(-1534f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 119f, -625f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1298f, -682f, -160f, -1000f))))))));
    global0 = array<Struct_1, 15>();
    let var_2 = abs(vec2<u32>(_wgslsmith_mult_u32(0u, ~var_0), var_0));
    return global0[_wgslsmith_index_u32(~13224u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.c, vec3<bool>(false, any(select(func_1(vec4<u32>(667u, u_input.a, u_input.a, 5468u), Struct_1(vec2<bool>(true, true), 491f, vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), u_input.b), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), false), 0i);
    let var_1 = ~(~firstLeadingBit(u_input.a));
    var var_2 = func_3(_wgslsmith_dot_vec2_u32(var_0.d.yy, var_0.d.xz), !(!(var_0.a.x & var_0.a.x)));
    var var_3 = ~var_0.d.x;
    var_2 = !func_3(min(firstLeadingBit(u_input.a) | u_input.a, ~var_0.d.x), u_input.b >= firstLeadingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(min(firstTrailingBit(u_input.c), ~(~vec2<i32>(-2147483647i, 8124i))), -u_input.c), _wgslsmith_add_u32(var_0.d.x, firstTrailingBit(max(32156u, 1u << (0u % 32u)))));
}

