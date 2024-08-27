struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(52912u, 113021u, 1u, 1u, 0u, 62115u, 28916u, 39868u, 37753u, 45238u, 1u, 1u, 61591u, 11708u, 81755u, 67809u, 0u, 27540u, 8044u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = ~countOneBits(arg_2.xz);
    var var_1 = Struct_4(Struct_3(Struct_1(i32(-1i) * -2147483647i), arg_3, abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_0.x, 39608u)), arg_2.xz, vec2<u32>(arg_2.x, 14155u)))), Struct_3(Struct_1(1i), arg_3, arg_2.yy), -(-abs(u_input.b) >> (35072u % 32u)), select(select(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0)), all(vec4<bool>(false, false, arg_0, arg_0))), !vec2<bool>(all(vec2<bool>(arg_0, arg_0)), true), true), Struct_3(arg_3.a, Struct_2(arg_3.a, arg_3.a), vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(arg_2, arg_2)), ~arg_2.x)));
    let var_2 = Struct_4(var_1.b, var_1.b, -1i, !vec2<bool>(arg_0, _wgslsmith_f_op_f32(round(1000f)) != _wgslsmith_f_op_f32(f32(-1f) * -1036f)), Struct_3(Struct_1(arg_1.x), Struct_2(Struct_1(u_input.b | -30274i), arg_3.a), vec2<u32>(17024u, arg_2.x) | ~(~vec2<u32>(4294967295u, var_0.x))));
    var_1 = Struct_4(var_1.e, var_1.e, _wgslsmith_dot_vec4_i32(abs(select(~vec4<i32>(u_input.b, 1i, var_2.c, -16756i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -12599i, 0i, 47955i), vec4<i32>(arg_3.b.a, var_1.b.a.a, -15860i, -17603i)), select(vec4<bool>(arg_0, var_2.d.x, var_1.d.x, var_2.d.x), vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), var_2.d.x))), countOneBits(abs(~vec4<i32>(var_1.a.b.b.a, -16851i, -28460i, arg_3.a.a)))), select(var_1.d, select(var_2.d, vec2<bool>(arg_0, true), select(true == var_2.d.x, var_2.d.x, any(vec4<bool>(arg_0, true, true, false)))), arg_0), Struct_3(Struct_1(-(arg_3.b.a & arg_3.a.a)), var_1.b.b, vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.c.x, var_1.a.c.x), vec2<u32>(4294967295u, 28853u)), 19u)], 46561u)));
    let var_3 = abs(~abs(~7679u));
    return var_1.b.a.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_f32(arg_0 + 704f);
    global0 = array<u32, 19>();
    let var_1 = min(vec3<i32>(-67746i, ~_wgslsmith_add_i32(u_input.b, -2147483647i), countOneBits(30788i)) | vec3<i32>(~u_input.b, u_input.b, reverseBits(firstLeadingBit(u_input.b))), min(vec3<i32>(0i, 2147483647i, func_3(1u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], -vec3<i32>(u_input.b, u_input.b, u_input.b), vec4<u32>(14178u, global0[_wgslsmith_index_u32(0u, 19u)], u_input.a, 1u), Struct_2(Struct_1(-1i), Struct_1(u_input.b)))), firstLeadingBit(~max(vec3<i32>(u_input.b, u_input.b, -13551i), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
    return Struct_1(~u_input.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_3 {
    global0 = array<u32, 19>();
    var var_0 = 1612f;
    var var_1 = arg_2;
    var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(max(1638f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f + -514f) * -1413f)))), func_2(_wgslsmith_f_op_f32(floor(2173f))));
    var var_2 = Struct_4(Struct_3(func_2(1289f), arg_2, ~arg_1.yy), Struct_3(func_2(_wgslsmith_f_op_f32(-1f)), Struct_2(Struct_1(func_2(-1024f).a), Struct_1(min(2922i, -24890i))), ~(~(arg_1.yy >> (arg_1.zx % vec2<u32>(32u))))), _wgslsmith_add_i32(41852i, -u_input.b), arg_0.xy, Struct_3(Struct_1(_wgslsmith_clamp_i32(-23257i, select(1i, 91341i, false), _wgslsmith_mod_i32(var_1.b.a, var_1.b.a))), Struct_2(func_2(_wgslsmith_f_op_f32(-1000f + 1369f)), func_2(_wgslsmith_f_op_f32(877f * 484f))), ~vec2<u32>(12688u, 4294967295u)));
    return Struct_3(arg_2.a, arg_2, vec2<u32>(countOneBits(reverseBits(~u_input.a)), u_input.a));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    return Struct_3(arg_1.b.a, arg_1.e.b, countOneBits(arg_1.e.c));
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = select(vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true), vec2<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true), true);
    var var_1 = 71428u & _wgslsmith_mult_u32(~firstTrailingBit(~u_input.a), 1u);
    let var_2 = arg_0.a.a;
    let var_3 = Struct_4(func_1(vec4<bool>(var_0.x, ~u_input.b > firstLeadingBit(0i), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true))), arg_0.b.a.a == arg_0.a.a), select(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6178u, 19u)], 19u)], 34450u, 36845u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(5222u, 19u)], 4294967295u)) << (~vec3<u32>(global0[_wgslsmith_index_u32(1u, 19u)], 82780u, global0[_wgslsmith_index_u32(0u, 19u)]) % vec3<u32>(32u)), select(~vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)]), ~vec3<u32>(54935u, 23755u, arg_0.c.x), vec3<bool>(true, true, true)), true && all(vec4<bool>(true, var_0.x, false, var_0.x))), Struct_2(Struct_1(arg_0.b.b.a ^ arg_0.a.a), arg_0.b.b), ~arg_0.c), Struct_3(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1068f, 160f)), _wgslsmith_f_op_f32(round(-297f))), Struct_4(func_4(-257f, Struct_4(arg_0, arg_0, 1i, vec2<bool>(true, var_0.x), Struct_3(Struct_1(-12862i), Struct_2(arg_0.a, Struct_1(u_input.b)), vec2<u32>(67774u, 1u))), arg_0.b.a.a), arg_0, firstTrailingBit(4777i), vec2<bool>(true, var_0.x), arg_0), ~(~u_input.b)).b.a, arg_0.b, vec2<u32>(global0[_wgslsmith_index_u32(select(25623u, ~arg_0.c.x, true), 19u)], _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1842u, 19u)], 19u)], 23988u), u_input.a ^ arg_0.c.x))), ~(-75063i), vec2<bool>(true, all(vec2<bool>(var_0.x && false, var_0.x))), arg_0);
    var var_4 = arg_0.a;
    return var_3.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, ~(~(~global0[_wgslsmith_index_u32(21780u, 19u)]))), func_5(func_4(916f, Struct_4(Struct_3(Struct_1(u_input.b), Struct_2(Struct_1(-14820i), Struct_1(-58121i)), vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 19u)])), Struct_3(Struct_1(-36164i), Struct_2(Struct_1(-15310i), Struct_1(32059i)), vec2<u32>(global0[_wgslsmith_index_u32(29134u, 19u)], u_input.a)), 2147483647i, vec2<bool>(true, true), func_1(vec4<bool>(true, true, false, true), vec3<u32>(u_input.a, u_input.a, 0u), Struct_2(Struct_1(u_input.b), Struct_1(u_input.b)), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(107006u, 19u)], 19u)]))), ~max(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_sub_vec4_i32(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), -vec4<i32>(u_input.b, u_input.b, 2147483647i, -28273i))), min(vec4<i32>(-u_input.b, -21414i, u_input.b, 71280i), firstTrailingBit(max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -30151i, u_input.b, u_input.b)), vec4<i32>(2147483647i, -1i, -22909i, u_input.b)))));
    var var_2 = Struct_2(Struct_1(firstTrailingBit(u_input.b)), Struct_1(func_1(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), ~vec3<u32>(var_0.x, 0u, 41504u), func_4(_wgslsmith_f_op_f32(-956f - -1458f), Struct_4(Struct_3(Struct_1(-1i), Struct_2(Struct_1(var_1.x), Struct_1(-18792i)), vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_3(Struct_1(58863i), Struct_2(Struct_1(var_1.x), Struct_1(u_input.b)), vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])), var_1.x, vec2<bool>(true, false), Struct_3(Struct_1(u_input.b), Struct_2(Struct_1(var_1.x), Struct_1(u_input.b)), vec2<u32>(1440u, 1u))), _wgslsmith_mult_i32(u_input.b, u_input.b)).b, _wgslsmith_sub_vec2_u32(vec2<u32>(57276u, u_input.a), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 19u)]))).b.a.a));
    let var_3 = func_3(false, (select(_wgslsmith_div_vec3_i32(vec3<i32>(15696i, var_1.x, var_1.x), var_1.xyx), var_1.wyy, false) | vec3<i32>(var_2.b.a & 2147483647i, _wgslsmith_mod_i32(-2147483647i, -4040i), var_2.b.a)) ^ var_1.yww, vec4<u32>(1u, _wgslsmith_mod_u32(~var_0.x, 1u), 89163u, 1u) | ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 46838u, 29083u, 60981u), vec4<u32>(1u, 35992u, 25063u, 85548u)), vec4<u32>(91981u, 12785u, 4294967295u, var_0.x) ^ vec4<u32>(4342u, var_0.x, u_input.a, 0u), false), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, var_2.a.a), vec2<i32>(var_1.x, 55158i)), var_1.xx)), var_2.b));
    let var_4 = Struct_4(Struct_3(Struct_1(var_1.x), Struct_2(Struct_1(abs(var_2.b.a)), var_2.a), vec2<u32>(~firstLeadingBit(4294967295u), func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), ~vec3<u32>(var_0.x, var_0.x, 38742u), Struct_2(var_2.b, Struct_1(-26755i)), vec2<u32>(1u, 0u) | vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 19u)], 19u)])).c.x)), Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(-28220i, 17108i), _wgslsmith_clamp_vec2_i32(var_1.ww, vec2<i32>(46440i, var_3), vec2<i32>(0i, -65826i)))), func_4(-1292f, Struct_4(func_1(vec4<bool>(false, true, false, true), vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43306u, 19u)], 19u)], 53560u), Struct_2(Struct_1(var_2.a.a), var_2.b), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28836u, 19u)], 19u)], 40845u)), Struct_3(var_2.b, Struct_2(Struct_1(23421i), var_2.b), vec2<u32>(var_0.x, u_input.a)), -var_2.b.a, vec2<bool>(true, true), func_4(-788f, Struct_4(Struct_3(var_2.b, Struct_2(var_2.a, var_2.a), vec2<u32>(50454u, 31509u)), Struct_3(Struct_1(-10248i), Struct_2(var_2.b, Struct_1(var_1.x)), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 34182u)), -33971i, vec2<bool>(true, false), Struct_3(Struct_1(-26163i), Struct_2(var_2.b, var_2.a), vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 0u))), 21284i)), _wgslsmith_clamp_i32(-2147483647i, var_2.b.a, -16552i) << (max(0u, 1u) % 32u)).b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 19u)], 4294967295u), vec3<u32>(44222u, global0[_wgslsmith_index_u32(62302u, 19u)], 45140u)), ~(~var_0.x))), ~var_3, select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), 54980u >= _wgslsmith_dot_vec2_u32(vec2<u32>(78651u, var_0.x), vec2<u32>(3141u, u_input.a))), vec2<bool>(true, !select(false, false, false)), true), func_1(vec4<bool>(all(vec3<bool>(false, true, false)), true, 1i < _wgslsmith_dot_vec3_i32(vec3<i32>(81070i, u_input.b, var_2.b.a), vec3<i32>(5039i, 1i, var_2.b.a)), select(true, true, true)), vec3<u32>(select(min(0u, var_0.x), ~0u, true), reverseBits(1u), u_input.a), Struct_2(func_4(668f, Struct_4(Struct_3(Struct_1(0i), Struct_2(Struct_1(u_input.b), Struct_1(-12903i)), vec2<u32>(var_0.x, var_0.x)), Struct_3(Struct_1(-2147483647i), Struct_2(var_2.a, Struct_1(var_2.a.a)), vec2<u32>(1u, var_0.x)), u_input.b, vec2<bool>(false, true), Struct_3(Struct_1(u_input.b), Struct_2(var_2.b, Struct_1(var_2.b.a)), vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(1u, 19u)]))), var_2.a.a).a, Struct_1(51318i)), ~(~select(vec2<u32>(global0[_wgslsmith_index_u32(53433u, 19u)], 61247u), vec2<u32>(0u, u_input.a), true))));
    var var_5 = var_1.wwy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec3_i32(var_1.xyx, var_1.yzx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-798f, -818f)), vec2<f32>(-2429f, -1187f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)))))), _wgslsmith_mult_vec4_i32(-var_1, ~firstLeadingBit(~vec4<i32>(-52071i, u_input.b, 26794i, var_3))));
}

