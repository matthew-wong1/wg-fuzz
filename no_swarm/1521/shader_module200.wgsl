struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1104f);

var<private> global1: vec4<i32>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_1 = Struct_1(1460f);

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = global4[_wgslsmith_index_u32(reverseBits(min(55951u, 4294967295u)), 14u)];
    var var_1 = Struct_1(-384f);
    let var_2 = arg_3;
    global4 = array<Struct_1, 14>();
    var var_3 = any(!select(global2.yy, select(vec2<bool>(true, var_2.a), global2.wx, global2.zx), arg_3.a));
    return _wgslsmith_div_vec4_u32(arg_3.c, arg_3.c);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + 2555f)), arg_0)), arg_1.a, 492f, _wgslsmith_f_op_f32(-arg_0));
    var var_1 = _wgslsmith_clamp_i32(~(abs(i32(-1i) * -2147483647i) >> (1u % 32u)), global1.x, global1.x);
    global3 = Struct_1(_wgslsmith_f_op_f32(1034f * _wgslsmith_f_op_f32(arg_3.a - -1536f)));
    var_1 = -2147483647i;
    let var_2 = false;
    return Struct_2(select(-(20010i & u_input.a.x) > 0i, arg_2, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, 518f) * 1364f))), _wgslsmith_mult_vec4_u32(abs(min(func_3(u_input.a.x, u_input.a, false, Struct_2(true, Struct_1(271f), vec4<u32>(76225u, 0u, 4294967295u, 1u))), abs(vec4<u32>(25020u, 78294u, 0u, 37191u)))), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(69909u, 4294967295u, 4294967295u, 51658u)))));
}

