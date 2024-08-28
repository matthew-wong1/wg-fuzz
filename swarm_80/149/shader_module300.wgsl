struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-641f, 847f, -731f), vec3<f32>(-776f, 1000f, 719f), vec3<f32>(1011f, -900f, 734f), vec3<f32>(-907f, -957f, -1542f), vec3<f32>(496f, 262f, -1000f), vec3<f32>(1000f, 1000f, -1739f), vec3<f32>(1000f, 593f, 431f), vec3<f32>(659f, 139f, -332f), vec3<f32>(-710f, 794f, -1069f), vec3<f32>(1163f, 299f, -896f), vec3<f32>(1545f, 119f, -874f), vec3<f32>(537f, -478f, -1000f), vec3<f32>(-808f, 1000f, 1000f), vec3<f32>(546f, 766f, -505f), vec3<f32>(-1952f, 131f, -1000f), vec3<f32>(-901f, -858f, -647f));

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global0 = abs(-1i);
    var var_0 = vec3<bool>(all(global2.a.xx), all(!(!vec2<bool>(global2.a.x, true))) && any(global2.a.zy), global2.a.x || false);
    var var_1 = vec3<u32>(_wgslsmith_add_u32(max(4294967295u, firstLeadingBit(31409u)), 0u), 43835u >> (~u_input.b.x % 32u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.b.x), ~u_input.b.x, u_input.b.x), reverseBits(countOneBits(u_input.b)))));
    var_1 = ~u_input.b;
    var_0 = select(vec3<bool>(global2.a.x, false, all(!select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, global2.a.x, global2.a.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(global2.a.x, false, true), !vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, global2.a.x, global2.a.x), select(vec3<bool>(global2.a.x, var_0.x, var_0.x), global2.a, vec3<bool>(false, global2.a.x, false))), !(!global2.a)), select(select(global2.a, select(vec3<bool>(global2.a.x, true, true), select(global2.a, global2.a, global2.a), true), false), global2.a, all(select(!global2.a.zy, global2.a.yy, global2.a.x || var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-561f * _wgslsmith_f_op_f32(-2133f - 809f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-587f)) * _wgslsmith_f_op_f32(min(1000f, -133f))))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global0 = _wgslsmith_mod_i32(u_input.d.x, u_input.e.x);
    let var_0 = vec2<f32>(1233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1046f))));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u), u_input.b), u_input.b), ~u_input.c), u_input.c), u_input.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(ceil(1300f))), _wgslsmith_f_op_f32(func_3()), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), -612f));
    var var_3 = Struct_2(vec3<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -2147483647i, 1i), u_input.e) != _wgslsmith_sub_i32(~u_input.d.x, 2147483647i), all(!vec3<bool>(true, true, global2.a.x)), !all(!global2.a)));
    return firstLeadingBit((vec2<u32>(var_1.x, var_1.x) >> (u_input.b.yy % vec2<u32>(32u))) | u_input.b.yx);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    global2 = Struct_2(vec3<bool>(global2.a.x, (firstTrailingBit(u_input.d.x) & u_input.e.x) <= u_input.a, true));
    let var_0 = abs(u_input.d) << ((select(arg_1, _wgslsmith_clamp_vec2_u32(select(arg_1, arg_1, global2.a.x), vec2<u32>(arg_0.a, arg_0.a), select(arg_1, u_input.b.yz, true)), global2.a.x) ^ vec2<u32>(_wgslsmith_add_u32(~1u, 1u), select(_wgslsmith_add_u32(61289u, 14766u), 50649u, global2.a.x))) % vec2<u32>(32u));
    var var_1 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.c, ~u_input.c), abs(18375u)));
    var var_2 = select(vec3<bool>(true, true, true), select(vec3<bool>(global2.a.x & global2.a.x, any(select(global2.a, vec3<bool>(true, global2.a.x, global2.a.x), global2.a.x)), true), !global2.a, all(global2.a)), select(!global2.a, !global2.a, !(!(global2.a.x | global2.a.x))));
    var var_3 = vec2<u32>(arg_1.x, ~(~countOneBits(arg_1.x)));
    return Struct_2(vec3<bool>(!any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(41893i, -34203i ^ u_input.a, _wgslsmith_sub_i32(0i, -34779i)) <= 12546i, var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    global2 = func_4(Struct_1(countOneBits(_wgslsmith_mult_u32(abs(16003u), firstLeadingBit(13021u)))), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1393f)))))));
    var var_0 = global2.a.x;
    global2 = Struct_2(global2.a);
    var var_1 = 6855u;
    let var_2 = vec3<bool>(any(!vec3<bool>(true, select(global2.a.x, global2.a.x, global2.a.x), !global2.a.x)), false, false);
    return u_input.b.x > 37963u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(vec3<bool>(all(select(global2.a.xz, global2.a.zz, global2.a.x)), u_input.a < _wgslsmith_div_i32(-2147483647i, u_input.e.x << (u_input.c % 32u)), func_1(Struct_1(max(u_input.c, u_input.c)), abs(u_input.a))));
    global2 = Struct_2(vec3<bool>(false && !all(global2.a.xy), func_4(Struct_1(~u_input.b.x), u_input.b.yy >> (abs(u_input.b.zy) % vec2<u32>(32u))).a.x, true));
    global0 = _wgslsmith_sub_i32(u_input.d.x, 2147483647i);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1456f, 997f, -635f, -1332f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-123f, 2554f, 1000f, -1540f) + vec4<f32>(-397f, -1307f, 191f, -624f)), true)) + vec4<f32>(_wgslsmith_f_op_f32(step(646f, 586f)), -681f, _wgslsmith_f_op_f32(1828f + 753f), _wgslsmith_f_op_f32(ceil(-393f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-194f + -464f), 132f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -350f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, 170f, 275f, 290f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1727f, 1360f, 1963f, -1140f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(3422f, -1739f, -183f, -257f))), vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(_wgslsmith_f_op_f32(-1967f - -937f), -1000f, _wgslsmith_f_op_f32(func_3()), -129f))));
    var var_1 = true;
    global0 = _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-u_input.e.x, -u_input.e.x, 42974i, u_input.a)), select(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zx, u_input.e.yz), -29240i, ~(-5367i), u_input.d.x), vec4<i32>(-2338i, -3283i, _wgslsmith_div_i32(u_input.a, u_input.e.x), u_input.d.x >> (u_input.c % 32u)), global2.a.x) & -min(~vec4<i32>(-15406i, -29124i, 40834i, u_input.a), abs(vec4<i32>(u_input.d.x, u_input.d.x, 23211i, 1i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, -195f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(371f, -2337f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))));
    let var_3 = Struct_2(!global2.a);
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 16246i, u_input.d.x, u_input.e.x), vec4<i32>(-2147483647i, 2147483647i, u_input.e.x, u_input.d.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1158f, -470f, -672f, 444f), vec4<f32>(var_2.x, -2043f, 1208f, -987f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, 1000f, var_2.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 812f, 703f, var_2.x))))))), ~(_wgslsmith_mult_i32(u_input.d.x ^ u_input.e.x, u_input.e.x | -56831i) ^ u_input.a), var_2.x);
}

