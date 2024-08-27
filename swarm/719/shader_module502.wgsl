struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, false, true, true, true);

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 32>;

var<private> global4: array<vec3<bool>, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, global2.x), 32u)];
    let var_1 = Struct_1(-var_0.a);
    global3 = array<Struct_1, 32>();
    var_0 = arg_0;
    var var_2 = global2.zxy;
    return ~(~abs(1u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -1370f)));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(1u, 32u)], Struct_1(_wgslsmith_div_vec4_i32(max(vec4<i32>(19503i, -1i, 3666i, 66424i) << (u_input.b % vec4<u32>(32u)), abs(vec4<i32>(u_input.c, global0.x, -2147483647i, -2147483647i))), select(vec4<i32>(u_input.c, 25836i, -29531i, global0.x), vec4<i32>(8369i, -1i, global0.x, 2147483647i), global1[_wgslsmith_index_u32(u_input.d, 6u)]) | vec4<i32>(2147483647i, 6333i, u_input.c, global0.x))), vec3<u32>(abs(~firstTrailingBit(29041u)), u_input.d, _wgslsmith_add_u32(4294967295u, 0u)), true, 1u);
    global1 = array<bool, 6>();
    let var_2 = var_1.a;
    global1 = array<bool, 6>();
    return ~var_1.e;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.ww)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-620f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zz)), vec2<bool>(true, !arg_2.d))))));
    let var_1 = true;
    let var_2 = !(!vec2<bool>(abs(arg_0) != _wgslsmith_div_u32(47903u, u_input.b.x), any(vec2<bool>(true, true))));
    global4 = array<vec3<bool>, 27>();
    let var_3 = arg_1.yyx;
    return !(!(!select(!vec4<bool>(var_1, true, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 6u)], arg_2.d, var_1), vec4<bool>(true, false, var_1, true))));
}

fn func_1() -> vec3<bool> {
    let var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(104202u, u_input.b.x, func_2(global3[_wgslsmith_index_u32(15442u, 32u)])), u_input.d), 6u)], all(func_4(func_3(), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(847f, 869f, -708f, -132f), vec4<f32>(-873f, -1376f, 1511f, 604f))), Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 32u)], global3[_wgslsmith_index_u32(1u, 32u)], vec3<u32>(global2.x, 38176u, global2.x), true, 0u))), all(func_4(~24619u, _wgslsmith_div_vec4_f32(vec4<f32>(447f, 1104f, -133f, 1095f), vec4<f32>(349f, 315f, 215f, 995f)), Struct_2(Struct_1(vec4<i32>(global0.x, 2147483647i, global0.x, 28684i)), Struct_1(vec4<i32>(2147483647i, 1i, -2147483647i, -51866i)), u_input.b.xyw, global1[_wgslsmith_index_u32(0u, 6u)], u_input.d)).yyw), true), func_4(~global2.x, vec4<f32>(_wgslsmith_f_op_f32(-825f * -1457f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1411f * 2703f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f))), Struct_2(Struct_1(vec4<i32>(0i, 34176i, global0.x, u_input.a.x)), global3[_wgslsmith_index_u32(u_input.d, 32u)], ~(global2.yyx >> (vec3<u32>(u_input.b.x, 2332u, 1u) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(4294967295u, 6u)], ~abs(u_input.d))), reverseBits(max(-7446i, -u_input.a.x)) >= -firstLeadingBit(_wgslsmith_sub_i32(2147483647i, u_input.a.x)));
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, firstTrailingBit(select(_wgslsmith_dot_vec2_u32(global2.ww, global2.ww), ~u_input.b.x, var_0.x))), 32u)], Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-19386i, u_input.a.x, 2147483647i, 63228i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, global0.x), vec4<i32>(1i, -1i, global0.x, u_input.c)) & ~vec4<i32>(2147483647i, global0.x, -55589i, u_input.a.x))), ~firstLeadingBit(~vec3<u32>(4294967295u, u_input.d, 10876u)), true, 50807u >> (global2.x % 32u));
    var var_2 = all(!(!var_0));
    global1 = array<bool, 6>();
    global3 = array<Struct_1, 32>();
    return select(!var_0.ywy, vec3<bool>((!var_0.x & true) && (u_input.a.x <= global0.x), !select(var_0.x & false, 0u != global2.x, !global1[_wgslsmith_index_u32(var_1.e, 6u)]), global1[_wgslsmith_index_u32(~(~(u_input.d & global2.x)), 6u)]), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-500f, -1787f)));
    var var_1 = _wgslsmith_f_op_f32(var_0 - 1420f);
    var var_2 = select(!(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)], true)))), !func_1(), !(!select(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 27u)], global4[_wgslsmith_index_u32(0u, 27u)], true)));
    let var_3 = global3[_wgslsmith_index_u32(27074u, 32u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-530f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(533f + var_0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1462f * 1828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 247f, false))))), 269f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -358f, var_0) * vec3<f32>(1052f, 329f, var_0)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1000f, var_0) + vec3<f32>(var_0, var_0, -875f)))))));
    var_2 = select(!(!select(global4[_wgslsmith_index_u32(327u, 27u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(8589u, 0u), 27u)], vec3<bool>(false, global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)]))), func_4(firstTrailingBit(select(4294967295u, 0u << (0u % 32u), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1635f, var_4.x, var_2.x)), _wgslsmith_f_op_f32(-var_4.x), var_0, _wgslsmith_f_op_f32(round(-1351f))) - vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(ceil(1212f)), _wgslsmith_f_op_f32(trunc(var_0)))), Struct_2(global3[_wgslsmith_index_u32(abs(min(66456u, 0u)), 32u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(80735u, abs(global2.x)), 32u)], vec3<u32>(global2.x, 0u, select(4294967295u, 5761u, var_2.x)), global1[_wgslsmith_index_u32(~global2.x, 6u)], ~(~18622u))).xxx, !vec3<bool>(!(!var_2.x), !(var_4.x == var_4.x), var_0 <= _wgslsmith_f_op_f32(-1057f + var_4.x)));
    var_2 = select(!(!func_4(global2.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.x, var_0, -1324f, 250f))), Struct_2(Struct_1(var_3.a), global3[_wgslsmith_index_u32(global2.x, 32u)], vec3<u32>(global2.x, global2.x, global2.x), var_2.x, 49359u)).xxx), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, 65938u), 6u)], !func_4(func_3(), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, 235f, var_4.x) + vec4<f32>(501f, -368f, var_0, var_0)), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(var_3.a), vec3<u32>(1u, 5915u, u_input.d), true, u_input.d)).x, true), any(select(global4[_wgslsmith_index_u32(abs(u_input.d), 27u)], !global4[_wgslsmith_index_u32(17262u, 27u)], !global4[_wgslsmith_index_u32(global2.x, 27u)])) & func_1().x);
    global4 = array<vec3<bool>, 27>();
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + var_4.x), abs(abs(global2.wy)), _wgslsmith_f_op_f32(1531f - _wgslsmith_div_f32(-2344f, var_4.x)));
}

