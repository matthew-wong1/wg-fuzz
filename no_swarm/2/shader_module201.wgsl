struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true));

var<private> global1: array<u32, 18>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 29>;

var<private> global4: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec4<u32>) -> f32 {
    global1 = array<u32, 18>();
    var var_0 = (u_input.a ^ u_input.a) ^ u_input.a;
    global4 = array<Struct_1, 15>();
    return arg_2.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-u_input.a.x >> (0u % 32u), 45885i), -u_input.a.x | -2147483647i, abs(-2810i));
    var var_1 = Struct_3(arg_1.b.xy, Struct_2(arg_0.xy, abs(min(arg_1.b, _wgslsmith_clamp_vec3_u32(arg_1.b, vec3<u32>(global1[_wgslsmith_index_u32(arg_0.x, 18u)], 0u, arg_0.x), vec3<u32>(1106u, 0u, arg_1.a.x)))), reverseBits(_wgslsmith_mod_u32(arg_0.x, arg_0.x)), -select(~u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, var_0.x), var_0.xz), false)));
    let var_2 = vec3<u32>(~(1u & arg_1.b.x), firstTrailingBit(var_1.a.x >> (_wgslsmith_mult_u32(~4294967295u, arg_1.a.x) % 32u)), abs(arg_1.a.x << (75562u % 32u)));
    global3 = array<vec3<bool>, 29>();
    var_1 = Struct_3(var_1.a, var_1.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 532f, 221f, 1486f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(920f, 1000f, -595f, 927f), vec4<f32>(642f, -880f, 2144f, 308f), true)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1355f, -1134f, 374f, 2126f) - vec4<f32>(-1737f, -626f, -631f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1375f, -1671f, -589f) + vec4<f32>(-160f, -1176f, 124f, 2155f))), vec4<f32>(_wgslsmith_f_op_f32(-662f + -517f), -1116f, _wgslsmith_f_op_f32(-1061f + 1902f), 820f)))));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-574f, 351f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(global2.a), 0i, Struct_3(vec2<u32>(0u, arg_0.x), Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 18u)], 18u)], 1u), vec3<u32>(arg_0.x, 65747u, 59668u), global1[_wgslsmith_index_u32(arg_0.x, 18u)], vec2<i32>(-4249i, u_input.a.x)))), vec4<i32>(0i, -66947i, 57094i, u_input.a.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 18u)], global1[_wgslsmith_index_u32(11183u, 18u)], 4294967295u, arg_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1434f, 1043f))), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(arg_0.x, 18u)], 4294967295u, arg_0.x)))))));
    let var_1 = global2.a.x;
    let var_2 = _wgslsmith_add_u32(_wgslsmith_mult_u32(51140u, 27416u), ~((~4294967295u >> (firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 18u)], 18u)]) % 32u)) << (4294967295u % 32u)));
    global3 = array<vec3<bool>, 29>();
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-935f, -262f)), _wgslsmith_f_op_f32(trunc(262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-574f + -133f))), -600f, _wgslsmith_f_op_f32(-1f), -959f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 15681u), Struct_2(arg_0, vec3<u32>(16647u, 1u, 0u), var_2, vec2<i32>(u_input.a.x, 2147483647i)))) - vec4<f32>(-701f, _wgslsmith_f_op_f32(395f + -930f), _wgslsmith_div_f32(-502f, -1000f), -504f))));
    return StorageBuffer(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 18u)])), firstLeadingBit(max(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(18278i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(38675i, 19798i, u_input.a.x, u_input.a.x)), vec4<i32>(-15060i, u_input.a.x, 0i, u_input.a.x) | vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(0i, -2147483647i, u_input.a.x, -10144i), vec4<i32>(455i, u_input.a.x, -2147483647i, u_input.a.x), false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i) | vec4<i32>(40170i, -1i, 36298i, u_input.a.x)))), countOneBits(-54690i), ~_wgslsmith_div_vec3_i32(max(-vec3<i32>(33089i, 38036i, -15757i), -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -16653i, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~vec2<u32>(_wgslsmith_mod_u32(4495u, 0u & global1[_wgslsmith_index_u32(0u, 18u)]), firstTrailingBit(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10297u, 18u)], 18u)]))));
}

