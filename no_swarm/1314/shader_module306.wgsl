struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<bool, 8>;

var<private> global3: vec2<u32> = vec2<u32>(3982u, 16014u);

var<private> global4: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(7171u, 0u), vec2<u32>(74547u, 15726u), vec2<u32>(97949u, 1u), vec2<u32>(4294967295u, 26296u), vec2<u32>(3648u, 24333u), vec2<u32>(31837u, 35386u), vec2<u32>(0u, 21985u), vec2<u32>(103928u, 4294967295u), vec2<u32>(0u, 11127u), vec2<u32>(111895u, 5442u), vec2<u32>(0u, 15689u), vec2<u32>(4294967295u, 33378u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(61303u, 1u), vec2<u32>(12972u, 0u), vec2<u32>(32070u, 46476u), vec2<u32>(1u, 33246u), vec2<u32>(1u, 20060u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 52587u), vec2<u32>(1u, 0u), vec2<u32>(3505u, 47533u), vec2<u32>(9303u, 7655u), vec2<u32>(18966u, 131283u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> vec3<u32> {
    global4 = array<vec2<u32>, 24>();
    var var_0 = Struct_1(vec3<i32>(0i, -arg_2, arg_2), false, all(vec3<bool>(any(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(global3.x, 8u)], global2[_wgslsmith_index_u32(21011u, 8u)], false), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global3.x, 8u)]), false)), global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(global3.x, 8u)] || !global2[_wgslsmith_index_u32(global3.x, 8u)])), abs(select(~_wgslsmith_add_vec2_i32(vec2<i32>(-76186i, 1i), vec2<i32>(arg_0, -18552i)), ~(-vec2<i32>(-1i, 2147483647i)), any(vec4<bool>(false, global2[_wgslsmith_index_u32(global3.x, 8u)], false, true)))), false);
    global0 = array<i32, 28>();
    var var_1 = global1[_wgslsmith_index_u32(~max(max(~global3.x, u_input.a), _wgslsmith_mult_u32(countOneBits(0u), u_input.a)), 29u)];
    global4 = array<vec2<u32>, 24>();
    return vec3<u32>(1u >> (0u % 32u), 1u, global3.x);
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 29>();
    let var_0 = min(min(1u, global3.x), global3.x) << (~25304u % 32u);
    global0 = array<i32, 28>();
    var var_1 = _wgslsmith_mult_vec3_u32(~vec3<u32>(countOneBits(~var_0), var_0, ~u_input.a << ((global3.x & 0u) % 32u)), firstTrailingBit(reverseBits(func_3(global0[_wgslsmith_index_u32(12266u, 28u)], -261f, global0[_wgslsmith_index_u32(global3.x, 28u)]) & ~vec3<u32>(4294967295u, 6036u, 59002u))));
    var var_2 = select(!vec3<bool>(abs(-604i) >= global0[_wgslsmith_index_u32(38334u << (1u % 32u), 28u)], global2[_wgslsmith_index_u32(global3.x >> ((79966u ^ var_0) % 32u), 8u)], _wgslsmith_clamp_u32(var_1.x, 11829u, 1u) != countOneBits(14554u)), !vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(70816u, ~1u), 8u)], true, all(select(vec3<bool>(global2[_wgslsmith_index_u32(36899u, 8u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(30359u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], true), global2[_wgslsmith_index_u32(var_0, 8u)]))), true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(628f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(325f * -543f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(251f, -1172f)), -1157f)), all(!(!var_2.yx)))), _wgslsmith_f_op_f32(trunc(-1000f)), true));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    var var_0 = abs(vec4<u32>(88896u, 6294u, ~712u, _wgslsmith_add_u32(~21879u ^ global3.x, ~_wgslsmith_add_u32(u_input.a, arg_2.x))));
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.wyz, _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(var_0.yyw, arg_2.wxx), ~arg_2.wwx)), var_0.wwy);
    var var_2 = firstTrailingBit(func_3(0i, arg_1, -2147483647i).x);
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    return ~reverseBits(_wgslsmith_div_u32(var_0.x, ~(~u_input.a)));
}

fn func_1() -> u32 {
    global4 = array<vec2<u32>, 24>();
    global2 = array<bool, 8>();
    return func_4(global2[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(min(-720f, -357f))), global2[_wgslsmith_index_u32(~(u_input.a ^ u_input.a), 8u)])) + _wgslsmith_f_op_f32(trunc(-1149f))), ~vec4<u32>((u_input.a << (23808u % 32u)) << ((u_input.a ^ u_input.a) % 32u), ~u_input.a | _wgslsmith_clamp_u32(82184u, 4294967295u, global3.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, u_input.a, u_input.a, 29183u), vec4<u32>(17330u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_u32(global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 46239u, 1u), vec3<u32>(u_input.a, u_input.a, global3.x)))));
}

fn func_5(arg_0: bool) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(0u, 29u)];
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(-var_0.a, var_0.a), any(vec3<bool>(true, arg_0, var_0.c)), all(select(select(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 8u)]), !vec3<bool>(var_0.b, var_0.c, global2[_wgslsmith_index_u32(4294967295u, 8u)]), arg_0), !vec3<bool>(var_0.c, global2[_wgslsmith_index_u32(global3.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), !(!vec3<bool>(arg_0, global2[_wgslsmith_index_u32(0u, 8u)], false)))), var_0.a.yx, true);
    global4 = array<vec2<u32>, 24>();
    let var_2 = vec3<i32>(-2147483647i, _wgslsmith_div_i32(32468i, var_0.d.x), _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(_wgslsmith_sub_i32(countOneBits(var_0.a.x), 2147483647i), var_0.d.x, _wgslsmith_clamp_i32(-17413i, var_1.d.x << (43507u % 32u), _wgslsmith_mult_i32(var_1.a.x, var_1.a.x)))));
    global1 = array<Struct_1, 29>();
    return !vec3<bool>(true, 1u == ((u_input.a & u_input.a) & _wgslsmith_div_u32(u_input.a, 70958u)), global2[_wgslsmith_index_u32(abs(countOneBits(u_input.a)), 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(max(100020u, firstTrailingBit(0u)) < _wgslsmith_add_u32(~(~u_input.a), max(76792u, func_1())));
    var var_1 = any(func_5(func_4(true, -781f, vec4<u32>(global3.x, global3.x, 16960u, global3.x)) >= func_4(any(vec2<bool>(var_0.x, true)), _wgslsmith_f_op_f32(round(-1297f)), vec4<u32>(u_input.a, 0u, global3.x, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-632f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1052f + 357f) + -2382f))), min(u_input.a, _wgslsmith_add_u32(~(~1u), 0u)));
}

