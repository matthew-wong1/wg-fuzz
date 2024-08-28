struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global3: u32 = 36632u;

var<private> global4: Struct_5 = Struct_5(Struct_3(Struct_2(Struct_1(2147483647i, -13536i, vec2<f32>(-1972f, 227f)), Struct_1(-18695i, 0i, vec2<f32>(1187f, -1000f)), Struct_1(-102302i, 1i, vec2<f32>(514f, 1000f)))));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> f32 {
    global0 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, 2147483647i, global0.x, global0.x)));
    let var_0 = Struct_3(global4.a.a);
    global3 = ~0u;
    let var_1 = ~36058u;
    var var_2 = 451f;
    return 418f;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = global4.a.a.c.c.x;
    let var_1 = global4.a.a;
    let var_2 = _wgslsmith_sub_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), u_input.c.yww, u_input.a >> (vec3<u32>(u_input.c.x, 0u, u_input.c.x) % vec3<u32>(32u)))), u_input.a >> (u_input.c.yxw % vec3<u32>(32u)));
    let var_3 = var_2.x;
    global4 = Struct_5(Struct_3(global4.a.a));
    return select(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(true, false, true));
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(global0.xz | -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.b) >> (u_input.c.yw % vec2<u32>(32u)), global0.yx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global4.a.a.b.c.x, global4.a.a.b.c.x, true)), global4.a.a.c.c.x, _wgslsmith_f_op_f32(global4.a.a.a.c.x - global4.a.a.b.c.x)) * vec3<f32>(global4.a.a.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.a.b.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(global4.a.a.b, -711f, u_input.c.x)), _wgslsmith_f_op_f32(global4.a.a.c.c.x + 528f), any(global2[_wgslsmith_index_u32(u_input.c.x, 32u)]))))), global4.a.a);
    var var_1 = -1836f;
    var var_2 = 349f;
    var var_3 = global4.a.a.c;
    let var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.yxx, vec3<i32>(u_input.d, var_3.b, 17263i)), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(-27743i, global0.x), abs(u_input.b))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.x, -1i), -vec3<i32>(global4.a.a.c.a, u_input.b, global4.a.a.a.a) & -vec3<i32>(var_3.b, global4.a.a.b.b, global0.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.a.a.a.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1531f)))))), Struct_1(-1i, -global0.x, vec2<f32>(global4.a.a.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -370f))), Struct_1(-15762i, ~_wgslsmith_mod_i32(max(global4.a.a.b.b, global0.x), firstTrailingBit(global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a.b.c.x, _wgslsmith_f_op_f32(ceil(var_3.c.x))))));
    return var_4.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.a, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.a, 19894i), vec2<i32>(-1i, 0i))), -global0.yx ^ vec2<i32>(38547i, 2147483647i))) < ~1i;
    var var_1 = Struct_5(Struct_3(Struct_2(func_1(), Struct_1(global0.x ^ u_input.b, ~1i, _wgslsmith_f_op_vec2_f32(-arg_1.b.c)), func_1())));
    var var_2 = arg_1;
    global4 = Struct_5(Struct_3(Struct_2(arg_3, Struct_1(-2147483647i, func_1().b, _wgslsmith_f_op_vec2_f32(arg_3.c - var_1.a.a.a.c)), Struct_1(var_1.a.a.c.b, 1i, vec2<f32>(-243f, arg_2)))));
    global3 = abs(~firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 23089u, 18002u, 13935u), u_input.c)));
    return vec2<bool>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f * 702f))) != _wgslsmith_f_op_f32(-arg_3.c.x));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.x >> (_wgslsmith_mod_u32(arg_3, arg_3) % 32u), _wgslsmith_add_i32(min(global4.a.a.c.a, global0.x), 1i), global4.a.a.b.b)), ~vec3<i32>(global0.x, 0i, _wgslsmith_dot_vec2_i32(global0.xz, global0.xw)) | global0.wyw);
    let var_1 = Struct_5(global4.a);
    var var_2 = Struct_5(Struct_3(Struct_2(func_1(), Struct_1(42189i, select(u_input.d, 2147483647i, true), vec2<f32>(-534f, -1238f)), global4.a.a.a)));
    let var_3 = true;
    let var_4 = vec3<u32>(arg_3, ~u_input.c.x, min(_wgslsmith_mult_u32(arg_3, _wgslsmith_dot_vec4_u32(u_input.c, firstTrailingBit(vec4<u32>(arg_3, u_input.c.x, 83188u, 83360u)))), ~arg_3));
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(global4.a.a.a.b, var_2.a.a.a.b, -2147483647i, -30284i) ^ abs(vec4<i32>(var_0, var_2.a.a.c.b, global0.x, global0.x))), (~vec4<i32>(-28791i, 36472i, u_input.b, 2147483647i) >> (~u_input.c % vec4<u32>(32u))) << ((vec4<u32>(0u, arg_3, 1u, u_input.c.x) ^ u_input.c) % vec4<u32>(32u)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, -24437i, 28764i, u_input.b) << (vec4<u32>(10748u, 4294967295u, arg_3, 42338u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-3259i, 35881i, global0.x, var_2.a.a.a.b), vec4<i32>(41822i, global4.a.a.b.b, var_0, global4.a.a.b.a)), vec4<i32>(-12933i, 0i, -1519i, -28060i) | vec4<i32>(-1i, global0.x, 7712i, global0.x)), select(~vec4<i32>(-2147483647i, var_2.a.a.c.b, var_0, u_input.d), select(vec4<i32>(-2147483647i, -17457i, var_0, var_0), vec4<i32>(2182i, var_1.a.a.b.b, 0i, 29699i), vec4<bool>(arg_0.x, false, arg_2, arg_0.x)), true), vec4<bool>(func_4(vec4<bool>(false, var_3, var_3, false), Struct_4(vec3<f32>(-1000f, global4.a.a.c.c.x, 524f), Struct_1(global0.x, var_2.a.a.b.a, vec2<f32>(-1966f, 1953f)), -14865i, var_2.a.a), -481f, Struct_1(global0.x, 0i, var_1.a.a.a.c)).x, var_4.x >= 0u, func_3(global0.yy, vec3<f32>(-243f, 934f, arg_1), Struct_2(global4.a.a.b, var_2.a.a.a, global4.a.a.a)).x, all(vec4<bool>(arg_0.x, var_3, arg_2, var_3))))), firstTrailingBit(select(firstLeadingBit(vec4<i32>(var_1.a.a.b.b, global0.x, var_0, -1i) & vec4<i32>(u_input.d, -2147483647i, -7741i, var_2.a.a.b.a)), vec4<i32>(-var_0, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_1.a.a.b.b, global4.a.a.c.a, var_0), vec4<i32>(u_input.b, 2147483647i, 2147483647i, global4.a.a.a.a)), global4.a.a.c.a), !vec4<bool>(false, arg_2, true, true))), countOneBits(-(~vec4<i32>(0i, 19102i, -2147483647i, var_0) ^ vec4<i32>(-71253i, var_1.a.a.b.a, var_0, var_1.a.a.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -func_5(vec3<bool>(false, all(vec4<bool>(false, true, false, false)) && any(global1[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 13251i, u_input.b, 3380i), vec4<i32>(global0.x, -10187i, 0i, 4930i)) == ~1i), global4.a.a.c.c.x, all(func_4(vec4<bool>(true, true, true, true), Struct_4(vec3<f32>(global4.a.a.a.c.x, -1845f, global4.a.a.c.c.x), global4.a.a.b, 2147483647i, global4.a.a), _wgslsmith_f_op_f32(-283f - global4.a.a.c.c.x), func_1())), 0u);
    global3 = _wgslsmith_div_u32(12691u, ~(~select(firstTrailingBit(0u), u_input.c.x, true)));
    global2 = array<vec3<bool>, 32>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global4.a.a.b.c.x), _wgslsmith_f_op_f32(trunc(global4.a.a.c.c.x)), _wgslsmith_f_op_f32(trunc(-142f))))))), func_1(), global4.a.a.a.b, Struct_2(global4.a.a.c, global4.a.a.a, func_1()));
    var_0 = Struct_4(vec3<f32>(_wgslsmith_div_f32(func_1().c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1685f)))), -312f, _wgslsmith_f_op_f32(max(1400f, _wgslsmith_f_op_f32(-var_0.a.x)))), func_1(), -1i, global4.a.a);
    global2 = array<vec3<bool>, 32>();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(0u, u_input.a.x)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.c.x), vec2<u32>(1u, 0u))), ~(~_wgslsmith_mod_u32(u_input.c.x, 14016u)), _wgslsmith_dot_vec4_u32(u_input.c, ~select(u_input.c, u_input.c, true)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)))), var_0.d.c.c.x))));
    var var_3 = !(!vec3<bool>(true, true, all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 41182u), vec2<u32>(u_input.a.x, 42466u)), 26u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.a.a.b.c.x, 238f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global4.a.a.b.c.x - 1363f), _wgslsmith_f_op_f32(global4.a.a.c.c.x * var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(782f, -1366f) + _wgslsmith_f_op_vec2_f32(select(var_0.d.c.c, global4.a.a.c.c, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])))))), var_0.b.c.x, global4.a.a.c.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.a.a.c.x, global4.a.a.a.c.x, -361f))))));
}

