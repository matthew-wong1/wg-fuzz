struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
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

var<private> global0: array<bool, 1>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 62230i, -5988i);

var<private> global2: Struct_1;

var<private> global3: array<i32, 25> = array<i32, 25>(-20860i, 3847i, 16502i, i32(-2147483648), 0i, -1i, 0i, -83710i, 0i, 2147483647i, -7763i, 6114i, 59022i, -1i, 1i, 35085i, -14685i, 0i, 23216i, 2147483647i, -21106i, 4355i, 0i, 19048i, -27288i);

var<private> global4: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = -1006f;
    var var_1 = vec4<u32>(~_wgslsmith_mod_u32(1u, global4.a.x), global2.a.x, ~(global4.a.x & _wgslsmith_mult_u32(global2.a.x, global4.a.x)), 0u) ^ select(~firstTrailingBit(min(vec4<u32>(u_input.a, 1534u, u_input.a, 37668u), vec4<u32>(4294967295u, 1u, global4.a.x, 42468u))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.x, 4294967295u, 7892u, 8822u), vec4<u32>(0u, 39245u, u_input.b.x, 1u)), vec4<u32>(49644u, u_input.a, global4.a.x, 32038u) | vec4<u32>(u_input.a, 1u, global4.a.x, 1u)), true);
    let var_2 = Struct_1(u_input.b);
    global2 = Struct_1(vec3<u32>(select(52294u, var_1.x, false), ~(~_wgslsmith_mult_u32(global4.a.x, 0u)), select(var_1.x, 0u, all(vec2<bool>(false, global0[_wgslsmith_index_u32(global4.a.x, 1u)]))) ^ ~abs(global2.a.x)));
    let var_3 = var_2;
    return ~(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(73857u, 27414u, 1u, u_input.a)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_2.a.x, 19551u, var_1.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(45418u, var_2.a.x, global2.a.x, global4.a.x), vec4<u32>(var_2.a.x, var_2.a.x, global4.a.x, var_3.a.x), vec4<u32>(global2.a.x, global2.a.x, u_input.a, u_input.a)))) << (vec4<u32>(~_wgslsmith_div_u32(var_2.a.x, global2.a.x), var_2.a.x, 8623u, reverseBits(~1u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(min(84189u, global4.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global4.a.x, 1u), global4.a), ~u_input.b.x, abs(global2.a.x)), func_3(u_input.c.x)), 0u, firstLeadingBit(u_input.a) ^ ~(~global2.a.x)));
    global0 = array<bool, 1>();
    let var_1 = false;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(round(1000f));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, 1395f, _wgslsmith_f_op_f32(max(-1101f, _wgslsmith_f_op_f32(f32(-1f) * -1969f))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1f)))), 1082f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1112f, _wgslsmith_f_op_f32(1032f + 1166f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(2118f, 316f, true)), _wgslsmith_f_op_f32(floor(297f)), arg_1)))));
    let var_2 = arg_3;
    var var_3 = arg_3;
    global4 = Struct_1(min(var_3.a, vec3<u32>(~u_input.b.x | 1u, _wgslsmith_mult_u32(4294967295u, u_input.b.x | 24353u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 35001u, u_input.a), vec4<u32>(99300u, var_2.a.x, arg_0.a.x, arg_0.a.x))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(select(var_1.x, 551f, false))))))))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, arg_0, 38112u), vec4<u32>(4259u, 32201u, arg_0, 0u)), arg_0), global2.a.x, 4294967295u);
    return Struct_1(abs(vec3<u32>(_wgslsmith_div_u32(~global4.a.x, ~arg_0), 4294967295u, 4294967295u >> (~global4.a.x % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global3 = array<i32, 25>();
    let var_0 = Struct_1(global4.a);
    return func_5(~min(abs(u_input.a | 23756u), firstLeadingBit(~arg_0.a.x)), _wgslsmith_f_op_f32(func_4(arg_0, ~(-24459i) <= ~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), global4.a.zy, func_2(true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1859f, -1625f) + vec2<f32>(-622f, -182f)) - _wgslsmith_div_vec2_f32(vec2<f32>(507f, 798f), vec2<f32>(2108f, -314f)))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(min(8726u, u_input.a), 25u)];
    global3 = array<i32, 25>();
    var_0 = _wgslsmith_sub_i32(32244i, global3[_wgslsmith_index_u32(52519u, 25u)] & global1.x);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, global3[_wgslsmith_index_u32(0u, 25u)]), global1.x) == _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.d.x, global1.x, -29836i, global1.x)), vec4<i32>(global1.x, 2147483647i | u_input.d.x, firstLeadingBit(2147483647i), ~1i), u_input.c), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-global1.x, u_input.c.x, -33893i, u_input.d.x)));
    var_0 = ~_wgslsmith_mod_i32(-17407i, u_input.d.x);
    return ~u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(global2.a.yz, global4.a.zy), _wgslsmith_div_vec2_u32(vec2<u32>(global2.a.x, global2.a.x), vec2<u32>(41047u, 28827u)), vec2<bool>(global0[_wgslsmith_index_u32(3520u, 1u)], global0[_wgslsmith_index_u32(22227u, 1u)])) >> (global2.a.yx % vec2<u32>(32u)), ~global2.a.zz ^ firstTrailingBit(u_input.b.yz)), 1u)], !global0[_wgslsmith_index_u32(select(~global2.a.x, 138367u, !global0[_wgslsmith_index_u32(0u, 1u)]) << (~(~global2.a.x) % 32u), 1u)], global0[_wgslsmith_index_u32(global2.a.x << (_wgslsmith_mod_u32(global4.a.x, ~global2.a.x) % 32u), 1u)], true);
    global1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.wwz, u_input.d), vec3<i32>(u_input.c.x, abs(func_6(func_1(Struct_1(u_input.b), vec2<i32>(global1.x, global3[_wgslsmith_index_u32(global2.a.x, 25u)])), func_1(Struct_1(global4.a), vec2<i32>(u_input.d.x, -1i)), ~vec3<u32>(15022u, global2.a.x, 48578u), _wgslsmith_f_op_f32(609f + -523f))), ~global3[_wgslsmith_index_u32(~(~5932u), 25u)]));
    var var_1 = func_5(1u, -166f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-143f, _wgslsmith_div_f32(-897f, 499f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1421f, -1236f) + _wgslsmith_div_vec2_f32(vec2<f32>(-515f, 1513f), vec2<f32>(-152f, 983f))), var_0.yz))));
    var var_2 = Struct_1(global4.a ^ func_2(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(59177u, global4.a.x), 1u)]).a);
    global2 = Struct_1(_wgslsmith_mult_vec3_u32(global2.a, ~(~min(vec3<u32>(0u, u_input.a, var_1.a.x), vec3<u32>(4294967295u, 70480u, 111522u)))));
    let var_3 = _wgslsmith_mult_u32(0u, func_5(1u, -601f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)), -387f)).a.x);
    global3 = array<i32, 25>();
    var_1 = Struct_1(u_input.b);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(-656f, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f))) - _wgslsmith_f_op_f32(step(460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1115f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1042f))) + -594f))));
}

