struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_4,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: u32;

var<private> global3: Struct_1;

var<private> global4: array<bool, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = select(u_input.b, vec3<i32>(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-15077i, 1i), -1i, 2147483647i), firstLeadingBit(52187i), -global3.a), ~global3.a >= ~firstTrailingBit(firstLeadingBit(u_input.b.x)));
    global0 = array<Struct_3, 3>();
    let var_1 = Struct_2(global3.a, Struct_1(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), -reverseBits(vec2<i32>(global3.b.x, u_input.b.x))));
    let var_2 = u_input.b;
    global1 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, 1238f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1271f, -305f)))));
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_4(firstLeadingBit(9933i) & u_input.b.x, Struct_2(abs(-max(540i, u_input.b.x)), Struct_1(1i, max(global3.b, u_input.b.zx) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), u_input.d.xx) % vec2<u32>(32u)))), Struct_2(-u_input.b.x, Struct_1(35450i, (global3.b | u_input.b.yz) << (u_input.d.xy % vec2<u32>(32u)))), ~abs(3598u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(true, arg_0.x, true, global4[_wgslsmith_index_u32(u_input.d.x, 17u)]), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.d.x, 5u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -2020f), vec2<f32>(-1000f, -1913f))))) - vec2<f32>(-754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-848f, -1064f)) + -2080f))));
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x) & u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(var_0.c.b.b.x, global3.b.x)), -32219i, _wgslsmith_dot_vec4_i32(max(~(vec4<i32>(-2147483647i, u_input.b.x, -1i, -1i) & vec4<i32>(var_0.b.a, global3.b.x, -1i, -10542i)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.c.a, 29408i, var_0.c.a)), -35088i, 16416i >> (var_0.d % 32u), _wgslsmith_mult_i32(global3.a, -50656i))), _wgslsmith_add_vec4_i32(vec4<i32>(global3.a, -2147483647i << (var_0.d % 32u), min(global3.b.x, global3.a), ~global3.a), select(vec4<i32>(1i, 0i, var_0.c.b.a, 2147483647i), vec4<i32>(0i, -64476i, 2147483647i, -12697i), vec4<bool>(true, global4[_wgslsmith_index_u32(var_0.d, 17u)], global4[_wgslsmith_index_u32(var_0.d, 17u)], global4[_wgslsmith_index_u32(4294967295u, 17u)])) | (vec4<i32>(u_input.b.x, 34209i, -11424i, -2147483647i) << (vec4<u32>(var_0.d, 1374u, u_input.a.x, 16150u) % vec4<u32>(32u))))), 12584i);
    var var_2 = Struct_4(_wgslsmith_add_i32(global3.a, -66986i) & var_0.c.b.b.x, var_0.c, Struct_2(-2147483647i, var_0.c.b), 28366u, var_0.e);
    var var_3 = _wgslsmith_sub_vec2_i32(-u_input.b.xz | var_2.b.b.b, var_1.xw) ^ max(abs(vec2<i32>(abs(var_0.b.b.a), var_1.x)), vec2<i32>(2147483647i & u_input.b.x, 1i) << (~(~u_input.a) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1108f - var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), _wgslsmith_f_op_f32(floor(var_0.e.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(967f, -540f, var_0.e.x), vec3<f32>(var_2.e.x, var_2.e.x, var_2.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-380f, var_0.e.x, var_2.e.x) * vec3<f32>(1381f, -809f, var_0.e.x)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, var_2.e.x, var_0.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, -213f, var_2.e.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(301f, -754f, -1000f) * vec3<f32>(var_2.e.x, 1771f, var_2.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, 142f, -773f))))))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.x + -1960f))), _wgslsmith_f_op_f32(f32(-1f) * -405f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(295f, var_0.e.x, var_4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1533f, -238f, -550f), vec3<f32>(-328f, var_2.e.x, var_4.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(569f - var_2.e.x), -1102f, _wgslsmith_f_op_f32(var_0.e.x - var_0.e.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, -439f, var_4.x) * vec3<f32>(var_2.e.x, 193f, 531f))))), all(vec4<bool>(true, true, arg_0.x, any(!vec3<bool>(global4[_wgslsmith_index_u32(15135u, 17u)], arg_0.x, true))))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(802f * 1000f), -800f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-615f, -375f, -825f), vec3<f32>(-993f, 1000f, 259f), global4[_wgslsmith_index_u32(u_input.c, 17u)])) * _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 17u)], global4[_wgslsmith_index_u32(44741u, 17u)])))))));
    let var_1 = Struct_2(arg_1.x & (~(arg_0 | global3.a) << (~u_input.c % 32u)), Struct_1(_wgslsmith_mult_i32(5641i, _wgslsmith_add_i32(arg_0 | arg_1.x, 1i)), vec2<i32>(-12657i, 47728i & (arg_1.x << (88145u % 32u)))));
    global2 = ~reverseBits(~(~firstTrailingBit(4294967295u)));
    var var_2 = vec3<i32>(-9575i, _wgslsmith_sub_i32(1i, var_1.b.a), -1i);
    let var_3 = -22186i;
    return Struct_1(-57940i >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(47609u, u_input.c, u_input.a.x, u_input.a.x), max(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(49496u, u_input.a.x, u_input.a.x, u_input.d.x))) % 32u), -vec2<i32>(~_wgslsmith_mod_i32(arg_0, arg_1.x), 0i));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    var var_0 = 1i;
    global2 = abs(0u);
    let var_1 = vec4<u32>(max(5263u, _wgslsmith_div_u32(u_input.c, u_input.c ^ u_input.a.x) >> (~(~u_input.d.x) % 32u)), abs(0u | u_input.d.x) & ~abs(2797u), ~(u_input.c & u_input.d.x), 4294967295u);
    var var_2 = true;
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1754f, arg_1, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(abs(-2113f))), arg_1) - vec4<f32>(196f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1290f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(647f, 1088f)), arg_1)), _wgslsmith_f_op_f32(arg_1 + -603f), Struct_4(1i >> (u_input.d.x % 32u), Struct_2(min(~global3.b.x, arg_0.a), Struct_1(_wgslsmith_mod_i32(-2147483647i, global3.a), vec2<i32>(-9221i, arg_3.b.x) >> (vec2<u32>(4294967295u, u_input.d.x) % vec2<u32>(32u)))), Struct_2(~(-10874i), arg_0), ~1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-142f, arg_1), _wgslsmith_f_op_f32(exp2(arg_1))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1681f, arg_1)))), _wgslsmith_mult_i32(-5633i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), Struct_3(global4[_wgslsmith_index_u32(0u, 17u)]));
    return var_3.c.c;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> Struct_3 {
    global3 = func_1(arg_1.b.a, ~(-(vec2<i32>(arg_1.a, u_input.b.x) & u_input.b.yz)) & (_wgslsmith_div_vec2_i32(vec2<i32>(38810i, -21659i), max(u_input.b.zz, vec2<i32>(-1i, -1i))) << (vec2<u32>(arg_0.x & 40712u, 1u) % vec2<u32>(32u))));
    let var_0 = arg_3;
    global1 = array<vec3<u32>, 5>();
    global3 = func_1(-24525i, vec2<i32>((global3.a ^ func_4(arg_1.c.b, var_0.e.x, global0[_wgslsmith_index_u32(arg_3.d, 3u)], arg_3.b.b).a) & arg_1.a, i32(-1i) * -1i));
    let var_1 = max(~vec2<u32>(var_0.d, ~(~4294967295u)), arg_0.zx);
    return global0[_wgslsmith_index_u32(49754u, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(~(~(~vec4<u32>(4294967295u, u_input.a.x, 1u, 58387u)))), Struct_4(u_input.b.x, func_4(func_1(~global3.a, vec2<i32>(global3.b.x, global3.b.x) & vec2<i32>(0i, -1590i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-621f * 1205f), _wgslsmith_f_op_f32(206f * 514f), true)), Struct_3(true), func_1(u_input.b.x, vec2<i32>(2147483647i, u_input.b.x))), Struct_2(u_input.b.x, func_4(func_1(global3.a, vec2<i32>(global3.b.x, -6567i)), _wgslsmith_f_op_f32(floor(-441f)), Struct_3(false), func_4(Struct_1(global3.b.x, u_input.b.zy), -164f, Struct_3(true), Struct_1(5020i, vec2<i32>(u_input.b.x, u_input.b.x))).b).b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 46107u, ~128069u, u_input.d.x), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(33038u, u_input.a.x, 34058u, u_input.a.x), vec4<u32>(u_input.c, u_input.a.x, u_input.d.x, u_input.c)), vec4<u32>(u_input.d.x, 67338u, 1u, 51488u), vec4<u32>(1u, 56130u, u_input.c, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, u_input.c, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-124f, -1000f) * vec2<f32>(-1474f, -653f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1135f, 390f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(618f, 1460f))))))), global4[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(10790u, 11220u, u_input.a.x, 0u), vec4<u32>(50839u, u_input.c, u_input.a.x, u_input.c) | vec4<u32>(u_input.c, 4294967295u, u_input.d.x, u_input.c)) & u_input.c) & 1u, 17u)], Struct_4(-14139i, Struct_2(u_input.b.x, Struct_1(-2147483647i, vec2<i32>(u_input.b.x, global3.b.x))), Struct_2(select(max(global3.b.x, -27186i), u_input.b.x, false), func_1(-2147483647i, u_input.b.xx)), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1674f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(148f, -1165f)))))));
    var var_1 = _wgslsmith_add_vec4_i32(-abs(-vec4<i32>(global3.b.x, global3.b.x, -19401i, -26035i)), ~_wgslsmith_mult_vec4_i32(reverseBits(-vec4<i32>(1i, 39386i, u_input.b.x, global3.b.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, -1i), vec4<i32>(u_input.b.x, -4774i, global3.b.x, -1i))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 1200f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 235f)) - _wgslsmith_div_f32(980f, 967f)), var_0.a)))));
    let var_3 = Struct_3(true);
    global0 = array<Struct_3, 3>();
    var var_4 = _wgslsmith_mod_i32(firstTrailingBit(var_1.x), -2147483647i);
    global0 = array<Struct_3, 3>();
    var_4 = firstLeadingBit(max(global3.b.x, reverseBits(_wgslsmith_add_i32(-u_input.b.x, var_1.x))));
    var var_5 = Struct_2(u_input.b.x, func_1(-_wgslsmith_mult_i32(73794i, var_1.x), select(~var_1.zy, ~_wgslsmith_sub_vec2_i32(vec2<i32>(global3.a, -1i), u_input.b.yy), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~1u, 1u), 0u, 0u), select(vec2<i32>(31495i, min(var_5.a, 1i) | (20812i << (u_input.a.x % 32u))), vec2<i32>(var_5.a, -1i), false), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(60098u, u_input.d.x), 4294967295u, ~24658u), ~vec3<u32>(21037u, 4294967295u, 1u) | vec3<u32>(0u, ~u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec2_u32(max(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), 4294967295u), ~(~vec2<u32>(u_input.a.x, 1u))), vec2<u32>(u_input.d.x, reverseBits(u_input.a.x))));
}

