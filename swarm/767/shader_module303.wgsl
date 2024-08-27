struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

var<private> global1: Struct_1;

var<private> global2: vec3<f32> = vec3<f32>(751f, 578f, 1251f);

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    global2 = _wgslsmith_f_op_vec3_f32(-var_0.b.wwy);
    var var_1 = arg_2.zw;
    let var_2 = _wgslsmith_f_op_f32(751f + _wgslsmith_f_op_f32(floor(543f)));
    let var_3 = arg_3;
    return select(!vec2<bool>(any(!vec2<bool>(var_3.a, true)), any(!vec4<bool>(global1.a, arg_3.a, arg_1.a, var_3.a))), select(!select(select(vec2<bool>(arg_1.a, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.a), !vec2<bool>(false, var_0.a)), select(vec2<bool>(all(vec3<bool>(var_3.a, false, arg_3.a)), !var_3.a), select(vec2<bool>(var_3.a, false), vec2<bool>(true, true), var_3.a), vec2<bool>(true, false)), false), arg_3.a);
}

fn func_2() -> vec4<f32> {
    var var_0 = !select(select(vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec4_f32(min(global1.b, global1.b)), Struct_1(global1.a, vec4<f32>(-815f, 358f, 722f, global1.c), 1288f), firstLeadingBit(vec4<i32>(-20517i, u_input.a, -30795i, -2147483647i)), Struct_1(global1.a, vec4<f32>(global1.c, global2.x, -1000f, global2.x), -874f)), true), vec2<bool>(false, true), vec2<bool>(all(select(vec4<bool>(true, global1.a, global1.a, global1.a), vec4<bool>(global1.a, global1.a, false, false), global1.a)), all(vec3<bool>(global1.a, global1.a, global1.a))));
    var var_1 = abs(~_wgslsmith_clamp_i32(-44336i, u_input.a, ~u_input.a));
    let var_2 = _wgslsmith_div_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 3911i), -_wgslsmith_mult_vec2_i32(vec2<i32>(48784i, -2147483647i), vec2<i32>(u_input.a, -20187i))), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-14046i, -16297i), vec2<i32>(-3190i, -47515i)), ~(vec2<i32>(u_input.a, 0i) << (vec2<u32>(1u, 9829u) % vec2<u32>(32u))))), _wgslsmith_add_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4043i, 1i), vec2<i32>(u_input.a, -1i)), -1i)) & vec2<i32>(-_wgslsmith_mod_i32(2757i, u_input.a), u_input.a));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(894f, -439f, -743f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, global2.x, global1.b.x), global1.b.wxw, var_0.x)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-1114f - global2.x), _wgslsmith_f_op_f32(-1092f + 262f)), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), 746f), select(!vec3<bool>(var_0.x, true, true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(global1.a, false, true), true), !vec3<bool>(true, global1.a, var_0.x))))));
    var var_3 = Struct_1(all(select(vec3<bool>(2147483647i >= var_2.x, true, !var_0.x), select(select(vec3<bool>(false, global1.a, true), vec3<bool>(global1.a, true, false), vec3<bool>(var_0.x, false, global1.a)), vec3<bool>(false, var_0.x, var_0.x), true), !var_0.x && !var_0.x)), _wgslsmith_f_op_vec4_f32(sign(global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -252f), 844f)), 1597f));
    return _wgslsmith_f_op_vec4_f32(global1.b * var_3.b);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    global0 = array<vec2<f32>, 32>();
    var var_1 = vec3<u32>(47375u, ~abs(1u), firstTrailingBit(32553u));
    let var_2 = ~4294967295u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f - 2124f) + _wgslsmith_f_op_f32(arg_0.b.x - -1151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f))), var_0.x, any(vec4<bool>(arg_0.a || true, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0.b.x, global2.x, 1034f) - vec4<f32>(-151f, var_0.x, global1.b.x, 1000f)), Struct_1(false, vec4<f32>(arg_1, 1778f, 1000f, arg_0.b.x), -474f), -vec4<i32>(u_input.a, u_input.a, u_input.a, -53502i), arg_0).x, !(!global1.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, all(!select(vec4<bool>(global1.a, true, global1.a, true), vec4<bool>(true, false, false, true), vec4<bool>(global1.a, global1.a, global1.a, global1.a))), select(!(global1.a && global1.a), true, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global1.b.ywy * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.zwz) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.b.xzx, global1.b.zyw)))))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, global1.b, -1498f), 408f)) * global2.x)))), 165f);
    let var_2 = Struct_1(global2.x >= -655f, vec4<f32>(-555f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 565f)))), var_1.x, _wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(min(363f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(sign(712f))))))));
    global3 = _wgslsmith_sub_i32(-2147483647i, min(-u_input.a, u_input.a));
    global0 = array<vec2<f32>, 32>();
    var_0 = vec3<bool>(any(var_0.zz), !func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, 2029f, global1.c, global2.x))), Struct_1(global2.x >= -808f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 888f, var_1.x, 1162f)), _wgslsmith_f_op_f32(-global1.c)), vec4<i32>(-1i) * -vec4<i32>(-4996i, u_input.a, u_input.a, 0i), Struct_1(false, _wgslsmith_f_op_vec4_f32(trunc(global1.b)), -1000f)).x, !all(var_0.yz));
    global3 = select(u_input.a, 32314i, func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, _wgslsmith_f_op_f32(step(-924f, var_1.x)), _wgslsmith_f_op_f32(-1147f + -199f), _wgslsmith_f_op_f32(var_2.c + 1532f)))), var_2, -(~vec4<i32>(1i, u_input.a, 1i, u_input.a) ^ reverseBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))), Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(max(-1886f, 1014f)), 342f, _wgslsmith_f_op_f32(trunc(-155f)), 1807f), _wgslsmith_f_op_f32(round(110f)))).x);
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(~1u, min(1u, 66995u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(46217u, 29073u, 51971u, 7565u), vec4<u32>(0u, 4294967295u, 96162u, 10024u))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)), firstLeadingBit(0u))), -30337i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(var_2.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_div_f32(global1.b.x, -652f), global1.b.x, -1000f)))), select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 62354i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, u_input.a, 1i)), vec4<i32>(_wgslsmith_add_i32(0i, -13753i), -1i ^ u_input.a, u_input.a, max(35126i, 31700i)), select(select(vec4<bool>(true, var_2.a, true, true), vec4<bool>(true, var_0.x, global1.a, global1.a), false), select(vec4<bool>(true, var_0.x, var_2.a, var_2.a), vec4<bool>(false, false, true, var_2.a), var_2.a), var_0.x)) ^ reverseBits(reverseBits(vec4<i32>(u_input.a, -66689i, 54946i, u_input.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(8856u, 0u, 85546u, 4294967295u), vec4<u32>(0u, 0u, 25909u, 0u)) % vec4<u32>(32u))), 5080u);
}

