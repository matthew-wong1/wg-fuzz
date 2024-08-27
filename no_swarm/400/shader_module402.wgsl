struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), -1i);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(-1138f, 602f, 915f), vec2<f32>(-252f, -1237f)), Struct_1(vec3<f32>(1334f, 1000f, -1302f), vec2<f32>(804f, 405f)), Struct_1(vec3<f32>(-630f, 529f, -1175f), vec2<f32>(-1193f, -2590f)), Struct_1(vec3<f32>(-965f, 2627f, -1433f), vec2<f32>(790f, 1208f)), Struct_1(vec3<f32>(-682f, -201f, -1000f), vec2<f32>(569f, -205f)), Struct_1(vec3<f32>(1313f, 824f, -611f), vec2<f32>(778f, -209f)), Struct_1(vec3<f32>(-1000f, 376f, 975f), vec2<f32>(808f, -488f)), Struct_1(vec3<f32>(411f, -109f, -1000f), vec2<f32>(721f, 150f)), Struct_1(vec3<f32>(366f, -847f, -1000f), vec2<f32>(2153f, 1538f)), Struct_1(vec3<f32>(932f, 388f, -993f), vec2<f32>(-1046f, 1274f)), Struct_1(vec3<f32>(699f, -586f, 1084f), vec2<f32>(-350f, 1131f)), Struct_1(vec3<f32>(192f, 1041f, 777f), vec2<f32>(488f, -170f)), Struct_1(vec3<f32>(-290f, 1607f, -1027f), vec2<f32>(593f, -457f)), Struct_1(vec3<f32>(-990f, -1000f, -1515f), vec2<f32>(-1962f, -119f)), Struct_1(vec3<f32>(1889f, 1416f, -1706f), vec2<f32>(943f, -1424f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: i32) -> vec2<f32> {
    let var_0 = global0.x;
    let var_1 = vec3<bool>(true, all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false), select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), false);
    var var_2 = vec4<i32>(i32(-1i) * -2147483647i, ~reverseBits(1i), arg_2, u_input.a.x);
    var var_3 = i32(-1i) * -8040i;
    var_3 = ~(-_wgslsmith_clamp_i32(global0.x, _wgslsmith_div_i32(max(arg_2, arg_2), ~(-2147483647i)), _wgslsmith_add_i32(1i, -2147483647i)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-295f * -1729f), _wgslsmith_div_f32(839f, -2845f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2185f) + _wgslsmith_f_op_f32(f32(-1f) * -1547f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1164f, 755f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_1.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), arg_0.e.x), _wgslsmith_f_op_vec2_f32(arg_1.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.b.x)))))), Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~vec2<u32>(41518u, 0u), firstTrailingBit(vec4<u32>(1u, 0u, 15623u, 69271u)), 1i)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1114f, arg_1.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_0.e.x), !any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.x + -1665f))), _wgslsmith_f_op_f32(-1132f * -686f))))));
    var var_2 = -arg_2.wxy;
    global1 = array<Struct_1, 15>();
    var var_3 = arg_1.b.x;
    return !vec2<bool>(arg_0.d.x, all(arg_0.d.zz) || true);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = _wgslsmith_div_vec3_i32(u_input.a, u_input.a);
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-399f - 776f), _wgslsmith_f_op_f32(f32(-1f) * -358f)))), _wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -444f))))));
    let var_1 = !func_2(Struct_2(-vec4<i32>(u_input.a.x, u_input.a.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, -103f, 857f, 398f))) + vec4<f32>(var_0.x, var_0.x, 1103f, 2210f)), Struct_1(vec3<f32>(278f, -1000f, 1970f), vec2<f32>(640f, var_0.x)), !vec3<bool>(true, true, arg_1), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(arg_0.b.x)))), global1[_wgslsmith_index_u32(45423u, 15u)], _wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, 2147483647i, global0.x, global0.x), vec4<i32>(u_input.a.x, -1i, -4783i, -1i) ^ vec4<i32>(u_input.a.x, 28594i, 7734i, 0i)), vec4<i32>(global0.x, u_input.a.x, -29098i & global0.x, _wgslsmith_div_i32(global0.x, global0.x))), -25874i);
    let var_2 = _wgslsmith_f_op_f32(537f + 278f);
    let var_3 = Struct_2(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-37338i, global0.x, 2147483647i, global0.x)), -vec4<i32>(11912i, 45599i, 2147483647i, u_input.a.x)), ~(vec4<i32>(u_input.a.x, global0.x, global0.x, u_input.a.x) << (vec4<u32>(16747u, 57719u, 34084u, 10851u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(1109f - var_0.x))), -1099f, _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -904f)))))), arg_0, vec3<bool>(var_1.x, ((var_1.x & var_1.x) && false) && true, arg_1), _wgslsmith_f_op_vec2_f32(-var_0.xx));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(2670u, 15u)], any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))));
    global0 = -(vec3<i32>(firstLeadingBit(0i), _wgslsmith_mult_i32(u_input.a.x, ~(-1i)), select(global0.x, -1i, false) << (abs(0u) % 32u)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    let var_1 = var_0.b.x;
    global0 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1565f, var_1, var_1) * var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 390f, -407f))))) + var_0.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.b.x) * vec2<f32>(-908f, var_1)) * _wgslsmith_div_vec2_f32(var_0.a.xz, var_0.a.zz)) - _wgslsmith_f_op_vec2_f32(select(var_0.a.xy, _wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(58459u, 90566u), vec4<u32>(9638u, 4751u, 0u, 27456u), u_input.a.x)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, 864f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, 1i, u_input.a.x)), abs(vec3<i32>(global0.x, 8336i, -2405i))), -19360i, global0.x, _wgslsmith_mult_i32(global0.x, global0.x >> (1u % 32u))), 27470u);
}

