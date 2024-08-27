struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(0u, 1u), vec2<u32>(1u, 65185u), vec2<u32>(524u, 1u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<vec2<bool>, 3>;

var<private> global2: u32;

var<private> global3: Struct_2 = Struct_2(vec2<bool>(false, false), 1647f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    global3 = Struct_2(arg_1.ww, _wgslsmith_f_op_f32(-arg_2));
    global3 = Struct_2(select(vec2<bool>(true | any(global3.a), select(arg_1.x, arg_1.x, false) & !arg_0.x), select(!arg_1.ww, select(select(vec2<bool>(false, false), vec2<bool>(global3.a.x, true), global3.a), vec2<bool>(false, global3.a.x), !global3.a), !(!arg_0.x)), !global3.a), -1000f);
    var var_0 = Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.x, 11198i, 10675i, u_input.c.x), vec4<i32>(31669i, -2147483647i, -57182i, 2147483647i)), -vec4<i32>(1i, 0i, 0i, 2147483647i)), vec4<i32>(9386i, u_input.c.x, 0i, 1i) ^ (vec4<i32>(-1i, 19926i, u_input.a, 1i) | vec4<i32>(arg_3.x, 2147483647i, -27246i, arg_3.x))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(firstTrailingBit(arg_3.x), u_input.c.x), select(-5932i, ~arg_3.x, false))), _wgslsmith_dot_vec3_u32(~u_input.b.xxy, ~u_input.b.zwy << (vec3<u32>(_wgslsmith_mod_u32(4294967295u, 20324u), ~4294967295u, 26401u) % vec3<u32>(32u))), Struct_1(!(!any(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, global3.a.x)))));
    let var_1 = Struct_3(_wgslsmith_mult_i32(i32(-1i) * -9960i, reverseBits(1i >> ((var_0.b >> (var_0.b % 32u)) % 32u))), abs(u_input.b.x), var_0.c);
    global3 = Struct_2(!(!(!vec2<bool>(true, global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global3.b))))) + _wgslsmith_f_op_f32(step(-503f, global3.b))));
    return var_1.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    global0 = array<vec2<u32>, 4>();
    global3 = Struct_2(global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(arg_1.x, 3u)], select(vec4<bool>(true, all(vec3<bool>(global3.a.x, arg_3.a, arg_3.a)), arg_0.c.a, arg_0.c.a), select(!vec4<bool>(arg_3.a, true, false, false), !vec4<bool>(arg_3.a, arg_0.c.a, arg_0.c.a, false), true), _wgslsmith_f_op_f32(arg_2.x + arg_2.x) >= _wgslsmith_f_op_f32(round(-727f))), global3.b, -(~(-vec3<i32>(arg_0.a, 52688i, -85976i)))), 3u)], 1125f);
    global3 = Struct_2(global1[_wgslsmith_index_u32(~25060u, 3u)], _wgslsmith_f_op_f32(sign(-302f)));
    let var_0 = arg_0;
    let var_1 = Struct_1(true);
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> i32 {
    let var_0 = arg_0.x || any(!(!(!arg_0.xz)));
    let var_1 = arg_2.c;
    var var_2 = true;
    var var_3 = u_input.c.x;
    global1 = array<vec2<bool>, 3>();
    return max(u_input.a, -16859i);
}

fn func_1() -> vec4<i32> {
    global2 = u_input.b.x;
    let var_0 = (vec4<i32>(u_input.a, -3876i, func_4(!vec3<bool>(false, global3.a.x, true), u_input.a, func_2(Struct_3(u_input.c.x, u_input.b.x, Struct_1(false)), vec4<u32>(16486u, 2689u, 43414u, 48588u), vec3<f32>(-204f, 1696f, 631f), Struct_1(global3.a.x))), ~(-1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 4294967295u), 1582u, u_input.b.x, firstLeadingBit(0u)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), ~u_input.b)) % vec4<u32>(32u))) | (vec4<i32>(-30519i, max(u_input.c.x, abs(26914i)), abs(u_input.c.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), u_input.a)) & -vec4<i32>(25496i, u_input.a, _wgslsmith_mult_i32(u_input.a, -1i), -u_input.c.x));
    let var_1 = Struct_2(vec2<bool>(global3.a.x, false), global3.b);
    let var_2 = ~_wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(~1u, _wgslsmith_sub_u32(19550u, 0u), 26282u)) & 65378u;
    let var_3 = -978f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(484f * _wgslsmith_f_op_f32(var_1.b - -2011f))));
    return ~vec4<i32>(firstTrailingBit(~u_input.a ^ var_0.x), firstLeadingBit(-(~1i)), 26467i, ~2147483647i);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> StorageBuffer {
    global3 = Struct_2(vec2<bool>(true, arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.b)) * 275f));
    let var_0 = -272f;
    var var_1 = vec2<bool>(!(!(!(global3.a.x || false))), !global3.a.x == true);
    let var_2 = 51235u;
    let var_3 = Struct_3(-_wgslsmith_sub_i32(arg_1.x, ~u_input.a | 13181i), 1u, func_2(Struct_3(_wgslsmith_sub_i32(arg_0.x, u_input.c.x) & arg_1.x, var_2, Struct_1(true)), u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1154f, -1843f, global3.b)))))), func_2(func_2(func_2(Struct_3(-1i, var_2, Struct_1(arg_2.a.x)), vec4<u32>(1u, 4294967295u, var_2, var_2), vec3<f32>(var_0, global3.b, var_0), Struct_1(true)), vec4<u32>(69054u, 29698u, u_input.b.x, 45757u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_2.b, -1000f)), func_2(Struct_3(arg_0.x, u_input.b.x, Struct_1(arg_2.a.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_2), vec3<f32>(391f, global3.b, var_0), Struct_1(false)).c), u_input.b, vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(239f * -638f)), func_2(func_2(Struct_3(arg_1.x, var_2, Struct_1(true)), u_input.b, vec3<f32>(1000f, var_0, arg_2.b), Struct_1(true)), vec4<u32>(1u, 19014u, var_2, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(-231f, -660f, -1000f), vec3<f32>(arg_2.b, -1103f, -296f)), func_2(Struct_3(2147483647i, 23349u, Struct_1(false)), vec4<u32>(1u, 0u, 20036u, var_2), vec3<f32>(1235f, global3.b, arg_2.b), Struct_1(false)).c).c).c).c);
    return StorageBuffer(var_3.b, firstTrailingBit(max(-select(arg_1.xxx, vec3<i32>(var_3.a, arg_1.x, 47943i), var_1.x), vec3<i32>(func_2(var_3, u_input.b, vec3<f32>(global3.b, var_0, -1303f), Struct_1(true)).a, 0i, max(1i, 36988i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~countOneBits(max(global0[_wgslsmith_index_u32(2257u, 4u)] | vec2<u32>(1u, 4995u), u_input.b.zy | global0[_wgslsmith_index_u32(u_input.b.x, 4u)])));
    let var_1 = ~u_input.b.zxx;
    var var_2 = firstLeadingBit(u_input.b.x);
    var var_3 = !global3.a.x;
    global0 = array<vec2<u32>, 4>();
    let x = u_input.a;
    s_output = func_5(func_1(), ~select(~(~vec4<i32>(-2147483647i, u_input.a, 2147483647i, 50179i)), abs(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x))), all(!vec3<bool>(true, false, global3.a.x))), Struct_2(!global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)))));
}

