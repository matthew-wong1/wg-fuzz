struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-765f, 583f, 1775f, -653f, 188f, -1038f, 1227f, 681f, 728f, -512f, 896f, -737f, -760f, 1290f, -1000f, -319f, 1405f, 1628f, 1412f, -248f, -1314f, 895f, -721f, -2132f, -286f, -283f, 791f, 1939f, -497f, -578f, 1562f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(true, false))), !vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(any(vec4<bool>(false, true, false, true)), any(vec2<bool>(true, false))), vec2<bool>(true, true)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(37581u), 31u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 31u)])), 749f, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(7043u, 2620u)), 31u)])), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(1u, 1u, 1u))) | 1u, global0[_wgslsmith_index_u32(min(~(0u >> (0u % 32u)), ~(~4294967295u)), 31u)] > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))), select(~(~1u), ~(~(~1u)), all(!(!vec3<bool>(var_0.x, false, true)))), !(!(!vec4<bool>(false, var_0.x, false, var_0.x))));
    return any(select(var_1.e, !var_1.e, var_1.e));
}

fn func_2(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = !(!select(arg_0.e.wyz, !vec3<bool>(arg_0.c, arg_0.c, arg_0.c), arg_0.e.yxz));
    let var_1 = abs(u_input.b);
    var_0 = select(!select(vec3<bool>(any(arg_0.e), true, false), arg_0.e.yzy, select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, arg_0.c, true), !vec3<bool>(arg_0.e.x, var_0.x, true))), select(vec3<bool>(false, any(select(var_0.yz, var_0.xx, false)), func_3(arg_0.a.x) != false), vec3<bool>(!(var_1 <= 2147483647i), false, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(20791u, 31u)] < arg_0.a.x, select(var_0.x, var_0.x, arg_0.c)), vec3<bool>(false, false, !arg_0.c), true)), (func_3(_wgslsmith_f_op_f32(step(1000f, arg_0.a.x))) != all(vec2<bool>(true, true))) | (select(abs(1u), arg_0.d, false) > ~68426u));
    let var_2 = Struct_2(abs(min(max(51339u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.d, arg_0.d, 0u), vec4<u32>(4294967295u, 8042u, 0u, 4294967295u))), _wgslsmith_mult_u32(48545u, ~arg_0.d))), Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(19556u, arg_0.b), vec2<u32>(113965u, 4294967295u)) | abs(vec2<u32>(28291u, arg_0.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1643u, arg_0.b), vec2<u32>(2084u, 4294967295u)))), Struct_1(vec2<u32>(select(~arg_0.b, _wgslsmith_add_u32(arg_0.b, 4294967295u), var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(59454u, 13179u), vec2<u32>(arg_0.d, 43104u)) >> (arg_0.d % 32u))), arg_0.c, select(select(select(vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true), arg_0.e.x), select(arg_0.e.xwx, vec3<bool>(false, false, true), arg_0.e.wzx)), !arg_0.e.zyw, arg_0.e.zyy), arg_0.e.www, !select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(arg_0.c, false, var_0.x), vec3<bool>(arg_0.c, false, var_0.x)), vec3<bool>(true, true, var_0.x), !arg_0.e.xxy)));
    let var_3 = _wgslsmith_f_op_f32(arg_0.a.x + 397f);
    return arg_0.a.xz;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    global0 = array<f32, 31>();
    var var_0 = Struct_2(_wgslsmith_mod_u32(~(~reverseBits(25713u)), 133268u), Struct_1(vec2<u32>(~4294967295u, ~firstLeadingBit(69036u))), Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5962u), vec2<u32>(7973u, 63589u))), 54850u)), false, !select(vec3<bool>(false, true, false), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, false), global0[_wgslsmith_index_u32(4294967295u, 31u)] <= global0[_wgslsmith_index_u32(75550u, 31u)]), vec3<bool>(any(vec3<bool>(false, true, arg_0)), arg_0 | arg_0, !arg_0)));
    var_0 = Struct_2(var_0.b.a.x, var_0.b, var_0.b, all(select(!select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(var_0.e.x, true, var_0.e.x, false), true), !vec4<bool>(arg_0, arg_0, true, arg_0), all(!vec4<bool>(true, var_0.d, false, var_0.e.x)))), vec3<bool>((var_0.e.x & func_3(1000f)) || all(!vec2<bool>(true, var_0.e.x)), arg_0, true || (true & !arg_0)));
    var_0 = Struct_2(1u, var_0.b, var_0.b, any(var_0.e), !(!(!select(var_0.e, vec3<bool>(arg_0, true, true), var_0.e))));
    var_0 = Struct_2(max(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.b.a.x, 30736u), countOneBits(4294967295u)), var_0.b.a), ~(~1u)), var_0.b, Struct_1(vec2<u32>(0u, 0u) << (vec2<u32>(var_0.c.a.x & var_0.b.a.x, 1u) % vec2<u32>(32u))), any(vec2<bool>(var_0.e.x, true)), vec3<bool>(_wgslsmith_f_op_f32(round(arg_1.x)) == _wgslsmith_f_op_f32(trunc(arg_1.x)), false, true));
    return Struct_3(Struct_2(firstLeadingBit(min(var_0.c.a.x, 20657u >> (var_0.b.a.x % 32u))), Struct_1(min(vec2<u32>(var_0.a, 45680u), var_0.c.a)), var_0.b, true, vec3<bool>(_wgslsmith_f_op_f32(sign(arg_1.x)) <= _wgslsmith_f_op_vec2_f32(func_2(Struct_4(vec3<f32>(arg_1.x, -630f, arg_1.x), 3049u, true, var_0.c.a.x, vec4<bool>(false, true, true, false)))).x, var_0.d, u_input.b >= _wgslsmith_dot_vec4_i32(vec4<i32>(34595i, u_input.b, 15102i, 2147483647i), vec4<i32>(u_input.b, -5871i, -29603i, 25591i)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_4(!any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1325f + 233f), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(52435u, 31u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_4(vec3<f32>(global0[_wgslsmith_index_u32(0u, 31u)], -1479f, 1827f), 65467u, false, 9584u, vec4<bool>(false, true, false, true))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], 1848f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(34580u, 31u)]))))));
    global0 = array<f32, 31>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(-508f)), -1642f, _wgslsmith_f_op_f32(1046f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(695u, 31u)]))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-481f, 463f, global0[_wgslsmith_index_u32(var_0.a.b.a.x, 31u)]), vec3<f32>(-1189f, 877f, global0[_wgslsmith_index_u32(var_0.a.b.a.x, 31u)])))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-165f, global0[_wgslsmith_index_u32(var_0.a.b.a.x, 31u)], global0[_wgslsmith_index_u32(var_0.a.b.a.x, 31u)])))))))), ~(~1u), true, 4294967295u, select(vec4<bool>(var_0.a.d, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), false, true), vec4<bool>(any(select(vec4<bool>(var_0.a.d, var_0.a.e.x, var_0.a.d, var_0.a.e.x), vec4<bool>(true, false, var_0.a.d, var_0.a.d), vec4<bool>(var_0.a.e.x, var_0.a.e.x, var_0.a.e.x, var_0.a.d))), true, 1u < var_0.a.b.a.x, !(true | var_0.a.d)), false));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(12652u, 31u)]), global0[_wgslsmith_index_u32(33698u, 31u)], _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1154f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-645f, global0[_wgslsmith_index_u32(var_0.a.a, 31u)], global0[_wgslsmith_index_u32(106017u, 31u)], 617f) * vec4<f32>(1303f, -550f, 618f, global0[_wgslsmith_index_u32(var_0.a.b.a.x, 31u)]))), select(select(var_1.e, var_1.e, vec4<bool>(false, var_1.c, false, var_0.a.e.x)), !var_1.e, var_1.a.x > 573f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.d, 31u)]), _wgslsmith_f_op_f32(-563f - var_1.a.x), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 31u)], -1417f)), _wgslsmith_div_f32(-178f, global0[_wgslsmith_index_u32(var_0.a.c.a.x, 31u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, 278f, -300f))))), !vec4<bool>(true, all(var_1.e.wx), var_0.a.d, any(var_1.e)))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x));
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.b, arg_3.x, arg_3.x, 12846i)) & vec4<i32>(arg_3.x, arg_0, -2147483647i, 2147483647i), vec4<i32>(arg_1, arg_0, 1i, arg_3.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    global0 = array<f32, 31>();
    let var_2 = func_4(select(min(~(-107i), -1i), -12881i, func_3(458f)) > 2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.yy)) + arg_2.xx)).a;
    global0 = array<f32, 31>();
    return Struct_4(arg_2.yxz, var_2.c.a.x, all(vec4<bool>(false, !var_2.d, true, (-1719f > var_0) & false)), 1u, vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.x, u_input.b, _wgslsmith_f_op_vec4_f32(func_1()), min(vec2<i32>(u_input.a.x, 52853i), u_input.a));
    let var_1 = func_4(var_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-912f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23193u, 31u)])) - var_0.a.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)])) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(var_0.d, 31u)], 511f), var_0.a.xy)))))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))))))));
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 278f, var_0.a.x) - _wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, var_1.a.e)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 982f, 235f)))))), var_1.a.b.a.x, any(select(!select(var_1.a.e, var_1.a.e, var_1.a.e), vec3<bool>(var_0.c, true | var_1.a.d, !var_1.a.e.x), var_0.e.x & var_0.c)), 1016u, select(vec4<bool>(func_4(var_0.d < var_1.a.a, _wgslsmith_f_op_vec2_f32(trunc(var_0.a.yz))).a.d, var_0.e.x, var_0.e.x, select(u_input.a.x == u_input.b, true, true)), !var_0.e, var_0.c));
    let var_3 = !var_1.a.e;
    let var_4 = 1u;
    let var_5 = Struct_3(Struct_2(13298u, var_1.a.c, func_4(true, var_0.a.xx).a.b, var_3.x, var_0.e.zzx));
    let var_6 = func_4(any(vec2<bool>(true, true)), func_5(-_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, u_input.a.x), abs(u_input.b)), -2390i, vec4<f32>(_wgslsmith_div_f32(-1275f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(66793u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1922f) - _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(-func_5(u_input.b, u_input.a.x, vec4<f32>(var_2, 350f, -1715f, global0[_wgslsmith_index_u32(0u, 31u)]), vec2<i32>(u_input.a.x, u_input.b)).a.x)), u_input.a).a.xy);
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(u_input.a.x, ~u_input.b, ~1i, u_input.a.x) | vec4<i32>(-6194i, -57638i, u_input.b, -1i), ~_wgslsmith_div_vec4_i32(~vec4<i32>(5489i, u_input.a.x, -2147483647i, 29527i), vec4<i32>(-13674i, -u_input.a.x, u_input.a.x, 1i)), 1242i, vec3<i32>(i32(-1i) * -2147483647i, ~_wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(u_input.a.x, 2147483647i), var_1.a.e.xy), vec2<i32>(u_input.a.x, u_input.a.x)), ~(-41349i)), ~select(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, u_input.a.x, 2430i), vec4<i32>(~u_input.a.x, u_input.b | -47561i, i32(-1i) * -2147483647i, ~u_input.b), !vec4<bool>(var_0.e.x, true, true, var_5.a.e.x)));
}

