struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(1u, 46275u, 17175u, 4151u, 1u, 4294967295u, 21011u, 33088u, 0u, 1u, 1u, 4294967295u, 0u, 1u, 0u, 1u, 0u, 3393u, 4294967295u, 56288u, 1u, 14578u);

var<private> global1: array<f32, 18> = array<f32, 18>(-809f, -1573f, 810f, -884f, -995f, 1849f, -123f, -193f, -330f, -209f, -512f, -1080f, 1199f, 488f, -1000f, -872f, -1333f, -312f);

var<private> global2: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(true, vec3<bool>(false, true, true), 444f, 2147483647i), Struct_5(false, vec3<bool>(false, true, false), 2209f, -1i), Struct_5(true, vec3<bool>(false, true, false), 601f, 10489i), Struct_5(true, vec3<bool>(true, true, true), -1000f, 20471i), Struct_5(false, vec3<bool>(true, true, false), -413f, i32(-2147483648)), Struct_5(false, vec3<bool>(false, false, false), 791f, -1i), Struct_5(false, vec3<bool>(false, true, true), 183f, -6703i), Struct_5(true, vec3<bool>(false, false, true), 610f, 0i), Struct_5(true, vec3<bool>(true, false, false), -451f, i32(-2147483648)), Struct_5(false, vec3<bool>(false, true, false), 1000f, -45402i), Struct_5(true, vec3<bool>(true, true, false), 204f, 28217i), Struct_5(true, vec3<bool>(true, true, false), 1302f, -32501i), Struct_5(true, vec3<bool>(false, false, false), 1370f, 1i), Struct_5(true, vec3<bool>(false, false, false), -1000f, 2147483647i), Struct_5(true, vec3<bool>(false, false, false), -837f, 71300i), Struct_5(true, vec3<bool>(true, false, false), 514f, -1i), Struct_5(false, vec3<bool>(true, false, true), 272f, i32(-2147483648)), Struct_5(false, vec3<bool>(false, false, true), 659f, 24595i), Struct_5(false, vec3<bool>(true, false, true), -2205f, 48339i), Struct_5(false, vec3<bool>(false, false, false), 161f, 29211i), Struct_5(false, vec3<bool>(false, false, false), -266f, 0i), Struct_5(true, vec3<bool>(false, false, true), -1448f, i32(-2147483648)), Struct_5(true, vec3<bool>(true, false, false), -502f, -18830i), Struct_5(true, vec3<bool>(true, true, true), 818f, -23196i));

