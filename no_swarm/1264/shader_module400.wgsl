struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<i32>(-1i, 1i, 2147483647i), 0u, 2147483647i, vec3<i32>(12367i, -13816i, -1i), 12972i), 0u, 2147483647i);

var<private> global1: u32 = 4294967295u;

var<private> global2: i32;

var<private> global3: array<i32, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<i32> {
    global1 = (arg_0 << (~_wgslsmith_clamp_u32(arg_0, 71065u >> (0u % 32u), u_input.a.x >> (0u % 32u)) % 32u)) | arg_0;
    var var_0 = any(vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))) & true, _wgslsmith_f_op_f32(f32(-1f) * -749f) <= arg_1, false));
    var var_1 = Struct_3(global0.a, ~8319u, -global3[_wgslsmith_index_u32(25239u, 25u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 363f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1878f, 700f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2206f, arg_1)), select(true, false, true)))), any(vec4<bool>(true, true, true, select(true, false, true)))))));
    var var_3 = Struct_1(select(vec3<i32>(46550i, countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.c, -2147483647i), var_1.a.a)) & global0.a.d, firstLeadingBit(vec3<i32>(reverseBits(var_1.a.e), u_input.b, global0.c)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), all(vec4<bool>(true, false, true, true)))), 26632u, _wgslsmith_dot_vec2_i32(var_1.a.a.zy, -var_1.a.a.xz), abs(var_1.a.d) ^ max(countOneBits(var_1.a.a), select(global0.a.a, vec3<i32>(u_input.b, 1i, var_1.a.a.x), vec3<bool>(true, false, false)) >> (vec3<u32>(global0.b, 11205u, u_input.a.x) % vec3<u32>(32u))), u_input.b);
    return firstTrailingBit(vec2<i32>(min(var_1.a.e << (0u % 32u), 0i), -2147483647i));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = false;
    global3 = array<i32, 25>();
    let var_1 = func_3(~_wgslsmith_mult_u32(~global0.b, global0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-304f))) + _wgslsmith_f_op_f32(f32(-1f) * -1127f)) - -204f));
    let var_2 = -22330i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-310f, _wgslsmith_f_op_f32(-1062f * -1052f), _wgslsmith_f_op_f32(min(-585f, -120f)), -896f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-296f, -1833f, 181f, -348f), vec4<f32>(-748f, -558f, 520f, -326f))), _wgslsmith_div_vec4_f32(vec4<f32>(-539f, -338f, -2765f, 253f), vec4<f32>(-293f, 149f, -194f, -1000f))))));
    return Struct_1(arg_1.b.xyx, 1u, arg_0.x, max(_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], _wgslsmith_clamp_i32(0i, 6206i, arg_1.a.a.a.x), -2147483647i), -arg_1.b.wyy), reverseBits(global0.a.d)), i32(-1i) * -_wgslsmith_mod_i32(abs(-2147483647i), 1i));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = func_2(-global0.a.a, Struct_4(Struct_3(Struct_1(global0.a.a, ~u_input.a.x, u_input.b, _wgslsmith_add_vec3_i32(global0.a.a, arg_0), arg_0.x), u_input.a.x, -abs(-46091i)), vec4<i32>(arg_2.x, arg_2.x, _wgslsmith_clamp_i32(select(14245i, 19219i, false), -13624i, 2147483647i), _wgslsmith_mult_i32(global0.a.d.x, _wgslsmith_div_i32(global0.a.c, global0.c)))));
    global3 = array<i32, 25>();
    global1 = global0.b;
    return Struct_2(vec3<bool>(false == arg_1, false, !(~0i != arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3)), arg_3) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, -505f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-203f, arg_3, arg_3), vec3<f32>(arg_3, 2221f, 477f), false))), vec3<f32>(_wgslsmith_div_f32(612f, 290f), -664f, -1012f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    return vec4<i32>(1i, arg_1.a.x, ~reverseBits(~func_2(vec3<i32>(u_input.b, -44722i, 2147483647i), Struct_4(Struct_3(arg_1, arg_1.b, global0.c), vec4<i32>(global0.c, -16733i, 2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 25u)]))).d.x), global0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(select(func_4(func_1(-global0.a.a, select(true, false, true), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, global0.a.e), vec2<i32>(44981i, global3[_wgslsmith_index_u32(37175u, 25u)])), _wgslsmith_f_op_f32(1000f + 1000f)), global0.a), -vec4<i32>(_wgslsmith_add_i32(47877i, 0i), -1i, 22419i, func_2(global0.a.a, Struct_4(Struct_3(Struct_1(vec3<i32>(global0.c, u_input.b, global3[_wgslsmith_index_u32(1u, 25u)]), 15709u, global0.a.a.x, global0.a.a, u_input.b), global0.b, global0.a.d.x), vec4<i32>(-1i, global3[_wgslsmith_index_u32(4294967295u, 25u)], global0.c, global0.a.a.x))).d.x), true), -(vec4<i32>(min(1i, global0.a.a.x), firstLeadingBit(2147483647i), -932i, u_input.b) >> (u_input.a % vec4<u32>(32u))));
    global1 = 63460u;
    let var_1 = global0.b;
    let var_2 = Struct_3(global0.a, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a.x, 17290u), u_input.a.x), -1i);
    let var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(var_2.a.d ^ vec3<i32>(var_2.c, -402i, global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<i32>(2147483647i, 12502i, 0i)), func_2(~var_0.zxx, Struct_4(var_2, vec4<i32>(-19961i, u_input.b, 2147483647i, 67106i))).b, var_0.x, global0.a.a, var_0.x), _wgslsmith_mod_u32(var_2.a.b, u_input.a.x), ~(-1i)), _wgslsmith_mult_vec4_i32(func_4(func_1(~global0.a.a, any(vec3<bool>(false, false, false)), firstLeadingBit(vec2<i32>(u_input.b, var_2.c)), _wgslsmith_f_op_f32(round(913f))), var_2.a), firstLeadingBit(~var_0) >> (firstTrailingBit(u_input.a) % vec4<u32>(32u))));
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 724u, firstTrailingBit(global0.b)), u_input.a.wwy);
    global3 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-2235i, ~(-vec3<i32>(0i, ~u_input.b, 0i)), var_4.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(565f, 295f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-648f))))), firstLeadingBit(var_0.wyw));
}

