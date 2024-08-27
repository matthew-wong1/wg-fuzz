struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(762f, -417f, 1000f), vec3<i32>(-31352i, -55353i, 6155i), vec3<bool>(true, false, false));

var<private> global2: bool = true;

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global4: Struct_1 = Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(271f, 215f, -322f), vec3<i32>(-1i, 56621i, 2147483647i), vec3<bool>(false, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> vec4<u32> {
    global2 = arg_2;
    let var_0 = vec2<u32>(_wgslsmith_div_u32(select(1u, arg_3.d.a.x, global4.d.x), ~28396u) << (_wgslsmith_div_u32(~_wgslsmith_mod_u32(4294967295u, u_input.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global0[_wgslsmith_index_u32(35183u, 3u)], global1.a.x), select(vec3<u32>(u_input.d, arg_3.b, 6886u), vec3<u32>(4294967295u, 29105u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.a.x, 3u)], 3u)]), true))) % 32u), countOneBits(45980u));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(var_0.x), ~4294967295u, u_input.d), ~(~(vec3<u32>(u_input.d, 26355u, 27678u) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_3.d.a.x, var_0.x), vec3<u32>(1590u, 72126u, var_0.x)))));
    let var_2 = ~_wgslsmith_div_vec3_u32(firstTrailingBit(abs(~vec3<u32>(var_0.x, var_0.x, 22829u))), reverseBits(vec3<u32>(1u, 1u, 1u)));
    global2 = any(!vec2<bool>(global4.d.x, arg_2));
    return vec4<u32>(global0[_wgslsmith_index_u32(~var_1.x, 3u)], ~(~23686u), ~(~global1.a.x), var_2.x) & vec4<u32>(1u, min(~firstLeadingBit(var_2.x), var_0.x >> (~var_1.x % 32u)), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(5735u, min(global4.a.x, var_1.x))), select(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global4.a.x), 60675u), 41365u, !(global1.d.x | true)));
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = _wgslsmith_add_vec4_u32(~(~func_3(_wgslsmith_f_op_vec2_f32(global4.b.yx - vec2<f32>(global4.b.x, 630f)), -vec4<i32>(-67706i, global1.c.x, 0i, -1i), !global1.d.x, Struct_2(true, arg_0, global4.b.x, Struct_1(vec2<u32>(16991u, 1u), vec3<f32>(-1337f, -1000f, 973f), vec3<i32>(1i, -63688i, global4.c.x), vec3<bool>(true, global1.d.x, true)), global1.c.x))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0, 106843u, 0u, 33879u), vec4<u32>(55745u, 7205u, 4294967295u, 9327u), false) & vec4<u32>(52395u, global0[_wgslsmith_index_u32(1u, 3u)], 0u, 0u), vec4<u32>(~global4.a.x, arg_0, 44809u, 1u)));
    global4 = Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.x)) * _wgslsmith_div_f32(422f, 844f))), -834f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(global1.b.x * global4.b.x))))), _wgslsmith_mod_vec3_i32(-global1.c & global1.c, u_input.c.www) & countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 4830i), vec2<i32>(global4.c.x, 1i)), ~10426i, global1.c.x)), select(!vec3<bool>(all(vec4<bool>(global1.d.x, global4.d.x, true, true)), !global4.d.x, global1.d.x | true), !select(global4.d, !global1.d, any(vec4<bool>(global4.d.x, false, true, global4.d.x))), !select(global4.d, vec3<bool>(true, true, true), global1.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global4.b))));
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(abs(1143f));
    return Struct_5(global4.c.xx, Struct_1(global4.a, _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(_wgslsmith_div_f32(var_1.x, 865f), global4.b.x, -1000f)), vec3<i32>(u_input.c.x, u_input.a, _wgslsmith_div_i32(u_input.c.x, -19176i)), vec3<bool>(0i > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -30333i, 105372i, u_input.a), vec4<i32>(-65337i, 0i, 0i, global1.c.x)), !global4.d.x, all(!vec4<bool>(false, true, global4.d.x, global4.d.x)))), abs(vec4<u32>(66623u, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, global4.a.x), var_0.x), _wgslsmith_mult_u32(u_input.b >> (8926u % 32u), ~1u), 4294967295u)), _wgslsmith_f_op_f32(global1.b.x + 343f), global1.d.x);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_add_i32(-2147483647i, arg_2.d.c.x);
    global1 = Struct_1(reverseBits(arg_2.d.a), global1.b, max(u_input.c.yxy, arg_0.b.c), select(vec3<bool>(all(!global4.d), true, all(select(vec4<bool>(true, false, global1.d.x, false), vec4<bool>(arg_0.e, false, arg_0.e, arg_1.b), vec4<bool>(global1.d.x, global1.d.x, false, false)))), vec3<bool>(!all(global1.d.xy), any(arg_2.d.d.yy), !(!arg_0.b.d.x)), func_2(arg_1.c.x).b.d));
    global2 = func_2(~firstTrailingBit(max(max(u_input.b, 0u), ~25883u))).b.d.x;
    global2 = global4.d.x;
    var var_1 = vec4<u32>(1u, 120392u, func_2(~(global1.a.x & abs(0u))).b.a.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 3u)], ~21630u));
    return vec3<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_f32(floor(func_2(4294967295u).d)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_2;
    let var_1 = !((4670i >= select(var_0.b.d.c.x, -arg_3.x, arg_0)) == any(!(!vec3<bool>(true, arg_0, global4.d.x))));
    global1 = Struct_1(arg_2.b.d.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(func_2(92295u), Struct_4(global4.a.x, global4.d.x, vec3<u32>(arg_2.b.d.a.x, global4.a.x, global0[_wgslsmith_index_u32(4294967295u, 3u)])), arg_2.b, vec3<u32>(u_input.d, global1.a.x, 1822u)))))), vec3<i32>(max(-17158i, 0i), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(u_input.c.xyy, vec3<i32>(-24946i, -1i, arg_2.b.e))), -26313i), arg_3.x), select(!func_2(~18522u).b.d, vec3<bool>(!var_1, arg_0, true), vec3<bool>(select(arg_0, all(vec4<bool>(true, arg_0, var_1, false)), true && global1.d.x), (arg_0 == true) || (arg_2.b.d.a.x < 1u), global4.d.x)));
    var var_2 = var_0.b.d.d.xy;
    global4 = func_2(0u).b;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    let var_0 = global1.a.x == _wgslsmith_mult_u32(41246u, abs(u_input.b));
    var var_1 = !select(select(vec3<bool>(any(vec4<bool>(false, global1.d.x, global4.d.x, global1.d.x)), all(global4.d), false || var_0), vec3<bool>(func_1(false, vec2<i32>(global1.c.x, 14651i), Struct_3(global4.c.zy, Struct_2(true, 2978u, 171f, Struct_1(vec2<u32>(34342u, 25638u), global1.b, global4.c, global4.d), global4.c.x), vec3<f32>(1989f, 1375f, global1.b.x)), u_input.c), global1.d.x, global1.d.x | true), func_2(global1.a.x).b.d), func_2(4294967295u).b.d, vec3<bool>(true, global4.d.x, select(global1.d.x, true, func_2(14167u).e)));
    var var_2 = _wgslsmith_clamp_i32(i32(-1i) * -(~_wgslsmith_sub_i32(-3643i, global4.c.x)), select((~u_input.a >> ((1u >> (global1.a.x % 32u)) % 32u)) << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(global4.a.x, 30938u, global4.a.x), _wgslsmith_add_u32(9001u, 91876u)) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.c.x, global4.c.x), vec3<i32>(-1i, u_input.c.x, -18733i)) ^ 1i, true), _wgslsmith_sub_i32(~(-(~u_input.c.x)), ~(-1i)));
    var_2 = abs(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 1i, global1.b.x, global4.b, vec3<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.d, 795u, 43125u, 4294967295u) << (vec4<u32>(1u, 130176u, 84317u, u_input.b) % vec4<u32>(32u))) | vec4<u32>(global0[_wgslsmith_index_u32(global1.a.x, 3u)], 108130u, u_input.b, u_input.d), countOneBits(vec4<u32>(global4.a.x, 1u, global1.a.x, u_input.d)) >> (vec4<u32>(u_input.b, u_input.d, 11209u, u_input.d) % vec4<u32>(32u))), 1u, _wgslsmith_div_u32(0u, 79395u)));
}