var<private> global3: array<i32, 9> = array<i32, 9>(26838i, -23264i, 0i, 49464i, -5111i, 2147483647i, 8975i, -18720i, -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = arg_1;
    global2 = array<Struct_5, 24>();
    var var_1 = vec3<i32>(~u_input.a.x, firstTrailingBit(global3[_wgslsmith_index_u32(~(~(~1u)), 9u)]), -2147483647i);
    global2 = array<Struct_5, 24>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1, 195f)))))));
    return global1[_wgslsmith_index_u32(~4294967295u, 18u)];
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> bool {
    let var_0 = vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) | false, true, ~arg_1.b.x <= _wgslsmith_mod_u32(~u_input.b.x, ~4294967295u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~1u, 18u)])));
    global3 = array<i32, 9>();
    let var_2 = ~(~1u >> (min(abs(~25693u), ~global0[_wgslsmith_index_u32(u_input.b.x, 22u)] >> (abs(72067u) % 32u)) % 32u));
    var var_3 = vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, -23730i), arg_3.x), arg_2, abs(~arg_1.a.x)) << (u_input.b % vec3<u32>(32u));
    return true;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true)) || select(true, true, true), !(!(u_input.c > global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58366u, 22u)], 9u)])) | all(vec2<bool>(true, true)), !all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))));
    var var_1 = Struct_3(_wgslsmith_div_f32(-237f, -1215f));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(384f + var_1.a)))), -558f, var_1.a) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(28617u, 18u)], var_1.a, var_0.x)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 18u)]))), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -128f)))));
    var var_3 = Struct_2(u_input.a.xwy, min(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b.x) & u_input.b.yz, u_input.b.xx), vec2<u32>(~(~0u), select(u_input.b.x << (u_input.b.x % 32u), ~global0[_wgslsmith_index_u32(4294967295u, 22u)], func_3(Struct_3(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39776u, 22u)], 18u)]), Struct_2(u_input.a.yxz, u_input.b.yx, vec2<i32>(u_input.c, u_input.c)), 1i, vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 9u)], 1i, 24200i))))), firstTrailingBit(firstLeadingBit(u_input.a.zw)));
    var var_4 = 55968i;
    return Struct_1(vec4<bool>(all(select(vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, var_0.x), select(var_0.xw, var_0.xw, true))), var_0.x, true, all(select(var_0.wzx, vec3<bool>(var_0.x, false, true), var_0.x)) && any(!vec2<bool>(false, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) + _wgslsmith_f_op_vec3_f32(min(var_2, arg_0.yyz))) + arg_0.zxy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0[_wgslsmith_index_u32(~(~abs(174u)), 22u)];
    var var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31874u, 22u)], 18u)] - global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(49434u, 1567u), 18u)], -634f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) * 1000f) * _wgslsmith_div_f32(-1511f, _wgslsmith_f_op_f32(func_1(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73425u, 22u)], 18u)], true)))), global1[_wgslsmith_index_u32(u_input.b.x, 18u)]));
    var var_2 = ~global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, 10598u), 0u)), 9u)] >> (57949u % 32u);
    global3 = array<i32, 9>();
    var var_3 = ~vec2<u32>(1u, _wgslsmith_mult_u32(firstLeadingBit(1u), u_input.b.x) ^ _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 22u)], 29704u));
    var var_4 = -u_input.c;
    let var_5 = all(vec4<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))) == func_2(vec4<f32>(var_1.b.x, 769f, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])).b.x, var_1.a.x | var_1.a.x, true));
    let var_6 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1179f, global1[_wgslsmith_index_u32(var_3.x, 18u)], -1467f, global1[_wgslsmith_index_u32(var_3.x, 18u)]), vec4<f32>(-1213f, var_1.b.x, var_1.b.x, -422f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1833f, -2246f, -317f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29792u, 22u)], 18u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(10310u, 18u)], -851f, var_1.b.x, -2018f))))));
    let var_7 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(50886u, 0u >> (select(_wgslsmith_add_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 22u)], u_input.b.x), 1u), 8608u, select(true, true, true)) % 32u)), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(reverseBits(global3[_wgslsmith_index_u32(1u, 9u)]), 1i, -2147483647i, global3[_wgslsmith_index_u32(1u, 9u)]), u_input.a, !func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-410f, var_1.b.x, global1[_wgslsmith_index_u32(var_3.x, 18u)], -1145f)))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13826u, 22u)], 18u)]))))), _wgslsmith_sub_vec4_u32(vec4<u32>(max(var_3.x, ~42546u), firstLeadingBit(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], u_input.b.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(20475u, u_input.b.x), 22u)], 4294967295u), vec4<u32>(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_3.x, 22u)], 0u), var_3.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(3450u, 22u)], _wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(var_3.x, 22u)])), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.zx), vec2<u32>(1u, 1u)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_3.x, global0[_wgslsmith_index_u32(23214u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], var_3.x)) << (max(vec4<u32>(global0[_wgslsmith_index_u32(18068u, 22u)], 59635u, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(66856u, 22u)], 37520u, 1u, global0[_wgslsmith_index_u32(1u, 22u)])) % vec4<u32>(32u)), ~vec4<u32>(global0[_wgslsmith_index_u32(38353u, 22u)], 4294967295u, 34045u, var_3.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(63582u, 22u)], 0u, var_3.x, global0[_wgslsmith_index_u32(0u, 22u)]), vec4<u32>(4294967295u, 4294967295u, var_3.x, global0[_wgslsmith_index_u32(48945u, 22u)]))), u_input.b.x), 22u)], vec3<u32>(~200u, max(u_input.b.x, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)])), ~1u));
}

