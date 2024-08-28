struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(50135u, 17514u, 16452u, 1u, 19314u, 4294967295u, 0u, 1u, 1u, 4294967295u, 1u, 4294967295u, 1u, 45229u, 26251u, 49293u, 61304u, 1u, 4294967295u);

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(12889u, 1u), vec2<u32>(9582u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(21117u, 1u), vec2<u32>(75762u, 34477u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(74905u, 0u), vec2<u32>(79305u, 1u), vec2<u32>(0u, 7669u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(45452u, 1u), vec2<u32>(4294967295u, 99984u), vec2<u32>(17520u, 11555u), vec2<u32>(1u, 0u), vec2<u32>(50733u, 50605u), vec2<u32>(21191u, 1u), vec2<u32>(94545u, 45593u), vec2<u32>(6302u, 0u), vec2<u32>(48022u, 1u), vec2<u32>(0u, 0u), vec2<u32>(80623u, 0u), vec2<u32>(23570u, 24953u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(arg_0.c, !vec4<bool>(var_0.a.x != _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 43063i), vec2<i32>(-22208i, arg_0.a.x)), !(!arg_0.b), -18090i <= -var_0.a.x, true));
    global2 = array<vec2<u32>, 27>();
    let var_2 = arg_0;
    global1 = array<Struct_2, 15>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(exp2(var_2.c.x)))))), _wgslsmith_f_op_f32(789f * var_1.a.x)));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(-1i, u_input.a, -24056i), true, vec3<f32>(-1282f, -121f, -409f))))))), -786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(217f)) + -1387f));
    global1 = array<Struct_2, 15>();
    var var_2 = u_input.b.yx;
    global0 = array<u32, 19>();
    return ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 19u)], 19u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_2 {
    global1 = array<Struct_2, 15>();
    let var_0 = global1[_wgslsmith_index_u32(29106u, 15u)];
    global2 = array<vec2<u32>, 27>();
    global2 = array<vec2<u32>, 27>();
    let var_1 = global1[_wgslsmith_index_u32(~func_2(select(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41268u, 19u)], 27u)], _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42687u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12994u, 19u)], 19u)]) ^ vec2<u32>(1u, 38327u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)])), var_0.b.yy)), 15u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(69126u, 19u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9520u, 19u)], 19u)], global0[_wgslsmith_index_u32(58374u, 19u)], 26294u, global0[_wgslsmith_index_u32(53176u, 19u)]), vec4<u32>(1u, 41289u, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(51585u, 19u)])), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31400u, 19u)], 19u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 19u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], ~0u), 19u)], 19u)], 19u)])), 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 27u)], vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]))) << (6987u % 32u), 19u)], global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(447u, 19u)], ~37036u), 19u)]), 19u)], 19u)]), 15u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec2_u32(select(_wgslsmith_add_vec2_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 27u)]), abs(vec2<u32>(4294967295u, 1u))), ~_wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 27u)], vec2<u32>(56064u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30145u, 19u)], 19u)], 19u)])), 68557u != _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(14008u, 19u)], 19u)], reverseBits(1u))), ~(select(~global2[_wgslsmith_index_u32(22637u, 27u)], global2[_wgslsmith_index_u32(36797u, 27u)], true) >> (global2[_wgslsmith_index_u32(min(abs(1u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75101u, 19u)], 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), 27u)] % vec2<u32>(32u))));
    let var_1 = arg_2;
    let var_2 = all(func_1(Struct_1(countOneBits(arg_1 >> (vec3<u32>(var_0.x, var_0.x, 0u) % vec3<u32>(32u))), arg_2.b.x, arg_2.a), 428f, ~arg_1.x >= 0i).b.xwy);
    var var_3 = Struct_1(-(~(-vec3<i32>(-35148i, 1i, arg_0.x))), arg_2.b.x, var_1.a);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.c.x, 1873f, arg_2.b.x)) - -1868f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.a.x, 1000f)) + arg_2.a.x)), -560f));
    return func_1(Struct_1(vec3<i32>(~(~1i), i32(-1i) * -2147483647i, var_3.a.x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.c * var_3.c), _wgslsmith_f_op_vec3_f32(abs(var_1.a))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), 290f)), !(-648f != _wgslsmith_f_op_f32(exp2(var_3.c.x)))).b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global2 = array<vec2<u32>, 27>();
    return global1[_wgslsmith_index_u32(70692u, 15u)];
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_1.b.x && func_1(Struct_1(-(~u_input.b.zwy), !arg_1.b.x, arg_1.a), arg_2.x, any(vec3<bool>(true, false, select(arg_1.b.x, arg_1.b.x, arg_1.b.x)))).b.x;
    var var_1 = _wgslsmith_mod_vec3_u32(~reverseBits(~(~vec3<u32>(4294967295u, 48435u, global0[_wgslsmith_index_u32(0u, 19u)]))), vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(17831u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42844u, 19u)], 19u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)]), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 36910u, 49607u)), 1u, 22047u));
    global2 = array<vec2<u32>, 27>();
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(0u, 19u)], 4294967295u), 5337u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(var_1.x, 6773u, 64197u, var_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(12560u, 0u, var_1.x, var_1.x), vec4<u32>(21814u, 13972u, 25623u, 4294967295u))), reverseBits(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 19u)], 19u)], 1u, var_1.x, global0[_wgslsmith_index_u32(31009u, 19u)]))));
    let var_3 = ~(~u_input.a);
    return ~_wgslsmith_add_u32(_wgslsmith_div_u32(~976u, func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 19u)]), 27u)])), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_div_f32(1469f, 996f), func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1642f, 1008f, -1941f) + vec3<f32>(519f, -1000f, 917f))), func_4(u_input.b.yw, u_input.b.yyy, func_1(Struct_1(u_input.b.yzy, false, vec3<f32>(165f, -1042f, 679f)), -144f, false))), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(20359u, 19u)], 15u)], select(i32(-1i) * -u_input.b.x, _wgslsmith_sub_i32(u_input.a, ~490i), true)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1502f - 1018f) + _wgslsmith_div_f32(237f, -940f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f * -989f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(abs(2147483647i), u_input.a), _wgslsmith_dot_vec4_i32(reverseBits(u_input.b), -abs(u_input.b))), _wgslsmith_div_i32((0i & _wgslsmith_mod_i32(u_input.b.x, 2147483647i)) | abs(select(u_input.a, 2147483647i, false)), 1i));
}

