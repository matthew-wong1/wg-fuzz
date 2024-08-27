struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-258f, -171f, -1024f);

var<private> global1: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    global1 = select(vec3<bool>(false, true, any(select(select(vec2<bool>(true, global1.x), global1.zx, vec2<bool>(global1.x, false)), select(global1.zx, global1.xz, global1.x), global1.x))), vec3<bool>(global1.x & false, all(!select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), global1.xy)), global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] + global0[_wgslsmith_index_u32(1u, 3u)]) * _wgslsmith_div_f32(-117f, -648f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1611f)), 126f)))) >= _wgslsmith_f_op_f32(f32(-1f) * -1128f));
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.b.wxx, vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.yw, firstLeadingBit(vec2<i32>(u_input.b.x, 36509i))), 1i));
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.a.x & u_input.a.x), 3u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-402f))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> vec4<u32> {
    let var_0 = u_input.a;
    global0 = array<f32, 3>();
    var var_1 = Struct_5(Struct_4(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), select(~vec2<u32>(4294967295u, 49332u), ~arg_1.a, false)), _wgslsmith_f_op_f32(floor(-317f)), !(!vec3<bool>(arg_0, false, false)), Struct_1(firstTrailingBit(countOneBits(10576u)), -24705i, 594f), global0[_wgslsmith_index_u32(~var_0.x | (~88158u ^ abs(arg_1.a.x)), 3u)]), Struct_4(vec2<u32>(arg_1.d.a, 38282u | arg_1.a.x) << (var_0.zz % vec2<u32>(32u)), arg_1.d.c, vec3<bool>(arg_1.c.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.d.a, 3u)] + global0[_wgslsmith_index_u32(u_input.a.x, 3u)]) < _wgslsmith_f_op_f32(abs(192f)), -arg_1.d.b <= firstTrailingBit(-68583i)), Struct_1(~abs(u_input.a.x), -2147483647i, -718f), _wgslsmith_f_op_f32(-761f * 475f)));
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_0.x, 3u)]);
    var_1 = Struct_5(arg_1, var_1.a);
    return vec4<u32>(var_1.b.d.a, var_0.x, countOneBits(u_input.a.x), ~(~_wgslsmith_sub_u32(var_0.x, 31211u))) ^ u_input.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_3 {
    var var_0 = func_4(-985f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) * global0[_wgslsmith_index_u32(26992u >> (1u % 32u), 3u)]), 1f), Struct_4(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.x, u_input.a.x), arg_0.x << (0u % 32u)), 26424u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(90195u, 1u, false), 3u)])), !vec3<bool>(u_input.a.x <= 18144u, any(vec3<bool>(false, true, true)), global1.x), Struct_1(firstLeadingBit(12102u), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24296u, 3u)]))), 711f), u_input.b.x);
    global1 = select(vec3<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x))), select(global1.x, false, true), (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 68686u), 3u)] > _wgslsmith_div_f32(-1523f, global0[_wgslsmith_index_u32(var_0.x, 3u)])) || any(vec4<bool>(true, global1.x, global1.x, global1.x))), select(select(!(!vec3<bool>(global1.x, global1.x, true)), !select(vec3<bool>(false, false, global1.x), vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(false, global1.x, global1.x)), select(select(!vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, false), global1.x), !select(vec3<bool>(true, false, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, false, true)), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, false, true))), (true || all(vec2<bool>(global1.x, global1.x))) && true), global1.x);
    var var_1 = all(vec2<bool>(true, _wgslsmith_add_u32(80772u, u_input.a.x) != (var_0.x << (4294967295u % 32u)))) | true;
    global1 = select(!select(vec3<bool>(true, all(vec4<bool>(global1.x, global1.x, false, false)), true), !(!vec3<bool>(global1.x, false, true)), _wgslsmith_f_op_f32(func_3()) != _wgslsmith_f_op_f32(f32(-1f) * -717f)), !vec3<bool>(global1.x, 752f > global0[_wgslsmith_index_u32(1u, 3u)], any(select(vec4<bool>(false, true, false, global1.x), vec4<bool>(false, global1.x, global1.x, true), true))), select(select(!select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, true, global1.x), true), !(!vec3<bool>(false, global1.x, global1.x)), !global1.x), !(!select(vec3<bool>(true, global1.x, true), vec3<bool>(false, false, false), false)), !select(!vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, global1.x)), true)));
    var var_2 = arg_1;
    return Struct_3(select(vec3<bool>(!(global1.x & true), all(!vec4<bool>(global1.x, true, global1.x, global1.x)), any(vec3<bool>(false, false, true))), select(vec3<bool>(global1.x && global1.x, true, true), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, false)), _wgslsmith_div_u32(u_input.a.x, 1u) > u_input.a.x), !((arg_0.x >> (arg_0.x % 32u)) > ~u_input.a.x)), global0[_wgslsmith_index_u32(var_0.x, 3u)], arg_1, Struct_1(~reverseBits(~0u), _wgslsmith_clamp_i32(arg_1, ~u_input.b.x, arg_1 & u_input.b.x) & ~arg_1, 986f));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_3) -> bool {
    let var_0 = Struct_3(select(!arg_1.b.c, !arg_1.b.c, true), 1497f, 1i, func_2(~(~firstTrailingBit(vec4<u32>(4294967295u, 12969u, 12979u, 32199u))), 1i).d);
    let var_1 = select(!select(!select(vec4<bool>(false, true, false, arg_2.a.x), vec4<bool>(false, var_0.a.x, global1.x, global1.x), vec4<bool>(global1.x, var_0.a.x, false, false)), select(!vec4<bool>(var_0.a.x, true, true, arg_0), vec4<bool>(true, arg_1.b.c.x, arg_0, true), all(arg_2.a.xx)), !(false | arg_2.a.x)), vec4<bool>(!all(vec4<bool>(arg_2.a.x, false, false, var_0.a.x)), true, true, !var_0.a.x), vec4<bool>(func_2(u_input.a << (u_input.a % vec4<u32>(32u)), _wgslsmith_add_i32(u_input.b.x, arg_2.c)).d.c < 1000f, true || global1.x, !var_0.a.x, arg_2.a.x));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_2 = func_2(u_input.a, _wgslsmith_clamp_i32(func_2(vec4<u32>(_wgslsmith_add_u32(65182u, arg_2.d.a), _wgslsmith_mult_u32(var_0.d.a, 4294967295u), _wgslsmith_div_u32(1u, 79217u), ~u_input.a.x), _wgslsmith_mult_i32(0i, 2147483647i) << (~arg_1.a.a.x % 32u)).d.b, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b | firstTrailingBit(vec4<i32>(arg_1.a.d.b, 12890i, u_input.b.x, u_input.b.x))), ~_wgslsmith_mod_i32(_wgslsmith_div_i32(30789i, 630i), reverseBits(arg_1.b.d.b)))).d;
    return true;
}

