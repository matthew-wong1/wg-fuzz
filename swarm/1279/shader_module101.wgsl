struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, true, false));

var<private> global2: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, 15604i), Struct_1(vec2<i32>(-6731i, 2147483647i), vec2<f32>(528f, -1441f), vec4<i32>(-1i, -38728i, 0i, 0i)), Struct_3(35609u, Struct_2(vec4<bool>(true, false, true, false)), true)), Struct_4(vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, -69812i), Struct_1(vec2<i32>(0i, -18051i), vec2<f32>(1010f, -1544f), vec4<i32>(i32(-2147483648), -45110i, -4703i, 2147483647i)), Struct_3(15748u, Struct_2(vec4<bool>(false, true, true, false)), false)), Struct_4(vec4<bool>(true, true, true, true), vec2<i32>(-14072i, 22498i), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(1361f, 1000f), vec4<i32>(i32(-2147483648), 1i, 9566i, -40529i)), Struct_3(3461u, Struct_2(vec4<bool>(false, false, false, false)), false)), Struct_4(vec4<bool>(false, false, false, true), vec2<i32>(47130i, -24152i), Struct_1(vec2<i32>(-1i, 1i), vec2<f32>(-1026f, -950f), vec4<i32>(i32(-2147483648), 6298i, 2147483647i, 1i)), Struct_3(24991u, Struct_2(vec4<bool>(false, false, true, false)), false)), Struct_4(vec4<bool>(true, false, false, true), vec2<i32>(69279i, 1286i), Struct_1(vec2<i32>(6881i, 0i), vec2<f32>(1145f, 470f), vec4<i32>(-14578i, -1i, 30364i, 0i)), Struct_3(5776u, Struct_2(vec4<bool>(false, false, true, true)), false)), Struct_4(vec4<bool>(false, false, false, false), vec2<i32>(-23875i, 1i), Struct_1(vec2<i32>(-56187i, -10937i), vec2<f32>(-727f, 1535f), vec4<i32>(5084i, 78621i, 1i, 15496i)), Struct_3(41520u, Struct_2(vec4<bool>(false, false, false, true)), false)), Struct_4(vec4<bool>(false, true, true, false), vec2<i32>(-2859i, 45417i), Struct_1(vec2<i32>(-1i, -15287i), vec2<f32>(226f, 1103f), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -22364i)), Struct_3(4294967295u, Struct_2(vec4<bool>(false, false, false, false)), true)), Struct_4(vec4<bool>(false, true, false, false), vec2<i32>(-1i, 2147483647i), Struct_1(vec2<i32>(-60991i, 37830i), vec2<f32>(-1341f, 945f), vec4<i32>(-20355i, 0i, 2147483647i, -1i)), Struct_3(1291u, Struct_2(vec4<bool>(true, false, false, false)), true)), Struct_4(vec4<bool>(false, false, false, true), vec2<i32>(-16395i, 12946i), Struct_1(vec2<i32>(-1i, 26996i), vec2<f32>(939f, -847f), vec4<i32>(-4813i, 18560i, 7428i, 58315i)), Struct_3(0u, Struct_2(vec4<bool>(false, true, false, false)), false)), Struct_4(vec4<bool>(true, false, true, false), vec2<i32>(16571i, 0i), Struct_1(vec2<i32>(0i, 3222i), vec2<f32>(470f, 448f), vec4<i32>(-14863i, -1i, -2502i, 1i)), Struct_3(4294967295u, Struct_2(vec4<bool>(false, true, true, true)), true)), Struct_4(vec4<bool>(true, false, true, false), vec2<i32>(-1i, 0i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(-176f, -980f), vec4<i32>(-18094i, 2147483647i, 16532i, -12871i)), Struct_3(58890u, Struct_2(vec4<bool>(true, true, false, true)), true)), Struct_4(vec4<bool>(false, false, false, true), vec2<i32>(-61416i, 2147483647i), Struct_1(vec2<i32>(-6343i, -15757i), vec2<f32>(-534f, -1000f), vec4<i32>(1i, i32(-2147483648), 57760i, -43610i)), Struct_3(40045u, Struct_2(vec4<bool>(false, true, true, false)), false)), Struct_4(vec4<bool>(false, true, false, true), vec2<i32>(0i, -10053i), Struct_1(vec2<i32>(4109i, -3687i), vec2<f32>(-1000f, -1154f), vec4<i32>(4644i, 0i, i32(-2147483648), 24780i)), Struct_3(17487u, Struct_2(vec4<bool>(true, false, false, false)), false)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return abs(arg_0);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_div_i32(u_input.b, -_wgslsmith_clamp_i32(~max(-2147483647i, 26413i), -20555i, firstTrailingBit(~arg_0.x)));
    var var_2 = arg_3.c.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_div_f32(-391f, _wgslsmith_f_op_f32(trunc(arg_3.b.x)))), 528f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1059f)) * _wgslsmith_f_op_f32(329f + var_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.b.x), var_0.b.x, false)), abs(-2147483647i) >= firstTrailingBit(var_1))), -658f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(0u, arg_1), global0.yz), vec2<u32>(1u, 0u)), func_2(1u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(21917u, u_input.a)), reverseBits(vec2<u32>(arg_1, u_input.a)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 25685u), vec2<u32>(arg_1, 0u)) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -1071f) - -1389f) - arg_3);
    var var_2 = Struct_2(vec4<bool>(arg_2, true, true, any(!select(vec3<bool>(false, true, global1.a.x), vec3<bool>(true, arg_2, arg_2), global1.a.zxx))));
    var var_3 = Struct_3(0u, Struct_2(vec4<bool>(var_2.a.x, true, global0.x, true)), !global1.a.x & global0.x);
    let var_4 = Struct_2(vec4<bool>(!(arg_2 || true), 4294967295u < var_3.a, (arg_2 | true) & (true || global1.a.x), !(_wgslsmith_mult_u32(arg_1, arg_1) == func_3(vec4<i32>(1i, u_input.c, 25814i, -2147483647i), Struct_1(u_input.d.zx, vec2<f32>(-857f, arg_0), vec4<i32>(2147483647i, -2147483647i, u_input.b, -63076i)), vec4<bool>(arg_2, arg_2, true, arg_2), Struct_1(u_input.d.yy, vec2<f32>(1009f, arg_3), vec4<i32>(22251i, u_input.d.x, u_input.d.x, u_input.d.x))))));
    return Struct_2(!vec4<bool>(arg_2, true, any(!vec3<bool>(var_3.b.a.x, var_4.a.x, true)), true));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = -u_input.d.xx;
    global0 = !global1.a;
    global2 = array<Struct_4, 13>();
    global2 = array<Struct_4, 13>();
    var var_1 = arg_0;
    return Struct_3(~u_input.a, arg_0, true);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f)), _wgslsmith_f_op_f32(-arg_2))));
    global1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-858f * _wgslsmith_f_op_f32(1131f - -682f))))), arg_1.a, arg_1.c & true, _wgslsmith_f_op_f32(step(1032f, arg_2)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, var_0.x, 648f) - vec3<f32>(266f, -160f, var_0.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, 1457f, arg_2)))) * vec3<f32>(1368f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(arg_2)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(969f, -653f, 120f), vec3<f32>(1279f, 920f, arg_2))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, arg_2, arg_2), vec3<f32>(2509f, -973f, -1479f), true)), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 409f, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(155f * var_0.x), -864f))));
    var_0 = var_1.yy;
    var var_2 = func_4(Struct_2(!(!arg_3.a)), -reverseBits(-arg_0.x));
    return vec2<u32>(var_2.a, ~73943u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d | firstLeadingBit(-abs(vec3<i32>(18734i, -6505i, u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(797f, 421f, 1119f, -332f), vec4<f32>(1464f, 914f, -1963f, 889f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1063f, 1011f, -1857f))), true)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 763f, -904f) - vec4<f32>(-876f, -140f, -1687f, -480f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2172f)))), vec2<f32>(_wgslsmith_f_op_f32(176f - 530f), -359f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-645f)))))), ~func_5(-firstTrailingBit(u_input.d), func_4(func_1(293f, 1u, false, -368f), 1i), 2229f, Struct_2(vec4<bool>(true, global0.x, global0.x, true))));
}

