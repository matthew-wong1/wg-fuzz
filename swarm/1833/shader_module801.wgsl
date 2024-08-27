struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(2147483647i, 8554i, 2147483647i, -77457i), vec4<i32>(0i, -16344i, 1i, 16499i), vec4<i32>(i32(-2147483648), -15506i, 0i, 9335i), vec4<i32>(-64165i, -1396i, 1i, 2147483647i), vec4<i32>(-1536i, -10816i, 0i, 41607i), vec4<i32>(2147483647i, -53809i, -1i, 0i), vec4<i32>(33464i, i32(-2147483648), 63122i, 13917i), vec4<i32>(1i, -10238i, -61162i, -1i), vec4<i32>(1i, 1i, 30100i, -5144i), vec4<i32>(48971i, -1i, -1i, 1i), vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(38581i, -11675i, 1i, 92504i), vec4<i32>(-1i, 2624i, 29401i, 1i), vec4<i32>(-1i, -1i, -743i, i32(-2147483648)), vec4<i32>(29955i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, -1i, 2147483647i, 1808i), vec4<i32>(3345i, -8196i, -1i, 23956i), vec4<i32>(2147483647i, 1i, -8356i, 2147483647i), vec4<i32>(2147483647i, 1i, 2147483647i, -34514i), vec4<i32>(-38728i, 0i, -1i, -23990i), vec4<i32>(0i, 2147483647i, -42752i, 19027i));

var<private> global1: vec2<u32> = vec2<u32>(1u, 15483u);

var<private> global2: array<bool, 18>;

