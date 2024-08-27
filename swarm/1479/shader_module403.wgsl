struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, true, false, false, false, true, true, false, false, false, true, true, false, true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.a;
    var var_1 = vec4<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(u_input.b >> (4294967295u % 32u)), u_input.b), 17u)], (arg_0.b.x & (true != global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, arg_0.d.x), 17u)])) & false, false, _wgslsmith_mod_i32(54804i, -36028i) == ~min(i32(-1i) * -68034i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(0i, 1i, u_input.a))));
    let var_2 = select(vec4<bool>(any(vec3<bool>(true, arg_0.b.x, !global1[_wgslsmith_index_u32(0u, 17u)])), true, !all(vec2<bool>(var_1.x, arg_0.b.x)), !(!global1[_wgslsmith_index_u32(1u, 17u)] != global1[_wgslsmith_index_u32(9661u, 17u)])), select(vec4<bool>(all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~104535u, 17u)] && any(arg_0.b), !any(arg_0.b), all(!var_1.wz)), !(!select(arg_0.b, vec4<bool>(global1[_wgslsmith_index_u32(5635u, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)], arg_0.b.x, var_1.x), arg_0.b)), any(!var_1.zw)), !select(arg_0.b, vec4<bool>(any(arg_0.b.yy), all(vec3<bool>(false, false, true)), true, true), true));
    global0 = array<vec3<i32>, 23>();
    var var_3 = vec3<bool>(true, arg_0.b.x, true);
    return var_2.zz;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = array<bool, 17>();
    var var_0 = select(!func_3(Struct_1(_wgslsmith_f_op_f32(trunc(arg_0.b.a)), select(vec4<bool>(true, false, arg_0.b.b.x, true), arg_0.b.b, arg_0.b.b), u_input.c.x, ~arg_0.b.d)), arg_0.b.b.zw, select(global1[_wgslsmith_index_u32(~1u | ~arg_0.b.d.x, 17u)], min(-2147483647i, u_input.a) > max(-8085i, u_input.a), global1[_wgslsmith_index_u32(0u, 17u)]) & all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 17u)] | global1[_wgslsmith_index_u32(u_input.b, 17u)], true)));
    var_0 = func_3(Struct_1(-905f, select(select(!vec4<bool>(true, arg_0.b.b.x, var_0.x, global1[_wgslsmith_index_u32(arg_0.a, 17u)]), select(vec4<bool>(var_0.x, arg_0.b.b.x, true, true), vec4<bool>(var_0.x, true, true, var_0.x), true), arg_0.b.b), !vec4<bool>(arg_0.b.b.x, false, false, global1[_wgslsmith_index_u32(46368u, 17u)]), true), 22816u, arg_0.b.d));
    let var_1 = arg_0;
    var var_2 = ~(~arg_0.a);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-950f, _wgslsmith_div_f32(var_1.b.a, 192f)))) + _wgslsmith_f_op_f32(round(-1466f))), select(!vec4<bool>(500f >= var_1.b.a, var_1.b.b.x, all(var_1.b.b.ww), all(var_1.b.b.zyw)), var_1.b.b, true), 0u, ~(~(firstTrailingBit(vec4<u32>(1u, 36790u, u_input.b, u_input.c.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 4427u, 50382u), vec4<u32>(var_1.a, 17604u, 0u, 27110u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = arg_1.a;
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    global1 = array<bool, 17>();
    var var_1 = 1000f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(max(438f, arg_1.a.b.a))), func_2(var_0).a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1714f, -385f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.b.a, var_0.b.a), vec2<f32>(arg_1.a.b.a, 428f)), vec2<f32>(-552f, var_0.b.a)))))));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = -2147483647i;
    var var_1 = Struct_1(arg_1.x, !func_2(Struct_2(u_input.b, Struct_1(1142f, vec4<bool>(global1[_wgslsmith_index_u32(17727u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], false, global1[_wgslsmith_index_u32(u_input.b, 17u)]), u_input.b, vec4<u32>(78081u, 44785u, u_input.b, 25525u)))).b, ~u_input.c.x, ~(~(vec4<u32>(u_input.b, 1u, 1u, 108559u) >> (vec4<u32>(u_input.c.x, u_input.b, u_input.b, 5278u) % vec4<u32>(32u)))) & (vec4<u32>(abs(u_input.b), ~1u, u_input.c.x, 4441u) << (vec4<u32>(max(268u, 19620u), 16130u, firstTrailingBit(u_input.c.x), 1u) % vec4<u32>(32u))));
    var var_2 = !func_2(Struct_2(1u, func_2(Struct_2(var_1.d.x, Struct_1(var_1.a, vec4<bool>(var_1.b.x, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], true), 25587u, vec4<u32>(7371u, 76852u, u_input.b, 0u)))))).b.yww;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), select(select(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !var_1.b, var_1.b.x), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], true)), all(select(vec3<bool>(var_2.x, true, global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec3<bool>(var_2.x, false, var_1.b.x), true)), var_2.x, false & var_2.x), !vec4<bool>(all(var_1.b), true, true, var_1.b.x)), u_input.b, _wgslsmith_div_vec4_u32(reverseBits(var_1.d), firstLeadingBit(_wgslsmith_add_vec4_u32(var_1.d, vec4<u32>(var_1.d.x, var_1.c, var_1.c, 12326u)) | ~var_1.d)));
    global1 = array<bool, 17>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(-var_3.a)), 251f, all(func_2(Struct_2(~15038u, func_2(Struct_2(0u, Struct_1(1630f, var_1.b, 5903u, vec4<u32>(66941u, var_1.c, var_1.d.x, var_1.d.x)))))).b.zwz)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-1182f)))), 591f), -708f);
    var var_1 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(442f, -382f) + 1024f) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1332f)), 267f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -569f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(101f)), -1127f) * _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_2(3442u, Struct_1(-570f, vec4<bool>(false, true, false, false), 870u, vec4<u32>(53218u, 21260u, u_input.c.x, u_input.b)))), Struct_3(Struct_2(u_input.b, Struct_1(-813f, vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 17u)], false, false), 34721u, vec4<u32>(0u, 31734u, u_input.c.x, u_input.b)))), ~u_input.c.zy, min(vec4<u32>(u_input.b, 4294967295u, u_input.c.x, 20122u), vec4<u32>(u_input.b, 1u, 0u, u_input.b))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-362f, -686f), vec2<f32>(-678f, 983f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-680f, 1080f)), true)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1934f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1605f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -629f)))))));
    var_0 = _wgslsmith_f_op_f32(max(-878f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(182f - 1535f) - -552f))));
    let var_3 = func_2(Struct_2(1u ^ _wgslsmith_clamp_u32(43787u, countOneBits(u_input.b), reverseBits(u_input.b)), func_2(Struct_2(~u_input.c.x, Struct_1(-1597f, vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(4294967295u, 17u)]), u_input.c.x, vec4<u32>(88775u, 44498u, 37459u, u_input.b))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.a, var_3.a)), _wgslsmith_f_op_f32(max(var_3.a, 283f))))), vec4<bool>(any(func_2(Struct_2(u_input.c.x, Struct_1(var_3.a, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(5264u, 17u)], var_3.b.x, true), 3744u, var_3.d))).b.yxx), (!var_3.b.x | (-2147483647i >= u_input.a)) | false, reverseBits(0i) < (i32(-1i) * -u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, var_3.a)))), _wgslsmith_div_u32(0u, ~u_input.b), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(11372u, 0u, 1451u, u_input.c.x), ~vec4<u32>(39140u, 50127u, var_3.c, 42463u)) ^ (~vec4<u32>(u_input.c.x, u_input.b, 1u, 1907u) | var_3.d)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    var var_0 = select(true, func_3(Struct_1(-1076f, arg_0.b.b, _wgslsmith_mult_u32(59716u, u_input.b), vec4<u32>(4294967295u, u_input.b, 106609u, 1u))).x, true) & arg_2;
    let var_1 = 23727i;
    var var_2 = func_2(Struct_2(_wgslsmith_mult_u32(u_input.c.x, 57535u), func_1()));
    return Struct_2(1u, func_1());
}

