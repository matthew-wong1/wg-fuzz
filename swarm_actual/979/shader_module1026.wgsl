struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(1u, 55980u, 42363u, 18126u, 53786u, 0u);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<u32> {
    global1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.e.xw, firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(1u, 6u)] ^ u_input.a, 0u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1010f, _wgslsmith_f_op_f32(step(2151f, -3069f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1372f, 113f)), _wgslsmith_div_f32(425f, 978f), all(vec4<bool>(false, false, false, true))))), -1410f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3066f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global1 = Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(reverseBits(u_input.e.zy)), vec2<u32>(u_input.b.x | global1.a.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 112749u), 6u)]), ~firstLeadingBit(global1.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(55372u, global1.a.x), u_input.e.zz) >> ((vec2<u32>(global0[_wgslsmith_index_u32(20497u, 6u)], 1u) ^ global1.a) % vec2<u32>(32u)), ~(~global1.a)));
    var var_1 = global1.a.x;
    let var_2 = -2147483647i;
    return ~u_input.e;
}

fn func_2() -> Struct_1 {
    let var_0 = !(!(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)))));
    global1 = Struct_1(_wgslsmith_sub_vec2_u32(global1.a, vec2<u32>(13094u, 7251u)));
    let var_1 = func_3();
    global1 = Struct_1(select(u_input.b, ~((vec2<u32>(global1.a.x, u_input.a) ^ var_1.zw) >> (vec2<u32>(0u, 13248u) % vec2<u32>(32u))), var_0.x & false));
    global0 = array<u32, 6>();
    return Struct_1(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_1.x, var_1.x)), (vec2<u32>(27636u, 1u) ^ var_1.wz) | ~vec2<u32>(74338u, 100851u)) << (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)] ^ global0[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~4294967295u, 6u)], reverseBits(global0[_wgslsmith_index_u32(var_1.x, 6u)]))) % vec2<u32>(32u)));
}

fn func_1() -> vec4<f32> {
    global1 = func_2();
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.yz, ~u_input.e.yz), global1.a.x), max(global1.a, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), vec2<u32>(69077u, 90846u)), abs(firstTrailingBit(u_input.b)))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    global1 = Struct_1(global1.a);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(2112f, _wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -171f))), _wgslsmith_f_op_f32(f32(-1f) * -1717f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.yx);
    let var_1 = Struct_1(select(~arg_1.a, u_input.b, true));
    var var_2 = func_2();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(529f)) * arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-239f - arg_3.x), arg_0))));
    var var_3 = Struct_2(func_2(), vec4<bool>(arg_0 <= 1126f, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))) | (min(u_input.c.x, u_input.c.x) != 2147483647i), false, any(vec4<bool>(true, true, true, true))), !all(vec3<bool>(true, true, true)), -2147483647i);
    return Struct_2(Struct_1(~(_wgslsmith_clamp_vec2_u32(u_input.e.yx, vec2<u32>(5659u, 1u), vec2<u32>(15066u, 4294967295u)) | ~vec2<u32>(arg_2.a.x, 1u))), vec4<bool>(true, true, false, !(var_3.b.x | true)), any(!(!var_3.b.ww)), _wgslsmith_clamp_i32(var_3.d, ~_wgslsmith_sub_i32(u_input.c.x >> (var_1.a.x % 32u), var_3.d << (arg_2.a.x % 32u)), u_input.d));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.e.x;
    var var_1 = ~u_input.c.x;
    let var_2 = _wgslsmith_div_i32(arg_0.d, ~(_wgslsmith_sub_i32(u_input.c.x, arg_0.d) & arg_0.d) | 2147483647i);
    let var_3 = _wgslsmith_div_vec4_i32(~vec4<i32>(firstTrailingBit(arg_0.d ^ -21738i), reverseBits(var_2), 27194i, arg_0.d), vec4<i32>(17555i, 37865i, arg_0.d, ~_wgslsmith_dot_vec2_i32(-u_input.c.zx, _wgslsmith_mult_vec2_i32(u_input.c.zx, vec2<i32>(u_input.c.x, arg_0.d)))));
    var var_4 = arg_0;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.a.x >= ~(~(~countOneBits(50669u)));
    var var_1 = global0[_wgslsmith_index_u32(50563u, 6u)];
    var var_2 = func_5(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1934f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1250f)))), Struct_1(~(~vec2<u32>(4294967295u, global1.a.x))), Struct_1(global1.a | ~vec2<u32>(global1.a.x, 39583u)), _wgslsmith_f_op_vec4_f32(func_1())), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1248f + 979f)))), func_4(980f, func_2(), Struct_1(_wgslsmith_mult_vec2_u32(u_input.b, global1.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1047f, -1000f, 365f, -298f)))).a, Struct_1(~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-647f, 643f, -822f, 439f), vec4<f32>(1563f, -158f, 680f, -586f))))).a);
    let var_3 = u_input.e;
    let var_4 = select(vec3<bool>(true || any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))) && any(vec3<bool>(true, true, true))), !vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), true, all(func_4(160f, Struct_1(var_3.yx), Struct_1(global1.a), vec4<f32>(1723f, -1260f, 687f, 1185f)).b.yz)), func_4(_wgslsmith_f_op_f32(851f * -110f), func_4(517f, Struct_1(vec2<u32>(15394u, var_3.x)), Struct_1(~vec2<u32>(var_2.a.x, 14509u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1311f, -313f, -559f, -710f), vec4<f32>(-232f, 712f, -779f, 556f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, -221f, 2420f, -298f)))).a, Struct_1(~(vec2<u32>(9949u, global0[_wgslsmith_index_u32(28641u, 6u)]) & vec2<u32>(global0[_wgslsmith_index_u32(101314u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56805u, 6u)], 6u)], 6u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(round(807f)), -875f, _wgslsmith_f_op_f32(abs(-937f))) - vec4<f32>(_wgslsmith_f_op_f32(-2130f * -322f), _wgslsmith_div_f32(-285f, -2225f), _wgslsmith_f_op_f32(select(843f, -122f, false)), _wgslsmith_f_op_f32(f32(-1f) * -744f)))).b.wxy);
    var_1 = min(4294967295u, 17741u);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1252f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f))), all(select(vec3<bool>(true, true, true), var_4, any(vec3<bool>(true, var_4.x, var_4.x)))))));
    var var_6 = _wgslsmith_mod_vec3_u32(min(~func_3().wyy, vec3<u32>(u_input.e.x, func_4(-1565f, Struct_1(u_input.e.xx), Struct_1(vec2<u32>(var_2.a.x, var_2.a.x)), vec4<f32>(-401f, 251f, 257f, 863f)).a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, global0[_wgslsmith_index_u32(var_3.x, 6u)], 59171u), vec3<u32>(var_3.x, 137952u, var_2.a.x)))) | var_3.zzx, _wgslsmith_mult_vec3_u32(~(var_3.zyy & ~vec3<u32>(global1.a.x, 10049u, global0[_wgslsmith_index_u32(4294967295u, 6u)])), vec3<u32>(1u, _wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(28399u, 6u)]), var_2.a.x), 1u)));
    var_2 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-783f + 350f) + _wgslsmith_f_op_f32(407f - -840f))), func_2(), func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(376f, -1548f, -179f, 758f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, -904f, 336f, 343f))))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_6.x, 19784u));
}

