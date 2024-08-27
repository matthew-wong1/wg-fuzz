struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = firstTrailingBit(vec4<u32>(~abs(u_input.d.x), u_input.d.x, reverseBits(0u ^ u_input.c.x), _wgslsmith_mod_u32(18228u >> (_wgslsmith_sub_u32(u_input.a.x, u_input.c.x) % 32u), 7201u & _wgslsmith_dot_vec4_u32(u_input.c, u_input.a))));
    global0 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(712f, -684f, -695f, 610f), vec4<f32>(1669f, 1205f, 1052f, -1428f), global0[_wgslsmith_index_u32(1u, 2u)])) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1586f, -135f, 1000f, -1121f), vec4<f32>(912f, -1157f, -999f, -374f), true))))));
    let var_2 = Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(select(4294967295u, ~u_input.b, !global0[_wgslsmith_index_u32(~u_input.c.x, 2u)]), 2u)], select(u_input.b, ~u_input.c.x, select(true, false, global1.a.x)) >= ~16788u, global1.a.x, !global1.a.x), true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xyw + var_1.ywy) - vec3<f32>(var_1.x, var_1.x, -1044f))))), firstLeadingBit(~vec4<i32>(u_input.e.x, 12957i, u_input.e.x, u_input.e.x) << (u_input.a % vec4<u32>(32u))) >> (vec4<u32>(var_0.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u), max(_wgslsmith_mult_u32(u_input.d.x, var_0.x), min(u_input.a.x, u_input.c.x)), select(firstTrailingBit(47416u), 4294967295u, true)) % vec4<u32>(32u)));
    let var_3 = 36160i;
    return 0u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(!vec4<bool>(global1.a.x, false, false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(32050u, 2u)], false, true))));
    let var_1 = 12305u;
    let var_2 = global2[_wgslsmith_index_u32(min(~3967u, ~var_1), 11u)];
    global1 = global2[_wgslsmith_index_u32(abs(u_input.d.x), 11u)];
    var var_3 = Struct_2(select(!(!select(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], var_0.a.x)), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], var_0.a.x, true, false), !vec4<bool>(var_0.a.x, false, false, false), !global3[_wgslsmith_index_u32(12689u, 16u)]), global0[_wgslsmith_index_u32(func_3(), 2u)]), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-366f, -623f)) - _wgslsmith_f_op_f32(sign(-775f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(405f * 996f), _wgslsmith_div_f32(666f, -445f)))), vec4<i32>(arg_0.x, -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(-2147483647i, 0i, 7693i, u_input.e.x)), firstTrailingBit(vec4<i32>(u_input.e.x, -16309i, -16705i, arg_0.x))), u_input.e.x, arg_0.x));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<bool>(any(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.a.x)))), global0[_wgslsmith_index_u32(arg_2, 2u)], all(!vec2<bool>(true, arg_0.a.x)));
    let var_1 = min(~arg_1 | u_input.e.x, arg_1);
    global1 = Struct_1(!global1.a);
    global1 = arg_0;
    global1 = arg_0;
    return func_2(-_wgslsmith_mult_vec3_i32(-min(vec3<i32>(-7491i, u_input.e.x, arg_1), u_input.e.wxx), _wgslsmith_mod_vec3_i32(abs(u_input.e.zyw), u_input.e.ywx)));
}

fn func_1() -> Struct_1 {
    let var_0 = 18268u;
    global2 = array<Struct_1, 11>();
    let var_1 = func_4(func_2(u_input.e.xxx), 1i, ~49186u);
    let var_2 = vec3<f32>(1486f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1562f)))), _wgslsmith_f_op_f32(f32(-1f) * -1012f));
    global3 = array<vec4<bool>, 16>();
    return func_2((-_wgslsmith_sub_vec3_i32(u_input.e.wyz, vec3<i32>(u_input.e.x, u_input.e.x, -1i)) ^ u_input.e.wxz) >> (min(countOneBits(countOneBits(u_input.a.zyy)), ~abs(vec3<u32>(u_input.a.x, 20361u, 4294967295u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = vec4<bool>(!(global1.a.x || (~u_input.a.x < u_input.b)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1036f)) - _wgslsmith_f_op_f32(step(-544f, 807f))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 392f)))), u_input.e.x > select(-_wgslsmith_mult_i32(2700i, u_input.e.x), firstLeadingBit(u_input.e.x), !select(global1.a.x, global0[_wgslsmith_index_u32(43704u, 2u)], global0[_wgslsmith_index_u32(107110u, 2u)])), true);
    var var_1 = global0[_wgslsmith_index_u32(~1u, 2u)];
    global1 = func_1();
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(vec4<bool>(all(!vec4<bool>(var_0.x, true, false, false)), var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_2), 53155u), 2u)], true), u_input.e.x < abs(2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-318f, -176f, -675f), vec3<f32>(691f, -1419f, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, 542f, -399f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1104f, 148f, -1399f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-959f, 1000f, 704f) * vec3<f32>(666f, 1495f, 611f)) + vec3<f32>(390f, 401f, 659f)))), u_input.e);
    let var_4 = !(!select(select(func_2(vec3<i32>(var_3.d.x, u_input.e.x, var_3.d.x)).a.zzw, vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), func_1().a.wwy), func_1().a.zyy, !vec3<bool>(global0[_wgslsmith_index_u32(29935u, 2u)], var_3.b, true)));
    var var_5 = global0[_wgslsmith_index_u32(var_2, 2u)];
    let var_6 = var_3.d.x == (firstTrailingBit(7188i) >> (var_2 % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, -countOneBits(select(0i, var_3.d.x, any(var_0.zwx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_3.c.x)), _wgslsmith_f_op_f32(step(var_3.c.x, var_3.c.x)), global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.c.x)))))));
}

