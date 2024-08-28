struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 0i, 1i, 1i);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<bool>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~_wgslsmith_sub_u32(u_input.c.x, ~1u), u_input.c.x));
    return Struct_1(var_0.a << (u_input.c.zz % vec2<u32>(32u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    global1 = u_input.b.yyy;
    let var_0 = true;
    global2 = array<vec2<bool>, 30>();
    let var_1 = ~select(-vec4<i32>(global0.x, global0.x, u_input.a, 0i), (vec4<i32>(-22833i, 58528i, 18413i, 1i) << (vec4<u32>(global1.x, 7632u, 48431u, 38241u) % vec4<u32>(32u))) | (vec4<i32>(1i, 0i, u_input.d, -1i) >> (u_input.b % vec4<u32>(32u))), select(vec4<bool>(var_0, true, arg_0.x, var_0), !arg_0, !arg_0)) >> (_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(select(u_input.b, vec4<u32>(2368u, 0u, 49425u, arg_1.a.x), !var_0), abs(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(global1.x, 4687u, u_input.c.x, arg_1.a.x))))) % vec4<u32>(32u));
    let var_2 = reverseBits(select(abs(u_input.b.zyx), ~(~(~u_input.b.ywx)), !arg_0.x));
    return vec2<u32>(1u, 1u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    global1 = (vec3<u32>(global1.x | ~global1.x, 11179u, _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.a.x, 1u), 11691u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.a, u_input.b.wz), ~4294967295u, 0u), abs(vec3<u32>(1u, 4294967295u, 4294967295u)), ~reverseBits(vec3<u32>(u_input.e, 15031u, 41930u)))) & _wgslsmith_sub_vec3_u32(abs(u_input.b.wzz), countOneBits(~(~vec3<u32>(global1.x, 17788u, 55929u))));
    global2 = array<vec2<bool>, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-340f, 1135f, true)))), _wgslsmith_f_op_f32(trunc(-1406f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(814f * -1505f)))))));
    global0 = _wgslsmith_div_vec4_i32(select(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, -1i, u_input.d, global0.x), select(vec4<i32>(global0.x, u_input.d, u_input.a, 0i), vec4<i32>(global0.x, -42793i, 19170i, -2257i), vec4<bool>(true, arg_0.x, false, true))), firstTrailingBit(vec4<i32>(global0.x, -1i, 17697i, u_input.d)), vec4<bool>(all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_0.x, select(arg_0.x, true, true), arg_0.x)), vec4<i32>(min(-2147483647i, ~1i), 0i << (~arg_1.a.x % 32u), _wgslsmith_mod_i32(u_input.a, ~global0.x), global0.x)) ^ ~vec4<i32>(-global0.x, u_input.a, 1849i, 2487i);
    var var_1 = Struct_1(~((func_3(vec4<bool>(arg_0.x, true, false, false), Struct_1(vec2<u32>(4294967295u, arg_1.a.x))) | ~vec2<u32>(global1.x, 25113u)) | vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~global1.x)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(select(!vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), vec3<bool>(all(global2[_wgslsmith_index_u32(u_input.c.x, 30u)]) && true, select(true, true, true), all(vec4<bool>(true, false, false, false))), global0.x != _wgslsmith_add_i32(~0i, u_input.d | global0.x)), func_1());
    global2 = array<vec2<bool>, 30>();
    let var_1 = false & (any(vec3<bool>(true, true, global1.x != 61192u)) || (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(606f)), _wgslsmith_div_f32(1751f, -281f), false)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(570f))))));
    var var_2 = _wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1954f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f + -251f))) + 1774f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-214f)) * -243f);
    let var_3 = select(var_1, var_1, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(21841i, global0.x, global0.x), global0.wxz), global0.x), ~61168u, global0.x, abs(global0.wy & max(~vec2<i32>(-33319i, -1i), vec2<i32>(global0.x, global0.x) | vec2<i32>(2147483647i, u_input.a))));
}

