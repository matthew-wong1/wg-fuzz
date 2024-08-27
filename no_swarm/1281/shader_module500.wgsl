struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<u32>(61247u, 0u, 21042u, 4294967295u), true));

var<private> global3: Struct_2;

var<private> global4: u32 = 0u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    var var_0 = 1u;
    let var_1 = false;
    let var_2 = Struct_1(~u_input.a, 69859u >> (select(~global3.a.x, 53427u, global1.b) % 32u), false);
    let var_3 = Struct_1(-var_2.a, 13250u, var_2.c != ((global3.b && true) == all(!vec3<bool>(global3.b, false, false))));
    global3 = Struct_2(global1.a, all(vec2<bool>(arg_1.c & false, !arg_1.c)) & !var_3.c);
    return false;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_2(global3.a, !func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, 875f, arg_0.x, 1287f) + vec4<f32>(arg_0.x, 166f, 174f, 225f)) + vec4<f32>(arg_0.x, arg_0.x, 1454f, -975f)), Struct_1(vec4<i32>(58955i, -2147483647i, 3638i, u_input.a.x), arg_1.a.x, global1.b)));
    let var_1 = any(select(!vec4<bool>(all(vec4<bool>(arg_1.b, true, true, false)), true, true && var_0.b, var_0.b), !arg_2, vec4<bool>(true, any(select(vec2<bool>(global1.b, global3.b), vec2<bool>(global1.b, global3.b), arg_2.wz)), true && all(vec4<bool>(arg_1.b, true, global3.b, global3.b)), 6958i >= -u_input.a.x)));
    let var_2 = Struct_1(u_input.a, 0u, !all(!(!arg_2.xyz)));
    var var_3 = Struct_2(global3.a, var_1);
    let var_4 = vec4<bool>(!(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 581f, -816f, -1444f) + arg_0), var_2) & false), !any(select(vec4<bool>(false, var_1, global1.b, arg_2.x), !vec4<bool>(false, var_2.c, arg_2.x, true), arg_2)), true, all(vec4<bool>(_wgslsmith_f_op_f32(438f + 181f) != _wgslsmith_f_op_f32(step(arg_0.x, -706f)), true | arg_2.x, (var_2.a.x < u_input.a.x) || arg_1.b, false)));
    return any(!vec2<bool>(var_0.b, var_1));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(~0i, u_input.a.x, -39682i, u_input.a.x)), -u_input.a), ~(arg_0.x ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 74226u, 8460u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 53258u), vec2<u32>(global3.a.x, 1u)))), (-u_input.a.x >> (0u % 32u)) == -57446i);
    global3 = Struct_2(global3.a << (select(min(global1.a, global3.a) ^ vec4<u32>(arg_0.x, 48982u, 29386u, global3.a.x), ~(global3.a & vec4<u32>(63406u, 85567u, 1u, 0u)), true) % vec4<u32>(32u)), func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1463f, 769f, -525f, -237f), vec4<f32>(-1086f, 1308f, -1000f, -293f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(762f, -367f, 1793f, 2345f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-605f, -422f, -865f, -492f), vec4<f32>(-167f, 1467f, -533f, 405f))), !vec4<bool>(true, false, var_0.c, true))))), Struct_2(vec4<u32>(~59082u, 0u, 0u, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2074f, 537f, -719f, -662f), vec4<f32>(330f, -853f, -2325f, 125f), true)), Struct_1(var_0.a, var_0.b, global3.b))), !(!vec4<bool>(var_0.c, global3.b, global3.b, global1.b))));
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-623f)), _wgslsmith_f_op_f32(ceil(-2123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1644f, -542f))), _wgslsmith_f_op_f32(ceil(-523f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(828f, _wgslsmith_f_op_f32(f32(-1f) * -808f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1033f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(floor(-1000f)), 1827f, _wgslsmith_f_op_f32(f32(-1f) * -1099f)))), true)));
    global2 = array<Struct_2, 1>();
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~arg_0, ~vec3<u32>(0u ^ (arg_0.x ^ 1u), _wgslsmith_dot_vec3_u32(global1.a.wzz, global3.a.ywz) >> (67701u % 32u), reverseBits(~57323u))), 1u)];
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_2(~min(global3.a.yxy ^ _wgslsmith_div_vec3_u32(global1.a.wwz, global1.a.wzy), ~vec3<u32>(0u, global1.a.x, global1.a.x)));
    global3 = Struct_2(global1.a, true);
    global4 = abs(abs(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), global1.a.yz), global3.a.x))));
    var var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0, -1603f, any(vec3<bool>(global1.b, var_0.b, global3.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, -798f))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 2560f))), Struct_1(-u_input.a, ~0u, false)))));
    let var_2 = !select(vec2<bool>(true, all(vec3<bool>(global1.b, var_0.b, true)) && !global1.b), vec2<bool>(var_0.b != (arg_0 > arg_0), u_input.a.x >= (u_input.a.x & -1i)), vec2<bool>(true, all(!vec3<bool>(false, true, global3.b))));
    return _wgslsmith_clamp_u32(global1.a.x, _wgslsmith_div_u32(global1.a.x, global1.a.x), func_2(vec3<u32>(global3.a.x, _wgslsmith_mod_u32(global3.a.x, global1.a.x), 1u)).a.x) >> (countOneBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(64016u, global3.a.x), ~select(1u, 44658u, true))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    var var_0 = -2147483647i;
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_mult_u32(func_1(-612f), firstLeadingBit(~5897u)), ~global1.a.x, global3.a.x, ~(global3.a.x >> (30989u % 32u))), !(1253u != _wgslsmith_dot_vec2_u32(max(global1.a.wy, vec2<u32>(global1.a.x, global3.a.x)), ~global1.a.yz)));
    global4 = 1u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f - -2293f) + _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)))));
    let var_3 = ~17255u;
    let var_4 = select(vec4<bool>(true, !((var_1.b || global3.b) & !global1.b), global3.b, true | (_wgslsmith_f_op_f32(-var_2) < _wgslsmith_f_op_f32(floor(413f)))), select(select(vec4<bool>(true, true, var_1.b, global1.b), !select(vec4<bool>(global3.b, global3.b, false, var_1.b), vec4<bool>(true, global3.b, var_1.b, true), vec4<bool>(true, false, global3.b, false)), true), vec4<bool>(true, any(!vec4<bool>(true, var_1.b, global3.b, true)), func_2(vec3<u32>(4294967295u, 17773u, var_3)).b, true), select(select(select(vec4<bool>(true, global1.b, true, var_1.b), vec4<bool>(true, var_1.b, false, global3.b), global1.b), !vec4<bool>(global1.b, true, true, var_1.b), !global3.b), vec4<bool>(true, any(vec3<bool>(true, true, global3.b)), true, var_1.a.x < 4294967295u), !(!vec4<bool>(true, global3.b, false, true)))), var_1.b);
    let var_5 = Struct_1(((-u_input.a & abs(u_input.a)) << (~(~var_1.a) % vec4<u32>(32u))) & max(_wgslsmith_sub_vec4_i32(~u_input.a, u_input.a), abs(vec4<i32>(-1i, 1i, u_input.a.x, -19424i)) & -u_input.a), 31312u, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(69145u, _wgslsmith_mult_u32(reverseBits(var_1.a.x), _wgslsmith_add_u32(global1.a.x, 0u))), ~var_5.b, _wgslsmith_div_u32(~104u & func_2(var_1.a.xyy).a.x, 42235u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(564f, 254f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-761f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(149f, var_2))))), vec2<bool>(false, any(select(vec2<bool>(true, var_5.c), var_4.zy, true))))));
}

