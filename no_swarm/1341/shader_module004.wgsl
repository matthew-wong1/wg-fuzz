struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<f32>(821f, 709f), -2400f, -1000f, true, vec2<u32>(0u, 178209u)), Struct_1(vec2<f32>(960f, 263f), 1324f, 464f, false, vec2<u32>(1u, 30500u)), Struct_1(vec2<f32>(729f, 880f), -103f, -295f, true, vec2<u32>(21024u, 4294967295u)), Struct_1(vec2<f32>(488f, 657f), -1518f, 1923f, true, vec2<u32>(0u, 28823u)), Struct_1(vec2<f32>(-524f, -998f), 520f, -300f, false, vec2<u32>(1u, 14678u)), Struct_1(vec2<f32>(-147f, -315f), -938f, -753f, false, vec2<u32>(4294967295u, 32614u)), Struct_1(vec2<f32>(-724f, -806f), -507f, -230f, true, vec2<u32>(100433u, 2431u)), Struct_1(vec2<f32>(316f, 1000f), 2388f, 614f, false, vec2<u32>(15470u, 1u)), Struct_1(vec2<f32>(-461f, -313f), 1222f, 1104f, false, vec2<u32>(1u, 25293u)), Struct_1(vec2<f32>(-370f, -1204f), -797f, 374f, true, vec2<u32>(740u, 12169u)), Struct_1(vec2<f32>(-840f, 131f), -355f, 1153f, false, vec2<u32>(77353u, 46310u)), Struct_1(vec2<f32>(-824f, 528f), -945f, 1547f, false, vec2<u32>(101057u, 17424u)), Struct_1(vec2<f32>(-1000f, 1059f), 467f, -763f, false, vec2<u32>(28208u, 46940u)), Struct_1(vec2<f32>(425f, -219f), -196f, 590f, true, vec2<u32>(90902u, 45093u)), Struct_1(vec2<f32>(150f, 1512f), -609f, 995f, true, vec2<u32>(30311u, 8561u)), Struct_1(vec2<f32>(853f, -1775f), 1464f, -779f, false, vec2<u32>(17955u, 12496u)), Struct_1(vec2<f32>(985f, 467f), 910f, -699f, true, vec2<u32>(96605u, 0u)), Struct_1(vec2<f32>(881f, -421f), -996f, 1806f, true, vec2<u32>(29170u, 92871u)), Struct_1(vec2<f32>(-108f, -1968f), -1121f, 455f, false, vec2<u32>(53663u, 0u)), Struct_1(vec2<f32>(1199f, -709f), -1914f, 1263f, true, vec2<u32>(129261u, 4932u)), Struct_1(vec2<f32>(826f, 949f), 654f, -1000f, false, vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(627f, -183f), -2502f, -1559f, false, vec2<u32>(4294967295u, 2725u)), Struct_1(vec2<f32>(-221f, -1000f), -2134f, -541f, false, vec2<u32>(1u, 0u)), Struct_1(vec2<f32>(-152f, -439f), 454f, -220f, true, vec2<u32>(77157u, 4294967295u)), Struct_1(vec2<f32>(823f, -1038f), 1124f, 1303f, true, vec2<u32>(1u, 9551u)), Struct_1(vec2<f32>(-559f, -606f), 1180f, 1000f, true, vec2<u32>(4294967295u, 71628u)), Struct_1(vec2<f32>(1099f, -1685f), -122f, -1183f, true, vec2<u32>(21570u, 3643u)), Struct_1(vec2<f32>(-413f, -1322f), -643f, -1321f, false, vec2<u32>(37524u, 0u)));

