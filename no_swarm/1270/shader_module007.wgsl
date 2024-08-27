struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_4;

var<private> global2: array<i32, 32> = array<i32, 32>(-1i, 1i, 0i, i32(-2147483648), -1i, 81441i, 0i, 2147483647i, 0i, -21509i, 0i, -31075i, -18608i, 1i, 0i, 0i, -1i, -9499i, 1i, 2147483647i, -3101i, -1i, -31292i, 14601i, 1i, -30836i, -1i, -12540i, -12559i, -1i, 1i, -6613i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = firstLeadingBit(vec2<i32>(min(-firstLeadingBit(2147483647i), abs(u_input.b.x ^ global2[_wgslsmith_index_u32(61750u, 32u)])), max(-2216i, -36036i)));
    var var_1 = global1.a;
    global0 = countOneBits(max(~(~(vec3<u32>(76215u, global0.x, 42353u) << (vec3<u32>(global0.x, 1u, 22755u) % vec3<u32>(32u)))), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29221u, 19445u), vec3<u32>(4294967295u, 1u, 7195u)) >> (countOneBits(0u) % 32u), min(global0.x ^ var_1.e.x, 22232u ^ global1.a.d))));
    var_1 = global1.a;
    global0 = ~(~(reverseBits(vec3<u32>(29986u, global1.a.d, 53144u)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(8726u, global0.x, 0u), vec3<u32>(12728u, u_input.a, var_1.d))));
    return ~select(1u, global0.x, all(!vec3<bool>(var_1.b, var_1.b, global1.b))) & u_input.a;
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.c.a.x)), global1.a.a)));
    global0 = vec3<u32>(~1u, 0u, firstTrailingBit(~(func_3(global1.a.a) << (~4294967295u % 32u))));
    global0 = abs(firstTrailingBit(vec3<u32>(10730u, 96537u, _wgslsmith_add_u32(u_input.a & 0u, _wgslsmith_div_u32(global0.x, 4294967295u)))));
    global0 = firstLeadingBit(vec3<u32>(u_input.a, u_input.a, global0.x)) | ~vec3<u32>(firstTrailingBit(4294967295u), select(abs(15116u), 1u, any(vec2<bool>(false, global1.a.c))), u_input.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global1.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.x, var_0.x, var_0.x, -1779f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1.a.a, -1604f, var_0.x)))), true)));
    return global1.a;
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = global1.c.a.zx;
    let var_1 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-global1.c.a));
    let var_3 = func_2(Struct_5(~abs(-global1.d)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_div_vec4_f32(vec4<f32>(760f, 1470f, 1589f, 767f), _wgslsmith_f_op_vec4_f32(-global1.c.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, func_2(Struct_5(-12748i)).a, func_2(Struct_5(global1.d)).a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1030f, var_3.a, 1000f, var_2.a.x))))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1514f, var_0.x, 1367f, var_0.x) - var_4.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.x));
    let var_1 = 907f;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, -491f), 460f)), -2841f, -1000f) * global1.c.a), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_i32(global1.d, 1i)))), global1.a.c));
    global0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, ~(~0u), 1u), vec3<u32>(~min(13434u, global1.a.d), ~4294967295u, 50555u));
    global0 = min(_wgslsmith_clamp_vec3_u32(vec3<u32>(~firstLeadingBit(u_input.a), func_2(Struct_5(57263i)).e.x | ~32199u, _wgslsmith_mult_u32(global0.x, _wgslsmith_add_u32(u_input.a, 61634u))), vec3<u32>(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(4294967295u, global1.a.e.x)), 4294967295u, 1u), vec3<u32>(global1.a.d >> (1u % 32u), 0u, ~(~global1.a.e.x))), ~select(select(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(global0.x, 58626u, 47610u), any(vec2<bool>(global1.b, global1.b))), abs(vec3<u32>(u_input.a, 42846u, global0.x) & vec3<u32>(global0.x, global1.a.e.x, 20491u)), global1.b));
    var var_3 = Struct_5(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.yz, vec2<u32>(u_input.a, 10383u)), countOneBits(_wgslsmith_mod_u32(global1.a.d, 30057u)))), 32u)]);
    var var_4 = any(!select(vec3<bool>(false, true, global1.a.c), vec3<bool>(true, any(vec2<bool>(false, global1.a.b)), global1.b), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~vec3<u32>(~4294967295u, ~4294967295u, global0.x), select(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.e.x, 67200u, global0.x) ^ vec3<u32>(u_input.a, 4294967295u, 20841u), vec3<u32>(7620u, global1.a.d, 13661u)), countOneBits(vec3<u32>(35457u, global1.a.e.x, global0.x) | vec3<u32>(4294967295u, global0.x, 44595u)), vec3<bool>(any(vec4<bool>(false, false, global1.b, false)), !global1.a.c, !global1.a.c)), max(abs(vec3<u32>(u_input.a, 22582u, u_input.a)), ~vec3<u32>(27394u, u_input.a, u_input.a)) | _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(4527u, 40890u, 26372u), firstTrailingBit(vec3<u32>(2388u, global0.x, global0.x)))), u_input.b);
}

