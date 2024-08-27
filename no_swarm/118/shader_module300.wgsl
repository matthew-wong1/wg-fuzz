struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(4294967295u, 35524u, 1u, 4294967295u));

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-256f, -438f), vec2<f32>(157f, 1110f), vec2<f32>(353f, -492f), vec2<f32>(-2276f, 1328f), vec2<f32>(-986f, 474f), vec2<f32>(484f, -191f), vec2<f32>(1974f, 1000f), vec2<f32>(267f, 1098f), vec2<f32>(-1365f, -854f), vec2<f32>(556f, 861f));

var<private> global2: Struct_4 = Struct_4(vec4<u32>(4294967295u, 62758u, 16293u, 1u));

var<private> global3: array<bool, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1523f));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> vec2<u32> {
    let var_0 = any(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 7881u), 25u)], all(vec4<bool>(u_input.d.x < arg_2, global3[_wgslsmith_index_u32(global0.a.x, 25u)], any(vec2<bool>(true, true)), false)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, global0.a.x), 25u)] & global3[_wgslsmith_index_u32(5252u, 25u)]));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(1468f - arg_0.x)) * -430f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(754f))))), arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1835f))), arg_1, true)), _wgslsmith_f_op_f32(-arg_1));
    let var_2 = u_input.d.x;
    global0 = Struct_4(select(vec4<u32>(~(~1u), 4294967295u, 1u, 21493u << (~u_input.b % 32u)), ~global2.a, false));
    var var_3 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(abs(u_input.a.x), i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1)))), Struct_2(Struct_1(41349i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))), !select(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 25u)], true), select(vec3<bool>(global3[_wgslsmith_index_u32(52931u, 25u)], false, var_0), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 25u)], false), vec3<bool>(false, true, true)), false), u_input.d.x));
    return countOneBits(~(~(~countOneBits(global2.a.yy))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> Struct_4 {
    var var_0 = arg_0.x;
    var_0 = 24184u;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), arg_1));
    let var_2 = Struct_4(select(vec4<u32>(1u, arg_0.x, 4294967295u, _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(32634u, 15356u), 4294967295u)), abs(max(global2.a, global0.a)) >> (global0.a % vec4<u32>(32u)), select(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 25u)], false, true), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 25u)], false, true, global3[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(global2.a.x, 25u)], global3[_wgslsmith_index_u32(26411u, 25u)], false), global3[_wgslsmith_index_u32(0u, 25u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(global2.a.x, 25u)], false, global3[_wgslsmith_index_u32(27979u, 25u)])), !vec4<bool>(true, global3[_wgslsmith_index_u32(36804u, 25u)], false, global3[_wgslsmith_index_u32(13047u, 25u)]), select(!vec4<bool>(global3[_wgslsmith_index_u32(global2.a.x, 25u)], global3[_wgslsmith_index_u32(18164u, 25u)], true, true), vec4<bool>(global3[_wgslsmith_index_u32(global2.a.x, 25u)], true, true, global3[_wgslsmith_index_u32(14458u, 25u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0.a.x, 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)])))));
    let var_3 = vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(~71993u, var_2.a.x), func_2(vec3<f32>(arg_1, -1733f, 2400f), 1f, _wgslsmith_sub_i32(-2147483647i, -2147483647i)).x), _wgslsmith_div_u32(global2.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.x, 15186u), arg_0)));
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = select(select(arg_2.yz, !vec2<bool>(!arg_2.x, false), !(!arg_2.yz)), !(!vec2<bool>(true, global3[_wgslsmith_index_u32(global0.a.x, 25u)] & false)), vec2<bool>(!any(vec2<bool>(arg_2.x, global3[_wgslsmith_index_u32(29855u, 25u)])), false));
    let var_1 = any(select(arg_2, arg_2, select(select(!arg_2, arg_2, !arg_2), select(arg_2, vec4<bool>(var_0.x, var_0.x, true, var_0.x), false), !vec4<bool>(true, false, arg_2.x, false))));
    global3 = array<bool, 25>();
    global2 = Struct_4(~vec4<u32>(~_wgslsmith_add_u32(arg_0.a.x, 7910u), min(37602u, 0u) & _wgslsmith_mult_u32(global0.a.x, 1454u), _wgslsmith_dot_vec2_u32(vec2<u32>(20254u, global2.a.x), global2.a.wz), reverseBits(~global2.a.x)));
    let var_2 = !arg_2.x;
    return Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-470f, 1066f, -2013f, -539f) - vec4<f32>(271f, -1112f, 612f, 2325f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1292f)), 1749f, -274f, -1225f))), vec3<bool>(all(!vec4<bool>(false, false, false, var_2)), false, false), u_input.d.x);
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = func_5(func_4(~_wgslsmith_div_vec2_u32(func_2(vec3<f32>(-228f, -360f, 420f), 389f, u_input.a.x), select(vec2<u32>(global2.a.x, u_input.c), vec2<u32>(u_input.b, 4294967295u), arg_0.yx)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1285f)))), u_input.d.x, select(select(vec4<bool>(true, true, false, all(vec4<bool>(true, arg_0.x, arg_0.x, true))), !select(vec4<bool>(true, arg_0.x, global3[_wgslsmith_index_u32(0u, 25u)], arg_0.x), vec4<bool>(true, global3[_wgslsmith_index_u32(global0.a.x, 25u)], true, arg_0.x), true), global0.a.x <= reverseBits(global2.a.x)), vec4<bool>(!global3[_wgslsmith_index_u32(countOneBits(1u), 25u)], all(!arg_0.zx), any(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 25u)], arg_0.x)) | global3[_wgslsmith_index_u32(global2.a.x, 25u)], global3[_wgslsmith_index_u32(37674u, 25u)]), false));
    let var_1 = ~_wgslsmith_div_i32(-((var_0.c ^ u_input.d.x) ^ -u_input.a.x), -2147483647i);
    var var_2 = func_5(Struct_4(vec4<u32>(~u_input.c, countOneBits(4294967295u), 69441u, _wgslsmith_add_u32(global2.a.x, 12003u)) >> (global0.a % vec4<u32>(32u))), var_1, !(!(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], true, global3[_wgslsmith_index_u32(26411u, 25u)], global3[_wgslsmith_index_u32(global2.a.x, 25u)])))).a;
    var var_3 = var_0;
    var var_4 = select(vec4<bool>(!arg_0.x, false, !(_wgslsmith_mult_u32(u_input.b, 39877u) <= (global2.a.x << (2127u % 32u))), var_0.b.x), !vec4<bool>(select(any(vec4<bool>(false, var_0.b.x, arg_0.x, true)), false, true), any(select(vec4<bool>(var_3.b.x, false, arg_0.x, global3[_wgslsmith_index_u32(56335u, 25u)]), vec4<bool>(false, arg_0.x, false, global3[_wgslsmith_index_u32(4294967295u, 25u)]), true)), false, !all(vec3<bool>(true, arg_0.x, true))), select(vec4<bool>(any(func_5(Struct_4(global2.a), 49403i, vec4<bool>(true, arg_0.x, arg_0.x, var_0.b.x)).b.zz), !(var_2.b.x > var_2.b.x), any(vec4<bool>(false, arg_0.x, false, arg_0.x)), select(global3[_wgslsmith_index_u32(38424u, 25u)], func_5(Struct_4(global2.a), -1i, vec4<bool>(true, false, true, var_3.b.x)).b.x, false)), !select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(39345u, 25u)], false), !vec4<bool>(true, var_3.b.x, false, global3[_wgslsmith_index_u32(7008u, 25u)]), arg_0.x), vec4<bool>(arg_0.x | true, var_3.b.x, true, global3[_wgslsmith_index_u32(u_input.c | ~u_input.c, 25u)])));
    return _wgslsmith_f_op_vec4_f32(-var_2.b);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(-30754i, vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.b.x * -1161f), arg_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(222f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(arg_0.b.x + -703f)))), func_5(Struct_4(global2.a), arg_0.a, vec4<bool>(func_5(arg_1, arg_0.a, select(vec4<bool>(true, global3[_wgslsmith_index_u32(global0.a.x, 25u)], false, global3[_wgslsmith_index_u32(global2.a.x, 25u)]), vec4<bool>(global3[_wgslsmith_index_u32(56431u, 25u)], false, global3[_wgslsmith_index_u32(u_input.b, 25u)], global3[_wgslsmith_index_u32(6801u, 25u)]), arg_2.b.b.x)).b.x, select(false, true, true), false, false)));
    global1 = array<vec2<f32>, 10>();
    global2 = arg_1;
    global3 = array<bool, 25>();
    var var_1 = -1113f;
    return Struct_4(vec4<u32>(~(~_wgslsmith_mod_u32(arg_1.a.x, global2.a.x)), ~(38145u ^ arg_1.a.x) | 14376u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.x, 0u), arg_1.a.yy), global2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(global2.a);
    global3 = array<bool, 25>();
    global0 = func_6(Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(global3[_wgslsmith_index_u32(8946u, 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(global0.a.x, 25u)])))))), func_4((~vec2<u32>(1u, global2.a.x) >> (~global0.a.zw % vec2<u32>(32u))) & ~global0.a.zx, 1295f), Struct_3(Struct_1(_wgslsmith_sub_i32(2147483647i, 2147483647i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-264f, 793f, 1300f, -735f) + vec4<f32>(-633f, 1000f, 1069f, 1777f))))), Struct_2(Struct_1(_wgslsmith_mod_i32(-1i, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-194f, -630f, 1807f, 320f) + vec4<f32>(805f, -1727f, 348f, -766f))), !(!vec3<bool>(global3[_wgslsmith_index_u32(global0.a.x, 25u)], global3[_wgslsmith_index_u32(20478u, 25u)], false)), ~24749i)));
    global3 = array<bool, 25>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(global2.a.zwx), ~global0.a.zyx >> (~global2.a.xxx % vec3<u32>(32u))), ~global2.a.zwz);
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(reverseBits(19856u), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.a.x, _wgslsmith_clamp_u32(1u, 618u, 1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(99614u, global0.a.x), vec2<u32>(global2.a.x, 7348u)), 25532u << (u_input.c % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1406f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1415f - -758f))))));
}

