struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 763f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2291f, global1.x, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, global1.x, global1.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1672f))), _wgslsmith_f_op_f32(551f - _wgslsmith_f_op_f32(global1.x - 496f)), global1.x)), vec3<f32>(_wgslsmith_f_op_f32(step(1037f, -553f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-241f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) + 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(287f)), 1000f)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1080f, global1.x, -262f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(134f, -1000f, global1.x)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, 1891f)))), all(vec4<bool>(true, true, true, true)))), vec3<f32>(-132f, -1000f, _wgslsmith_f_op_f32(max(3208f, -681f))))));
    return -1009f;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), global1.x), arg_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -658f)));
    global2 = Struct_1(~vec2<i32>(arg_2.b, _wgslsmith_mod_i32(1i, arg_2.b)), 14007i);
    global2 = Struct_1(firstTrailingBit(~(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 0i))), _wgslsmith_div_i32(~global3[_wgslsmith_index_u32(u_input.b, 16u)] << (~165u % 32u), global2.a.x) << (_wgslsmith_dot_vec2_u32(u_input.a >> (u_input.a % vec2<u32>(32u)), ~(~vec2<u32>(4294967295u, 4294967295u))) % 32u));
    var var_1 = ~(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, 0u, 548u))) ^ ~(~0u ^ (1u & u_input.a.x)));
    global2 = arg_2;
    return (17771i ^ firstLeadingBit(_wgslsmith_add_i32(arg_2.a.x & -1i, global2.a.x))) <= ~(-7647i);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = select(!select(vec4<bool>(arg_0 && true, func_2(vec3<f32>(global1.x, global1.x, -709f), -33357i, Struct_1(global2.a, -28018i)), !arg_0, arg_0), !(!vec4<bool>(true, arg_0, arg_0, arg_0)), false), !(!vec4<bool>(arg_0, arg_0, any(vec2<bool>(arg_0, false)), true)), all(!(!select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), true))));
    global1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-404f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, global1.x)), _wgslsmith_f_op_f32(-global1.x))), -1000f)));
    global1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(155f, 708f, 320f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -988f, global1.x), vec3<f32>(global1.x, -296f, global1.x), var_0.x)))), !var_0.xwz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(985f, 359f, global1.x)) * vec3<f32>(205f, global1.x, global1.x))))));
    var var_1 = ~_wgslsmith_div_u32(arg_1.x | _wgslsmith_clamp_u32(0u, ~1u, ~arg_1.x), ~min(_wgslsmith_mod_u32(9678u, u_input.a.x), 4294967295u));
    var var_2 = 333f;
    return select(!vec2<bool>(any(!vec3<bool>(var_0.x, false, true)), all(var_0.yx)), vec2<bool>(!(1000f <= _wgslsmith_f_op_f32(-global1.x)), arg_0), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, !(u_input.b != u_input.a.x)), func_1(!all(vec2<bool>(false, true)), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b)), vec2<bool>(any(vec3<bool>(false, true, false)), global3[_wgslsmith_index_u32(~0u, 16u)] == -18311i)), select(!vec2<bool>(true, all(vec3<bool>(true, true, false))), select(vec2<bool>(false, true), !func_1(true, vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.b)), _wgslsmith_div_f32(global1.x, global1.x) <= global1.x), false), vec2<bool>(select(true, true, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1308f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-12417i, global3[_wgslsmith_index_u32(0u, 16u)], 1i), vec3<i32>(26966i, -24397i, global2.b)), Struct_1(global2.a, global2.a.x))), false));
    var var_1 = Struct_2(Struct_1(-vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(0u & u_input.b, 16u)]), firstLeadingBit(~global2.b)), ~(~u_input.a), global1.x, global1.zx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 1421f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(1506f - global1.x)), _wgslsmith_div_f32(-821f, _wgslsmith_f_op_f32(global1.x * global1.x)))));
    var_0 = select(select(select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, true), u_input.a.x >= var_1.b.x), vec2<bool>(false, any(vec4<bool>(false, var_0.x, false, var_0.x))), !(!vec2<bool>(false, var_0.x))), vec2<bool>(global1.x <= _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_sub_i32(global2.a.x, -11462i) > 1i), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x)), func_1(false, vec4<u32>(8045u, var_1.b.x, 12368u, u_input.b)), func_1(var_0.x, vec4<u32>(u_input.a.x, var_1.b.x, var_1.b.x, 75949u)))), func_1(func_1(true, vec4<u32>(u_input.b, _wgslsmith_mod_u32(3789u, 27398u), firstTrailingBit(u_input.a.x), 614u)).x, select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1302u, var_1.b.x), vec4<u32>(4294967295u, 42127u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 61583u, var_1.b.x, u_input.b)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(39089u, 1u, 4294967295u, 0u), vec4<u32>(u_input.b, var_1.b.x, var_1.b.x, u_input.b)), u_input.a.x, var_1.b.x | 25661u), !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), var_0.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(global2.a, _wgslsmith_div_vec2_i32(-var_1.a.a, _wgslsmith_sub_vec2_i32(global2.a, var_1.a.a))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.b, var_1.a.a.x, 5248i), vec3<i32>(0i, global3[_wgslsmith_index_u32(22653u, 16u)], global3[_wgslsmith_index_u32(36550u, 16u)])), max(vec3<i32>(var_1.a.b, 2147483647i, 2147483647i), vec3<i32>(global2.a.x, global3[_wgslsmith_index_u32(4294967295u, 16u)], -7741i)))), ~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b.x, var_1.b.x), var_1.b, abs(vec2<u32>(9592u, var_1.b.x)))), -1470f, vec2<f32>(var_1.c, var_1.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.e)), var_1.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-982f, var_2.e.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(-775f, 291f)), var_1.e.x, 1i < var_2.a.b)))));
    global1 = var_1.e;
    var var_4 = 40513u;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(32288u, 16u)], vec3<f32>(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - -929f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e.x, var_3.x) * 679f) * 1129f)));
}

