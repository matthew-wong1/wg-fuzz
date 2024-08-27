struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_4;

var<private> global2: array<bool, 15>;

var<private> global3: array<u32, 25>;

var<private> global4: array<vec4<bool>, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    global0 = Struct_5(Struct_4(53954u, Struct_1(-firstTrailingBit(-1i), arg_1.a.b.b ^ (38942u ^ global0.b.b)), ~reverseBits(countOneBits(global1.c)), global2[_wgslsmith_index_u32(~(~arg_0.a.x) << (min(~0u, ~arg_0.a.x) % 32u), 15u)]), Struct_1(0i, global1.c.x), ~firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.d.x, 2813i, -9303i, -8577i), ~vec4<i32>(global0.d.d.x, -2147483647i, arg_0.d.x, arg_1.c.x))), arg_1.d, firstLeadingBit(vec2<i32>(arg_0.d.x, u_input.c) | global0.e));
    let var_0 = global0.d.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.b * arg_1.d.b)), _wgslsmith_f_op_f32(-global0.d.b)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_2))))));
    global1 = Struct_4(~global1.b.b, Struct_1(global1.b.a, ~13360u), firstTrailingBit(~(vec3<u32>(global3[_wgslsmith_index_u32(85290u, 25u)], u_input.b, 4294967295u) << (vec3<u32>(0u, 61606u, u_input.b) % vec3<u32>(32u))) & vec3<u32>(~arg_1.a.a, arg_1.d.a.x, select(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(arg_1.b.b, 15u)]))), true);
    let var_2 = u_input.e.wyz | vec3<i32>(50133i, countOneBits(countOneBits(_wgslsmith_add_i32(global0.e.x, 88779i))), -arg_0.d.x);
    return _wgslsmith_mod_i32(1i, ~max(_wgslsmith_clamp_i32(global0.d.d.x, arg_1.d.d.x, -u_input.e.x), max(min(global0.a.b.a, 0i), -8966i)));
}

