struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    return arg_0.c.x;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = u_input.c;
    var_0 = 1u;
    var_0 = select(~_wgslsmith_mod_u32(~(~4294967295u), ~u_input.c), u_input.c, true);
    var_0 = ~(~_wgslsmith_div_u32(u_input.c, u_input.c));
    var var_1 = u_input.a.x;
    return !(!vec3<bool>(func_3(Struct_3(698f, Struct_1(-30831i), arg_1.xx), Struct_1(u_input.a.x), u_input.a), all(arg_1), true));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global0 = array<vec3<u32>, 8>();
    var var_0 = !(!func_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.b), 10327u), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_3(-1230f, Struct_1(-67013i), var_0.xx);
    let var_2 = u_input.a.x;
    global0 = array<vec3<u32>, 8>();
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a * -218f), 909f)), _wgslsmith_div_f32(var_1.a, 982f), -1234f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), -1176f, _wgslsmith_f_op_f32(-567f * 727f)))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> u32 {
    global0 = array<vec3<u32>, 8>();
    var var_0 = _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_vec3_f32(func_1(u_input.a.x)).x);
    let var_1 = ~max(15821i, firstLeadingBit(arg_0.x));
    var var_2 = 1i;
    var var_3 = Struct_1(var_1);
    return countOneBits(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    let var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(15222i, u_input.a.x, 9292i), u_input.a), u_input.a)), -u_input.a);
    let var_1 = vec2<u32>(func_4(~min(abs(vec4<i32>(-14989i, 2147483647i, u_input.a.x, var_0)), firstTrailingBit(vec4<i32>(2147483647i, 22091i, 1i, 1i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(284f))), 2022f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(-2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(abs(1784f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1055f, -519f, true)) - _wgslsmith_f_op_f32(-1581f * -632f)))), _wgslsmith_dot_vec3_u32(abs(~countOneBits(global0[_wgslsmith_index_u32(u_input.b, 8u)])), max(global0[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 48012u, u_input.b), vec3<u32>(14080u, u_input.b, u_input.b)))));
    global0 = array<vec3<u32>, 8>();
    var var_2 = Struct_1(0i);
    var_2 = Struct_1(_wgslsmith_mult_i32(-max(-var_2.a, 20706i), min(_wgslsmith_clamp_i32(1i, var_2.a, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, 1i, 8431i))), -var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_clamp_vec4_u32(max(~vec4<u32>(var_1.x, var_1.x, 0u, 0u) | vec4<u32>(u_input.b, 0u, 4294967295u, var_1.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 31203u, u_input.b), vec4<u32>(var_1.x, 4294967295u, u_input.b, u_input.b))), vec4<u32>(~60654u | ~var_1.x, 1u, _wgslsmith_sub_u32(4294967295u, u_input.c << (u_input.b % 32u)), ~abs(67036u)), countOneBits(vec4<u32>(1u, _wgslsmith_add_u32(4788u, u_input.c), var_1.x, ~1u))), ~(~(~vec4<u32>(u_input.c, 30306u, u_input.b, u_input.c))), abs(global0[_wgslsmith_index_u32(~func_4(vec4<i32>(34238i, u_input.a.x, 2657i, -14774i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, -623f, 806f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(113f, 796f, 780f) + vec3<f32>(263f, -1172f, -837f)), _wgslsmith_div_vec2_f32(vec2<f32>(813f, -798f), vec2<f32>(141f, 530f))), 8u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1, var_1 & vec2<u32>(u_input.c, u_input.b)), abs(u_input.c | 27007u), ~(~1u)), max(global0[_wgslsmith_index_u32(~(u_input.b << (var_1.x % 32u)), 8u)], vec3<u32>(~var_1.x, 0u ^ var_1.x, _wgslsmith_div_u32(70345u, 40224u)))));
}

