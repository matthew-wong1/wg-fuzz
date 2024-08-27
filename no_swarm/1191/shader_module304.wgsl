struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: vec3<f32> = vec3<f32>(-542f, -1193f, 318f);

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-804f, 2321f, 517f, 918f), Struct_1(28648u, false, -969f, vec3<i32>(-33168i, 23811i, -35671i), vec4<u32>(4294967295u, 8600u, 1u, 116151u)), vec3<u32>(4294967295u, 10560u, 19857u), Struct_1(1u, false, -1233f, vec3<i32>(2147483647i, -15846i, 0i), vec4<u32>(18850u, 0u, 0u, 33314u)));

var<private> global3: array<i32, 32>;

var<private> global4: u32 = 3608u;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> u32 {
    var var_0 = Struct_1(~(_wgslsmith_add_u32(u_input.a.x, reverseBits(4294967295u)) ^ 4294967295u), all(select(select(!vec3<bool>(false, arg_2.a.d.b, true), select(arg_0.wzy, vec3<bool>(true, false, true), arg_0.yzw), arg_3), select(vec3<bool>(arg_3, arg_3, arg_3), !vec3<bool>(arg_0.x, true, false), vec3<bool>(false, true, global2.b.b)), vec3<bool>(true, true, arg_3))), 1829f, -abs(vec3<i32>(-1i) * -vec3<i32>(arg_1, global3[_wgslsmith_index_u32(0u, 32u)], -1i)), select(arg_2.a.d.e, ~global2.d.e >> ((abs(vec4<u32>(arg_2.b.e.a, 0u, u_input.a.x, 4874u)) << (abs(vec4<u32>(arg_2.a.c.x, 44193u, arg_2.a.b.a, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), false));
    let var_1 = arg_2.a;
    var var_2 = arg_2.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.xyz), global2.a.ywz)));
    global0 = array<vec2<bool>, 6>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(17332u, var_1.b.a, ~(~_wgslsmith_mod_u32(0u, 63427u))), vec3<u32>(arg_2.b.c, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(14611u, var_2.e.e.x), u_input.a.xy) & u_input.a.x), var_0.e.x));
}

