struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: u32;

var<private> global3: Struct_4;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = -2147483647i;
    let var_1 = ~global0.a.x;
    var var_2 = arg_0.x;
    let var_3 = Struct_1(global0.a);
    var var_4 = true;
    return Struct_4(select(!global3.a, !global3.a, true), vec4<i32>(-1i, ~_wgslsmith_mod_i32(global3.c & global3.c, select(u_input.a.x, 48288i, true)), -u_input.a.x, firstLeadingBit(-4658i)), ~1i);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(arg_0.x, Struct_1(~vec2<u32>(85444u, _wgslsmith_clamp_u32(global0.a.x, global0.a.x, arg_0.x))));
    let var_1 = Struct_2(select(~global0.a.x, global0.a.x, global3.a.x), Struct_1(min(min(_wgslsmith_clamp_vec2_u32(var_0.b.a, arg_0.wz, vec2<u32>(628u, arg_0.x)), arg_0.zw), var_0.b.a)));
    var var_2 = arg_0;
    var var_3 = select(!select(!select(vec4<bool>(true, global3.a.x, arg_1.x, true), vec4<bool>(global3.a.x, global1[_wgslsmith_index_u32(global0.a.x, 1u)], true, arg_1.x), false), select(select(vec4<bool>(false, arg_2.a.x, global1[_wgslsmith_index_u32(10131u, 1u)], true), vec4<bool>(global1[_wgslsmith_index_u32(53950u, 1u)], false, false, global3.a.x), vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.b.a.x, 1u)], arg_1.x, arg_2.a.x)), !vec4<bool>(arg_2.a.x, false, global3.a.x, global3.a.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(arg_2.a.zx), arg_2.a.x || global1[_wgslsmith_index_u32(4294967295u, 1u)], true)), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(~1u, 1u)], arg_2.a.x)), select(select(select(!vec4<bool>(true, arg_2.a.x, global3.a.x, true), vec4<bool>(true, true, true, true), all(vec3<bool>(arg_2.a.x, global3.a.x, global1[_wgslsmith_index_u32(57795u, 1u)]))), vec4<bool>(true, global3.a.x, !arg_2.a.x, !arg_2.a.x), select(false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_2.x), 1u)], global3.a.x)), !vec4<bool>(arg_1.x, any(arg_2.a), global3.a.x, true), select(select(!vec4<bool>(true, true, global3.a.x, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_1.x, arg_1.x, false), false), vec4<bool>(true, any(vec3<bool>(false, false, false)), 1366i < global3.b.x, false), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(87180u, 9416u), 1u)])));
    var_2 = _wgslsmith_add_vec4_u32(abs(arg_0), _wgslsmith_mod_vec4_u32(arg_0, min(vec4<u32>(27641u, 19079u, 4294967295u, 1u), vec4<u32>(var_1.b.a.x, var_0.a, arg_0.x, 0u)))) << ((arg_0 ^ vec4<u32>(18882u, 1u, ~global0.a.x, ~arg_0.x)) % vec4<u32>(32u));
    return Struct_3(arg_2.c << (~(~reverseBits(var_1.b.a.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(957f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(u_input.a.wyy, global3.b.zyx);
    global3 = func_2(select(select(!select(vec4<bool>(global3.a.x, global1[_wgslsmith_index_u32(57077u, 1u)], global3.a.x, global3.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 1u)], false, global3.a.x), global1[_wgslsmith_index_u32(arg_1.a, 1u)]), select(select(vec4<bool>(global3.a.x, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a, 1u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b.a.x, 1u)], global3.a.x, true, false)), vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 1u)], true, global3.a.x, global1[_wgslsmith_index_u32(0u, 1u)]), global1[_wgslsmith_index_u32(arg_1.b.a.x, 1u)] || global3.a.x), global3.a.x & all(vec4<bool>(global3.a.x, global1[_wgslsmith_index_u32(58048u, 1u)], global3.a.x, global1[_wgslsmith_index_u32(1u, 1u)]))), !select(vec4<bool>(global3.a.x, false, false, false), !vec4<bool>(global3.a.x, true, false, global3.a.x), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 1u)], false, true, global3.a.x)), !global1[_wgslsmith_index_u32(global0.a.x, 1u)]), !select(select(select(global3.a, global3.a, global3.a.x), select(global3.a, global3.a, true), u_input.b != var_0.x), !(!global3.a), vec3<bool>(all(global3.a), false, global1[_wgslsmith_index_u32(arg_1.b.a.x, 1u)])));
    var var_1 = !select(vec4<bool>(select(any(global3.a.yx), all(global3.a.yz), global1[_wgslsmith_index_u32(0u >> (0u % 32u), 1u)]), true, true, global3.a.x), select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 1u)], true, global3.a.x)), vec4<bool>(!global1[_wgslsmith_index_u32(47705u, 1u)], true, false, global1[_wgslsmith_index_u32(~global0.a.x, 1u)]), true), vec4<bool>((arg_0.a >> (63870u % 32u)) == func_2(vec4<bool>(global1[_wgslsmith_index_u32(22590u, 1u)], false, global3.a.x, global3.a.x), global3.a).b.x, true & global3.a.x, global1[_wgslsmith_index_u32((global0.a.x ^ global0.a.x) ^ _wgslsmith_mult_u32(global0.a.x, 0u), 1u)], true));
    global2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 8007u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a, global0.a.x, arg_1.a) ^ vec3<u32>(global0.a.x, 4294967295u, 1u), vec3<u32>(_wgslsmith_add_u32(global0.a.x, global0.a.x), max(arg_1.a, global0.a.x), 1u))), arg_1.a);
    global1 = array<bool, 1>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.b))));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(660f * _wgslsmith_f_op_f32(func_4(func_3(vec4<u32>(global0.a.x << (112438u % 32u), global0.a.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 33399u, 1u, global0.a.x), vec4<u32>(global0.a.x, global0.a.x, 62613u, global0.a.x))), !(!global3.a), func_2(select(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 1u)], true, global3.a.x), vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 1u)], false, false, global3.a.x), false), select(global3.a, global3.a, vec3<bool>(false, global3.a.x, false)))), Struct_2(1u, Struct_1(firstLeadingBit(global0.a))))));
    var var_1 = _wgslsmith_f_op_f32(min(-554f, 171f));
    var var_2 = global3.a.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-289f, 341f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-252f, -407f) * -949f), _wgslsmith_f_op_f32(max(-445f, _wgslsmith_f_op_f32(149f * -1106f))), 824f));
    var var_4 = Struct_1(firstLeadingBit(reverseBits(vec2<u32>(_wgslsmith_div_u32(55072u, global0.a.x), reverseBits(6312u)))));
    return vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, var_4.a.x, 16188u) << (83524u % 32u), 33704u), 0u, var_4.a.x) & vec3<u32>(~(~(~25595u)), firstLeadingBit(~(~var_4.a.x)), ~40438u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    var var_0 = func_1();
    global1 = array<bool, 1>();
    global2 = 46158u;
    let var_1 = global3.a.x;
    global0 = Struct_1(select(reverseBits(abs(var_0.zx)), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(107677u, 70792u, 1u, var_0.x), vec4<u32>(27932u, var_0.x, var_0.x, var_0.x))), 4294967295u), vec2<bool>(global3.a.x, global1[_wgslsmith_index_u32(countOneBits(abs(1u)), 1u)])));
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(func_1().xy, _wgslsmith_add_vec2_u32(min(global0.a, vec2<u32>(35593u, 4294967295u)), vec2<u32>(global0.a.x, ~1u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-500f - 309f), _wgslsmith_f_op_f32(-1222f + -405f), 1109f, _wgslsmith_f_op_f32(max(492f, -1488f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global3.b.zzx), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global3.b, ~select(u_input.a, vec4<i32>(-7662i, 4799i, u_input.b, 29992i), true)), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, 1414f, 488f, -932f)))))), 2097u, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, ~(u_input.b ^ 1i), _wgslsmith_dot_vec4_i32(u_input.a, select(global3.b, vec4<i32>(-29287i, -36039i, u_input.b, global3.b.x), vec4<bool>(false, false, false, true))), 0i), vec4<i32>(global3.c | (58533i ^ u_input.b), global3.c, global3.b.x, firstTrailingBit(u_input.a.x))));
}

