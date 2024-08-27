struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(1965u, 84592u, 54032u, 11363u, 42413u, 1u, 52106u, 4294967295u, 1u, 0u, 4281u, 5818u, 22178u, 20926u, 4294967295u, 41229u, 76708u, 7426u, 0u, 4294967295u, 4294967295u, 51057u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<f32> {
    global0 = array<u32, 22>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(877f, arg_1.b.x))))));
    return arg_2.b;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit((vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, -18682i, u_input.a.x))) >> (abs(vec3<u32>(0u, 89536u, arg_1.x)) % vec3<u32>(32u)));
    var var_1 = Struct_1(!vec4<bool>(true, (1u & global0[_wgslsmith_index_u32(2908u, 22u)]) < max(0u, 67334u), true, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-980f, arg_2.x, 843f, -117f), vec4<f32>(arg_0, arg_0, arg_0, 722f))))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-2150f + arg_0), _wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(-118f + 167f)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(1629f, 310f)), arg_2.x, _wgslsmith_f_op_f32(-1000f * arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1865f, 1436f, arg_2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 660f, arg_2.x, arg_2.x)))))));
    let var_2 = true;
    global0 = array<u32, 22>();
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))), -161f), Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(759f, -1265f, -1022f, arg_2.x), vec4<f32>(arg_0, arg_2.x, arg_2.x, -1360f))) * vec4<f32>(-583f, arg_0, -998f, 1469f))), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, 508f, arg_0, -112f), _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_1.b.x, var_1.b.x, arg_2.x, -1268f))))), select(!var_1.a.xzz, vec3<bool>(any(var_1.a.xxy), !var_2, true), vec3<bool>(true, false, true)))));
    return Struct_1(!(!(!select(var_1.a, vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_1.a.x, var_2, var_2, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_2.yx, Struct_1(var_1.a, var_1.b), Struct_1(var_1.a, vec4<f32>(var_1.b.x, arg_0, arg_2.x, arg_2.x)), var_1.a.zxy)).x), _wgslsmith_f_op_f32(trunc(1011f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(365f * arg_2.x)))) * vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(arg_0, -1000f))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(var_1.b.x, -1973f), Struct_1(var_1.a, var_1.b), Struct_1(vec4<bool>(var_1.a.x, true, false, var_1.a.x), var_1.b), var_1.a.zyz)).x), arg_0)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 22>();
    var var_0 = func_2(1591f, ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 22u)], 4294967295u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37472u, 22u)], 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_dot_vec3_u32(arg_2 & vec3<u32>(17014u, global0[_wgslsmith_index_u32(arg_2.x, 22u)], 6102u), max(vec3<u32>(arg_2.x, 1u, arg_2.x), arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b.xxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_0.b.x, arg_0.b.x))))));
    var_0 = Struct_1(!select(!arg_1.a, select(!arg_0.a, vec4<bool>(false, true, arg_0.a.x, arg_1.a.x), arg_1.a), true), arg_0.b);
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71528u, 22u)], 22u)], 0u, arg_2.x, 18461u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 22u)], 11990u, 1u, arg_2.x), vec4<u32>(arg_2.x, 1u, 1u, 1u))));
    var_0 = arg_0;
    return Struct_1(!arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 - 384f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-109f))), 1524f, var_0.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(393f * arg_0.b.x)), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.x))), ~(vec2<u32>(53117u, global0[_wgslsmith_index_u32(76849u, 22u)]) & vec2<u32>(6362u, global0[_wgslsmith_index_u32(11052u, 22u)])), arg_0.b.zwx).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * -515f) + _wgslsmith_f_op_f32(arg_0.b.x + 297f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, -1276f, arg_0.b.x))))));
    var var_1 = !arg_0.a.yw;
    var var_2 = arg_0;
    var var_3 = ~vec3<u32>(~global0[_wgslsmith_index_u32(25615u, 22u)], arg_1.x, ~39702u);
    var var_4 = -374f;
    return func_4(arg_0, func_4(Struct_1(select(!vec4<bool>(arg_0.a.x, false, var_1.x, false), !arg_0.a, true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(var_0.x, arg_0.b.x, var_0.x, 1739f))))), Struct_1(arg_0.a, var_2.b), arg_1.zzw, arg_0.b.x), firstTrailingBit(abs(vec3<u32>(15625u, 44067u, global0[_wgslsmith_index_u32(arg_1.x, 22u)]))) | ~countOneBits(arg_1.zwx ^ arg_1.wwx), _wgslsmith_f_op_f32(-var_2.b.x));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.b.x, arg_1.b.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2.b.x, 656f) + arg_1.b.yxy)))))));
    var var_1 = false;
    let var_2 = arg_1;
    return func_5(Struct_1(arg_2.a, arg_2.b), vec4<u32>(global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_add_u32(arg_0, 11690u)), 22u)], 38091u, global0[_wgslsmith_index_u32(9956u, 22u)], arg_0 ^ ~(~42558u)));
}

