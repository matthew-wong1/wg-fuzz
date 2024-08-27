struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, -16911i), Struct_1(4294967295u, -9587i), Struct_1(0u, -23015i), Struct_1(0u, -7372i), Struct_1(1u, -1i), Struct_1(4294967295u, -6763i), Struct_1(77315u, -22749i), Struct_1(0u, 1i), Struct_1(4294967295u, 1i), Struct_1(42013u, i32(-2147483648)), Struct_1(0u, 66055i), Struct_1(4294967295u, -9355i), Struct_1(13853u, -13286i), Struct_1(25791u, -22531i), Struct_1(0u, -14371i), Struct_1(4294967295u, -25212i), Struct_1(49606u, -1i), Struct_1(34466u, 1i), Struct_1(67993u, 1i), Struct_1(1u, i32(-2147483648)), Struct_1(39313u, 40498i), Struct_1(3213u, 2147483647i), Struct_1(4294967295u, -119071i), Struct_1(36814u, 0i), Struct_1(1u, -2215i), Struct_1(4294967295u, -17629i), Struct_1(37733u, 57670i));

var<private> global3: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(42524i, 2147483647i), vec2<i32>(-14647i, -64710i), vec2<i32>(-1i, 28397i), vec2<i32>(3874i, i32(-2147483648)), vec2<i32>(-34601i, i32(-2147483648)), vec2<i32>(1i, -28985i), vec2<i32>(-35127i, 0i), vec2<i32>(-28844i, -18957i), vec2<i32>(14908i, -16035i), vec2<i32>(1i, 32255i), vec2<i32>(-51718i, 0i), vec2<i32>(0i, -40099i), vec2<i32>(-15764i, 30469i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 43708i), vec2<i32>(0i, 70204i), vec2<i32>(1i, -10901i), vec2<i32>(8054i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(47240i, -1i), vec2<i32>(-1i, 12800i), vec2<i32>(1i, 8193i), vec2<i32>(2147483647i, -12539i), vec2<i32>(2147483647i, 8475i), vec2<i32>(-12113i, 40244i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> vec3<u32> {
    global1 = Struct_1(~23928u, -1i);
    let var_0 = 62887i;
    let var_1 = false;
    let var_2 = vec2<u32>(0u, ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, global0.x, 1u) | vec3<u32>(global0.x, global0.x, 51066u)), ~(global0.wzy >> (global0.xzz % vec3<u32>(32u)))));
    let var_3 = Struct_1(global0.x, -arg_2);
    return ~(~(~(vec3<u32>(4294967295u, 4294967295u, global0.x) >> (vec3<u32>(var_2.x, var_2.x, 0u) % vec3<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_i32(reverseBits((-vec3<i32>(arg_3.b, arg_3.b, arg_0.b) | max(u_input.a, vec3<i32>(arg_3.b, arg_0.b, -2147483647i))) >> (~(vec3<u32>(43097u, global1.a, arg_2.x) ^ global0.yzw) % vec3<u32>(32u))), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), reverseBits(u_input.a.x)) << (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(func_3(u_input.a, 180f, u_input.a.x, vec2<bool>(true, false)), ~vec3<u32>(arg_0.a, 4294967295u, global0.x)), reverseBits(~global0.wxw)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(arg_3.a >> (arg_3.a % 32u), global0.x, ~4294967295u)), vec3<u32>(~arg_1.a | arg_1.a, _wgslsmith_mult_u32(~global0.x, 9578u) | ~_wgslsmith_div_u32(arg_2.x, arg_1.a), firstTrailingBit(arg_2.x)));
    var_0 = min(~((u_input.a << (~vec3<u32>(global1.a, 10778u, 29985u) % vec3<u32>(32u))) << (min(vec3<u32>(4294967295u, 4294967295u, 19812u), ~vec3<u32>(arg_2.x, arg_3.a, arg_1.a)) % vec3<u32>(32u))), reverseBits(countOneBits(max(firstLeadingBit(vec3<i32>(arg_3.b, -2147483647i, arg_0.b)), u_input.a))));
    global3 = array<vec2<i32>, 26>();
    let var_2 = Struct_1(arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 33962i), var_0.yy));
    return -186f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = ~arg_2.a;
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(abs(global0.xw << (vec2<u32>(arg_2.a, global1.a) % vec2<u32>(32u))), ~vec2<u32>(global0.x, arg_2.a)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, global1.a, arg_1.a, arg_2.a), vec4<u32>(global1.a, global0.x, 5095u, arg_2.a)), 35192u), global0.x) >> (vec3<u32>(_wgslsmith_add_u32(68628u, firstTrailingBit(global0.x)), ~(~_wgslsmith_sub_u32(global0.x, global0.x)), countOneBits(~arg_1.a) << (_wgslsmith_sub_u32(global0.x, arg_2.a) % 32u)) % vec3<u32>(32u));
    var var_2 = Struct_1(reverseBits(1u), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(global3[_wgslsmith_index_u32(global0.x, 26u)], vec2<i32>(-525i, arg_2.b)) | _wgslsmith_mult_vec2_i32(vec2<i32>(-22666i, u_input.a.x), vec2<i32>(1i, -2147483647i))), min(u_input.a.yx, countOneBits(reverseBits(vec2<i32>(3411i, u_input.a.x))))));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(1u, var_2.a), 1u, global0.x);
    return 21613u;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~(~func_4(_wgslsmith_f_op_f32(func_2(Struct_1(global0.x, -5096i), Struct_1(global0.x, 22889i), global0.zz, global2[_wgslsmith_index_u32(76952u << (arg_0.x % 32u), 27u)])), global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)])), 27u)];
    var var_1 = global2[_wgslsmith_index_u32(3036u, 27u)];
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(257f, 224f)) - _wgslsmith_f_op_f32(-1183f + 2031f)), Struct_1(23586u, ~(-55117i)), Struct_1(80896u, firstTrailingBit(var_0.b))), global0.x & ~_wgslsmith_dot_vec4_u32(vec4<u32>(41987u, global0.x, 50081u, arg_0.x), vec4<u32>(global0.x, var_1.a, global0.x, 4294967295u))), 27u)];
    let var_3 = u_input.a.yx;
    var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(~_wgslsmith_dot_vec2_u32(arg_0, arg_0))), 27u)];
    return _wgslsmith_f_op_f32(614f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1234f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-374f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(global0.x, 49359u))) * _wgslsmith_f_op_f32(f32(-1f) * -236f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(168f - 342f), _wgslsmith_f_op_f32(f32(-1f) * -768f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-929f, _wgslsmith_f_op_f32(func_2(Struct_1(0u, global1.b), Struct_1(global1.a, 40439i), global0.zy, Struct_1(global1.a, 0i))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(815f, 795f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !(!select(false, true, false)))));
    global0 = ~(~abs(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, global0.x, global1.a, 0u), vec4<u32>(55529u, 0u, 26211u, 28237u)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(967f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.yw)));
    var var_3 = global2[_wgslsmith_index_u32(70700u, 27u)];
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-501f, -678f, 781f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1933f, 246f, 235f), vec3<f32>(257f, -994f, 274f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, -472f, -477f)), vec3<f32>(-1428f, 1137f, 1242f))))), vec2<u32>(var_3.a, 0u), _wgslsmith_mod_vec2_u32(~select(global0.yz, global0.ww, any(vec3<bool>(true, false, false))), ~(~(global0.wx & global0.xx))), _wgslsmith_dot_vec2_u32(select(firstTrailingBit(~vec2<u32>(global0.x, 25438u)), countOneBits(vec2<u32>(22268u, 1u)), true), vec2<u32>(_wgslsmith_mult_u32(global0.x, global0.x), ~global1.a)));
}

