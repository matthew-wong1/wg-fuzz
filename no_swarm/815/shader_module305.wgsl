struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 26762i);

var<private> global1: vec4<f32> = vec4<f32>(-679f, 1675f, 679f, -365f);

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = !(!select(true, all(vec4<bool>(true, true, true, true)), false));
    var var_1 = true;
    var var_2 = Struct_4(Struct_1(true, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(601f, 1737f)), global1.x), global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(global1.x)), false)), _wgslsmith_f_op_f32(-217f - global1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 280f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -486f, -1000f, global1.x))))));
    let var_3 = _wgslsmith_div_f32(global1.x, var_2.b.x);
    var_1 = !(all(select(select(vec2<bool>(false, true), vec2<bool>(var_2.a.a, var_0), vec2<bool>(var_2.a.a, false)), vec2<bool>(true, var_2.a.a), true | var_0)) & !var_0);
    return -519f;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(-187f + _wgslsmith_f_op_f32(f32(-1f) * -1470f)));
    global0 = vec2<i32>(abs(u_input.a), ~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.x), vec2<i32>(arg_0, -45177i))));
    let var_2 = Struct_1(all(vec3<bool>(any(select(global2[_wgslsmith_index_u32(45145u, 22u)], global2[_wgslsmith_index_u32(u_input.d, 22u)], vec4<bool>(true, true, false, var_1.a))), false, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b)) - -407f))));
    let var_3 = Struct_4(var_2, vec4<f32>(global1.x, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_1.b))), -512f));
    return Struct_2(var_1);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> vec4<f32> {
    var var_0 = arg_2.a;
    let var_1 = func_2(i32(-1i) * -(-global0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -54958i, u_input.a, 43800i), vec4<i32>(u_input.a, 1i, u_input.b.x, -14581i))));
    var var_2 = arg_2.b;
    let var_3 = select(!vec2<bool>(!(!arg_1.a.a), false), vec2<bool>(false, (_wgslsmith_f_op_f32(arg_1.b.x - var_1.a.b) <= _wgslsmith_f_op_f32(-arg_1.a.b)) || (arg_1.a.a && true)), vec2<bool>(var_1.a.a, false));
    let var_4 = 24517i;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), arg_2.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_3)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<f32>) -> i32 {
    global2 = array<vec4<bool>, 22>();
    let var_0 = Struct_4(func_2((global0.x | abs(global0.x)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.d, u_input.d)) % 32u)).a, arg_2);
    var var_1 = ~vec3<i32>(3887i, u_input.b.x, max(global0.x, min(32918i, global0.x) | firstTrailingBit(global0.x)));
    var var_2 = false;
    global1 = _wgslsmith_f_op_vec4_f32(func_1(4294967295u, var_0, Struct_1(func_2(1i).a.a, 480f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-187f)) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global1.x * 282f)))));
    return _wgslsmith_div_i32(28764i, _wgslsmith_mod_i32(var_1.x, var_1.x)) << ((_wgslsmith_div_u32(31868u, ~u_input.d) | ~abs(min(0u, 10579u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(func_4(true, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.c, Struct_4(Struct_1(false, global1.x), vec4<f32>(global1.x, global1.x, -862f, 844f)), Struct_1(true, global1.x), global1.x)))), reverseBits(~u_input.b.x), global0.x), min(u_input.a & ~(-1i), 33070i) | _wgslsmith_mult_i32(global0.x, ~global0.x));
    let var_1 = ~select(4294967295u, ~(~u_input.d) ^ u_input.c, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(u_input.b.x, global0.x, global0.x, -11463i) | vec4<i32>(var_0, global0.x, global0.x, 100941i))).a.a);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2567f + _wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(21588u, var_1, var_1, u_input.c), vec4<u32>(0u, 34835u, var_1, u_input.d)), Struct_4(Struct_1(false, global1.x), vec4<f32>(global1.x, global1.x, global1.x, -696f)), func_2(global0.x).a, global1.x)).x)) * -185f));
    global0 = vec2<i32>(-(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(27553i, var_0)), firstTrailingBit(u_input.b))), select((i32(-1i) * -28765i) ^ global0.x, _wgslsmith_sub_i32(var_0, var_0), func_2(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, -19975i, u_input.b.x, -1i)), vec4<i32>(-16522i, 5916i, global0.x, 5594i) | vec4<i32>(12347i, var_0, 45311i, global0.x))).a.a));
    let var_3 = Struct_3(!vec2<bool>(false, all(vec4<bool>(true, true, true, false)) && false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(616f, var_2)), _wgslsmith_f_op_f32(global1.x - global1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, 1285f, var_2) + vec4<f32>(var_2, -1381f, 1931f, -639f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, var_2, 1589f, global1.x))))));
    let var_4 = vec3<i32>(-_wgslsmith_sub_i32(firstLeadingBit(min(2147483647i, u_input.b.x)), -7172i), 1i, reverseBits(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), 466f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(251f, -518f, 561f, var_2) - var_3.b) - _wgslsmith_div_vec4_f32(vec4<f32>(-344f, var_3.b.x, -683f, 631f), vec4<f32>(-611f, var_3.b.x, 1115f, global1.x))) - _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_1, 4294967295u), vec3<u32>(1u, u_input.c, 1u)), Struct_4(Struct_1(var_3.a.x, 1000f), var_3.b), func_2(33763i).a, var_3.b.x)))), reverseBits(vec4<i32>(u_input.a, firstLeadingBit(firstTrailingBit(-1i)), 1i, ~global0.x)));
}

