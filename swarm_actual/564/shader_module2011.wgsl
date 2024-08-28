struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1840f;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(false, vec2<f32>(571f, -582f));

var<private> global4: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(326f, -1736f, -1752f), vec3<f32>(-2153f, -2031f, 1577f), vec3<f32>(-112f, -1448f, 102f), vec3<f32>(1000f, 1633f, -1557f), vec3<f32>(592f, 240f, 347f), vec3<f32>(852f, 1112f, -1216f), vec3<f32>(-1083f, 291f, 347f), vec3<f32>(615f, 671f, 2382f), vec3<f32>(657f, 699f, 1018f), vec3<f32>(538f, 1600f, -297f), vec3<f32>(516f, 409f, -594f), vec3<f32>(1631f, 176f, -602f), vec3<f32>(517f, 1000f, 3140f), vec3<f32>(413f, -990f, 1499f), vec3<f32>(193f, -1329f, 1553f), vec3<f32>(-1957f, 865f, 988f), vec3<f32>(-117f, 2229f, -1330f), vec3<f32>(-199f, 145f, 759f), vec3<f32>(1301f, 840f, 471f), vec3<f32>(-1234f, 1000f, 652f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<f32>(arg_1.b.x, global3.b.x);
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, arg_1.b.x)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = any(select(!(!(!vec2<bool>(false, arg_0.a))), vec2<bool>(true, global3.a), select(vec2<bool>(!global3.a, !global3.a), !vec2<bool>(arg_0.a, arg_0.a), func_1(func_1(arg_0, arg_0, arg_0, global3.a), arg_0, Struct_1(false, vec2<f32>(arg_0.b.x, arg_0.b.x)), false).a)));
    var var_1 = select(min(vec2<u32>(91943u, abs(~1u)), vec2<u32>(1u, 1u)), vec2<u32>(abs(abs(abs(54037u))), 41792u), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global3.a, global3.a))));
    var var_2 = Struct_1(!((17894i <= u_input.a.x) & arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-259f, 2930f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.b - vec2<f32>(global3.b.x, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(max(arg_0.b, vec2<f32>(-1013f, -1000f))))))));
    let var_3 = global3.b.x;
    global3 = Struct_1(false, arg_0.b);
    return arg_0.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b.x)) + 1586f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2267f)), 1939f), -220f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-429f, global3.b.x, 1012f, -358f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.b.x, global3.b.x, 161f, arg_1.b.x))))))));
    let var_1 = global3.a;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(arg_1))))));
    global3 = func_1(func_1(arg_1, arg_1, Struct_1(true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global3.b * arg_1.b), vec2<f32>(847f, var_0.x)))), false), func_1(arg_1, func_1(func_1(func_1(arg_1, Struct_1(arg_1.a, vec2<f32>(global3.b.x, 1000f)), arg_1, false), Struct_1(global3.a, arg_1.b), arg_1, !arg_1.a), func_1(Struct_1(true, global3.b), func_1(arg_1, Struct_1(false, var_0.yy), Struct_1(false, vec2<f32>(231f, 444f)), global3.a), arg_1, -489f >= arg_1.b.x), func_1(func_1(Struct_1(false, global3.b), Struct_1(true, vec2<f32>(global3.b.x, global3.b.x)), arg_1, arg_1.a), Struct_1(arg_1.a, arg_1.b), arg_1, !global3.a), false), arg_1, !(u_input.b != 0i)), arg_1, !(arg_0.x > firstLeadingBit(~arg_0.x)));
    let var_2 = var_0.x;
    return global3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(arg_2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1756f)), -340f)), arg_0.b, vec2<bool>(false, (arg_0.a || arg_1.a) | true)))));
    let var_1 = func_1(arg_2, arg_1, func_1(Struct_1(!select(arg_1.a, arg_2.a, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.b.x)) * arg_0.b)), Struct_1(global3.a, vec2<f32>(224f, -515f)), func_1(arg_2, Struct_1(!arg_1.a, vec2<f32>(-360f, 1747f)), arg_0, -17478i != u_input.a.x), arg_0.a), true);
    let var_2 = func_1(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(219f, arg_0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(769f, 1280f) * vec2<f32>(-1403f, -1720f)), global3.a))))), Struct_1(arg_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(arg_2.b.x, 541f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, arg_0.b.x)))), arg_0, arg_0.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_div_f32(324f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1088f)))))) * arg_1.b.x);
    global2 = global3.a;
    return 483f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true != global3.a, global3.b);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(func_4(func_1(var_0, Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(1318f, global3.b.x), var_1.b)), Struct_1(false, var_0.b), true), func_1(func_1(var_0, Struct_1(true, _wgslsmith_f_op_vec2_f32(var_1.b * var_0.b)), Struct_1(var_0.a, global3.b), select(true, true, !var_1.a)), Struct_1(!var_0.a | true, var_1.b), Struct_1(!(!var_1.a), _wgslsmith_f_op_vec2_f32(-var_1.b)), true), var_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1151f, 774f, 153f), global4[_wgslsmith_index_u32(1u, 20u)]) * _wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(1u, 20u)] + global4[_wgslsmith_index_u32(62181u, 20u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global4[_wgslsmith_index_u32(0u, 20u)], vec3<f32>(global3.b.x, 1695f, var_0.b.x), vec3<bool>(false, true, false))))), vec3<bool>(var_1.a, var_1.a, func_2(u_input.a, Struct_1(true, global3.b)))))))));
    var var_3 = !vec4<bool>(func_1(Struct_1(true, var_1.b), var_0, var_1, true).a, var_0.a, false, func_1(func_1(var_0, var_1, func_1(var_1, Struct_1(false, global3.b), Struct_1(var_1.a, var_0.b), global3.a), true), func_1(func_1(var_0, var_0, Struct_1(global3.a, global3.b), var_1.a), func_1(Struct_1(true, global3.b), var_1, Struct_1(global3.a, var_1.b), var_1.a), Struct_1(true, vec2<f32>(var_1.b.x, -362f)), var_1.a), var_0, any(!vec2<bool>(var_1.a, false))).a);
    var var_4 = reverseBits(firstLeadingBit(u_input.a.x));
    var_3 = select(!select(!vec4<bool>(false, var_3.x, false, true), select(vec4<bool>(global3.a, var_3.x, true, global3.a), vec4<bool>(var_0.a, true, false, true), all(vec4<bool>(var_0.a, var_0.a, var_3.x, true))), vec4<bool>(func_2(u_input.a, var_1), true, var_3.x, false)), vec4<bool>(4294967295u > (~10880u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(108129u, 1u, 21400u, 30701u), vec4<u32>(0u, 0u, 1u, 1u)) % 32u)), select(func_2(countOneBits(u_input.a), var_0), all(vec4<bool>(var_0.a, false, var_3.x, global3.a)), global3.a), true, !(~4294967295u == _wgslsmith_clamp_u32(453u, 21342u, 68450u))), vec4<bool>(var_3.x, 4294967295u <= _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(99170u, 26622u, 0u, 1u), vec4<u32>(1u, 28940u, 32450u, 1u)), 0u), true, !func_2(reverseBits(u_input.a), var_0)));
    let var_5 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(5694u, 1565u), ~vec2<u32>(22017u, 9791u)), ~countOneBits(28216u), _wgslsmith_clamp_u32(1u, ~59346u, 1u)) >> (_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(~1u, ~46659u, _wgslsmith_dot_vec4_u32(vec4<u32>(20591u, 1u, 2677u, 40633u), vec4<u32>(4294967295u, 4294967295u, 75318u, 64745u)))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(38191u, 0u), ~vec2<u32>(1u, 66845u)), _wgslsmith_div_u32(0u, 1u))) % vec3<u32>(32u));
    var var_6 = ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_5, ~vec3<u32>(var_5.x, 4050u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(61610u, var_5.x, var_5.x), var_5)));
    var var_7 = 80792u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, func_1(Struct_1(true, var_0.b), func_1(var_1, Struct_1(global3.a, vec2<f32>(1538f, 1000f)), var_0, global3.a), var_0, all(vec3<bool>(var_3.x, true, true))).b.x, any(select(vec4<bool>(var_1.a, var_1.a, var_0.a, global3.a), vec4<bool>(var_0.a, false, var_1.a, var_3.x), vec4<bool>(var_3.x, true, false, global3.a))))), _wgslsmith_f_op_f32(-1369f * -844f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.x * 714f), _wgslsmith_f_op_f32(-var_0.b.x)))))), abs(vec4<u32>(~(~var_6.x), var_5.x, 5299u, (var_6.x | var_5.x) & 89406u)));
}