fn func_2(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_f_op_vec4_f32(global2.a + vec4<f32>(global2.d.c, -456f, -1978f, arg_0.e.c))))), arg_0.e, vec3<u32>(1u, _wgslsmith_mult_u32(17016u, 4563u), ~u_input.a.x) ^ _wgslsmith_add_vec3_u32(reverseBits(arg_0.e.e.yyz), ~vec3<u32>(21448u, arg_0.e.e.x, arg_0.e.a)), Struct_1(36628u, arg_0.e.b, -344f, vec3<i32>(global3[_wgslsmith_index_u32(global2.d.e.x, 32u)], arg_0.a.x, 17516i), vec4<u32>(u_input.a.x, ~global2.c.x, func_3(vec4<bool>(true, true, false, false), 20019i, Struct_4(Struct_2(vec4<f32>(arg_0.b, global1.x, 857f, global2.b.c), global2.b, global2.d.e.wzz, arg_0.e), arg_0), arg_0.d), max(16609u, u_input.a.x)))), Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(95436u, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), _wgslsmith_mod_i32(arg_0.e.d.x, 23585i), global2.d.d.x), ~(global2.d.d ^ global2.d.d)), arg_0.b, ~(~u_input.a.x), global2.d.b, arg_0.e));
    let var_1 = -934f;
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, var_1, -520f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 770f, var_0.b.e.c) + vec4<f32>(156f, var_0.a.a.x, global1.x, 709f))))), Struct_1(global2.d.a, false, global2.d.c, global2.b.d, ~(~vec4<u32>(global2.b.a, u_input.a.x, global2.b.e.x, 4294967295u))), ~min(~u_input.a.xzy, min(global2.c, var_0.b.e.e.xyy)), Struct_1(15223u, !var_0.a.b.b, _wgslsmith_div_f32(-132f, _wgslsmith_f_op_f32(floor(-465f))), select(vec3<i32>(arg_0.e.d.x, -1i, var_0.a.d.d.x), vec3<i32>(-2147483647i, global2.b.d.x, global2.b.d.x), vec3<bool>(var_0.b.e.b, global2.d.b, arg_0.d)) & vec3<i32>(32500i, 2147483647i, global2.b.d.x), global2.b.e)), arg_0);
    global3 = array<i32, 32>();
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.e.x, u_input.a.x, arg_0.e.e.x, u_input.a.x), ~vec4<u32>(u_input.a.x, var_0.a.d.e.x, var_0.b.e.a, arg_0.e.a)), global2.c.x, 965u, 1u), reverseBits(vec4<u32>(u_input.a.x, 27139u, u_input.a.x, var_0.b.e.e.x)), vec4<u32>(func_3(vec4<bool>(1u <= u_input.a.x, var_0.b.d, true, var_0.a.d.b), 2147483647i, Struct_4(var_0.a, var_0.b), firstTrailingBit(global3[_wgslsmith_index_u32(1u, 32u)]) >= firstTrailingBit(var_0.a.d.d.x)), firstLeadingBit(~41482u), ~min(53274u >> (var_0.a.b.e.x % 32u), ~var_0.b.c), arg_0.e.a));
    return var_0.a.a;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], -2147483647i, global2.b.d.x), vec4<i32>(global2.d.d.x, global2.b.d.x, global2.b.d.x, global3[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global2.b.e.x, 32u)], -1i), global3[_wgslsmith_index_u32(25179u, 32u)] ^ -20537i), 298f, ~68160u, !all(vec3<bool>(true, global2.b.b, global2.b.b)), Struct_1(~0u, global2.b.b, -397f, -global2.d.d, vec4<u32>(u_input.a.x, global2.d.e.x, 28427u, 0u))))), Struct_1(26239u, any(vec2<bool>(all(vec2<bool>(global2.d.b, false)), true)), -862f, global2.d.d, firstLeadingBit(~global2.b.e) & _wgslsmith_div_vec4_u32(~u_input.a, global2.d.e)), countOneBits(vec3<u32>(43129u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(72473u, 4294967295u, 4294967295u), u_input.a.wwz)) | ~(vec3<u32>(0u, 43244u, 60875u) >> (global2.d.e.wzy % vec3<u32>(32u)))), global2.d);
    let var_1 = true;
    var var_2 = global2.d;
    var var_3 = var_0.b;
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32((var_0.b.d.x >> (global2.d.a % 32u)) & global2.d.d.x, ~_wgslsmith_sub_i32(-1846i, -1i)), var_2.d.x, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d.x, var_3.d.x ^ -12294i, global2.b.d.x), _wgslsmith_mod_vec3_i32(~vec3<i32>(global2.d.d.x, 23991i, global3[_wgslsmith_index_u32(313u, 32u)]), global2.d.d), var_2.d) >> (var_0.d.e.xxz % vec3<u32>(32u)));
    return firstTrailingBit(var_0.d.e.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2.d.b);
    var var_1 = select(true, true, true);
    let var_2 = ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(74974u, u_input.a.x, 40932u), vec3<u32>(1u, global2.c.x, u_input.a.x)), global2.c.x), ~(global2.c.x & 3168u), u_input.a.x);
    var var_3 = _wgslsmith_mod_vec2_u32(global2.c.yy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(44409u, var_2), _wgslsmith_add_vec2_u32(vec2<u32>(15585u, global2.d.e.x), u_input.a.xz)) % vec2<u32>(32u)), vec2<u32>(var_2, min(1u, _wgslsmith_dot_vec3_u32(u_input.a.wwz, global2.c)))) ^ func_1();
    var var_4 = global2.b.d.x;
    let var_5 = Struct_3(vec3<i32>(global2.d.d.x, _wgslsmith_mod_i32(1i, 1i), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global2.c.x, u_input.a.x), global2.c.x, global2.d.e.x), 32u)] | -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b.c, _wgslsmith_f_op_f32(-global1.x))) + global2.d.c), var_2, var_0 || any(vec3<bool>(global1.x > -870f, any(vec2<bool>(true, true)), false)), global2.b);
    var var_6 = Struct_3(vec3<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(~50988u, 32u)], _wgslsmith_sub_i32(~global2.d.d.x, ~global3[_wgslsmith_index_u32(32896u, 32u)])), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_5.a, vec3<i32>(global2.b.d.x, global2.d.d.x, 0i)), ~global3[_wgslsmith_index_u32(36876u, 32u)]), -(~firstLeadingBit(global3[_wgslsmith_index_u32(global2.c.x, 32u)]))), _wgslsmith_f_op_f32(abs(580f)), countOneBits(4294967295u), (_wgslsmith_sub_i32(~var_5.a.x, ~5382i) | (_wgslsmith_div_i32(44415i, global3[_wgslsmith_index_u32(0u, 32u)]) << (var_2 % 32u))) <= global3[_wgslsmith_index_u32(countOneBits(reverseBits(firstLeadingBit(u_input.a.x))), 32u)], Struct_1(53722u, false, global2.b.c, vec3<i32>(-37802i, global2.d.d.x, max(var_5.a.x, global3[_wgslsmith_index_u32(var_5.c, 32u)])) & select(-vec3<i32>(global3[_wgslsmith_index_u32(var_5.c, 32u)], -1i, 338i), -global2.d.d, var_0), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(var_5.c, 29415u, 49981u, 4294967295u)), global2.d.e)));
    global4 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(3268i, global2.b.d.x) | _wgslsmith_mod_i32(var_6.a.x, abs(-2147483647i)), 1i, global2.d.d.x));
}

