struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, true, false, false, false, true, false, true, false, false, true, true, false);

var<private> global1: array<f32, 25>;

var<private> global2: array<u32, 3> = array<u32, 3>(49597u, 11700u, 21458u);

var<private> global3: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-42640i, 14608i, -13397i), vec3<i32>(2147483647i, 24277i, 5844i), vec3<i32>(26774i, -6111i, 0i), vec3<i32>(-32618i, 45338i, 10145i), vec3<i32>(30507i, i32(-2147483648), -45741i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-30055i, -1i, -33260i), vec3<i32>(-4057i, -13723i, -39472i), vec3<i32>(14682i, -13030i, 16277i), vec3<i32>(-3903i, 17204i, 0i), vec3<i32>(1i, 16529i, 2147483647i), vec3<i32>(-24518i, i32(-2147483648), 21811i), vec3<i32>(0i, 2147483647i, -17193i), vec3<i32>(-45232i, -24050i, 4669i), vec3<i32>(i32(-2147483648), -13741i, 1i), vec3<i32>(-15617i, -1i, -1i), vec3<i32>(9876i, 0i, 25183i), vec3<i32>(16115i, -1i, -3098i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(537i, -13405i, -1i), vec3<i32>(i32(-2147483648), 12221i, -25525i), vec3<i32>(-20458i, -1i, 0i), vec3<i32>(0i, -16183i, 2147483647i), vec3<i32>(0i, 29498i, 2147483647i), vec3<i32>(-19579i, 0i, 22504i), vec3<i32>(48470i, 0i, 2147483647i), vec3<i32>(0i, -49634i, 2147483647i), vec3<i32>(12528i, -1i, 1i), vec3<i32>(1i, -35640i, -1461i), vec3<i32>(1i, 0i, 53562i), vec3<i32>(i32(-2147483648), -19292i, 0i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    let var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~abs(vec2<i32>(-31005i, u_input.b)), ~(-vec2<i32>(u_input.b, u_input.b))), ~firstLeadingBit(vec2<i32>(-24348i, u_input.b) >> (vec2<u32>(21572u, global2[_wgslsmith_index_u32(arg_1, 3u)]) % vec2<u32>(32u))));
    global3 = array<vec3<i32>, 31>();
    var var_1 = !(!global0[_wgslsmith_index_u32(1u, 15u)]);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(-238f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 25u)] + _wgslsmith_f_op_f32(max(-863f, global1[_wgslsmith_index_u32(36969u, 25u)]))), !global0[_wgslsmith_index_u32(u_input.d.x, 15u)])), global1[_wgslsmith_index_u32(~532u, 25u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(43469u, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)])))), 478f)))), 181f);
    var var_3 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 1622f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_2.wz, var_2.wz, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 3u)], 15u)])))))), Struct_1(abs(~global2[_wgslsmith_index_u32(arg_2.x, 3u)]), _wgslsmith_f_op_f32(-var_2.x), vec4<bool>(true, !(false && global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 15u)]), !any(vec3<bool>(false, global0[_wgslsmith_index_u32(50997u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), true), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(45855u, 60064u))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(12086u, ~arg_2.x), arg_0.yz), var_2.x, vec4<bool>(_wgslsmith_f_op_f32(ceil(var_2.x)) <= -206f, !any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 15u)], global0[_wgslsmith_index_u32(arg_1, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31351u, 3u)], 15u)])), select(global0[_wgslsmith_index_u32(~arg_2.x, 15u)], false != global0[_wgslsmith_index_u32(6897u, 15u)], !global0[_wgslsmith_index_u32(arg_2.x, 15u)]), false), u_input.d.yw), all(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], false), vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 15u)])), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), any(select(vec2<bool>(true, global0[_wgslsmith_index_u32(6382u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 15u)], false))))));
    return var_0;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = -730i;
    let var_1 = arg_2;
    var var_2 = -(~(i32(-1i) * -var_0));
    var var_3 = arg_1 ^ var_1.x;
    var var_4 = max(func_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 13586u, 1u, u_input.d.x), u_input.a) ^ ~vec4<u32>(88809u, arg_2.x, global2[_wgslsmith_index_u32(arg_1, 3u)], var_1.x), var_1.x, ~(~var_1.zw)), u_input.b);
    return Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(~(~u_input.d.zx)), vec2<u32>(_wgslsmith_clamp_u32(var_1.x, ~global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 45723u & arg_1), 10285u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(78870u, 25u)] - global1[_wgslsmith_index_u32(~(15944u >> (0u % 32u)), 25u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1 << (4294967295u % 32u), 15u)] & any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)], false)), global0[_wgslsmith_index_u32(var_1.x, 15u)], !global0[_wgslsmith_index_u32(arg_1, 15u)], global0[_wgslsmith_index_u32(arg_1, 15u)]), select(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_1, 15u)], global0[_wgslsmith_index_u32(12400u, 15u)]), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(arg_1, 15u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(34346u, 15u)], global1[_wgslsmith_index_u32(52380u, 25u)] > 311f, select(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(8675u, 15u)], false), global0[_wgslsmith_index_u32(~var_1.x, 15u)]), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)]), !select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 3u)], 3u)], 25u)] != global1[_wgslsmith_index_u32(arg_1, 25u)], select(global0[_wgslsmith_index_u32(88607u, 15u)], global0[_wgslsmith_index_u32(var_1.x, 15u)], global0[_wgslsmith_index_u32(650u, 15u)]), true)), _wgslsmith_mult_vec2_u32(vec2<u32>(33177u, _wgslsmith_mult_u32(var_1.x, ~arg_2.x)), countOneBits(vec2<u32>(_wgslsmith_mult_u32(arg_2.x, 104921u), global2[_wgslsmith_index_u32(arg_1, 3u)]))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_4 {
    global2 = array<u32, 3>();
    global2 = array<u32, 3>();
    let var_0 = select(arg_3.c.wx, arg_3.c.wz, !global0[_wgslsmith_index_u32(1u, 15u)]);
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_3.d.x, 28558u, 0u)), _wgslsmith_mod_vec3_u32(u_input.a.zxw, ~(u_input.a.zxy >> (u_input.a.xwy % vec3<u32>(32u))))), _wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(u_input.d.wyz, u_input.d.wzz)), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~26694u), 3u)], arg_2)));
    var var_2 = Struct_2(arg_3, vec2<i32>(~6945i, ~arg_1.x), select(any(arg_3.c.zyx), true, var_0.x || global0[_wgslsmith_index_u32(0u, 15u)]));
    return Struct_4(_wgslsmith_f_op_f32(var_2.a.b - -474f), vec2<f32>(-2474f, arg_3.b));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> vec4<bool> {
    global1 = array<f32, 25>();
    let var_0 = Struct_3(21373u, _wgslsmith_add_u32(_wgslsmith_mod_u32(61939u, firstLeadingBit(~arg_1.b)), arg_1.a));
    global1 = array<f32, 25>();
    global0 = array<bool, 15>();
    let var_1 = Struct_1(~firstLeadingBit(~(~u_input.d.x)), _wgslsmith_f_op_f32(-arg_0.a), vec4<bool>(true, true, !(!(false && global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 15u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, reverseBits(1u | global2[_wgslsmith_index_u32(var_0.a, 3u)])), 15u)]), u_input.a.ww);
    return select(!(!(!(!var_1.c))), var_1.c, vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.a, var_0.a), ~(~1u)), 15u)]));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<u32>) -> u32 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.a, 25u)], arg_0, global1[_wgslsmith_index_u32(4294967295u, 25u)])))))), vec4<i32>(-2147483647i, ~u_input.b | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)), u_input.b << (~u_input.d.x % 32u), (16349i >> (arg_1.a % 32u)) & (i32(-1i) * -12818i)), ~(~arg_3.x), func_2(1i, 1u | ~arg_1.a, reverseBits(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 3u)], 93218u, 1u, arg_1.a)))), Struct_3(countOneBits(5091u), max(~global2[_wgslsmith_index_u32(44421u, 3u)] >> (~global2[_wgslsmith_index_u32(14213u, 3u)] % 32u), abs(u_input.a.x))));
    global2 = array<u32, 3>();
    global0 = array<bool, 15>();
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(min(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), arg_1.d.x), 25u)]), vec2<f32>(arg_0, -582f)), Struct_1(select(firstTrailingBit(34366u) & u_input.d.x, 12053u, !(!arg_2.x)), arg_0, arg_1.c, vec2<u32>((0u ^ arg_3.x) << (global2[_wgslsmith_index_u32(~arg_3.x, 3u)] % 32u), _wgslsmith_mod_u32(~4294967295u, 70895u))), arg_1, !global0[_wgslsmith_index_u32(~select(~arg_3.x, u_input.c, false), 15u)]);
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~arg_3.x, ~global2[_wgslsmith_index_u32(35313u, 3u)])), vec2<u32>(4294967295u, ~max(var_1.b.a, 1u))), ~u_input.c);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = Struct_3(0u, 1u);
    let var_1 = global0[_wgslsmith_index_u32(min(var_0.a, u_input.a.x) & ~(~1u), 15u)] || !func_2(i32(-1i) * -1i, _wgslsmith_div_u32(var_0.a, ~53514u), u_input.a).c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(round(-126f))), 686f), vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_1.b.x), arg_1.a))));
    return arg_1;
}

