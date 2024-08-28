struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(32986u, 17593u, 15097u, 13470u), vec4<u32>(4294967295u, 4294967295u, 53325u, 1u), vec4<u32>(1u, 2818u, 1u, 44963u), vec4<u32>(1u, 3507u, 1u, 0u), vec4<u32>(1u, 1u, 34031u, 4294967295u), vec4<u32>(42684u, 0u, 1u, 12099u), vec4<u32>(23193u, 0u, 106937u, 4294967295u), vec4<u32>(4294967295u, 43200u, 1u, 74031u), vec4<u32>(37176u, 1u, 4294967295u, 71088u), vec4<u32>(1u, 1u, 84266u, 17178u), vec4<u32>(0u, 4143u, 4294967295u, 37075u), vec4<u32>(1749u, 121930u, 12530u, 0u), vec4<u32>(4294967295u, 89676u, 1u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(8946u, 0u, 22709u, 0u), vec4<u32>(4294967295u, 1u, 1u, 7253u), vec4<u32>(1u, 1u, 0u, 15098u), vec4<u32>(64828u, 4294967295u, 1u, 1u), vec4<u32>(0u, 137652u, 4294967295u, 1u), vec4<u32>(7817u, 2570u, 4294967295u, 1u), vec4<u32>(9264u, 1u, 4294967295u, 25320u), vec4<u32>(87111u, 108811u, 0u, 4294967295u), vec4<u32>(1u, 26807u, 47752u, 70841u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(20159u, 79335u, 4294967295u, 0u), vec4<u32>(72006u, 1u, 57914u, 1u), vec4<u32>(0u, 1u, 23628u, 4294967295u), vec4<u32>(27376u, 35823u, 0u, 40253u), vec4<u32>(1u, 0u, 0u, 13407u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> i32 {
    global1 = array<vec4<u32>, 30>();
    let var_0 = Struct_2(Struct_1(-2147483647i, vec4<i32>(-4347i, firstTrailingBit(arg_3.b.x), -758i, _wgslsmith_div_i32(1i, arg_3.b.x) << (~1u % 32u)), !select(vec2<bool>(false, arg_0.a.c.x), !vec2<bool>(false, arg_3.c.x), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_3.d, arg_3.d)) - arg_3.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a.d - vec4<f32>(arg_0.a.d.x, arg_3.d.x, arg_3.d.x, arg_0.a.d.x)) - vec4<f32>(655f, arg_3.d.x, 486f, arg_3.d.x)), arg_3.c.x))), arg_3, vec2<i32>(firstTrailingBit(u_input.a.x ^ 2147483647i), reverseBits(u_input.d.x)) >> ((vec2<u32>(min(u_input.e.x, 1u), u_input.b) << (vec2<u32>(~arg_1, ~arg_2) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_2(Struct_1(2147483647i, ~select(vec4<i32>(arg_3.a, 2147483647i, arg_3.a, arg_3.b.x), u_input.d, arg_3.c.x), select(select(vec2<bool>(arg_3.c.x, arg_0.a.c.x), vec2<bool>(true, arg_0.a.c.x), vec2<bool>(var_0.b.c.x, arg_3.c.x)), select(vec2<bool>(false, false), vec2<bool>(arg_0.a.c.x, arg_0.a.c.x), arg_3.c), vec2<bool>(var_0.b.c.x, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.d.x, arg_0.a.d.x, arg_3.d.x, arg_3.d.x), var_0.a.d, !vec4<bool>(false, false, var_0.b.c.x, arg_3.c.x)))), Struct_1(i32(-1i) * -16906i, abs(reverseBits(vec4<i32>(0i, 8455i, -103038i, arg_0.a.a))), arg_3.c, vec4<f32>(222f, _wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(723f - -1000f), 851f)), vec2<i32>(max(arg_3.b.x, var_0.a.a), firstLeadingBit(-arg_3.b.x))));
    let var_2 = arg_0.a.d.zw;
    var var_3 = Struct_2(var_0.b, Struct_1(1i, ~(vec4<i32>(arg_3.a, 2147483647i, var_0.c.x, u_input.a.x) ^ arg_3.b), arg_3.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.b.d), arg_3.d)), vec4<f32>(-2476f, _wgslsmith_div_f32(-787f, -106f), _wgslsmith_f_op_f32(470f + var_0.a.d.x), _wgslsmith_f_op_f32(-626f + 554f)))), ~vec2<i32>(_wgslsmith_div_i32(u_input.a.x, var_1.a.b.a >> (arg_2 % 32u)), -37138i));
    return select(-_wgslsmith_dot_vec4_i32(vec4<i32>(select(-34137i, var_3.a.a, true), ~arg_3.b.x, -2147483647i ^ var_3.b.a, 0i), vec4<i32>(25278i, var_1.a.b.b.x, _wgslsmith_mod_i32(1i, u_input.d.x), ~arg_3.b.x)), firstTrailingBit(var_0.c.x & 2147483647i), true);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> i32 {
    global1 = array<vec4<u32>, 30>();
    var var_0 = Struct_4(Struct_1(-arg_2, max(max(-vec4<i32>(43425i, arg_0.a.b.x, arg_1.a.a.a, 2147483647i), arg_1.a.a.b), vec4<i32>(arg_1.a.a.b.x, func_3(arg_0, 1u, u_input.b, Struct_1(28062i, vec4<i32>(arg_2, arg_1.a.a.a, 0i, arg_1.a.c.x), arg_0.a.c, arg_1.a.b.d)), arg_1.a.b.b.x, _wgslsmith_mod_i32(arg_0.a.a, arg_1.a.a.b.x))), vec2<bool>(true, true), arg_0.a.d));
    var var_1 = _wgslsmith_mod_i32(~u_input.d.x, arg_2);
    global1 = array<vec4<u32>, 30>();
    global0 = _wgslsmith_sub_i32(-1i, min(_wgslsmith_sub_i32(-1i, -(~(-1i))), -1i));
    return -countOneBits(-9045i);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    global1 = array<vec4<u32>, 30>();
    let var_0 = Struct_3(Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1984i, -1i, -51934i, arg_0), u_input.d), vec4<i32>(-arg_2.b.x, func_2(Struct_4(arg_2), Struct_3(Struct_2(arg_2, Struct_1(-2147483647i, u_input.d, arg_2.c, arg_2.d), vec2<i32>(4360i, arg_2.b.x))), arg_3.x), arg_2.b.x, -2147483647i), arg_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2.d, vec4<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x, arg_2.d.x), true)))), Struct_1((11863i & u_input.a.x) << (4294967295u % 32u), -arg_2.b, arg_2.c, arg_2.d), _wgslsmith_sub_vec2_i32(u_input.d.yx, arg_3.xy)));
    global0 = arg_3.x;
    var var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(-func_2(Struct_4(Struct_1(-41056i, var_0.a.b.b, arg_2.c, var_1.a.d)), var_0, arg_2.a) ^ 19959i, vec4<i32>(var_0.a.b.a, arg_3.x, firstLeadingBit(arg_3.x >> (u_input.e.x % 32u)), 27319i), !var_0.a.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, var_1.a.d.x, -1901f, arg_2.d.x)) + var_1.b.d)), arg_2, -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(select(var_0.a.b.b.xz, u_input.a.xx, var_1.b.c), -var_0.a.b.b.xy), max(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a, var_0.a.c.x), var_1.c), arg_3.zy)));
    return 428f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x << ((~(0u << (1u % 32u)) << (0u % 32u)) % 32u);
    var var_1 = vec2<bool>(true, true);
    var_0 = abs(-reverseBits(u_input.c));
    global1 = array<vec4<u32>, 30>();
    var var_2 = Struct_4(Struct_1(u_input.a.x, firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, -2147483647i)), !vec2<bool>(true, u_input.c < u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1070f, _wgslsmith_f_op_f32(func_1(u_input.d.x, false, Struct_1(-1i, vec4<i32>(38986i, 24346i, 32695i, -2147483647i), vec2<bool>(var_1.x, false), vec4<f32>(1521f, 1473f, -667f, -1795f)), vec3<i32>(50706i, u_input.a.x, -17512i))), _wgslsmith_div_f32(-1440f, -1170f), 1414f) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1168f)), _wgslsmith_div_f32(-1591f, -1230f), _wgslsmith_f_op_f32(round(1394f)), _wgslsmith_f_op_f32(select(-1048f, -367f, var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.d.x))));
}