fn func_7(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(23455u != abs(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 22u)]), false, arg_3.a.x, false), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, 685f)) - _wgslsmith_f_op_f32(arg_1 - 708f)), -1000f, arg_1, -1657f), arg_3.b));
    let var_1 = 1u;
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_2 = arg_3;
    return var_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !select(select(!select(arg_0.a.ww, vec2<bool>(true, true), arg_0.a.x), !select(arg_0.a.wy, arg_0.a.wy, arg_0.a.x), arg_0.a.ww), select(!(!arg_0.a.xw), !arg_0.a.wx, true), !arg_0.a.ww);
    let var_1 = -17708i;
    let var_2 = func_7(u_input.a, arg_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.b.x)))), func_6((_wgslsmith_dot_vec4_u32(vec4<u32>(18689u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33803u, 22u)], 22u)], 28207u), vec4<u32>(4329u, 4294967295u, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(10873u, 22u)])) | _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 6772u)) ^ 38920u, func_5(func_4(func_2(arg_0.b.x, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25555u, 22u)], 22u)], 22u)], 22u)], 16951u), vec3<f32>(arg_0.b.x, arg_0.b.x, 1664f)), Struct_1(vec4<bool>(var_0.x, var_0.x, arg_0.a.x, true), arg_0.b), ~vec3<u32>(global0[_wgslsmith_index_u32(30381u, 22u)], 75950u, global0[_wgslsmith_index_u32(28425u, 22u)]), _wgslsmith_f_op_f32(-550f - 277f)), ~select(vec4<u32>(0u, 17243u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61414u, 22u)], 22u)], 22u)], 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 77055u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)]), arg_0.a)), Struct_1(func_2(-1157f, countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26373u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.xyy))).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -341f, -113f, 688f) - arg_0.b), _wgslsmith_f_op_vec4_f32(-arg_0.b)))));
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    return var_2;
}

fn func_8(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    global0 = array<u32, 22>();
    var var_0 = ~select(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(~countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)]), 22u)], ~30672u, false), 22u)], 4294967295u, (~4294967295u == ~global0[_wgslsmith_index_u32(1u, 22u)]) & arg_1.x);
    global0 = array<u32, 22>();
    var var_1 = all(arg_0.a.wy);
    var_1 = !arg_2.a.x;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_0 = firstTrailingBit(~abs(vec3<u32>(0u, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17547u, 22u)], 22u)]), 13544u ^ global0[_wgslsmith_index_u32(14884u, 22u)])));
    let var_1 = Struct_1(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -217f) < _wgslsmith_f_op_f32(sign(-1491f)), func_8(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-619f, -2932f, -1307f, 264f)), vec3<bool>(true, true, true), func_1(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-775f, -2215f, -422f, 925f))))), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec3<bool>(false, false, true)), func_5(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(741f, -630f, 625f, -221f)), vec4<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 54555u, 17584u, 0u)).a.x, false, false)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-219f)), 419f, _wgslsmith_f_op_f32(ceil(1350f)), -873f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1781f, -1000f, -1636f, 460f))) * _wgslsmith_div_vec4_f32(vec4<f32>(252f, -546f, 486f, 458f), vec4<f32>(-655f, 356f, -1087f, 263f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, 1942f, -1613f, 1741f) - vec4<f32>(1289f, -876f, 1000f, 333f))))));
    global0 = array<u32, 22>();
    let var_2 = Struct_1(!var_1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(302f + 897f) - var_1.b.x) * var_1.b.x), _wgslsmith_f_op_f32(sign(752f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)) + -854f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x - 2644f)))));
    let var_3 = var_0.xx ^ firstLeadingBit(vec2<u32>(2640u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)]) | vec2<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_clamp_u32(var_0.x, 18275u, var_0.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(func_1(func_6(0u, func_7(abs(vec2<i32>(2147483647i, 8174i)), _wgslsmith_f_op_f32(abs(-1543f)), _wgslsmith_f_op_f32(-var_1.b.x), Struct_1(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<f32>(1187f, -355f, var_1.b.x, var_2.b.x))), Struct_1(func_7(vec2<i32>(0i, -1i), -134f, -1242f, var_1).a, _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_2.b.x, 785f, 773f, var_1.b.x))))).b));
    var var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

