struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(0u, 4294967295u, 0u), 53655u);

var<private> global3: array<u32, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> bool {
    global1 = min(global2.b, vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(43140u, global2.b.x, global3[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(1u, 1u, global2.c)), global2.b), ~_wgslsmith_div_u32(27764u, reverseBits(4294967295u)), 1u));
    let var_0 = Struct_1(true, vec3<u32>(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32((global1.x | u_input.d.x) << ((51421u >> (0u % 32u)) % 32u), 30u)], _wgslsmith_sub_u32(4294967295u, select(u_input.d.x, global2.c, global2.a))), 0u, ~_wgslsmith_mod_u32(countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 30u)], 30u)]), 0u)), 32187u);
    global2 = var_0;
    var var_1 = Struct_1(var_0.a, u_input.d.zzz, ~(11908u >> (var_0.c % 32u)));
    global2 = Struct_1(all(vec4<bool>(var_1.a, all(select(vec4<bool>(true, var_1.a, true, false), vec4<bool>(false, var_0.a, var_1.a, true), var_0.a)), var_0.a, var_0.a)), global2.b, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(~13026u, firstTrailingBit(9707u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global2.c, u_input.d.x, 0u), firstTrailingBit(5912u))));
    return !global2.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(710f, -132f) + vec2<f32>(229f, 877f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-605f, 284f), vec2<f32>(-1000f, 1783f))))), vec2<f32>(-801f, -455f), !select(!vec2<bool>(true, global2.a), select(vec2<bool>(true, global2.a), vec2<bool>(arg_3, arg_3), vec2<bool>(global2.a, false)), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1022f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2036f - -946f))))));
    let var_1 = vec4<bool>(false, all(!vec4<bool>(global2.a, !global2.a, 60821u < arg_1.x, global2.a)), (global1.x >> (4294967295u % 32u)) <= _wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59525u, 30u)], 30u)])), !any(select(select(vec4<bool>(global2.a, false, arg_3, true), vec4<bool>(global2.a, false, arg_3, global2.a), false), vec4<bool>(arg_3, false, true, arg_3), select(vec4<bool>(false, true, arg_3, global2.a), vec4<bool>(false, global2.a, global2.a, true), false))));
    global2 = Struct_1(arg_3 | global2.a, vec3<u32>(~_wgslsmith_add_u32(~0u, arg_0.x >> (8195u % 32u)), min(24501u, _wgslsmith_div_u32(u_input.d.x << (28395u % 32u), global1.x)), ~_wgslsmith_div_u32(~arg_1.x, ~80527u)), ~5469u);
    let var_2 = (global3[_wgslsmith_index_u32(arg_2, 30u)] > _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.xzz, vec3<u32>(47473u, arg_1.x, 4294967295u)) ^ vec3<u32>(4294967295u, 8434u, global3[_wgslsmith_index_u32(0u, 30u)]), select(arg_0.zzz, ~arg_0.zzy, func_3(u_input.b, vec3<f32>(429f, var_0.x, var_0.x))))) | false;
    var var_3 = ~u_input.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1004f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -335f, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, -2563f, 885f))), !(true & var_2)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    global0 = arg_3.c;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f + -1458f));
    var var_1 = arg_0;
    var var_2 = -((vec2<i32>(~0i, u_input.c.x) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(-16211i, u_input.a, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 21704i), u_input.c))) << (vec2<u32>(arg_3.c, 4294967295u ^ arg_0.b.x) % vec2<u32>(32u)));
    var var_3 = arg_0;
    return select(!var_3.a, !all(!select(vec2<bool>(true, var_3.a), vec2<bool>(false, global2.a), vec2<bool>(arg_3.a, global2.a))), true);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec4<u32>(~(global2.c << (firstTrailingBit(48006u) % 32u)), arg_3.b.x, _wgslsmith_mod_u32(1u, ~arg_3.b.x), u_input.d.x);
    var var_2 = ~vec2<u32>(~(global3[_wgslsmith_index_u32(1u, 30u)] ^ max(0u, global1.x)), global3[_wgslsmith_index_u32(global1.x, 30u)]);
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> f32 {
    global3 = array<u32, 30>();
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(689f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-851f, 862f) * 1829f), global2.a)) * _wgslsmith_f_op_f32(1699f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-583f * -710f), _wgslsmith_f_op_f32(step(468f, -1302f)))))), !vec3<bool>(true, true, func_4(Struct_1(global2.a, vec3<u32>(73522u, 0u, global2.c), 56438u), ~u_input.d.xy, _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(global1.x, global2.c, 1u, 0u), u_input.d, 4294967295u, global2.a)), arg_0)), firstLeadingBit(vec3<u32>(abs(1u), max(9640u, arg_0.b.x), reverseBits(80044u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, arg_0.c, abs(global2.b.x)), vec3<u32>(1u, ~4294967295u, 14578u), firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.d.zxz, arg_0.b, vec3<u32>(arg_3, 4294967295u, 14437u)))) % vec3<u32>(32u)), Struct_1(true, _wgslsmith_sub_vec3_u32(arg_0.b << (vec3<u32>(1u, 78294u, 30288u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.x, global1.x), u_input.d.zzz)) | vec3<u32>(~global3[_wgslsmith_index_u32(4294967295u, 30u)], 63283u, global1.x), ~(~43784u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2009f * -170f))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(1109f)), _wgslsmith_f_op_f32(f32(-1f) * -2019f)));
    let var_2 = reverseBits(arg_2);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1327f, 369f)), _wgslsmith_f_op_f32(max(var_1.x, var_1.x))) - vec2<f32>(var_1.x, -712f));
    return _wgslsmith_f_op_f32(-1000f * var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-458f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1307f + -413f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-470f)) * _wgslsmith_f_op_f32(-358f - -572f)) - 1637f))));
    var var_1 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(6634i, abs(u_input.a), i32(-1i) * -44644i, -u_input.c.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, u_input.c.x, 8801i), firstTrailingBit(vec4<i32>(u_input.b, u_input.a, u_input.b, -28820i))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(func_1(Struct_1(global2.a, vec3<u32>(u_input.d.x, global1.x, 47314u), 43926u), vec2<i32>(2147483647i, var_1.x), var_1.x, 1u)), -965f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(283f, var_0.x, 1494f), vec3<f32>(var_0.x, var_0.x, 1566f), vec3<bool>(true, global2.a, global2.a)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(var_0.x * -1462f), var_0.x)));
    var var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1358f) + 590f) * 1212f)), select(vec3<bool>(_wgslsmith_mult_i32(-2147483647i, 0i) < -var_1.x, 1233f != var_0.x, 26772u < min(4294967295u, u_input.d.x)), !select(select(vec3<bool>(false, global2.a, false), vec3<bool>(false, global2.a, false), false), vec3<bool>(global2.a, global2.a, true), true), vec3<bool>(true, true, func_4(func_5(-1000f, vec3<bool>(true, global2.a, global2.a), vec3<u32>(global2.c, 1u, global2.c), Struct_1(global2.a, global2.b, global3[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(33682u, global1.x), vec2<u32>(2712u, u_input.d.x), vec2<u32>(global3[_wgslsmith_index_u32(1u, 30u)], 4294967295u)), vec3<f32>(918f, 859f, var_0.x), func_5(693f, vec3<bool>(global2.a, global2.a, false), vec3<u32>(52914u, 57054u, global3[_wgslsmith_index_u32(1u, 30u)]), Struct_1(global2.a, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.d.x, global1.x), 0u))))), vec3<u32>(1u, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(global2.b, u_input.d.ywz)), 0u), Struct_1(global2.a, u_input.d.zxx, global2.c));
    var_1 = ~abs(abs(~vec4<i32>(2147483647i, u_input.a, -2147483647i, 2147483647i)));
    var_1 = ~vec4<i32>(2147483647i, _wgslsmith_clamp_i32(-38749i, _wgslsmith_div_i32(u_input.c.x, u_input.b), _wgslsmith_clamp_i32(26313i, -65807i, 0i)), reverseBits(-var_1.x), 11480i) << (countOneBits(vec4<u32>(firstTrailingBit(global2.c >> (global1.x % 32u)), 4294967295u | select(global2.c, var_2.c, false), 21394u, 1u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 0u), abs(vec2<u32>(~var_2.c, global2.c)), vec2<u32>(abs(u_input.d.x >> (global1.x % 32u)), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1836f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * 1000f), -1254f, _wgslsmith_f_op_f32(ceil(var_0.x))))));
}

