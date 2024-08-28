struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 25> = array<f32, 25>(1400f, 1251f, 1196f, -1103f, -199f, 210f, -353f, 272f, -311f, -507f, 766f, -887f, -1000f, -685f, -447f, 1960f, -643f, -850f, 324f, -540f, -1371f, 893f, -977f, 204f, 1057f);

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: f32 = -1464f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = false;
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1490f)))))), -1241f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(arg_0.c, 25u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-158f, arg_0.b.b, -1297f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, global1[_wgslsmith_index_u32(arg_0.c, 25u)], -1518f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 406f, arg_1.x, -1929f))), func_3(Struct_1(false, 562f), Struct_3(Struct_1(true, arg_0.b.b), arg_0.c, arg_0, Struct_1(arg_0.b.a, global1[_wgslsmith_index_u32(61164u, 25u)])), Struct_3(arg_0.b, arg_0.c, arg_0, Struct_1(false, -2175f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -689f, 1000f, 860f) - vec4<f32>(703f, arg_0.b.b, -2022f, 817f)))), ~abs(arg_0.c) >= _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, 12312u), min(arg_0.c, u_input.a.x)))));
    var var_1 = Struct_3(Struct_1(arg_0.b.a, -707f), abs(~arg_0.c), arg_0, Struct_1(!any(vec2<bool>(arg_0.b.a, false)), _wgslsmith_f_op_f32(trunc(1035f))));
    let var_2 = vec3<bool>(var_1.d.a, all(vec4<bool>(!var_1.c.a == false, -920f > _wgslsmith_f_op_f32(step(var_0.x, var_1.c.b.b)), !(true || arg_0.b.a), _wgslsmith_f_op_f32(select(-874f, var_0.x, false)) <= _wgslsmith_f_op_f32(-var_1.c.b.b))), (1i <= _wgslsmith_div_i32(0i, firstLeadingBit(var_1.c.e))) || !arg_0.b.a);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, arg_0.d)), _wgslsmith_f_op_f32(ceil(1811f))));
    let var_3 = u_input.a;
    return u_input.c;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    global2 = array<vec2<bool>, 29>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(arg_2.b * global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~51020u, 1u), 25u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3, 25u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b, var_0.b, true)))))));
    var var_3 = ~u_input.c;
    return !select(global2[_wgslsmith_index_u32(func_2(Struct_2(true || var_0.a, Struct_1(arg_2.a, 480f), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), -746f, u_input.b | u_input.d), vec2<f32>(-433f, -766f)), 29u)], vec2<bool>(false, var_0.a), vec2<bool>(any(!vec4<bool>(true, var_0.a, true, arg_2.a)), ~4294967295u > _wgslsmith_div_u32(38446u, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 25>();
    global0 = !(!(any(vec4<bool>(false, false, true, true)) || any(vec3<bool>(true, true, true))) || !all(func_1(1000f, vec4<i32>(u_input.d, u_input.d, 0i, 23442i), Struct_1(false, 146f), u_input.a.x)));
    let var_0 = true;
    global2 = array<vec2<bool>, 29>();
    global3 = -631f;
    let var_1 = Struct_4(max(1u, u_input.a.x) << (~(~_wgslsmith_mod_u32(102651u, u_input.a.x)) % 32u), u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~15278u, u_input.c), 29u)], true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1302f + 445f), -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1039f, global1[_wgslsmith_index_u32(u_input.c, 25u)]), vec2<f32>(-365f, global1[_wgslsmith_index_u32(34528u, 25u)]), global2[_wgslsmith_index_u32(26408u, 29u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 25u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 25u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c, var_1.b.x) | (vec2<u32>(1u, ~u_input.a.x) << (vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_1.a), reverseBits(u_input.c)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 25u)]));
}