fn func_7(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = 2147483647i;
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    let var_1 = arg_0.a.b.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.a.b.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.a + arg_0.a.b.a) + _wgslsmith_f_op_f32(sign(-859f))))), var_1);
    return _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~firstLeadingBit(~u_input.c.xz), vec2<u32>(func_1().c, min(_wgslsmith_clamp_u32(u_input.b, u_input.b, arg_0.a.a), 1u))), vec2<u32>(4294967295u, arg_0.a.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1468f, 1098f, -935f))))))));
    let var_1 = func_7(Struct_3(func_6(Struct_2(u_input.c.x >> (1u % 32u), func_1()), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b), 17u)], u_input.c.x != 34439u, func_2(Struct_2(62624u, Struct_1(-338f, vec4<bool>(global1[_wgslsmith_index_u32(24400u, 17u)], false, global1[_wgslsmith_index_u32(74648u, 17u)], false), 1u, vec4<u32>(1u, 25704u, u_input.b, u_input.b)))).b.x), false)));
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    var var_2 = vec4<bool>(false, !func_2(func_6(Struct_2(1u, Struct_1(-865f, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), 20170u, vec4<u32>(16958u, u_input.c.x, 57557u, var_1.x))), vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 17u)], false), true)).b.x && true, !(!select(true, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(15855u, 17u)]) & !(!global1[_wgslsmith_index_u32(1u, 17u)])), true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1585f))), func_6(Struct_2(_wgslsmith_mod_u32(func_1().c, 1u), func_6(Struct_2(var_1.x, Struct_1(546f, vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.b, 17u)]), 1u, vec4<u32>(27473u, u_input.c.x, var_1.x, 0u))), !var_2.zwx, true).b), !func_1().b.xzy, !all(var_2.wyz) && ((global1[_wgslsmith_index_u32(4294967295u, 17u)] == global1[_wgslsmith_index_u32(64541u, 17u)]) || var_2.x)).b.b, ~66905u, reverseBits(~vec4<u32>(u_input.b, u_input.c.x, var_1.x, var_1.x) << (func_1().d % vec4<u32>(32u))));
    var var_4 = var_3;
    let var_5 = Struct_2(4294967295u, var_3);
    let var_6 = vec2<bool>(!(var_0.x <= -1000f), true | all(func_3(var_5.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~countOneBits(var_3.d.xxy)) ^ func_1().d.zyw, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_4.a - var_0.x), 637f, -930f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2293f, _wgslsmith_div_f32(997f, var_3.a), _wgslsmith_f_op_f32(select(var_3.a, -113f, var_4.b.x)), _wgslsmith_f_op_f32(1000f * var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.a, var_4.a, var_4.a))))), -global0[_wgslsmith_index_u32(var_1.x, 23u)]);
}

