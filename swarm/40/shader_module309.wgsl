struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true, vec4<f32>(-1000f, -942f, -408f, 1447f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(true, vec4<f32>(630f, 603f, 1929f, -402f), vec2<u32>(1u, 0u)), Struct_1(false, vec4<f32>(-154f, 203f, -547f, -1795f), vec2<u32>(0u, 4294967295u)), Struct_1(false, vec4<f32>(923f, 1586f, 1196f, -302f), vec2<u32>(14795u, 4294967295u)), Struct_1(false, vec4<f32>(-581f, 127f, 208f, 1244f), vec2<u32>(4294967295u, 0u)), Struct_1(false, vec4<f32>(1052f, 1968f, 820f, -1401f), vec2<u32>(37824u, 67570u)), Struct_1(true, vec4<f32>(862f, 1145f, 391f, -107f), vec2<u32>(25066u, 55745u)), Struct_1(true, vec4<f32>(257f, -808f, 1727f, -1245f), vec2<u32>(4294967295u, 92527u)), Struct_1(true, vec4<f32>(-879f, -1739f, 412f, 1351f), vec2<u32>(23207u, 0u)), Struct_1(true, vec4<f32>(1000f, -236f, -742f, -1734f), vec2<u32>(28707u, 33517u)), Struct_1(false, vec4<f32>(-633f, -1211f, 1193f, 1558f), vec2<u32>(1u, 0u)), Struct_1(false, vec4<f32>(470f, -698f, -916f, -644f), vec2<u32>(0u, 53894u)), Struct_1(true, vec4<f32>(1000f, 1000f, 883f, 441f), vec2<u32>(1u, 9116u)), Struct_1(true, vec4<f32>(-388f, -1218f, -234f, 401f), vec2<u32>(1u, 56147u)), Struct_1(false, vec4<f32>(-101f, 166f, -3277f, -1008f), vec2<u32>(1u, 18890u)), Struct_1(false, vec4<f32>(-972f, -959f, 742f, -131f), vec2<u32>(1u, 15266u)), Struct_1(false, vec4<f32>(154f, 671f, 2427f, 250f), vec2<u32>(0u, 1u)), Struct_1(false, vec4<f32>(1512f, -1835f, 817f, -302f), vec2<u32>(1u, 1u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x | u_input.a.x) << (min(4294967295u, global2.c.x) % 32u), 18u)];
    let var_1 = Struct_2(!select(!select(vec4<bool>(arg_0, true, var_0.a, global2.a), vec4<bool>(var_0.a, false, global2.a, global2.a), true), vec4<bool>(var_0.a, true, var_0.c.x >= u_input.a.x, false && global2.a), vec4<bool>(var_0.a, global2.a && arg_0, true, -2147483647i == arg_1.x)));
    let var_2 = Struct_3(var_1.a.x, !select(select(!var_1.a.zxz, !var_1.a.wzw, !var_1.a.xwy), select(var_1.a.yyz, vec3<bool>(false, false, false), arg_1.x > 573i), select(var_1.a.zxw, !var_1.a.xxz, !var_1.a.x)));
    let var_3 = 800f < _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x));
    let var_4 = Struct_1(var_3, vec4<f32>(491f, global2.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1548f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - -681f) * _wgslsmith_f_op_f32(select(var_0.b.x, 233f, false))))), ~global2.c);
    return any(vec2<bool>(arg_0 || any(vec3<bool>(var_0.a, global2.a, false)), true && global2.a)) | true;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_2(vec4<bool>(func_3(any(vec3<bool>(global2.a, true, global2.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-10279i, u_input.c.x, 2147483647i, 2147483647i), u_input.c)) && true, arg_1 && true, true | (arg_1 && func_3(false, u_input.c)), false));
    var_0 = Struct_2(var_0.a);
    global3 = array<Struct_1, 18>();
    var var_1 = global3[_wgslsmith_index_u32(global2.c.x, 18u)];
    var var_2 = select(!var_1.a, arg_0.x, true);
    return select(vec2<bool>(false, any(!select(vec2<bool>(var_0.a.x, false), vec2<bool>(arg_0.x, false), true))), vec2<bool>(!any(vec4<bool>(var_1.a, false, arg_0.x, true)), true), false);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    var var_0 = !vec4<bool>(true | ((arg_1 >= u_input.b.x) && select(false, global2.a, global2.a)), global2.a || true, true, any(func_2(select(vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(global2.a, global2.a, false, global2.a), true), global2.a)));
    let var_1 = Struct_2(vec4<bool>(any(!select(vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(global2.a, true, false, false))), true, global2.b.x != -1052f, true));
    let var_2 = countOneBits(0u);
    var var_3 = Struct_2(var_1.a);
    var var_4 = global3[_wgslsmith_index_u32(97018u, 18u)];
    return (_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -22688i), _wgslsmith_mult_vec4_i32(select(u_input.c, vec4<i32>(u_input.c.x, -1i, -2147483647i, -46i), vec4<bool>(true, false, var_4.a, global2.a)), vec4<i32>(u_input.c.x, 10557i, 1187i, u_input.c.x))) << (8300u % 32u)) >> ((~global2.c.x & 41573u) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    global1 = arg_0.c.x ^ _wgslsmith_sub_u32(select(~4294967295u, u_input.a.x, true) | 0u, firstLeadingBit(arg_3.c.x));
    return !(!vec3<bool>(_wgslsmith_f_op_f32(-global2.b.x) <= _wgslsmith_f_op_f32(select(1096f, arg_0.b.x, global2.a)), u_input.a.x > _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, arg_3.c.x, 44373u), arg_1), any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 18>();
    var var_0 = select(vec3<bool>(any(func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.c, global2.c), 18u)], ~vec3<u32>(global2.c.x, u_input.b.x, global2.c.x), func_1(global2.b.wyy, global2.c.x, global2.b.zxx), global3[_wgslsmith_index_u32(~u_input.a.x, 18u)])), !select(true, global2.a, true), false), !select(select(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, true, false), global2.a), vec3<bool>(true, true, global2.a), true), select(func_4(Struct_1(global2.a, global2.b, vec2<u32>(global2.c.x, global2.c.x)), vec3<u32>(global2.c.x, 1u, u_input.a.x), u_input.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<bool>(false, true, global2.a), !vec3<bool>(false, global2.a, global2.a)), !select(vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, true, false), global2.a)), true);
    var var_1 = u_input.c.x;
    var_0 = vec3<bool>(var_0.x, ~(~_wgslsmith_sub_u32(global2.c.x, 1u)) > _wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c.x, 1u), vec2<u32>(18043u, 37793u)), ~4294967295u)), var_0.x);
    var_1 = _wgslsmith_sub_i32(-select(-1i, -2147483647i, func_4(global3[_wgslsmith_index_u32(0u, 18u)], firstTrailingBit(vec3<u32>(global2.c.x, 10088u, global2.c.x)), 33567i, global3[_wgslsmith_index_u32(1u, 18u)]).x), ~(~u_input.c.x));
    let var_2 = abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(abs(1u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x)), global2.c));
    var_0 = vec3<bool>(!(!global2.a) && any(select(!vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, false, true, global2.a), vec4<bool>(global2.a, global2.a, true, true))), global2.a || global2.a, !(!global2.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1396f, -1047f), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(ceil(global2.b.x)))))), global2.b.zz));
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(global2.c, vec2<u32>(1u, u_input.a.x), var_2)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 61384u), u_input.b.x), ~(~global2.c))), vec2<u32>(~u_input.b.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -1590f) * _wgslsmith_f_op_f32(-global2.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(-1019f + var_3.x)))), vec2<i32>(-_wgslsmith_mod_i32(1i, ~u_input.c.x), min(37582i, u_input.c.x)), vec2<i32>(-firstTrailingBit(-23077i), 2147483647i), var_2);
}

