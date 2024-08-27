struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<Struct_4, 9>;

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: vec4<f32> = vec4<f32>(370f, 1756f, 2088f, 851f);

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> vec2<bool> {
    let var_0 = vec2<bool>(all(vec4<bool>(!global2.a, _wgslsmith_sub_u32(16156u, arg_1) < ~arg_1, global2.a, all(!vec3<bool>(global2.a, global2.a, true)))), false);
    global0 = array<Struct_2, 13>();
    let var_1 = global4[_wgslsmith_index_u32(1u & reverseBits(~_wgslsmith_mod_u32(countOneBits(arg_0.x), arg_1)), 29u)];
    let var_2 = false;
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, arg_1, 7011u, 5991u), arg_0, vec4<bool>(var_0.x, false, false, var_1.a)) << (arg_0 % vec4<u32>(32u)), ~arg_0));
    return !var_0;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~((arg_0 >> (_wgslsmith_mod_u32(firstTrailingBit(0u), firstLeadingBit(u_input.a)) % 32u)) | arg_1.d.x), 13u)];
    global4 = array<Struct_1, 29>();
    var var_1 = global3.x;
    global2 = Struct_1(false);
    var var_2 = Struct_4(all(arg_3.a), global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]);
    return _wgslsmith_add_i32(reverseBits(arg_2), 0i);
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = Struct_1(!all(select(!vec2<bool>(true, global2.a), func_2(vec4<u32>(32431u, 23531u, 0u, u_input.a), u_input.a), false)));
    let var_1 = Struct_1(var_0.a | all(!select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(false, var_0.a, global2.a, true), false)));
    let var_2 = vec4<i32>(~2147483647i, u_input.b, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -u_input.b), 21478i), _wgslsmith_sub_i32(func_3(~u_input.a, Struct_3(vec4<bool>(var_0.a, var_0.a, global2.a, global2.a), 0i, arg_0, vec4<u32>(49914u, arg_0, arg_0, u_input.a)), select(u_input.b, u_input.b, var_0.a), Struct_3(vec4<bool>(global2.a, var_0.a, var_0.a, true), 85077i, arg_0, vec4<u32>(u_input.a, u_input.a, 1u, arg_0))), -_wgslsmith_dot_vec4_i32(vec4<i32>(9571i, u_input.b, u_input.b, u_input.b), vec4<i32>(18333i, u_input.b, u_input.b, 0i)))) & vec4<i32>(u_input.b & _wgslsmith_add_i32(~36137i, -17557i), _wgslsmith_div_i32(-10180i, _wgslsmith_sub_i32(14693i >> (u_input.a % 32u), -2147483647i)), ~2147483647i, max(-2147483647i, ~0i));
    let var_3 = Struct_1(!(_wgslsmith_div_i32(var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(18158i, -11358i, var_2.x), var_2.wyy)) <= -abs(u_input.b)));
    let var_4 = !any(vec3<bool>(var_3.a, true, global3.x < _wgslsmith_f_op_f32(-global3.x)));
    return 28736u;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(-268f, 243f)), _wgslsmith_f_op_f32(global3.x - -1148f), 2358f, _wgslsmith_f_op_f32(-1681f * 1000f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, 763f, 502f, -1347f) * vec4<f32>(1367f, global3.x, global3.x, global3.x)), vec4<f32>(global3.x, global3.x, global3.x, global3.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-154f, global3.x, global3.x, -1478f))))));
    global4 = array<Struct_1, 29>();
    let var_0 = Struct_1(false);
    global0 = array<Struct_2, 13>();
    var var_1 = !(!select(!arg_0.a.zzy, !vec3<bool>(arg_0.a.x, false, global2.a), !all(arg_0.a.www)));
    return Struct_1(!arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = false;
    global2 = func_4(Struct_3(!vec4<bool>(any(vec4<bool>(true, true, global2.a, global2.a)), false, any(vec2<bool>(global2.a, true)), false), u_input.b, 4294967295u, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(10082u, 25801u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), -firstLeadingBit(18126i) & (firstLeadingBit(_wgslsmith_div_i32(2147483647i, 2147483647i)) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 72256u, 31429u), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a))) % 32u)), func_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.a, 1u), 1u)), ~vec4<u32>(1u, u_input.a, ~(~39567u), ~(~13422u)));
    let var_2 = Struct_4(!any(select(vec3<bool>(global2.a, var_1, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) && true, Struct_2(func_4(Struct_3(vec4<bool>(var_1, var_1, global2.a, true), select(u_input.b, u_input.b, global2.a), ~70115u, vec4<u32>(u_input.a, 98152u, u_input.a, u_input.a)), _wgslsmith_sub_i32(~(-34995i), u_input.b), 0u | (u_input.a & u_input.a), vec4<u32>(u_input.a, 0u, 252u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 9440u, 0u) % vec4<u32>(32u))), !(!(!vec2<bool>(global2.a, true))), func_4(Struct_3(!vec4<bool>(var_1, false, var_1, false), ~u_input.b, ~u_input.a, ~vec4<u32>(u_input.a, u_input.a, 10370u, u_input.a)), i32(-1i) * -u_input.b, u_input.a, firstLeadingBit(select(vec4<u32>(u_input.a, 4294967295u, 84274u, u_input.a), vec4<u32>(u_input.a, 45489u, 57044u, 4294967295u), vec4<bool>(var_1, false, true, false))))), Struct_2(Struct_1(true), !vec2<bool>(all(vec2<bool>(var_1, false)), true), Struct_1(true)));
    global1 = array<Struct_4, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec2<i32>(u_input.b, 0i << (u_input.a % 32u))));
}

