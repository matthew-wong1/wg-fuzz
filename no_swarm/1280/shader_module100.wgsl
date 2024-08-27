struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 2>;

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-240i, 1i), vec2<i32>(1i, -3760i), vec2<i32>(2232i, -42751i), vec2<i32>(1i, 0i), vec2<i32>(0i, -65007i), vec2<i32>(16738i, 1i), vec2<i32>(9646i, 17486i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(40264i, 1i), vec2<i32>(41723i, -29839i), vec2<i32>(-45713i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(-21537i, 14795i), vec2<i32>(18489i, 25996i), vec2<i32>(-1i, 49074i));

var<private> global3: Struct_4;

var<private> global4: vec2<f32> = vec2<f32>(695f, 1122f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = global0.wxy;
    let var_1 = global3.a;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4.x, -473f), global3.b)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-301f + global4.x))))));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-108f, 1130f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-285f, 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 169f) * vec2<f32>(-947f, var_2))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b - var_2) - _wgslsmith_f_op_f32(select(global4.x, global4.x, true))))), _wgslsmith_f_op_f32(min(global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(ceil(397f)))))));
    global3 = Struct_4(Struct_3(var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), u_input.a, _wgslsmith_mod_vec3_u32(global3.d & vec3<u32>(u_input.a, ~global3.d.x, 1u), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global3.d, global3.d), arg_0 ^ global3.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, global3.c, arg_0, global3.c), vec4<u32>(global3.c, arg_0, u_input.b, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9607u, 67345u, u_input.b), vec4<u32>(u_input.a, 50071u, global3.c, 4294967295u)))), var_1.a);
    return global3.b;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global3 = Struct_4(Struct_3(global3.e), _wgslsmith_f_op_f32(func_3(global3.c)), u_input.b, _wgslsmith_mod_vec3_u32(global3.d, select(~vec3<u32>(4294967295u, 41673u, 1u), reverseBits(abs(global3.d)), select(select(global0.xwy, vec3<bool>(false, global0.x, global0.x), global0.zww), !vec3<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(9677u, 2u)]), false))), Struct_1(~global3.e.a, global3.e.b | (global0.x & global1[_wgslsmith_index_u32(global3.d.x, 2u)]), global3.a.a.d.x, global2[_wgslsmith_index_u32(global3.c, 16u)]));
    let var_0 = Struct_1(global3.e.a, !(!all(select(vec2<bool>(false, global0.x), global0.xx, global0.yw))), 1i, ~(-vec2<i32>(_wgslsmith_div_i32(global3.e.a.x, 1131i), 9874i >> (global3.c % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-812f, -140f)), _wgslsmith_f_op_f32(sign(-289f))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(ceil(2183f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global3.b))), vec2<bool>(true, !global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.yy + _wgslsmith_f_op_vec2_f32(arg_0.yy + vec2<f32>(280f, 681f))), vec2<f32>(-1394f, global3.b), global3.a.a.b))));
    global1 = array<bool, 2>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(u_input.a), ~u_input.a) | _wgslsmith_clamp_u32(~global3.c & u_input.b, firstTrailingBit(~_wgslsmith_clamp_u32(26058u, global3.d.x, u_input.b)), 0u), 2u)];
    return global3.a;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = arg_1.a;
    var var_1 = 1i;
    global3 = Struct_4(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.b, global4.x, -456f), vec3<f32>(-1049f, 1021f, 1000f), true)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(global4.x, global4.x)), 403f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(704f, 632f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global3.b)), global4.x, !global1[_wgslsmith_index_u32(u_input.a, 2u)])))) * global3.b), 15169u, firstLeadingBit(~global3.d), var_0);
    let var_2 = Struct_2(true);
    var var_3 = 22179u;
    return Struct_4(global3.a, _wgslsmith_f_op_f32(func_3(u_input.b & 44228u)), 2195u, firstTrailingBit(reverseBits(global3.d)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(580f, global3.b, 457f))))).a);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_4) -> vec4<i32> {
    global3 = Struct_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-902f, global4.x, -420f), vec3<f32>(-609f, arg_2.b, -425f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, 1642f, global4.x))))), _wgslsmith_f_op_f32(func_3(~(~_wgslsmith_clamp_u32(global3.c, 27094u, u_input.a)))), arg_0.d.x, vec3<u32>(~(~arg_2.d.x), global3.c, _wgslsmith_dot_vec3_u32(~arg_2.d, vec3<u32>(arg_0.d.x, 4294967295u, 0u))) << (select(global3.d, _wgslsmith_add_vec3_u32(~vec3<u32>(17969u, arg_2.d.x, global3.d.x), vec3<u32>(global3.d.x, 82174u, 4294967295u) ^ vec3<u32>(1u, arg_2.c, arg_0.c)), arg_0.e.b) % vec3<u32>(32u)), Struct_1((_wgslsmith_mod_vec4_i32(global3.e.a, arg_2.e.a) << (~vec4<u32>(arg_0.c, arg_0.d.x, 0u, 25198u) % vec4<u32>(32u))) << (vec4<u32>(1u, ~arg_2.d.x, _wgslsmith_mod_u32(56837u, 34019u), min(0u, global3.c)) % vec4<u32>(32u)), all(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_2.c, 2u)])), arg_2.e.a.x, abs(vec2<i32>(_wgslsmith_mult_i32(arg_0.a.a.d.x, 45411i), global3.a.a.c))));
    var var_0 = arg_2;
    let var_1 = ~var_0.c;
    return vec4<i32>(global3.e.a.x, (firstTrailingBit(global3.e.d.x ^ arg_0.a.a.d.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, var_1, u_input.a), vec3<u32>(54913u, 1u, 12144u)) % 32u)) ^ 2147483647i, arg_2.e.a.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(!global0.wyy));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(-18681i, 0i, global3.e.a.x, -45638i)), ~func_4(Struct_4(Struct_3(Struct_1(global3.a.a.a, false, global3.a.a.c, global3.a.a.a.zy)), global3.b, u_input.a, global3.d, Struct_1(global3.e.a, false, global3.e.c, vec2<i32>(global3.a.a.c, 753i))), select(vec2<bool>(global0.x, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(global3.d.x, 2u)]), func_1(-100f, Struct_3(global3.e), global3.d.xx))), !(u_input.a >= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 9746u, 0u, u_input.a), vec4<u32>(u_input.a, 1u, 51247u, 0u)), vec4<u32>(global3.c, 34820u, u_input.a, 0u))), -24166i, vec2<i32>(global3.e.d.x, global3.a.a.a.x >> (firstLeadingBit(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.a)) % 32u)));
    let var_2 = _wgslsmith_dot_vec3_u32(abs(~(vec3<u32>(54002u, u_input.b, 21916u) ^ global3.d)), vec3<u32>(4294967295u, reverseBits(_wgslsmith_div_u32(abs(79701u), 27758u | global3.c)), global3.c));
    var var_3 = _wgslsmith_sub_vec2_u32(global3.d.zx, _wgslsmith_sub_vec2_u32(~countOneBits(~global3.d.zz), global3.d.yx));
    global2 = array<vec2<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_div_f32(global4.x, global3.b), global4.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-465f, global4.x, global3.b), vec3<f32>(1000f, -1240f, global4.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -1002f, -720f)))), ~reverseBits(abs(var_1.a.zxz)), global3.a.a.c);
}