var<private> global1: vec2<bool>;

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.b, arg_0.b));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -608f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f))));
    var_0 = 706f;
    let var_2 = Struct_2(select(select(!select(vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(global1.x, true, arg_0.d), vec3<bool>(arg_0.d, false, global1.x), arg_0.d), select(vec3<bool>(global1.x, arg_0.d, arg_0.d), vec3<bool>(true, global1.x, arg_0.d), vec3<bool>(true, arg_0.d, true)), select(false, true, arg_0.d)), global1.x), select(!select(vec3<bool>(global1.x, global1.x, arg_0.d), vec3<bool>(true, false, arg_0.d), vec3<bool>(false, arg_0.d, false)), !vec3<bool>(true, false, arg_0.d), false), vec3<bool>(true, arg_0.d, false)), select(vec4<bool>(global1.x, select(true, arg_0.e.x != 1u, global1.x), all(!vec2<bool>(global1.x, arg_0.d)), true), vec4<bool>(!global1.x, false, !(!global1.x), any(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(false, false), vec2<bool>(arg_0.d, arg_0.d)))), any(!(!vec2<bool>(false, global1.x)))));
    var var_3 = countOneBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, reverseBits(global2.x), 2147483647i), ~u_input.c & u_input.c));
    return vec3<f32>(936f, var_1, 677f);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -199f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1715f, 878f, -1408f), vec3<f32>(arg_1, 1507f, arg_1), false))))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<f32>(arg_1, arg_1), arg_1, arg_1, false, arg_2.yz))) - vec3<f32>(-148f, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_1 * 203f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1440f, -1000f))))));
    let var_1 = !select(select(select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), global1.x), vec4<bool>(false, global1.x, true, false), global1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, global1.x, true, global1.x), !vec4<bool>(global1.x, false, true, global1.x)), any(!vec2<bool>(false, global1.x))), vec4<bool>(true, global1.x, !global1.x || true, global1.x == true), global1.x);
    global1 = select(select(var_1.ww, select(vec2<bool>(true, !global1.x), !var_1.yz, 1f == _wgslsmith_f_op_f32(sign(arg_1))), !(!(!var_1.xy))), var_1.xx, firstTrailingBit(arg_0.x) >= _wgslsmith_mod_i32(-23921i, 2147483647i));
    global2 = u_input.d;
    let var_2 = vec4<bool>(u_input.a.x == u_input.b, _wgslsmith_mult_i32(min(global2.x, u_input.b) | (global2.x | u_input.c.x), -28212i) <= select(global2.x, -2147483647i, var_0.x >= _wgslsmith_f_op_f32(-var_0.x)), all(!(!var_1.wwy)) && (arg_2.x > ~61903u), _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-2147483647i, global2.x, u_input.c.x)), _wgslsmith_clamp_i32(92561i, arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -2147483647i), u_input.d))) <= _wgslsmith_mod_i32(global2.x, reverseBits(~u_input.d.x)));
    return var_1.xzy;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_2(vec2<i32>(~9603i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.c, 1110f)) - _wgslsmith_f_op_f32(-arg_2.c)) - 1000f), ~(~(vec3<u32>(43338u, 4294967295u, 82172u) >> (vec3<u32>(58227u, arg_0.e.x, arg_0.e.x) % vec3<u32>(32u)))), 0u), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - arg_0.a.x)) == _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(round(arg_2.b))), false, !any(vec3<bool>(true, true, false)), false));
    var var_1 = Struct_2(var_0.b.xzz, !select(!(!var_0.b), select(select(var_0.b, vec4<bool>(arg_0.d, arg_2.d, arg_0.d, arg_2.d), true), !var_0.b, var_0.b), var_0.b));
    global0 = array<Struct_1, 28>();
    let var_2 = Struct_2(!select(vec3<bool>(true, arg_0.e.x <= 1u, true), var_0.b.zzx, true && arg_1.d), !select(var_0.b, var_1.b, var_1.b));
    global0 = array<Struct_1, 28>();
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<i32>) -> f32 {
    global2 = u_input.c;
    global1 = vec2<bool>(true, select(true, true, !global1.x));
    global1 = select(!vec2<bool>(global1.x, true), select(!select(vec2<bool>(arg_0.d, false), vec2<bool>(global1.x, false), vec2<bool>(true, global1.x)), !select(!vec2<bool>(true, global1.x), func_2(global2.zz, -241f, vec3<u32>(arg_1.x, 29152u, 50125u), arg_0.e.x).zy, true), arg_0.d), !(!any(vec3<bool>(true, true, false))));
    var var_0 = func_1(arg_0, arg_0, arg_0);
    let var_1 = min(arg_0.e.x, 4294967295u);
    return 707f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -737f);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-914f + _wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(vec2<f32>(-1509f, 1251f), -711f, -661f, true, vec2<u32>(1u, 1458u)), global0[_wgslsmith_index_u32(29281u, 28u)], Struct_1(vec2<f32>(1185f, 1152f), -306f, 1977f, false, vec2<u32>(13179u, 29083u))), ~vec4<u32>(36718u, 0u, 4294967295u, 1u), max(u_input.d.yz, vec2<i32>(u_input.a.x, 0i)))))))));
    var_0 = 1552f;
    var var_1 = ~u_input.d.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2845f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1355f, 1844f, false))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-487f - 906f) * 362f))), _wgslsmith_f_op_f32(533f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) - 135f) * 137f)));
    var var_3 = var_2.x;
    let var_4 = func_1(global0[_wgslsmith_index_u32(firstLeadingBit(7649u), 28u)], Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1530f, 2593f) - vec2<f32>(var_2.x, var_2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))) - _wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(4294967295u, 17864u), select(39633u, 46271u, global1.x)) == ~0u, vec2<u32>(~1u, min(4294967295u, 0u)) & _wgslsmith_add_vec2_u32(select(vec2<u32>(27154u, 14082u), vec2<u32>(23679u, 4294967295u), vec2<bool>(true, global1.x)), select(vec2<u32>(23694u, 4294967295u), vec2<u32>(52926u, 4294967295u), global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(-654f, -198f)) + vec2<f32>(var_2.x, 1831f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-779f, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(763f, _wgslsmith_f_op_f32(var_2.x - var_2.x)) + var_2.x), var_2.x, global1.x, ~select(~vec2<u32>(47722u, 61509u), abs(vec2<u32>(3484u, 0u)), vec2<bool>(global1.x, global1.x))));
    let var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)) * -1000f), var_2.x, -853f));
}