fn func_2() -> Struct_5 {
    global0 = Struct_5(global0.a, global1.b, _wgslsmith_add_vec4_i32(abs(u_input.e), -vec4<i32>(_wgslsmith_mult_i32(54526i, 1i), ~u_input.e.x, -14652i, select(-1i, 2147483647i, true))), Struct_3(vec2<u32>(1u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.b, global0.d.b)) * global0.d.b), select(!select(vec2<bool>(global1.d, true), global0.d.c, vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.d.a.x, 25u)], 15u)], global1.d)), select(vec2<bool>(false, true), !vec2<bool>(true, global0.a.d), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 15u)], true), global0.d.c, global0.d.c)), !select(vec2<bool>(true, false), vec2<bool>(false, global1.d), true)), vec3<i32>(_wgslsmith_clamp_i32(global1.b.a, _wgslsmith_mod_i32(u_input.c, u_input.e.x), u_input.e.x), 1i, func_3(global0.d, Struct_5(global0.a, global0.b, vec4<i32>(u_input.e.x, 707i, global0.b.a, global1.b.a), Struct_3(vec2<u32>(u_input.d.x, global1.a), 602f, global0.d.c, vec3<i32>(21474i, -3692i, 2147483647i)), vec2<i32>(-3243i, 6155i)), -1243f, global4[_wgslsmith_index_u32(51948u, 19u)]) | 8061i)), firstTrailingBit(~u_input.e.xw));
    global4 = array<vec4<bool>, 19>();
    var var_0 = -reverseBits(~(~(u_input.e.x << (global3[_wgslsmith_index_u32(0u, 25u)] % 32u))));
    var var_1 = countOneBits(~reverseBits(firstTrailingBit(~vec4<u32>(global1.b.b, 21664u, global0.b.b, 27871u))));
    global4 = array<vec4<bool>, 19>();
    return Struct_5(Struct_4(0u, global0.b, countOneBits(~abs(vec3<u32>(global1.c.x, 102977u, 4294967295u))), false), global1.b, vec4<i32>(u_input.e.x, 0i, ~countOneBits(2147483647i), ~abs(-2147483647i)) | firstTrailingBit(firstLeadingBit(u_input.e) >> (vec4<u32>(global1.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 25u)], 25u)], global1.a, var_1.x) % vec4<u32>(32u))), Struct_3(firstLeadingBit(_wgslsmith_mod_vec2_u32(~var_1.yw, vec2<u32>(24535u, global0.a.c.x))), global0.d.b, !(!select(vec2<bool>(true, false), global0.d.c, vec2<bool>(global1.d, global2[_wgslsmith_index_u32(global0.a.a, 15u)]))), select(~reverseBits(vec3<i32>(-1i, 19031i, u_input.c)), -vec3<i32>(0i, 1i, global1.b.a), any(!vec3<bool>(false, global0.d.c.x, false)))), ~vec2<i32>(func_3(global0.d, Struct_5(global0.a, global1.b, vec4<i32>(-1i, global0.d.d.x, u_input.c, 0i), global0.d, u_input.e.xw), _wgslsmith_f_op_f32(min(global0.d.b, -216f)), !vec4<bool>(global0.a.d, false, global2[_wgslsmith_index_u32(1u, 15u)], global0.a.d)), 4199i));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(~4294967295u, global1.c.x);
    var var_1 = select(vec4<bool>(global1.d, true, !(!any(vec3<bool>(global0.d.c.x, global0.d.c.x, false))), true), vec4<bool>(!(1u <= firstTrailingBit(62220u)), (global1.d || global1.d) || true, global2[_wgslsmith_index_u32(firstTrailingBit(1u), 15u)], global2[_wgslsmith_index_u32(~49984u, 15u)]), !(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 15u)], false, true, global0.d.c.x), global4[_wgslsmith_index_u32(96801u, 19u)], false), vec4<bool>(false, global0.d.c.x, global0.d.c.x, true), global4[_wgslsmith_index_u32(1u, 19u)])));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.b));
    var_1 = global4[_wgslsmith_index_u32(abs(global0.a.c.x), 19u)];
    global0 = func_2();
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.b;
    let var_1 = func_1();
    let var_2 = select(func_2().d.c, vec2<bool>(!global2[_wgslsmith_index_u32(4294967295u, 15u)], all(!select(vec4<bool>(false, global1.d, global2[_wgslsmith_index_u32(var_1.a.x, 15u)], true), vec4<bool>(false, var_1.c.x, true, global0.a.d), vec4<bool>(global1.d, false, false, false)))), any(!func_1().c));
    let var_3 = 920f;
    let var_4 = _wgslsmith_mult_vec2_i32(global0.c.wy, ~(~(~vec2<i32>(-33116i, 37206i)))) | func_2().e;
    global0 = Struct_5(global0.a, global0.b, global0.c ^ vec4<i32>(reverseBits(-22329i), var_4.x & var_1.d.x, var_4.x & ~var_1.d.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.d.x, global0.a.b.a, u_input.e.x, -12167i), global0.c), 2819i)), func_1(), _wgslsmith_add_vec2_i32(select(var_1.d.zy, _wgslsmith_mult_vec2_i32(global0.d.d.xz, select(vec2<i32>(global1.b.a, 62226i), u_input.e.zz, var_2)), !func_1().c), vec2<i32>(global1.b.a, -19586i)));
    let var_5 = global0.a;
    var var_6 = min(firstTrailingBit(40897u), global1.a) ^ global0.d.a.x;
    var var_7 = !all(select(!select(vec4<bool>(var_1.c.x, false, true, true), global4[_wgslsmith_index_u32(45195u, 19u)], var_2.x), select(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, global0.b.b, 0u), 19u)], global4[_wgslsmith_index_u32(var_1.a.x, 19u)], global4[_wgslsmith_index_u32(~33671u, 19u)]), global4[_wgslsmith_index_u32(~global0.b.b, 19u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2125f)), -670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-965f, global0.d.b))), 1155f))), _wgslsmith_sub_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.b), var_5.c), var_5.c, select(vec3<bool>(var_2.x, global0.a.d, true), vec3<bool>(false, var_1.c.x, false), vec3<bool>(true, true, true))), vec3<u32>(global0.d.a.x, _wgslsmith_sub_u32(abs(var_1.a.x), u_input.d.x), ~(var_5.b.b ^ var_1.a.x))), -(~(-2147483647i)));
}