fn func_7(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<f32>) -> Struct_5 {
    let var_0 = 40453u;
    let var_1 = arg_0;
    let var_2 = vec4<u32>(arg_1.x, 25926u, arg_1.x, u_input.d.x);
    global1 = array<f32, 25>();
    global3 = array<vec3<i32>, 31>();
    return Struct_5(var_1, func_2(u_input.b, ~u_input.d.x, var_2), func_2(2147483647i, 1u, vec4<u32>(abs(min(global2[_wgslsmith_index_u32(0u, 3u)], 5247u)), _wgslsmith_mod_u32(arg_1.x, _wgslsmith_mod_u32(var_2.x, 1u)), ~_wgslsmith_mod_u32(1u, 28818u), 4294967295u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(vec2<f32>(833f, _wgslsmith_f_op_f32(f32(-1f) * -2336f)), Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(315f, 547f))), ~(~u_input.d.wz), Struct_1(func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 25u)] * 1419f), Struct_1(u_input.a.x, 1000f, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.d.x, 15u)], false), u_input.a.xy), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(13331u, 15u)], true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3439u, 3u)], 15u)])), reverseBits(u_input.a.zw)), 364f, select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 15u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(68215u, 15u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 3u)], 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], true, global0[_wgslsmith_index_u32(18278u, 15u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true), true)), ~u_input.d.zz)), vec2<u32>(~(u_input.c >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13480u, 3u)], 3u)], 3u)], 3u)] % 32u)), ~42124u), _wgslsmith_div_f32(-129f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.d.x >> (~0u % 32u), 25u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)] * global1[_wgslsmith_index_u32(7522u, 25u)])))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(20885u, 25u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~18252u), 25u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(1u, u_input.c), 25u)]))));
    let var_1 = Struct_3(reverseBits(999u), ~firstLeadingBit(_wgslsmith_sub_u32(~1u, var_0.b.d.x ^ var_0.c.d.x)));
    let var_2 = global3[_wgslsmith_index_u32(2028u << (func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-113f, -1014f)) - _wgslsmith_div_f32(-717f, -198f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) - _wgslsmith_f_op_f32(abs(var_0.c.b)))), func_7(Struct_4(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_vec2_f32(trunc(var_0.a.b))), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 35921u), var_0.b.d)), global1[_wgslsmith_index_u32(94406u, 25u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b))).c, var_0.c.c, u_input.d.xz) % 32u), 31u)];
    let var_3 = _wgslsmith_div_i32(-(~reverseBits(5473i & u_input.b)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 2147483647i, -41995i, u_input.b) | vec4<i32>(var_2.x, var_2.x, 8574i, -2147483647i), ~vec4<i32>(29157i, 2147483647i, -1i, u_input.b)) & var_2.x));
    let var_4 = _wgslsmith_add_vec3_i32(select(~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(global3[_wgslsmith_index_u32(4294967295u, 31u)], vec3<i32>(1i, var_3, -1i)), select(vec3<i32>(u_input.b, 19099i, var_3), vec3<i32>(var_3, 16069i, var_2.x), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.d.x, 15u)], true))), global3[_wgslsmith_index_u32(abs(~1u), 31u)], var_0.c.c.wyw), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~43541u, 3u)], 31u)]);
    var var_5 = _wgslsmith_mult_u32(max(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(u_input.a.yxx, u_input.d.zxx)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.yzy, u_input.a.yww), max(u_input.d.zzz, u_input.a.zwx))), var_0.c.d.x), _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(61572u, func_2(var_3, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], vec4<u32>(var_1.b, 10718u, 61733u, 4294967295u)).d.x)), _wgslsmith_clamp_u32(34488u, var_0.c.a, countOneBits(~global2[_wgslsmith_index_u32(25311u, 3u)]))));
    var_0 = Struct_5(func_4(vec3<f32>(274f, var_0.a.a, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(var_0.b.a, u_input.a.x)), 25u)]), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, 2147483647i, -7890i, var_4.x), vec4<i32>(-2147483647i, u_input.b, 56432i, var_3)) & vec4<i32>(1i, -25176i, var_2.x, u_input.b)), 25831u, Struct_1(firstTrailingBit(firstLeadingBit(var_0.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-677f)) - _wgslsmith_f_op_f32(-var_0.b.b)), vec4<bool>(select(var_0.b.c.x, global0[_wgslsmith_index_u32(4294967295u, 15u)], var_0.d), var_0.c.c.x, func_5(Struct_4(global1[_wgslsmith_index_u32(4294967295u, 25u)], var_0.a.b), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 3u)], var_0.c.d.x)).x, var_4.x != -9207i), u_input.a.wz)), var_0.c, Struct_1(18024u, func_4(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26043u, 25u)]), -459f, func_4(vec3<f32>(global1[_wgslsmith_index_u32(var_1.a, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], 156f), vec4<i32>(var_2.x, -13190i, var_2.x, -13444i), var_1.b, var_0.b).a), max(vec4<i32>(2147483647i, var_2.x, var_2.x, -2147483647i), vec4<i32>(0i, var_3, var_3, u_input.b)) << (u_input.a % vec4<u32>(32u)), select(1u, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 3u)], true), func_2(var_2.x << (4294967295u % 32u), ~u_input.c, select(vec4<u32>(global2[_wgslsmith_index_u32(var_1.b, 3u)], u_input.a.x, u_input.c, 1u), vec4<u32>(var_0.c.d.x, 6209u, 0u, 35127u), var_0.b.c))).b.x, var_0.c.c, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u) >> (~vec2<u32>(1u, global2[_wgslsmith_index_u32(var_0.c.a, 3u)]) % vec2<u32>(32u)), ~reverseBits(vec2<u32>(var_0.b.d.x, 9395u)))), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 15u)]);
    var_5 = max(u_input.c & (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.zzx), _wgslsmith_dot_vec2_u32(var_0.c.d, var_0.b.d)) >> ((4294967295u << (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34810u, 3u)], 3u)] % 32u)) % 32u)), ~(~global2[_wgslsmith_index_u32(1u, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec3_u32(~u_input.d.zwx, _wgslsmith_mult_vec3_u32(u_input.a.zzz, ~vec3<u32>(var_0.b.d.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21218u, 3u)], 3u)]))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(246u, global2[_wgslsmith_index_u32(var_0.c.d.x, 3u)], 0u), u_input.d.yyy)), max(_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.c, 0u), vec3<u32>(var_1.a, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)])), vec3<u32>(28325u, 0u, 1u)), abs(vec3<u32>(u_input.d.x, var_0.b.d.x, u_input.c)))), _wgslsmith_dot_vec2_i32(var_4.xx, var_4.xx), -186f, firstLeadingBit(~(_wgslsmith_mult_vec2_i32(var_4.xx, var_2.xy) | (vec2<i32>(var_4.x, 2147483647i) ^ var_4.yy))));
}

