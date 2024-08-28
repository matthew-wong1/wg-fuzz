struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(22272u, 56751u, 96388u), vec3<u32>(5002u, 4294967295u, 5539u), vec3<u32>(38949u, 51566u, 45665u), vec3<u32>(4294967295u, 4294967295u, 70320u), vec3<u32>(7225u, 1u, 1u), vec3<u32>(69427u, 52557u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 93845u, 1u), vec3<u32>(1u, 47058u, 4294967295u), vec3<u32>(1u, 33116u, 1u), vec3<u32>(4294967295u, 47345u, 4294967295u), vec3<u32>(43504u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 29287u), vec3<u32>(1u, 47650u, 11810u), vec3<u32>(0u, 56300u, 4294967295u), vec3<u32>(64539u, 0u, 84823u), vec3<u32>(36390u, 21086u, 18787u), vec3<u32>(1u, 5425u, 4294967295u), vec3<u32>(0u, 62013u, 44484u), vec3<u32>(50735u, 72941u, 79958u), vec3<u32>(0u, 19108u, 16327u), vec3<u32>(0u, 0u, 0u));

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(1i, 56463i, 2963i));

var<private> global2: array<vec2<bool>, 32>;

var<private> global3: Struct_5;

var<private> global4: array<i32, 24> = array<i32, 24>(i32(-2147483648), 38503i, 59426i, -6222i, -34941i, -1i, -1i, 8123i, -26356i, -28497i, 17776i, -1i, 24600i, 30142i, 23483i, -4019i, -42421i, -21321i, -2662i, -24576i, 1i, 0i, -1i, 0i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(global3.a.a.x, 0i), -global4[_wgslsmith_index_u32(0u, 24u)])), global4[_wgslsmith_index_u32(1u, 24u)], u_input.a), !(!global3.a.b));
    global4 = array<i32, 24>();
    global2 = array<vec2<bool>, 32>();
    global3 = Struct_5(Struct_3(-vec3<i32>(i32(-1i) * -4365i, 16526i, global3.a.a.x | global4[_wgslsmith_index_u32(arg_1, 24u)]), vec4<bool>(true, true, true | arg_0.a, any(vec2<bool>(true, arg_2.a)))), select(!select(select(vec4<bool>(global3.a.b.x, arg_2.b, false, arg_2.b), vec4<bool>(false, true, false, var_0.b.x), false), !global3.b, !vec4<bool>(global3.a.b.x, true, arg_2.b, global3.b.x)), !var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -298f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(275f + -546f)))));
    return arg_2;
}

fn func_3(arg_0: Struct_2) -> Struct_5 {
    global2 = array<vec2<bool>, 32>();
    global2 = array<vec2<bool>, 32>();
    let var_0 = abs(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2335u, 0u, 1u, 8791u), vec4<u32>(24978u, 19052u, 4294967295u, 34267u)), _wgslsmith_mod_u32(0u, 4294967295u))), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(1u, 0u)), ~(~vec2<u32>(86727u, 1u)))));
    let var_1 = _wgslsmith_mult_vec3_u32(min(select(vec3<u32>(abs(var_0.x), _wgslsmith_add_u32(var_0.x, var_0.x), 1u), vec3<u32>(min(1u, var_0.x), var_0.x, 7616u >> (0u % 32u)), vec3<bool>(any(vec2<bool>(false, arg_0.a)), true, false)), vec3<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, _wgslsmith_sub_u32(0u, 0u)), firstLeadingBit(var_0.x))), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), max(vec2<u32>(2376u, 12774u), var_0)), var_0.x, ~var_0.x), ~(~global0[_wgslsmith_index_u32(var_0.x, 22u)]), !vec3<bool>(true, false, arg_0.a)));
    global1 = array<vec3<i32>, 1>();
    return Struct_5(global3.a, global3.b);
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(func_2(Struct_2(!(!global3.a.b.x), !(global3.a.b.x || false)), _wgslsmith_mult_u32(1u, ~_wgslsmith_mod_u32(13050u, 1u)), Struct_2(any(!global3.b.xzx), true)));
    let var_1 = true;
    let var_2 = firstTrailingBit(1i);
    return Struct_1(vec2<bool>(true, global3.a.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1266f, 2005f), vec2<f32>(-596f, 1809f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(246f, 1063f))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1094f, -1148f))))))), min(69863u, 1u >> (1u % 32u)), select(select(vec3<bool>(var_1, true, true), var_0.a.b.xww, vec3<bool>(true, func_2(Struct_2(global3.b.x, false), 52594u, Struct_2(var_0.a.b.x, true)).b, var_1)), !vec3<bool>(true, true, select(var_0.b.x, true, true)), var_0.a.b.wxz), var_0.a.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    global0 = array<vec3<u32>, 22>();
    var var_0 = Struct_4(min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(69881u, 42397u, arg_2.c, arg_0.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(4920u, arg_0.c, arg_2.c, arg_2.c), vec4<u32>(arg_2.c, 29622u, arg_2.c, arg_2.c), vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_0.c)))), vec4<u32>(~4294967295u >> (_wgslsmith_div_u32(1u, arg_0.c) % 32u), arg_2.c, ~arg_0.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_2.c, arg_2.c)), 45404u))), Struct_2(true, ((arg_2.c >> (arg_0.c % 32u)) >> ((arg_0.c & 57985u) % 32u)) >= _wgslsmith_add_u32(1u, 0u)), Struct_3(global1[_wgslsmith_index_u32(arg_0.c, 1u)], global3.a.b));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    let var_2 = !arg_0.d;
    var var_3 = ~reverseBits(_wgslsmith_add_u32(var_0.a.x, _wgslsmith_add_u32(var_0.a.x & arg_2.c, arg_0.c)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(Struct_3(vec3<i32>(1i, func_4(func_1(), select(global3.a.b.xzw, global3.b.zzw, global3.b.x), func_1()), global3.a.a.x), global3.b), select(global3.b, vec4<bool>(false, true, false, global3.b.x), global3.b.x));
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, 2231f)), _wgslsmith_f_op_f32(1160f * 438f), !global3.b.x))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(-491f + 585f)), 1871f)), !all(!vec4<bool>(false, false, global3.a.b.x, global3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(~global4[_wgslsmith_index_u32(97971u, 24u)] >> (~4294967295u % 32u)), select(u_input.a, max(reverseBits(0i), reverseBits(1089i)), true)));
}

