struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, false, true, true, true, true, false, true, false, false, true, false, true, true, true, false, true, false, true, true, true, false, false, true, true, true, false, true, false, false);

var<private> global1: f32 = -210f;

var<private> global2: array<bool, 20> = array<bool, 20>(false, true, true, false, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, true);

var<private> global3: array<bool, 12> = array<bool, 12>(false, false, true, true, false, true, false, false, false, false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, arg_1), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1676f, arg_1) + vec2<f32>(arg_1, -244f)), vec2<f32>(905f, arg_1))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1141f, arg_1), vec2<f32>(arg_2, 1041f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1780f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_2))))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1071f), arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, -850f), _wgslsmith_f_op_f32(round(arg_2)))) * _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)))));
    global1 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(661f - 383f));
    global1 = _wgslsmith_f_op_f32(select(1049f, arg_2, !global0[_wgslsmith_index_u32(arg_0.x, 31u)]));
    global0 = array<bool, 31>();
    var var_1 = arg_3;
    return arg_3.e.a.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_5 {
    global2 = array<bool, 20>();
    var var_0 = Struct_1(vec3<u32>(~countOneBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a >> (u_input.b % 32u), 48989u), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, 26623u))), u_input.a), arg_0.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-459f, -141f)) - -1636f);
    var var_1 = Struct_1(var_0.a, any(arg_0.wxy) | true);
    let var_2 = Struct_1(~vec3<u32>(var_0.a.x, func_3(~var_1.a, -249f, _wgslsmith_f_op_f32(select(-1000f, -858f, var_0.b)), Struct_2(0u, var_0.a.x, 1u, u_input.c, Struct_1(var_1.a, global3[_wgslsmith_index_u32(u_input.b, 12u)]))), 3277u), any(!(!(!vec4<bool>(var_1.b, true, global3[_wgslsmith_index_u32(u_input.a, 12u)], true)))));
    return Struct_5(var_0.a.x, -27257i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, 117f, -1626f))))))), arg_0.xy, _wgslsmith_f_op_f32(round(575f)));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = -1560f;
    var var_1 = Struct_2(~19825u, ~arg_0.a, 0u, -u_input.c, Struct_1(~(~(arg_2.a | vec3<u32>(4294967295u, 4294967295u, 4294967295u))), global0[_wgslsmith_index_u32(~arg_0.a, 31u)]));
    global3 = array<bool, 12>();
    global0 = array<bool, 31>();
    var var_2 = var_1.e.a;
    return Struct_3(4294967295u, Struct_2(arg_2.a.x | ~4294967295u, 34177u, ~reverseBits(abs(4294967295u)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_sub_i32(arg_0.b, -1i), arg_0.b), _wgslsmith_mult_i32(~(-1477i), arg_1)), Struct_1(vec3<u32>(0u, 20065u, arg_0.a) | vec3<u32>(u_input.b, 17198u, var_1.c), global0[_wgslsmith_index_u32(var_1.e.a.x & var_1.e.a.x, 31u)])), 1i);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    let var_0 = firstTrailingBit(arg_2.a);
    global2 = array<bool, 20>();
    var var_1 = abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c & 16735i, 1i, 1i), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_2.c, 2147483647i, -2147483647i), reverseBits(vec3<i32>(arg_2.c, u_input.c, u_input.c))), _wgslsmith_add_vec3_i32(-vec3<i32>(17212i, -56711i, arg_1), vec3<i32>(1i, 1i, u_input.c))));
    var var_2 = !vec4<bool>(arg_3 > arg_3, global0[_wgslsmith_index_u32(1u, 31u)], true, func_2(vec4<bool>(!global2[_wgslsmith_index_u32(3086u, 20u)], !global2[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(73080u, 31u)], true)).d.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-500f * _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_3, arg_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(select(-631f, _wgslsmith_f_op_f32(abs(-544f)), true))) * arg_3), 143f);
    return func_4(Struct_5(~firstLeadingBit(_wgslsmith_add_u32(var_0, 0u)), 20065i, var_3.zxz, !vec2<bool>(!global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)] | global0[_wgslsmith_index_u32(6232u, 31u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 + 674f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, -386f, false)), _wgslsmith_f_op_f32(f32(-1f) * -877f)))), -arg_1, arg_2.b.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_3.zxy)))) * var_3.wwz));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = func_5(17392i, -1745i, func_4(func_2(vec4<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(114270u, 31u)])), u_input.a >= 17361u, 2147483647i != u_input.c, arg_0)), 1i, Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.a) & ~vec3<u32>(0u, u_input.b, u_input.a), global2[_wgslsmith_index_u32(~(~u_input.a), 20u)]), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-236f, -956f, 1020f), vec3<f32>(-385f, -249f, 675f))))))), _wgslsmith_f_op_f32(min(1305f, -1118f)));
    let var_1 = _wgslsmith_mult_i32(i32(-1i) * -72348i, var_0.b.d);
    let var_2 = func_2(select(vec4<bool>(any(vec4<bool>(false, false, true, arg_0)), any(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 12u)], var_0.b.e.b)), global2[_wgslsmith_index_u32(78433u, 20u)], !any(vec4<bool>(false, var_0.b.e.b, false, global2[_wgslsmith_index_u32(u_input.b, 20u)]))), vec4<bool>(true, true, func_4(Struct_5(var_0.a, var_1, vec3<f32>(-802f, 1000f, -292f), vec2<bool>(global2[_wgslsmith_index_u32(4072u, 20u)], true), 121f), 0i, Struct_1(var_0.b.e.a, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, 516f, -244f) * vec3<f32>(1000f, -709f, 1056f))).b.e.b, !(!global2[_wgslsmith_index_u32(104642u, 20u)])), vec4<bool>(arg_0, true, -var_0.b.d <= (var_1 | -1i), global3[_wgslsmith_index_u32(62109u, 12u)]))).e;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(296f, var_2), vec2<f32>(var_2, var_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(207f, var_2) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1348f, 961f) + vec2<f32>(-1000f, -890f))))))) + vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, -1197f)))));
    let var_4 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.b.e.a.x, ~(~0u)), vec3<u32>(~abs(u_input.a), max(abs(12273u), u_input.a << (var_0.b.e.a.x % 32u)), func_4(func_2(vec4<bool>(global3[_wgslsmith_index_u32(var_0.a, 12u)], global2[_wgslsmith_index_u32(14856u, 20u)], false, true)), -var_0.c, func_4(Struct_5(var_0.a, -31338i, vec3<f32>(var_2, var_2, 152f), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 20u)]), var_2), var_1, Struct_1(var_0.b.e.a, global0[_wgslsmith_index_u32(23852u, 31u)]), vec3<f32>(1096f, -699f, var_2)).b.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(1316f, var_3.x, var_2) - vec3<f32>(var_2, 359f, var_2))).a));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(855f, var_3.x))), _wgslsmith_f_op_f32(sign(var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!any(vec2<bool>(true, global3[_wgslsmith_index_u32(~u_input.a, 12u)])));
}