fn func_1() -> bool {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(min(global0.a, global0.a)) > -1000f, global2.x && true);
    let var_1 = u_input.a.xx;
    let var_2 = global2.x;
    let var_3 = global0.a;
    var var_4 = func_2(_wgslsmith_f_op_f32(-global3.a), global4[_wgslsmith_index_u32(13427u, 14u)], any(select(select(global2.xxw, vec3<bool>(var_0.x, false, false), vec3<bool>(false, global2.x, true)), !vec3<bool>(false, var_0.x, var_0.x), any(vec2<bool>(true, true)))), global4[_wgslsmith_index_u32(0u, 14u)]);
    return !all(select(vec4<bool>(global2.x, !var_0.x, true, var_0.x | false), select(vec4<bool>(false, var_4.a, var_4.a, var_4.a), !vec4<bool>(var_4.a, true, global2.x, var_0.x), select(vec4<bool>(global2.x, var_4.a, var_0.x, true), vec4<bool>(true, global2.x, false, false), vec4<bool>(global2.x, true, false, var_4.a))), any(vec2<bool>(false, global2.x)) | true));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(arg_2.a >= global3.a, Struct_1(-1558f), max(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(89868u, 4294967295u, 28447u), vec3<u32>(97821u, 34362u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(38544u, 1u, 48625u), vec3<u32>(1u, 0u, 1u)), ~0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39192u, 0u, 39415u), vec3<u32>(4294967295u, 30552u, 4294967295u)), abs(81942u)), 0u, 1u << (1u % 32u)), abs(vec4<u32>(1u, 1u, min(0u, 42661u), _wgslsmith_dot_vec2_u32(vec2<u32>(65075u, 31486u), vec2<u32>(17817u, 1u))))));
    let var_1 = _wgslsmith_clamp_vec4_u32(func_2(_wgslsmith_div_f32(-1213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), func_2(146f, Struct_1(-1514f), false, func_2(_wgslsmith_f_op_f32(-arg_2.a), Struct_1(-410f), 505f > var_0.b.a, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c.x, 1u, 3287u), 14u)]).b).b, any(select(vec3<bool>(true, arg_1, true), global2.xwy, !global2.ywx)), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * arg_2.a))), var_0.b, ~1i != (arg_3.x | 26820i), arg_2).b).c, ~(~vec4<u32>(19050u, var_0.c.x, var_0.c.x, var_0.c.x) << (_wgslsmith_mod_vec4_u32(var_0.c, ~vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)) % vec4<u32>(32u))), var_0.c);
    let var_2 = _wgslsmith_f_op_f32(-arg_2.a);
    global1 = _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(38970i, 0i, 1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_3.x, u_input.a.x), global1.xxy), min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, u_input.a.x), vec3<i32>(global1.x, arg_3.x, 40303i)), global1.x << (var_0.c.x % 32u)))));
    let var_3 = vec4<bool>(any(vec4<bool>(!(!arg_1), select(arg_1, arg_1 | false, !var_0.a), false, select(select(var_0.a, global2.x, global2.x), func_2(-1000f, global4[_wgslsmith_index_u32(1u, 14u)], true, Struct_1(-524f)).a, true))), func_2(_wgslsmith_f_op_f32(-var_0.b.a), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a, var_2))), Struct_1(_wgslsmith_f_op_f32(exp2(var_2))), false, Struct_1(_wgslsmith_div_f32(global0.a, -672f))).b, (_wgslsmith_mult_u32(var_0.c.x, 4294967295u) >> (1u % 32u)) <= 25349u, var_0.b).a, -1932f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_2(arg_2.a, Struct_1(arg_2.a), arg_1, global4[_wgslsmith_index_u32(4294967295u, 14u)]).b.a, _wgslsmith_div_f32(1376f, var_0.b.a), true)), var_0.b.a), true);
    return func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(661f, global3.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - -1123f) + arg_2.a)), arg_2.a)), func_2(_wgslsmith_f_op_f32(-global0.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - -810f)), !arg_1, var_0.b).b, true, Struct_1(arg_2.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> f32 {
    global4 = array<Struct_1, 14>();
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1107f), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)), Struct_1(arg_1.b.a), global2.x != !any(global2.wyw), Struct_1(arg_0.b.a)).b, any(vec4<bool>(!(arg_0.c.x == arg_0.c.x), true, true, true)), arg_1.b);
    let var_1 = vec3<u32>(22901u, ~(~_wgslsmith_mult_u32(44486u, ~arg_1.c.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c.x, 1u, _wgslsmith_mult_u32(1u, 34507u), arg_1.c.x), select(_wgslsmith_sub_vec4_u32(arg_1.c, arg_0.c), vec4<u32>(arg_1.c.x, 57808u, 4294967295u, 37955u), true)));
    var var_2 = var_0.b;
    let var_3 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-930f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(func_4(firstLeadingBit(u_input.a.x), func_1(), global4[_wgslsmith_index_u32(~0u, 14u)], vec3<i32>(global1.x, global1.x, -31926i)), Struct_2(true, global4[_wgslsmith_index_u32(1u, 14u)], ~vec4<u32>(23512u, 0u, 1u, 1u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-44134i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)) > 0i, func_2(_wgslsmith_f_op_f32(min(1438f, global0.a)), Struct_1(global3.a), select(global2.x, global2.x, global2.x), global4[_wgslsmith_index_u32(1u, 14u)]).b))))));
    var var_1 = ~countOneBits(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 1i, u_input.a.x), vec4<i32>(0i, 31103i, 2147483647i, global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(25690i, 2147483647i, -26718i, 9740i), vec4<i32>(41500i, -8175i, global1.x, 30932i)), true, Struct_2(global2.x, global4[_wgslsmith_index_u32(27873u, 14u)], vec4<u32>(1u, 19637u, 1u, 4294967295u))) & ~vec4<u32>(0u, 104040u, 21066u, 0u));
    let var_2 = select(select(global2.wx, global2.xx, true), vec2<bool>(false, all(global2.wzz)), select(global2.yy, !global2.yz, vec2<bool>(false, select(global2.x, true, any(global2.zzx)))));
    global0 = func_2(1268f, Struct_1(global3.a), true, func_4(~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global3.a) - _wgslsmith_f_op_f32(trunc(var_0))) == _wgslsmith_f_op_f32(max(global3.a, global3.a)), global4[_wgslsmith_index_u32(1u, 14u)], abs(firstLeadingBit(u_input.a.zyy))).b).b;
    let var_3 = global4[_wgslsmith_index_u32(var_1.x, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a.yz), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.a, vec4<i32>(-1i, -15345i, -2147483647i, u_input.a.x)), u_input.a, _wgslsmith_clamp_vec4_i32(select(u_input.a, vec4<i32>(u_input.a.x, global1.x, global1.x, u_input.a.x), global2.x), u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global1.x, global1.x, u_input.a.x), u_input.a, vec4<i32>(u_input.a.x, -2147483647i, 1i, global1.x)))), max(u_input.a | select(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, global1.x, -2147483647i), vec4<bool>(global2.x, global2.x, false, var_2.x)), vec4<i32>(0i, firstTrailingBit(-45651i), ~9029i, ~u_input.a.x))), ~abs(-global1.x), var_1.x, global1.zww);
}

