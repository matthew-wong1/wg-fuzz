struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, true, true, false, false, false, true, false, false, true, true, false, true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    let var_0 = !(-abs(arg_0.a.b.d | 55912i) != abs(-_wgslsmith_mult_i32(0i, arg_1.a.d)));
    global0 = array<bool, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2237f, 240f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1328f + 359f), 1f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, -321f)))), _wgslsmith_f_op_f32(min(-320f, _wgslsmith_f_op_f32(f32(-1f) * -1015f))), !all(vec3<bool>(false, arg_0.a.b.b, arg_0.a.c.x)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f - -373f));
    var var_3 = arg_1.c;
    return 1u;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = !(0u <= func_3(Struct_4(arg_2), Struct_2(Struct_1(arg_1.zx, arg_3, 3762u, arg_2.b.a.x), arg_2.a.x, arg_2.a.yz))) && true;
    var var_1 = !any(select(!vec4<bool>(arg_2.c.x, false, arg_3, var_0), select(select(vec4<bool>(arg_2.c.x, arg_2.b.b, true, global0[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 17u)], true), arg_3), vec4<bool>(arg_3, true, global0[_wgslsmith_index_u32(arg_2.a.x, 17u)], false), true), _wgslsmith_add_u32(u_input.a.x, 0u) > ~96740u));
    var var_2 = Struct_4(Struct_3(~(vec3<u32>(1u, u_input.a.x, 38385u) & vec3<u32>(arg_2.a.x, u_input.a.x, 1u)), arg_2.b, select(select(arg_2.c, !vec2<bool>(arg_3, false), select(arg_2.c, arg_2.c, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.a.x, 17u)]))), !select(arg_2.c, vec2<bool>(false, true), true), arg_2.c)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-2043f, _wgslsmith_f_op_f32(f32(-1f) * -456f))), -1016f)), 1203f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)), 613f, var_2.a.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-820f)) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1137f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(917f + -645f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-932f, -812f)))));
    var var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(~u_input.a, vec4<u32>(var_2.a.b.c, 4294967295u, ~u_input.a.x, 4294967295u), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], false, var_0, true), vec4<bool>(true, true, true, false), vec4<bool>(var_0, global0[_wgslsmith_index_u32(var_2.a.b.c, 17u)], false, true)), !vec4<bool>(global0[_wgslsmith_index_u32(var_2.a.b.c, 17u)], global0[_wgslsmith_index_u32(53293u, 17u)], var_0, arg_3), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], var_0, true, global0[_wgslsmith_index_u32(39829u, 17u)]), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, false, var_2.a.c.x, arg_2.c.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a.b.c, 1u, 24755u), u_input.a), u_input.a.x, var_2.a.b.c, var_2.a.b.c) << (_wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 8301u, u_input.a.x, 29929u))) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~var_2.a.a.x, u_input.a.x, 37195u ^ arg_2.b.c, ~u_input.a.x), vec4<u32>(~4294967295u, ~1u, ~54968u, firstLeadingBit(36102u))));
    return true;
}

fn func_4(arg_0: vec4<bool>) -> vec4<bool> {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    return vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(20453u, 0u, 0u, u_input.a.x))), _wgslsmith_dot_vec3_u32(select(u_input.a.xyw, vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 1u), vec3<u32>(0u, u_input.a.x, _wgslsmith_dot_vec3_u32(select(u_input.a.ywx, vec3<u32>(u_input.a.x, u_input.a.x, 12620u), true), ~u_input.a.zxx))), 17u)], true, arg_0.x | false, global0[_wgslsmith_index_u32(~0u, 17u)]);
}

fn func_1(arg_0: vec2<u32>) -> vec4<f32> {
    let var_0 = 27080u;
    let var_1 = Struct_1(firstLeadingBit(-(~vec2<i32>(0i, -2147483647i))), false, ~1u, -29031i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(417f)));
    var var_3 = func_4(!vec4<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 17u)], true)), false, _wgslsmith_f_op_f32(ceil(var_2)) >= _wgslsmith_f_op_f32(-var_2), func_2(0i, vec4<i32>(var_1.d, var_1.a.x, -51771i, var_1.a.x), Struct_3(vec3<u32>(1u, u_input.a.x, 4294967295u), var_1, vec2<bool>(global0[_wgslsmith_index_u32(24129u, 17u)], global0[_wgslsmith_index_u32(arg_0.x, 17u)])), var_1.c > 1u)));
    var var_4 = !select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)], true, false), vec4<bool>(true, false, false, false), var_3.x | false), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(var_1.c, 17u)], var_3.x, true)), any(vec3<bool>(func_2(var_1.d, vec4<i32>(var_1.d, -38495i, var_1.d, -2147483647i), Struct_3(u_input.a.zwx, Struct_1(var_1.a, true, 1u, -29380i), vec2<bool>(var_1.b, true)), var_3.x), func_4(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true, false)).x, true)));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-939f, var_2, 875f, -128f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 761f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, -107f, 298f, 2504f), vec4<f32>(1804f, var_2, 2702f, -1624f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, var_2, 985f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2, var_2, 511f)), select(vec4<bool>(true, false, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, var_1.b, global0[_wgslsmith_index_u32(var_0, 17u)], true)))) + vec4<f32>(_wgslsmith_f_op_f32(588f + var_2), -184f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(330f, var_2, -1799f, var_2)), vec4<f32>(var_2, 203f, var_2, var_2))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -380f, 682f)))), select(vec4<bool>(var_1.b, any(vec2<bool>(var_4.x, var_4.x)), true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 17u)]))), vec4<bool>(var_4.x, !any(vec2<bool>(false, true)), true, true), select(func_4(vec4<bool>(var_4.x, true, false, var_4.x)), func_4(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], var_3.x, false, var_4.x)), select(vec4<bool>(false, false, var_1.b, var_1.b), vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.c, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], true), any(vec4<bool>(var_1.b, var_3.x, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~(abs(46901u) ^ (30330u & u_input.a.x)), u_input.a.x, firstLeadingBit(u_input.a.x), ~(~u_input.a.x));
    global0 = array<bool, 17>();
    let var_1 = any(!(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true)))));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<u32>(0u, 0u))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, 290f, -593f, 1179f)), vec4<f32>(1059f, -297f, 1094f, 390f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(round(-211f)), -1373f, 118f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, var_2.x, -1130f) * var_2.zwz), var_2.wyy, vec3<bool>(true, true, all(vec3<bool>(false, false, false)))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(4294967295u), var_0.x), countOneBits(countOneBits(vec2<u32>(var_0.x, 4294967295u))), var_0.zx), _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(Struct_4(Struct_3(vec3<u32>(31293u, u_input.a.x, var_0.x), Struct_1(vec2<i32>(-2499i, -2147483647i), var_1, 63947u, 25209i), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<i32>(-35858i, 0i), var_1, 1u, 1i), 4294967295u, vec2<u32>(16758u, 65940u))), u_input.a.x, reverseBits(8116u), 4294967295u), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), var_0) << (~u_input.a % vec4<u32>(32u)))), ~(_wgslsmith_add_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(36223u, u_input.a.x))) & 1u));
}

