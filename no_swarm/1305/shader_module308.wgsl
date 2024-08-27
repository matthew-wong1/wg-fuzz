struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(510f, 577f, -318f, -294f), vec4<f32>(1318f, -525f, -172f, -602f), vec4<f32>(1314f, 950f, -774f, -196f), vec4<f32>(-905f, 1323f, 1469f, -430f), vec4<f32>(-769f, -985f, -362f, -1569f), vec4<f32>(-253f, -1423f, 1435f, 758f), vec4<f32>(148f, 1476f, 622f, -1399f), vec4<f32>(-912f, 2690f, -123f, 961f), vec4<f32>(-171f, -470f, 2370f, -1486f), vec4<f32>(-1373f, 279f, -1398f, -1000f), vec4<f32>(1378f, -1484f, -1160f, -622f), vec4<f32>(1474f, -1435f, 1000f, -992f), vec4<f32>(-242f, -520f, 846f, 1000f), vec4<f32>(-247f, 1166f, 892f, -1000f), vec4<f32>(957f, -243f, 1663f, 668f), vec4<f32>(1000f, 792f, -428f, -1000f), vec4<f32>(1470f, 257f, -161f, 602f), vec4<f32>(2167f, 574f, -927f, 659f), vec4<f32>(-172f, 1307f, 830f, 743f), vec4<f32>(1000f, 1616f, -136f, -302f), vec4<f32>(-917f, 834f, 825f, 172f), vec4<f32>(118f, -861f, -747f, -587f), vec4<f32>(1500f, -1010f, -516f, -1328f), vec4<f32>(-274f, -1000f, 128f, -925f), vec4<f32>(502f, -1501f, -762f, -819f), vec4<f32>(-396f, 1000f, -1390f, 1000f), vec4<f32>(1000f, -937f, -2476f, -1364f));

var<private> global1: vec4<i32> = vec4<i32>(15078i, 2147483647i, 2147483647i, 7836i);

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = u_input.b;
    global1 = (firstLeadingBit(~(vec4<i32>(arg_0.b.x, arg_2.e.c, arg_0.e.c, 13500i) | vec4<i32>(2147483647i, -1i, global1.x, arg_0.e.c))) & abs(~countOneBits(vec4<i32>(50610i, 24988i, global2.c, arg_0.b.x)))) | vec4<i32>(13811i >> (var_0.x % 32u), max(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(12655i, -2147483647i, -23639i, -1i), vec4<i32>(-34701i, arg_2.b.x, 27257i, arg_0.b.x))), (arg_0.e.c & global2.c) << ((u_input.a >> (6437u % 32u)) % 32u)), select(global1.x, i32(-1i) * -global1.x, false), -countOneBits(14696i | global2.c));
    var var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = vec4<i32>(2147483647i, -2147483647i, firstLeadingBit(_wgslsmith_mod_i32(firstTrailingBit(var_2.b.x), -2147483647i)), firstLeadingBit(~(~var_1.b.x)));
    return ~4294967295u;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d - 217f), _wgslsmith_f_op_f32(min(739f, global2.d))), -1232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2238f))), !all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * 566f)), global2.d))));
    var var_1 = u_input.b.yy;
    var var_2 = global0[_wgslsmith_index_u32(40242u, 27u)];
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.xxx)));
    var_1 = vec2<u32>(func_3(Struct_2(_wgslsmith_dot_vec3_u32(u_input.b.wwz, u_input.b.wyw), global1.xxx, vec3<u32>(u_input.a, global2.b, 4294967295u), vec4<bool>(true, true, true, true), Struct_1(19799u, u_input.b.x, 33699i, 162f)), var_0.x, Struct_2(global2.b, ~vec3<i32>(-1i, global1.x, 8243i), u_input.b.zyy, vec4<bool>(true, true, true, true), Struct_1(4294967295u, u_input.a, -1i, var_0.x))) & (58527u << (func_3(Struct_2(100449u, global1.wyw, u_input.b.ywy, vec4<bool>(true, false, true, false), Struct_1(var_1.x, u_input.b.x, global1.x, 613f)), _wgslsmith_f_op_f32(select(var_2.x, -138f, true)), Struct_2(u_input.a, vec3<i32>(-2147483647i, global1.x, 0i), vec3<u32>(var_1.x, var_1.x, 0u), vec4<bool>(false, false, true, true), Struct_1(18448u, 4294967295u, global1.x, -1071f))) % 32u)), 57291u);
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_2;
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    global2 = arg_3;
    var var_1 = global1.x;
    return max(0i, _wgslsmith_div_i32(var_0.e.c, 1i));
}