var<private> global3: array<u32, 27> = array<u32, 27>(41333u, 91404u, 0u, 49379u, 39633u, 88568u, 56302u, 4294967295u, 97929u, 78947u, 0u, 0u, 21228u, 7778u, 4294967295u, 62231u, 17048u, 6821u, 33685u, 51661u, 19608u, 912u, 4294967295u, 4294967295u, 34281u, 4294967295u, 23811u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = -27888i;
    let var_1 = Struct_5(Struct_2(global2[_wgslsmith_index_u32(201u, 18u)] && false, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, 4294967295u), vec3<u32>(45265u, 35918u, global1.x)) << (_wgslsmith_add_u32(1u, ~140338u) % 32u), vec3<bool>(true, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], false, true)) && (global1.x < global3[_wgslsmith_index_u32(u_input.a, 27u)]), true), ~(~(~vec4<u32>(4294967295u, 4294967295u, 28679u, u_input.a))), Struct_1(~min(vec4<u32>(global3[_wgslsmith_index_u32(0u, 27u)], 13730u, 1u, 8138u), vec4<u32>(global1.x, u_input.a, 4294967295u, global1.x)))), Struct_2(!global2[_wgslsmith_index_u32(52662u << ((0u | global1.x) % 32u), 18u)], _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, global3[_wgslsmith_index_u32(0u, 27u)], 1u, global1.x) ^ vec4<u32>(4842u, global1.x, global1.x, global3[_wgslsmith_index_u32(global1.x, 27u)])), firstLeadingBit(abs(vec4<u32>(34162u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 0u, global3[_wgslsmith_index_u32(global1.x, 27u)])))), !select(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 18u)], global2[_wgslsmith_index_u32(global1.x, 18u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(44366u, 18u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(global1.x, 18u)], global2[_wgslsmith_index_u32(global1.x, 18u)]), global2[_wgslsmith_index_u32(global1.x, 18u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global1.x, 18u)], false), vec3<bool>(false, false, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(global1.x, 18u)]))), firstLeadingBit(firstTrailingBit(vec4<u32>(0u, global1.x, 1u, 16974u))), Struct_1(~vec4<u32>(u_input.a, 50521u, global3[_wgslsmith_index_u32(u_input.a, 27u)], global1.x))));
    global2 = array<bool, 18>();
    let var_2 = Struct_3(~global3[_wgslsmith_index_u32(u_input.a, 27u)], (_wgslsmith_clamp_vec2_i32(select(u_input.c.yw, u_input.c.wz, false), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), u_input.c.zw), vec2<i32>(-2147483647i, 0i)) & vec2<i32>(1i, _wgslsmith_div_i32(var_0, u_input.c.x))) >> (vec2<u32>(_wgslsmith_div_u32(~var_1.b.b, var_1.a.e.a.x ^ 16881u), ~(~global3[_wgslsmith_index_u32(96674u, 27u)])) % vec2<u32>(32u)));
    var var_3 = true;
    return vec4<bool>(!(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 34068u, 31607u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.b, 67636u, 30952u, 27230u), var_1.a.e.a)), 18u)]), !any(var_1.b.c), var_1.b.c.x, all(select(vec3<bool>(!var_1.a.c.x, all(var_1.a.c.yz), all(var_1.b.c)), vec3<bool>(global2[_wgslsmith_index_u32(var_2.a, 18u)], var_1.a.c.x, true), var_1.b.c)));
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = all(vec3<bool>(select(firstLeadingBit(u_input.a) == global1.x, global2[_wgslsmith_index_u32(4294967295u, 18u)], true), global2[_wgslsmith_index_u32(global1.x ^ ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39564u, 27u)], 27u)] ^ 0u) >> ((u_input.a >> (global3[_wgslsmith_index_u32(global1.x, 27u)] % 32u)) % 32u)), 18u)], global2[_wgslsmith_index_u32(~select(global1.x, min(u_input.a, arg_0.d.a), true && global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 18u)]), 18u)]));
    global2 = array<bool, 18>();
    var_0 = any(!select(func_3(), !vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 18u)], true, true, global2[_wgslsmith_index_u32(global1.x, 18u)]), func_3())) & !global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~arg_0.a, _wgslsmith_div_vec4_u32(arg_0.a, arg_0.a))), 18u)];
    var_0 = (any(!(!vec3<bool>(global2[_wgslsmith_index_u32(arg_0.d.a, 18u)], true, global2[_wgslsmith_index_u32(82775u, 18u)]))) & global2[_wgslsmith_index_u32(1u, 18u)]) || all(vec4<bool>(any(func_3().xz), all(select(vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], false, true), true)), false, any(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_0.d.a, 18u)]))));
    global3 = array<u32, 27>();
    return func_3();
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = firstTrailingBit(1u);
    global3 = array<u32, 27>();
    global3 = array<u32, 27>();
    let var_1 = Struct_2(any(func_3().wz), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 27u)], ~arg_1.x, 1u), countOneBits(~vec3<u32>(78233u, u_input.a, global3[_wgslsmith_index_u32(global1.x, 27u)]))), 27u)], !(!select(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 18u)], true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], false), false), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 18u)]))), ~firstLeadingBit(~(vec4<u32>(global1.x, 37152u, 0u, 103602u) | vec4<u32>(12142u, 36822u, 0u, u_input.a))), Struct_1(~(~vec4<u32>(u_input.a, 38788u, u_input.a, 0u) & vec4<u32>(53398u, arg_1.x, global1.x, global1.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1725f), arg_0))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) + arg_0), _wgslsmith_f_op_f32(max(-964f, _wgslsmith_f_op_f32(max(974f, _wgslsmith_f_op_f32(f32(-1f) * -263f)))))));
    return var_1.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4) -> vec2<u32> {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1703f)))))), arg_1.a.yy, _wgslsmith_div_vec4_i32(select(-vec4<i32>(-1522i, 2147483647i, arg_1.d.b.x, arg_0.x), ~_wgslsmith_mod_vec4_i32(u_input.c, arg_0), select(func_2(Struct_4(vec4<u32>(1u, arg_1.c, 1u, 44280u), u_input.c.x, global1.x, arg_1.d, u_input.c.x)), !vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 18u)]), !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 18u)])), vec4<i32>(-2147483647i, _wgslsmith_div_i32(arg_0.x ^ 4606i, arg_1.d.b.x >> (global3[_wgslsmith_index_u32(u_input.a, 27u)] % 32u)), _wgslsmith_dot_vec2_i32(~arg_1.d.b, countOneBits(vec2<i32>(arg_1.e, u_input.b.x))), firstLeadingBit(u_input.c.x))), vec3<i32>(arg_1.b, u_input.c.x, (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1.e), u_input.c.zw) & (1671i >> (arg_1.c % 32u))) << ((_wgslsmith_dot_vec3_u32(arg_1.a.yww, arg_1.a.wzx) << (min(1u, u_input.a) % 32u)) % 32u)));
    global3 = array<u32, 27>();
    var var_1 = -696f;
    return arg_1.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 264f;
    let var_1 = false;
    global1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, global1.x)), vec2<u32>(countOneBits(4294967295u), ~u_input.a) | ~(~vec2<u32>(4294967295u, u_input.a))), ~firstLeadingBit(func_1(vec4<i32>(u_input.b.x, 5642i, -26993i, u_input.c.x), Struct_4(vec4<u32>(4294967295u, 5928u, 48911u, global3[_wgslsmith_index_u32(4294967295u, 27u)]), -11055i, 16491u, Struct_3(4294967295u, u_input.c.wz), -2147483647i))) >> (~vec2<u32>(reverseBits(global3[_wgslsmith_index_u32(0u, 27u)]), global1.x) % vec2<u32>(32u)));
    let var_2 = ~abs(vec2<u32>(abs(u_input.a), firstLeadingBit(1u)) & vec2<u32>(1u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 27u)], 27u)], 27u)], global1.x));
    let var_3 = abs(_wgslsmith_div_u32(reverseBits(~0u), _wgslsmith_mult_u32(~global1.x, _wgslsmith_mod_u32(global1.x, global3[_wgslsmith_index_u32(1u, 27u)])))) ^ u_input.a;
    let var_4 = _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(var_2.x, 72707u, u_input.a)) >> (vec3<u32>(reverseBits(0u), max(29148u, 4294967295u), 1u) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global1.x, var_2.x), _wgslsmith_add_vec3_u32(select(vec3<u32>(var_3, u_input.a, var_2.x), vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(0u, 27u)], var_2.x), vec3<bool>(false, true, false)), vec3<u32>(35684u, 30838u, var_2.x))));
    global2 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 13332u, 1u, u_input.a), ~vec4<u32>(u_input.a, var_4.x, 22724u, 4294967295u), func_4(-1000f, vec2<u32>(1u, 0u), global0[_wgslsmith_index_u32(global1.x, 21u)], vec3<i32>(2147483647i, 2147483647i, -25583i))), vec4<u32>(1u, select(global1.x, var_4.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 1u, global1.x), var_4), ~4294967295u)), 1005f, select(vec2<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, -1i), vec3<i32>(1i, u_input.b.x, 1i)), -1i), _wgslsmith_dot_vec2_i32(~u_input.c.zx, u_input.b.zy)), vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 65395i), ~_wgslsmith_sub_i32(u_input.b.x, 1i)), false));
}

