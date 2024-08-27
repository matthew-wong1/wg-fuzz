struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: array<vec4<u32>, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    global0 = array<vec4<u32>, 30>();
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 0u, arg_1.x), vec3<u32>(arg_2, arg_2, arg_1.x)), vec3<u32>(10697u, u_input.c, 31236u)), min(arg_2, arg_2 | arg_1.x)), arg_2, 1u), abs(0u), ~_wgslsmith_sub_u32(arg_1.x, ~arg_1.x) ^ ~u_input.c, _wgslsmith_dot_vec4_u32(~select(~arg_1, ~arg_1, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, reverseBits(arg_2), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(76430u, 30u)], vec4<u32>(arg_1.x, 1u, 1u, arg_2)), arg_2 & u_input.c), min(firstLeadingBit(vec4<u32>(arg_2, 30195u, 13131u, 15391u)), global0[_wgslsmith_index_u32(arg_2, 30u)]))));
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(-u_input.b, 2147483647i, 0i);
    var_1 = vec3<i32>(var_1.x, (_wgslsmith_div_i32(-38736i, var_1.x) & -2741i) << (16131u % 32u), -1i);
    let var_2 = Struct_1(select(arg_0.x, true, !all(vec3<bool>(arg_0.x, false, true))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-183f)) + _wgslsmith_f_op_f32(913f + -1225f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-109f)))), _wgslsmith_f_op_f32(f32(-1f) * -1493f)), !select(vec4<bool>(arg_0.x, true, arg_0.x, false && arg_0.x), select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(true, false, arg_0.x, false), arg_0.x), true), _wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_1.x, 0u) << (vec2<u32>(var_0.x, 34388u) % vec2<u32>(32u))), ~var_0.yy));
    return var_1.x;
}

fn func_2(arg_0: u32) -> Struct_4 {
    global0 = array<vec4<u32>, 30>();
    let var_0 = vec3<bool>((true | (-1i == func_3(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(1u, 30u)], arg_0))) && true, true, (_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-277f, -720f))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-660f))))) && true);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1035f, 100f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(179f, 1192f) - vec2<f32>(-668f, 1631f)), vec2<f32>(1014f, -491f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(676f, 948f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1340f, 576f) * vec2<f32>(934f, -649f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-191f + 525f), -189f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1219f)), _wgslsmith_f_op_f32(f32(-1f) * -1377f)))), true));
    let var_2 = Struct_1(all(var_0.zz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2178f, var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - var_1.x))), var_1.x)), !vec4<bool>(var_0.x, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), false)), true & !var_0.x, all(vec2<bool>(var_0.x, var_0.x))), arg_0);
    let var_3 = Struct_2(-firstTrailingBit(_wgslsmith_mult_i32(34487i, abs(u_input.a.x))), ~_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(31587i, u_input.a.x, -25971i, u_input.b), vec4<i32>(u_input.a.x, 48884i, u_input.a.x, 1i))), vec4<i32>(u_input.a.x, u_input.a.x, -5205i, -34971i)), _wgslsmith_sub_u32(74804u, _wgslsmith_mult_u32(50074u, select(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 44923u), vec2<u32>(75834u, arg_0)), true))));
    return Struct_4(Struct_3(var_3), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b.x)) + _wgslsmith_f_op_f32(select(-1202f, 990f, var_2.c.x))), _wgslsmith_f_op_f32(-1000f * var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.x), var_1.x)), _wgslsmith_f_op_f32(var_2.b.x + var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(165f, var_2.b.x)))) * var_2.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_2.b.x) - var_2.b.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32) -> u32 {
    global0 = array<vec4<u32>, 30>();
    var var_0 = select(vec2<bool>(425f >= arg_0.a.b.x, select(false, true, true)), vec2<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true), any(vec4<bool>(false, select(arg_1.a.c <= 1u, 514f < arg_0.a.b.x, true), true, select(true, any(vec2<bool>(true, true)), false))));
    global0 = array<vec4<u32>, 30>();
    var var_1 = var_0.x;
    let var_2 = select((~(~vec2<u32>(arg_0.a.a.a.c, 9334u)) ^ select(max(vec2<u32>(arg_2, u_input.c), vec2<u32>(arg_0.a.a.a.c, arg_1.a.c)), vec2<u32>(8501u, arg_1.a.c), vec2<bool>(false, true))) & ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_1.a.c, 1u)), vec2<u32>(18856u, u_input.c) ^ vec2<u32>(u_input.c, 1u)), select((vec2<u32>(42877u, 0u) | firstLeadingBit(vec2<u32>(38677u, arg_2))) & vec2<u32>(arg_0.a.a.a.c, _wgslsmith_mult_u32(arg_0.a.a.a.c, u_input.c)), ~(~vec2<u32>(12137u, arg_0.a.a.a.c) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(arg_2, 0u)) % vec2<u32>(32u))), true), !(var_0.x && true));
    return abs(~7385u);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), global0[_wgslsmith_index_u32(u_input.c, 30u)] ^ global0[_wgslsmith_index_u32(u_input.c, 30u)]), ~global0[_wgslsmith_index_u32(51980u, 30u)] >> (vec4<u32>(24046u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), ~14738u, func_4(Struct_5(func_2(1u), arg_0, vec2<i32>(u_input.a.x, u_input.b)), Struct_3(func_2(47659u).a.a), ~(~8628u)));
    global0 = array<vec4<u32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(-441f + arg_0.x);
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(~(~2147483647i), u_input.b, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, 607f, -711f))))));
    global0 = array<vec4<u32>, 30>();
    var var_1 = func_2(67304u).a.a;
    let var_2 = Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(926f + -494f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1276f * 213f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -801f)), -240f)), !vec4<bool>(false, false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), any(vec4<bool>(false, true, true, false)) && true), ~(~var_0.a.c));
    var_1 = Struct_2(countOneBits(~0i), u_input.a.x, _wgslsmith_clamp_u32(var_2.d, u_input.c, _wgslsmith_add_u32(var_1.c, ~_wgslsmith_div_u32(46435u, 61709u))));
    let var_3 = var_2.b.zw;
    let var_4 = var_2;
    global0 = array<vec4<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-491f, var_4.b.x)));
}

