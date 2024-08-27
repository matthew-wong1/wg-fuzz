struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(0u, 17394u, 0u, 14012u), vec4<u32>(66458u, 73120u, 0u, 1u), vec4<u32>(0u, 1u, 37700u, 0u), vec4<u32>(37640u, 0u, 1u, 0u), vec4<u32>(0u, 4294967295u, 1u, 54196u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(46491u, 4294967295u, 60643u, 1u), vec4<u32>(0u, 0u, 45798u, 1u), vec4<u32>(0u, 4294967295u, 1u, 1131u), vec4<u32>(1u, 1u, 23560u, 0u), vec4<u32>(8840u, 4294967295u, 4294967295u, 1u), vec4<u32>(5837u, 0u, 4294967295u, 0u), vec4<u32>(85850u, 0u, 1u, 209u), vec4<u32>(76116u, 4294967295u, 40063u, 28250u), vec4<u32>(27599u, 34853u, 4294967295u, 24820u), vec4<u32>(4294967295u, 4294967295u, 0u, 142436u), vec4<u32>(4748u, 7905u, 0u, 4294967295u), vec4<u32>(54381u, 38515u, 0u, 95141u), vec4<u32>(25378u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 0u, 7933u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(5449u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 11172u, 75206u, 51798u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global1 = array<vec4<u32>, 23>();
    global1 = array<vec4<u32>, 23>();
    global1 = array<vec4<u32>, 23>();
    global1 = array<vec4<u32>, 23>();
    let var_0 = global0.b;
    return Struct_2(firstLeadingBit(~62083u), Struct_1(vec4<f32>(480f, 167f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(global0.b.a.x * var_0.a.x), true)), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-var_0.a.x))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = func_1(global0.b.a.zy);
    let var_1 = countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.c.xxx), -(~u_input.c.x), ~(u_input.c.x << (var_0.a % 32u))) | -vec3<i32>(2147483647i, 31274i, 21035i));
    global1 = array<vec4<u32>, 23>();
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(arg_1.a.zx).b.a.x, 1873f, _wgslsmith_f_op_f32(-arg_1.a.x), 485f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 2650f, arg_1.a.x, var_2.b.a.x) + var_2.b.a)))));
    return ~abs(global0.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<f32> {
    global0 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -1247f) * vec2<f32>(arg_1.a.x, -369f))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-global0.b.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.a.yx, _wgslsmith_f_op_vec2_f32(-arg_1.a.yz))))));
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(15910u, global0.a), 63291u, u_input.b), 61594u | ~global0.a, 1u, func_3(vec3<bool>(true, true, true), global0.b)), reverseBits(vec4<u32>(_wgslsmith_add_u32(u_input.b, 60212u), firstTrailingBit(u_input.b), 97301u, _wgslsmith_mult_u32(u_input.b, u_input.b)))), func_1(arg_0.xy).b);
    global1 = array<vec4<u32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(715f + _wgslsmith_f_op_f32(global0.b.a.x * arg_0.x)) * _wgslsmith_f_op_f32(ceil(func_1(arg_1.a.ww).b.a.x)))));
    let var_2 = !(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(true & (false && (true && any(vec4<bool>(false, true, false, false)))));
    let var_1 = vec2<u32>(~(select(4294967295u, u_input.b, false) ^ _wgslsmith_div_u32(global0.a, global0.a)), global0.a) >> (vec2<u32>(~(~global0.a), firstLeadingBit(_wgslsmith_div_u32(u_input.b, min(u_input.b, u_input.b)))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_div_vec4_u32(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(29477u, 24136u, 16041u) | (21326u >> (1u % 32u)), 23u)]), vec4<u32>(global0.a, var_1.x & 3197u, 1u, global0.a)) << (firstTrailingBit(~global1[_wgslsmith_index_u32(4294967295u, 23u)] & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, ~94293u), 23u)]) % vec4<u32>(32u));
    var var_3 = vec2<bool>(!(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))) & true), false);
    let var_4 = true;
    var var_5 = Struct_2(firstTrailingBit(83868u) >> (global0.a % 32u), global0.b);
    let var_6 = !(!vec4<bool>(var_5.a == _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 1u), var_1), any(select(vec2<bool>(true, true), vec2<bool>(var_3.x, false), true)), any(select(vec3<bool>(true, true, var_4), vec3<bool>(false, var_3.x, var_3.x), var_4)), true));
    var var_7 = func_1(var_5.b.a.zz);
    let var_8 = vec2<u32>(7533u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1224f, global0.b.a.x, var_5.b.a.x, -934f), global0.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global0.b.a, Struct_1(var_5.b.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_7.b.a * _wgslsmith_div_vec4_f32(vec4<f32>(var_5.b.a.x, var_5.b.a.x, var_5.b.a.x, 1000f), vec4<f32>(var_7.b.a.x, global0.b.a.x, 139f, 1098f))))), vec2<u32>(func_3(vec3<bool>(var_6.x != false, all(var_6.wzy), var_4), var_7.b), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~1u, ~u_input.b), ~(~var_2.ywx))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(abs(-u_input.c.zww), reverseBits(vec3<i32>(u_input.a.x, 1i, 0i)) << (vec3<u32>(1u, 42267u, 16925u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(abs(reverseBits(vec3<i32>(-29010i, u_input.a.x, -2147483647i))), -(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x))), -(vec3<i32>(-1i, -51533i, 23476i) << (var_2.xxx % vec3<u32>(32u)))), -1i);
}