fn func_1() -> i32 {
    let var_0 = Struct_4(abs(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yw << (u_input.a.zw % vec2<u32>(32u))), ~vec2<u32>(u_input.a.x, u_input.a.x))), global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec3<bool>(func_5(global1.x, Struct_5(Struct_4(u_input.a.zw, -934f, vec3<bool>(global1.x, true, true), Struct_1(1u, -21480i, -1043f), -1111f), Struct_4(u_input.a.yw, global0[_wgslsmith_index_u32(127348u, 3u)], vec3<bool>(global1.x, global1.x, true), Struct_1(45903u, -2147483647i, -626f), 1187f)), func_2(u_input.a, u_input.b.x)) || true, false == !(global1.x | global1.x), !any(select(vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x)))), func_2(select(reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), vec4<u32>(~1u, ~u_input.a.x, func_2(u_input.a, -2147483647i).d.a, ~u_input.a.x), select(vec4<bool>(true, global1.x, global1.x, false), !vec4<bool>(global1.x, false, global1.x, true), !vec4<bool>(global1.x, global1.x, false, global1.x))), -(i32(-1i) * -18176i)).d, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 83738u, u_input.a.x), min(u_input.a, vec4<u32>(71423u, u_input.a.x, u_input.a.x, u_input.a.x))), ~(~u_input.a.x)), 3u)] * -1671f));
    let var_1 = ~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, var_0.d.b), u_input.b.zy));
    var var_2 = reverseBits(_wgslsmith_add_i32(1i, ~0i));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~(~1u), 76691u, _wgslsmith_dot_vec3_u32(u_input.a.xyw ^ u_input.a.xzw, vec3<u32>(1u, u_input.a.x, 0u) & vec3<u32>(34566u, u_input.a.x, 1u))), u_input.a), u_input.a.x);
    var_2 = -2147483647i;
    return func_2(u_input.a, -reverseBits(-u_input.b.x >> (_wgslsmith_sub_u32(var_3, 0u) % 32u))).c;
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_1(countOneBits(u_input.a.x) << ((_wgslsmith_mult_u32(arg_0.x, func_2(vec4<u32>(47366u, u_input.a.x, 0u, 1u), arg_1).d.a) >> (_wgslsmith_clamp_u32(91067u | arg_0.x, u_input.a.x, 1458u) % 32u)) % 32u), (arg_1 & arg_2.a.d.b) ^ 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d.c))));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 3u)])) + _wgslsmith_f_op_f32(-var_0.c)))), var_0.c, 1831f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wzy, ~u_input.a.zxy), 3u)]) + vec4<f32>(1000f, var_0.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.a, arg_2.a.a.x), 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1239f, 214f))))));
    var var_3 = Struct_4(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zwz, ~abs(arg_0)), abs(_wgslsmith_mod_u32(~1u, select(var_0.a, 1u, arg_2.a.c.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(3856u, 3u)] - func_2(vec4<u32>(arg_2.a.d.a, u_input.a.x, 1u, 1u), arg_2.b.d.b).b)))), !vec3<bool>(true, true, all(vec3<bool>(true, true, global1.x))), Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), arg_2.b.a) ^ ~709u), func_1(), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_2.x)))))))));
    var var_4 = ~vec3<u32>(~35983u, firstTrailingBit(var_3.d.a), 27573u);
    return arg_2.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_0 = Struct_1(52558u, u_input.b.x, _wgslsmith_f_op_f32(func_6(select(_wgslsmith_add_vec3_u32(u_input.a.wxx, vec3<u32>(u_input.a.x, u_input.a.x, 8838u)), u_input.a.yzx, select(!vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, true))), _wgslsmith_mult_i32(func_1(), 0i), Struct_5(Struct_4(vec2<u32>(4294967295u, u_input.a.x) >> (u_input.a.ww % vec2<u32>(32u)), 712f, vec3<bool>(true, global1.x, global1.x), Struct_1(35467u, -2147483647i, 255f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(113398u, u_input.a.x), 3u)]), Struct_4(countOneBits(u_input.a.xy), -440f, vec3<bool>(global1.x, global1.x, true), Struct_1(u_input.a.x, u_input.b.x, -493f), global0[_wgslsmith_index_u32(1u, 3u)])))));
    var_0 = Struct_1(_wgslsmith_mod_u32(1u, min(u_input.a.x, max(0u, _wgslsmith_sub_u32(u_input.a.x, 37393u)))), -(var_0.b & firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_5(Struct_4(abs(~vec2<u32>(0u, 47792u) << (firstLeadingBit(u_input.a.yy) % vec2<u32>(32u))), 480f, vec3<bool>(false, all(!vec3<bool>(true, global1.x, false)), !select(global1.x, global1.x, global1.x)), func_2(abs(u_input.a), -_wgslsmith_mod_i32(u_input.b.x, var_0.b)).d, 1000f), Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, abs(54268u)), max(_wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_add_vec2_u32(u_input.a.ww, vec2<u32>(113274u, 1u)))), var_0.c, !vec3<bool>(true, !global1.x, global1.x), func_2(vec4<u32>(firstLeadingBit(21615u), u_input.a.x, 3602u, _wgslsmith_add_u32(1516u, var_0.a)), firstTrailingBit(func_2(vec4<u32>(17404u, var_0.a, 4294967295u, 444u), var_0.b).c)).d, var_0.c));
    let var_2 = Struct_4(abs(var_1.b.a), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4449u & var_1.a.a.x, 3u)])))), vec3<bool>(false, true, false), var_1.b.d, var_1.a.e);
    var var_3 = func_2(~(vec4<u32>(var_0.a, u_input.a.x, ~u_input.a.x, 0u | var_1.a.d.a) >> (select(u_input.a, vec4<u32>(0u, var_2.a.x, 0u, 707u), !vec4<bool>(global1.x, global1.x, global1.x, var_1.b.c.x)) % vec4<u32>(32u))), _wgslsmith_sub_i32(var_2.d.b, 5220i) | ~(-(~(-51716i)))).d;
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(max(abs(var_2.a) << ((u_input.a.xx << (var_2.a % vec2<u32>(32u))) % vec2<u32>(32u)), var_2.a), vec2<u32>(_wgslsmith_div_u32(~u_input.a.x, firstLeadingBit(4898u)), reverseBits(_wgslsmith_div_u32(1u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(980f, var_1.b.d.c) + var_3.c), _wgslsmith_f_op_f32(-var_1.b.b)))), 4294967295u | var_3.a, 45129u, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -(vec4<i32>(~55198i, 14356i, -1i, countOneBits(25548i)) | vec4<i32>(~var_2.d.b, i32(-1i) * -1i, abs(var_0.b), var_0.b)));
}

