struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = vec4<f32>(global1.b.a.x, global1.b.a.x, _wgslsmith_f_op_f32(-global1.b.b), global1.b.a.x);
    global0 = array<bool, 23>();
    var var_1 = global3.a.x;
    global0 = array<bool, 23>();
    let var_2 = global3.d ^ _wgslsmith_add_i32(6597i | global3.d, 1i);
    return -global3.c;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(global1.a, vec4<i32>(-global1.a.x, global3.c, global3.c, 0i)) << (select(vec4<u32>(28382u, 33307u, 25085u, global1.b.c.x) & vec4<u32>(26023u, 14109u, 90975u, 42723u), vec4<u32>(_wgslsmith_div_u32(global1.b.c.x, 65923u), 18332u, _wgslsmith_sub_u32(21262u, 0u), ~global3.a.x), vec4<bool>(true, !global0[_wgslsmith_index_u32(global3.a.x, 23u)], -7197i <= global1.a.x, !global1.b.d)) % vec4<u32>(32u)), global1.b);
    var_0 = Struct_2(reverseBits(-var_0.a), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, var_0.b.a.x)) * var_0.b.a), var_0.b.a)), -1000f, vec2<u32>(1u, global3.b.x), !all(vec3<bool>(false, global1.b.d, global0[_wgslsmith_index_u32(52805u, 23u)]))));
    global1 = Struct_2(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(26072i, 0i), vec2<i32>(global3.d, 8467i), global0[_wgslsmith_index_u32(global1.b.c.x, 23u)]), global1.a.xz), -abs(445i), _wgslsmith_div_i32(func_3(vec4<u32>(global1.b.c.x, 1u, 4294967295u, var_0.b.c.x)), 2827i), firstLeadingBit(1i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.b.a + vec2<f32>(global1.b.b, var_0.b.a.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.b.a + vec2<f32>(global1.b.a.x, 701f)), vec2<f32>(-1510f, -604f), select(vec2<bool>(false, false), vec2<bool>(var_0.b.d, global1.b.d), var_0.b.d)))), var_0.b.b, global3.a.zw, !all(select(vec2<bool>(var_0.b.d, var_0.b.d), vec2<bool>(false, false), vec2<bool>(global1.b.d, global0[_wgslsmith_index_u32(global1.b.c.x, 23u)])))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, global1.b.a.x)) + _wgslsmith_f_op_vec2_f32(ceil(global1.b.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-837f, 2412f), var_0.b.a)) * _wgslsmith_f_op_vec2_f32(-global1.b.a)))), global1.b.b, vec2<u32>(44923u, firstLeadingBit(firstTrailingBit(var_0.b.c.x))), (!(!global1.b.d) == (!global1.b.d || (true | global1.b.d))) & true);
    var var_2 = !select(!vec3<bool>(true, any(vec3<bool>(var_1.d, false, global1.b.d)), any(vec3<bool>(true, var_1.d, false))), vec3<bool>(any(vec4<bool>(false, var_0.b.d, false, false)), var_0.b.d, var_1.d), vec3<bool>(true, all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(7609u, 23u)], false)), true));
    return Struct_3(countOneBits(~(~vec4<u32>(global1.b.c.x, 1u, global1.b.c.x, 0u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global1.b.c.x, 12318u, global3.a.x, var_1.c.x), global3.a)), vec3<u32>(firstTrailingBit(firstTrailingBit(~global3.a.x)), 1u, global1.b.c.x), ~_wgslsmith_mod_i32(select(-1i, firstLeadingBit(global3.c), all(var_2.xz)), i32(-1i) * -33731i), _wgslsmith_add_i32(~1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global3.d, -2147483647i, -2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, global3.d, var_0.a.x), global1.a.zyw), var_0.a.x, -global3.d ^ max(global3.c, 1i))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(~42090u, ~0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, _wgslsmith_f_op_f32(1800f * 1357f), 1165f, arg_0.b.a.x)))));
    var var_2 = !(!(!vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b.c.x, u_input.a), 23u)], true)));
    let var_3 = var_2.x;
    let var_4 = func_2();
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = var_0.a.x;
    global3 = Struct_3(~var_0.a, global3.a.xxw, 28115i, firstTrailingBit(arg_1.a.x));
    global3 = Struct_3(global3.a, max(global3.b << (global3.a.zwx % vec3<u32>(32u)), vec3<u32>(~1u, countOneBits(4294967295u) | _wgslsmith_dot_vec2_u32(vec2<u32>(29366u, 4294967295u), vec2<u32>(32079u, 4294967295u)), 17168u)), _wgslsmith_add_i32(global1.a.x, ~(~(~global1.a.x))), _wgslsmith_mod_i32(arg_2, -22921i));
    global1 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, 957f) * _wgslsmith_f_op_vec2_f32(-global1.b.a)), _wgslsmith_f_op_vec2_f32(floor(arg_1.b.a)), !vec2<bool>(false, arg_1.b.d))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b, -1450f)) * _wgslsmith_f_op_vec2_f32(-global1.b.a)))))), arg_1.b.b, ~((arg_1.b.c | ~vec2<u32>(u_input.a, global1.b.c.x)) >> (firstTrailingBit(vec2<u32>(49934u, 45638u)) % vec2<u32>(32u))), arg_1.b.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(global1.a, vec4<i32>(arg_2.d, 1i, _wgslsmith_div_i32(i32(-1i) * -1i, global3.d << (global3.b.x % 32u)) & global1.a.x, ~global1.a.x));
    let var_1 = arg_2.d;
    global0 = array<bool, 23>();
    let var_2 = true;
    let var_3 = arg_2;
    return global1.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global1.b.d, func_5(func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(-38414i, global1.a.x, global3.c, global1.a.x), global1.a, vec4<i32>(-7285i, global1.a.x, -9762i, -153i)) << (select(global3.a, global3.a, global1.b.d) % vec4<u32>(32u)), func_1(Struct_2(global1.a, Struct_1(global1.b.a, global1.b.b, vec2<u32>(4294967295u, 72877u), true))), -2147483647i), global3.d, func_2()), !select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(~4294967295u, 23u)]) || !(!func_5(Struct_1(vec2<f32>(-1824f, -217f), 1410f, global3.b.xz, false), -1i, Struct_3(global3.a, vec3<u32>(45841u, global1.b.c.x, global3.a.x), global3.d, 0i))));
    let var_1 = 1484f;
    var var_2 = var_0.yy;
    global2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(vec4<i32>(-6861i, -1i, global3.c, 1i), Struct_2(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, -50660i), Struct_1(vec2<f32>(-878f, global1.b.a.x), 1092f, global1.b.c, false)), global3.d).a.x, _wgslsmith_f_op_f32(1000f * 1000f), global1.b.b) + vec3<f32>(600f, _wgslsmith_f_op_f32(-707f * var_1), -961f)) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.b))), -360f, global1.b.a.x)));
    var var_4 = Struct_3(global3.a, _wgslsmith_clamp_vec3_u32(global3.a.wzy, _wgslsmith_div_vec3_u32(global3.b, vec3<u32>(~10259u, 0u, global1.b.c.x)), vec3<u32>(u_input.a, reverseBits(_wgslsmith_mult_u32(u_input.a, u_input.a)), ~abs(1u))), 84933i, _wgslsmith_mult_i32(global3.c, ~_wgslsmith_div_i32(-2147483647i, -5547i)));
    var var_5 = func_4(vec4<i32>(70324i, -_wgslsmith_dot_vec4_i32(-global1.a, -vec4<i32>(-2147483647i, 2147483647i, -43303i, -1i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(72883i, -38356i), global1.a.x >> (global3.a.x % 32u), i32(-1i) * -32017i) ^ var_4.d, func_1(func_1(Struct_2(global1.a, global1.b))).a.x), Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yz)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), max(vec2<u32>(22254u, 1u), vec2<u32>(61312u, 47168u)) >> (global3.b.zy % vec2<u32>(32u)), false)), -_wgslsmith_sub_i32(~(-52940i), global3.c) << (abs(_wgslsmith_mod_u32(~global3.b.x, global3.a.x)) % 32u));
    var_4 = Struct_3(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(var_4.a, global3.a), func_2().a), ~global3.a.ywz, 0i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec3<i32>(-2147483647i, global3.c, global1.a.x))));
}

