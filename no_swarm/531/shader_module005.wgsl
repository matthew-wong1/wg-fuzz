struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 7u)];
    let var_1 = ~(-u_input.b.zx);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.b.zw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b.ww)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_0.b.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -1121f)))))))));
    var var_3 = var_0.a;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1802f * _wgslsmith_f_op_f32(max(-109f, -1737f))), _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - -845f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -315f)))))), var_2.x, 1615f);
    return arg_0.d.a.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(~max(~u_input.a, -52073i), !func_3(arg_2, ~u_input.c, Struct_2(arg_2.c.a)));
    global0 = array<Struct_1, 7>();
    let var_1 = u_input.a;
    let var_2 = false;
    global0 = array<Struct_1, 7>();
    return Struct_2(arg_1.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = arg_2.x;
    var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b), _wgslsmith_f_op_vec4_f32(-arg_1.b)) + arg_1.b)));
    var var_2 = Struct_4(u_input.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_1.x, arg_1.b.x), _wgslsmith_f_op_vec3_f32(-var_1.xzx), select(vec3<bool>(true, false, false), arg_2, vec3<bool>(arg_2.x, false, true)))))))));
    var var_3 = -u_input.b.xz;
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = func_2(vec3<u32>(28008u, u_input.c.x, 1u), func_4(~(~(~vec3<u32>(u_input.c.x, arg_1.a, 87833u))), arg_1, !(!vec3<bool>(false, arg_1.d.a.b.x, false))).d, Struct_3(~abs(reverseBits(0u)), vec4<f32>(arg_0.b.x, -1360f, arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1571f)), arg_1.d, Struct_2(Struct_1(u_input.a >> (arg_1.a % 32u), arg_1.c.a.b))));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.wxw, ~vec3<i32>(var_0.a.a, u_input.b.x, -2607i)), _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(-76172i), select(var_0.a.a, 0i, arg_1.d.a.b.x), u_input.a ^ arg_1.c.a.a), vec3<i32>(1i, u_input.a, ~arg_0.a))), vec2<bool>(func_3(func_4(vec3<u32>(u_input.c.x, u_input.c.x, arg_1.a) | vec3<u32>(u_input.c.x, 73970u, u_input.c.x), func_4(vec3<u32>(arg_1.a, 3246u, 1u), arg_1, vec3<bool>(var_0.a.b.x, false, true)), vec3<bool>(false, var_0.a.b.x, false)), _wgslsmith_sub_vec2_u32(u_input.c, _wgslsmith_sub_vec2_u32(u_input.c, u_input.c)), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(651u, u_input.c.x, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, 60170u)), arg_1, vec3<bool>(false, var_0.a.b.x, var_0.a.b.x)).d).x, func_4(~vec3<u32>(arg_1.a, 4294967295u, 0u) << (~vec3<u32>(arg_1.a, arg_1.a, arg_1.a) % vec3<u32>(32u)), func_4(select(vec3<u32>(47792u, 4294967295u, 1335u), vec3<u32>(1u, u_input.c.x, u_input.c.x), true), Struct_3(58108u, vec4<f32>(arg_0.b.x, 1172f, -1859f, -804f), arg_1.c, arg_1.c), select(vec3<bool>(false, true, arg_1.c.a.b.x), vec3<bool>(true, true, var_0.a.b.x), var_0.a.b.x)), select(select(vec3<bool>(arg_1.c.a.b.x, var_0.a.b.x, false), vec3<bool>(false, arg_1.c.a.b.x, var_0.a.b.x), vec3<bool>(false, true, true)), select(vec3<bool>(arg_1.d.a.b.x, false, var_0.a.b.x), vec3<bool>(var_0.a.b.x, var_0.a.b.x, false), true), vec3<bool>(true, arg_1.d.a.b.x, var_0.a.b.x))).d.a.b.x));
    return u_input.c.x;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_u32(func_5(Struct_4(0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, -1098f, -583f)))), func_4(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(11319u, 56668u, u_input.c.x)), ~vec3<u32>(u_input.c.x, 0u, u_input.c.x)), Struct_3(u_input.c.x, vec4<f32>(-1130f, 824f, -322f, 1000f), func_2(vec3<u32>(1u, u_input.c.x, 24635u), arg_0, Struct_3(u_input.c.x, vec4<f32>(1200f, -582f, 463f, -541f), Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), arg_0)), arg_0), select(select(vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), vec3<bool>(arg_1, arg_0.a.b.x, arg_1), arg_1), select(vec3<bool>(arg_0.a.b.x, arg_1, arg_0.a.b.x), vec3<bool>(true, true, arg_0.a.b.x), vec3<bool>(true, arg_0.a.b.x, arg_0.a.b.x)), arg_0.a.b.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c | u_input.c, u_input.c) ^ (min(u_input.c.x, u_input.c.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 23075u))), 969u));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_1 = !func_4(~(~countOneBits(vec3<u32>(1u, u_input.c.x, 0u))), Struct_3(~abs(var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-729f, -603f, 437f, 1341f) + vec4<f32>(1533f, -1008f, -1665f, 200f))), Struct_2(func_2(vec3<u32>(u_input.c.x, var_0, 25431u), arg_0, Struct_3(var_0, vec4<f32>(189f, -236f, -834f, 1261f), Struct_2(arg_0.a), Struct_2(global0[_wgslsmith_index_u32(0u, 7u)]))).a), func_4(~vec3<u32>(u_input.c.x, u_input.c.x, 51038u), func_4(vec3<u32>(u_input.c.x, u_input.c.x, var_0), Struct_3(1u, vec4<f32>(972f, 1285f, 351f, -2111f), arg_0, Struct_2(global0[_wgslsmith_index_u32(var_0, 7u)])), vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(false, arg_0.a.b.x, arg_0.a.b.x), vec3<bool>(arg_0.a.b.x, true, false), false)).c), !select(vec3<bool>(arg_1, true, false), select(vec3<bool>(false, true, arg_0.a.b.x), vec3<bool>(arg_1, false, arg_0.a.b.x), vec3<bool>(arg_0.a.b.x, true, true)), select(vec3<bool>(arg_0.a.b.x, true, true), vec3<bool>(arg_1, false, arg_1), arg_1))).d.a.b;
    var var_2 = arg_0.a;
    return !vec2<bool>(arg_1, !var_2.b.x);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    let var_0 = arg_0.a;
    global0 = array<Struct_1, 7>();
    let var_1 = ~func_2(~(~vec3<u32>(arg_2.a, 55677u, u_input.c.x)), func_4(~(~vec3<u32>(arg_2.a, 62909u, arg_2.a)), func_4(firstLeadingBit(vec3<u32>(54124u, u_input.c.x, 56546u)), func_4(vec3<u32>(arg_2.a, 77021u, 23988u), Struct_3(1u, vec4<f32>(-174f, -616f, arg_0.b.x, -1000f), Struct_2(global0[_wgslsmith_index_u32(arg_2.a, 7u)]), arg_2.d), vec3<bool>(true, true, false)), !vec3<bool>(true, true, arg_2.c.a.b.x)), !select(vec3<bool>(arg_1.x, arg_1.x, arg_2.d.a.b.x), vec3<bool>(arg_2.d.a.b.x, true, arg_1.x), vec3<bool>(arg_2.d.a.b.x, false, arg_2.c.a.b.x))).d, func_4(~(~vec3<u32>(u_input.c.x, 0u, arg_2.a)), Struct_3(~73366u, arg_2.b, Struct_2(Struct_1(var_0, vec2<bool>(arg_2.d.a.b.x, arg_1.x))), arg_2.c), select(vec3<bool>(arg_2.c.a.b.x, arg_2.c.a.b.x, true), select(vec3<bool>(arg_2.d.a.b.x, arg_1.x, true), vec3<bool>(false, arg_1.x, arg_1.x), true), true))).a.a;
    var var_2 = !func_2(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(34806u, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, 4294967295u, 58794u))), Struct_2(func_2(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), arg_2.c, func_4(vec3<u32>(4294967295u, 4294967295u, u_input.c.x), arg_2, vec3<bool>(arg_1.x, false, arg_2.d.a.b.x))).a), Struct_3(u_input.c.x, vec4<f32>(func_4(vec3<u32>(u_input.c.x, arg_2.a, u_input.c.x), arg_2, vec3<bool>(true, true, false)).b.x, 563f, arg_2.b.x, -1000f), Struct_2(func_2(vec3<u32>(0u, 0u, 44226u), arg_2.d, arg_2).a), Struct_2(Struct_1(var_1, arg_2.d.a.b)))).a.b;
    return func_2(vec3<u32>(4294967295u, arg_2.a, ~(u_input.c.x & u_input.c.x)), Struct_2(Struct_1(u_input.b.x, arg_1)), Struct_3(461u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(arg_2.b)), arg_2.b, select(vec4<bool>(arg_2.c.a.b.x, arg_2.d.a.b.x, arg_1.x, arg_2.c.a.b.x), vec4<bool>(var_2.x, var_2.x, true, arg_1.x), vec4<bool>(arg_1.x, false, var_2.x, arg_2.c.a.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1975f, arg_2.b.x, arg_2.b.x, arg_2.b.x) * arg_2.b)))), arg_2.c, arg_2.c)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a << (38710u % 32u), -16996i), u_input.b.x);
    let var_1 = Struct_2(func_6(Struct_4(_wgslsmith_add_i32(-u_input.b.x, abs(u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-326f, 334f, -1848f), vec3<f32>(904f, -456f, 203f)))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), func_1(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 7u)]), false), vec2<bool>(true, true)), any(vec3<bool>(true, false, false))), func_4(~firstTrailingBit(vec3<u32>(1u, 0u, 1u)), Struct_3(func_5(Struct_4(61728i, vec3<f32>(578f, -523f, 838f)), Struct_3(u_input.c.x, vec4<f32>(-508f, -666f, 1696f, 668f), Struct_2(Struct_1(u_input.b.x, vec2<bool>(false, true))), Struct_2(global0[_wgslsmith_index_u32(1u, 7u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-415f, -100f, 231f, 545f) - vec4<f32>(170f, -849f, 927f, -952f)), func_2(vec3<u32>(u_input.c.x, 3348u, 13834u), Struct_2(Struct_1(u_input.a, vec2<bool>(true, true))), Struct_3(4294967295u, vec4<f32>(-1473f, -1093f, 1000f, 1567f), Struct_2(Struct_1(u_input.a, vec2<bool>(false, true))), Struct_2(global0[_wgslsmith_index_u32(8966u, 7u)]))), Struct_2(global0[_wgslsmith_index_u32(22888u, 7u)])), vec3<bool>(true, func_2(vec3<u32>(u_input.c.x, 0u, 64918u), Struct_2(Struct_1(u_input.a, vec2<bool>(false, true))), Struct_3(43627u, vec4<f32>(-1121f, -923f, 785f, -1141f), Struct_2(Struct_1(u_input.a, vec2<bool>(true, true))), Struct_2(Struct_1(-2147483647i, vec2<bool>(false, true))))).a.b.x, true))));
    var var_2 = Struct_4(_wgslsmith_dot_vec2_i32(u_input.b.yz, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.b.xw, vec2<i32>(var_1.a.a, u_input.a)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xz, u_input.b.yz), max(u_input.b.xz, vec2<i32>(var_1.a.a, -26900i))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~vec3<u32>(11263u, u_input.c.x, 33987u), Struct_3(1u, vec4<f32>(-1195f, 1652f, 482f, 722f), Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), var_1), vec3<bool>(true, false, var_1.a.b.x)).b.yyy + vec3<f32>(1f, 1f, 1f)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(665f * -1502f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f * 2229f)), -393f)));
    var var_3 = Struct_3(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, 4510u) | _wgslsmith_div_u32(1u, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c)), countOneBits(~u_input.c.x) | 32404u), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(abs(var_2.b.x)), var_1.a.a > 2147483647i))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) + _wgslsmith_f_op_f32(-var_2.b.x)))), func_4(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, 17219u), max(vec3<u32>(u_input.c.x, 15012u, u_input.c.x), vec3<u32>(u_input.c.x, 17986u, 46249u)) ^ firstLeadingBit(vec3<u32>(15258u, u_input.c.x, u_input.c.x))), func_4(_wgslsmith_sub_vec3_u32(~vec3<u32>(55290u, u_input.c.x, u_input.c.x), vec3<u32>(34293u, u_input.c.x, u_input.c.x)), Struct_3(abs(13444u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(618f, var_2.b.x, 2288f, var_2.b.x)), Struct_2(Struct_1(var_2.a, vec2<bool>(var_1.a.b.x, false))), Struct_2(Struct_1(2147483647i, var_1.a.b))), select(!vec3<bool>(var_1.a.b.x, false, var_1.a.b.x), select(vec3<bool>(false, var_1.a.b.x, var_1.a.b.x), vec3<bool>(var_1.a.b.x, true, true), vec3<bool>(var_1.a.b.x, true, true)), select(vec3<bool>(var_1.a.b.x, false, var_1.a.b.x), vec3<bool>(var_1.a.b.x, false, true), vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)))), vec3<bool>(false, !any(vec3<bool>(false, true, var_1.a.b.x)), true)).c, var_1);
    var_3 = func_4(vec3<u32>(firstTrailingBit(0u), 1u, var_3.a), func_4(~_wgslsmith_mod_vec3_u32(~vec3<u32>(33538u, 12997u, var_3.a), _wgslsmith_add_vec3_u32(vec3<u32>(33447u, 8830u, u_input.c.x), vec3<u32>(var_3.a, 1u, var_3.a))), func_4(~vec3<u32>(u_input.c.x, u_input.c.x, var_3.a), Struct_3(countOneBits(u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_3.b.x, -999f, 599f)), func_2(vec3<u32>(1u, 4294967295u, 4294967295u), var_3.c, Struct_3(1u, var_3.b, var_3.c, var_3.c)), func_2(vec3<u32>(var_3.a, var_3.a, u_input.c.x), var_1, Struct_3(u_input.c.x, vec4<f32>(135f, -486f, 164f, -708f), Struct_2(Struct_1(var_3.d.a.a, vec2<bool>(false, false))), Struct_2(var_3.c.a)))), !vec3<bool>(false, var_3.d.a.b.x, var_1.a.b.x)), !select(select(vec3<bool>(false, var_1.a.b.x, true), vec3<bool>(false, var_1.a.b.x, true), vec3<bool>(true, false, false)), select(vec3<bool>(var_1.a.b.x, true, var_3.d.a.b.x), vec3<bool>(var_3.c.a.b.x, var_1.a.b.x, false), true), var_1.a.b.x)), vec3<bool>(4294967295u < ~u_input.c.x, false, func_6(Struct_4(-2147483647i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.x, -3195f, var_3.b.x)))), !var_1.a.b, func_4(firstTrailingBit(vec3<u32>(0u, 7197u, 4294967295u)), func_4(vec3<u32>(23693u, u_input.c.x, var_3.a), Struct_3(0u, var_3.b, var_1, Struct_2(var_3.d.a)), vec3<bool>(var_3.c.a.b.x, var_3.d.a.b.x, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))).b.x));
    var_2 = Struct_4(func_2(vec3<u32>(65141u, ~1u, abs(firstTrailingBit(17839u))), Struct_2(func_4(select(vec3<u32>(u_input.c.x, u_input.c.x, 86687u), vec3<u32>(0u, 0u, 101309u), vec3<bool>(var_3.d.a.b.x, false, var_1.a.b.x)), Struct_3(38292u, vec4<f32>(var_2.b.x, 1379f, 127f, -254f), Struct_2(var_1.a), Struct_2(Struct_1(u_input.a, vec2<bool>(var_1.a.b.x, false)))), vec3<bool>(var_3.d.a.b.x, false, var_1.a.b.x)).d.a), func_4(~vec3<u32>(95680u, u_input.c.x, 0u), Struct_3(77994u << (var_3.a % 32u), _wgslsmith_f_op_vec4_f32(sign(var_3.b)), var_3.d, var_3.c), select(vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_3.c.a.b.x), !vec3<bool>(var_1.a.b.x, var_3.c.a.b.x, false), var_3.c.a.b.x))).a.a, vec3<f32>(_wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) + var_2.b.x)), _wgslsmith_f_op_f32(-var_3.b.x), var_2.b.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-var_3.b.zwy);
    let x = u_input.a;
    s_output = StorageBuffer(45161i);
}