fn func_1() -> vec3<bool> {
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    global1 = vec4<i32>(select(-43461i, firstLeadingBit(_wgslsmith_div_i32(-42686i, ~global1.x)), (_wgslsmith_sub_i32(31212i, global1.x) ^ global1.x) >= (reverseBits(global2.c) ^ global2.c)), 2565i, global1.x, ~select(func_4(min(vec3<u32>(u_input.b.x, global2.a, global2.b), u_input.b.zwy), func_2(global1.zw), Struct_2(u_input.b.x, vec3<i32>(global2.c, -61357i, -17606i), vec3<u32>(u_input.a, global2.a, u_input.a), vec4<bool>(false, true, true, true), Struct_1(global2.a, 4294967295u, global1.x, global2.d)), Struct_1(global2.a, u_input.b.x, 84125i, -1137f)), ~global2.c, true));
    global1 = select(abs(vec4<i32>(global1.x, ~global1.x, global2.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -1i, -9637i, -5979i), vec4<i32>(global2.c, global2.c, global1.x, 0i)))), -min(countOneBits(vec4<i32>(-15877i, 79954i, 2147483647i, 0i)), vec4<i32>(global2.c, abs(1i), global1.x, _wgslsmith_dot_vec3_i32(global1.xzw, global1.yxy))), vec4<bool>(!((global2.b == u_input.a) & false), global2.d < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), true, any(vec4<bool>(true, true, func_2(global1.wz), true))));
    global1 = vec4<i32>(global1.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, -1i, global2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c, 0i, 1i), vec3<i32>(global2.c, 17691i, global1.x)) & global2.c), vec4<i32>(global1.x, select(-29805i >> (global2.a % 32u), i32(-1i) * -64655i, true), max(global1.x, global2.c) >> (_wgslsmith_div_u32(global2.b, global2.b) % 32u), ~_wgslsmith_mod_i32(31306i, global1.x))), global2.c);
    return select(vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-975f, 315f))) < -973f, -606f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.d))), true), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), any(vec3<bool>(true, true, true))), vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)), !select(true, false, true), false), !vec3<bool>(true, func_2(vec2<i32>(global1.x, -1i)), all(vec4<bool>(false, true, false, false)))), vec3<bool>(true, true, any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec4<i32> {
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -select(~vec4<i32>(1i, global1.x, global2.c, global2.c), vec4<i32>(-2147483647i, 1i, global2.c, global1.x), vec4<bool>(true, true, arg_0, arg_2.x)), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, global2.c, -2147483647i), vec4<i32>(global2.c, 2147483647i, 62536i, global1.x)), 1i), ~_wgslsmith_sub_i32(-1i, 0i) ^ max(firstTrailingBit(1i), -2147483647i), -(i32(-1i) * -9803i), 12969i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global1.wx, vec2<i32>(-1i, 1i)), select(vec2<i32>(2147483647i, 0i), vec2<i32>(-70159i, -57514i), vec2<bool>(true, true)))));
    global0 = array<vec4<f32>, 27>();
    global2 = Struct_1(u_input.b.x, 4294967295u, _wgslsmith_sub_i32(global2.c, 35912i), _wgslsmith_f_op_f32(step(global2.d, global2.d)));
    global0 = array<vec4<f32>, 27>();
    global2 = Struct_1(min(global2.b, ~29475u), ~_wgslsmith_add_u32(u_input.b.x, min(~4294967295u, u_input.b.x | 0u)), ~_wgslsmith_add_i32(global1.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.b, global2.b), vec3<u32>(1u, u_input.a, global2.a)) % 32u), -6226i), global2.d);
    return vec4<i32>(~abs(~(i32(-1i) * -1i)), 2397i, select(-2147483647i, 4017i, arg_0), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, -35479i, global1.x, -12618i), vec4<i32>(2147483647i, global2.c, global2.c, global1.x) >> (vec4<u32>(52544u, 58825u, 53590u, 0u) % vec4<u32>(32u))) ^ _wgslsmith_div_i32(global1.x & 12567i, ~global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(~(~(_wgslsmith_sub_u32(global2.a, u_input.b.x) & ~u_input.b.x)), 27u)]));
    var var_1 = _wgslsmith_dot_vec4_u32(reverseBits(u_input.b), _wgslsmith_clamp_vec4_u32(firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a, global2.b, 4294967295u, 3920u), vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x))), ~(vec4<u32>(11122u, u_input.a, 0u, 4294967295u) & u_input.b), vec4<u32>(u_input.a, 1u, 1u, u_input.b.x)));
    global1 = vec4<i32>((3528i & ~(global2.c | global1.x)) | -52201i, global1.x, global1.x, 27177i);
    var var_2 = func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~22200u, 125122u, u_input.a), vec4<u32>(19112u, global2.b, 1u, 1u) << ((u_input.b | u_input.b) % vec4<u32>(32u))) != u_input.b.x, !select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), func_1());
    var var_3 = ~(~vec2<u32>(max(firstLeadingBit(10433u), _wgslsmith_add_u32(global2.b, 31574u)), 7199u));
    let var_4 = -974f;
    let var_5 = false;
    let var_6 = vec4<bool>(false, false, all(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1239f, global2.d)), 615f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1060f + -1726f), var_0.x)) <= _wgslsmith_f_op_f32(var_4 + 920f));
    var_2 = min(vec4<i32>(-9530i << (~u_input.a % 32u), _wgslsmith_div_i32(min(-var_2.x, firstTrailingBit(-8125i)), -1i), global2.c, -1i), vec4<i32>(-31588i, firstTrailingBit(~var_2.x), global1.x, 0i) | ~select(vec4<i32>(global1.x, var_2.x, var_2.x, -37225i) ^ vec4<i32>(var_2.x, 73023i, -33503i, global2.c), vec4<i32>(2147483647i, var_2.x, var_2.x, global1.x), any(vec3<bool>(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.wyw))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -209f), -642f)) - vec3<f32>(_wgslsmith_f_op_f32(222f * -899f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2286f, -560f)) + _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_f32(-var_0.x))), global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.b.yww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xw))));
}

