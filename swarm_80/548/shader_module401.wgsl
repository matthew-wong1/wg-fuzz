struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(25095u, 15950u, 40587u, 0u), vec4<u32>(26633u, 27119u, 86186u, 36780u), vec4<u32>(73119u, 51948u, 0u, 4799u), vec4<u32>(46334u, 0u, 52569u, 8584u), vec4<u32>(38384u, 8554u, 3217u, 0u), vec4<u32>(0u, 55896u, 76163u, 65163u), vec4<u32>(0u, 0u, 26853u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(49391u, 0u, 90849u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 47014u), vec4<u32>(15063u, 1u, 4294967295u, 0u), vec4<u32>(24384u, 1u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 4799u, 1u));

var<private> global2: array<vec2<i32>, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<bool> {
    var var_0 = vec4<bool>(arg_1, !arg_1, arg_1, true);
    global0 = true;
    global0 = !arg_1;
    return select(vec4<bool>(true, false, all(select(vec2<bool>(var_0.x, arg_1), !var_0.yz, !var_0.zy)), _wgslsmith_f_op_f32(ceil(-508f)) > _wgslsmith_div_f32(-1973f, _wgslsmith_f_op_f32(f32(-1f) * -688f))), vec4<bool>(var_0.x | any(vec4<bool>(false, true, var_0.x, arg_1)), true, true, true), !(!(!vec4<bool>(true, false, var_0.x, arg_1))));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), -2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1078f, 182f), _wgslsmith_f_op_f32(floor(var_0)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -311f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, -862f, arg_0, -3065f))))))));
    global2 = array<vec2<i32>, 17>();
    let var_3 = ~_wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(-30063i, 19033i, u_input.b.x, var_1.b), vec4<i32>(1i, -50754i, u_input.d.x, -2147483647i), true)), u_input.b);
    return 26850u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.c.yy;
    global0 = _wgslsmith_mod_u32(23769u & _wgslsmith_add_u32(func_3(1193f, arg_2.b.a.x), _wgslsmith_clamp_u32(848u, 0u, 72622u)), select(var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(6492u, u_input.a, u_input.a), vec3<u32>(0u, var_0.x, var_0.x)), true | any(arg_1.yyw))) < reverseBits(21477u);
    let var_1 = -vec4<i32>(-2147483647i, u_input.b.x, min(_wgslsmith_add_i32(~1i, ~arg_0.x), arg_0.x), _wgslsmith_sub_i32(u_input.b.x, ~select(61467i, -2147483647i, true)));
    var var_2 = -1929f;
    var var_3 = select(arg_1, select(!arg_1, func_1(~(~u_input.e), arg_2.b.a.x > _wgslsmith_div_f32(arg_2.b.a.x, arg_2.b.a.x)), false), !func_1(~min(0u, 1762u), arg_1.x));
    return Struct_1(true, vec3<u32>(var_0.x, u_input.c.x, ~_wgslsmith_clamp_u32(countOneBits(5101u), firstTrailingBit(u_input.c.x), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, true, select(true, true, true)), vec4<bool>(true, true, u_input.e >= 33639u, true), func_1(1u, true));
    let var_1 = abs(u_input.b.x << ((4294967295u >> ((4294967295u >> (~u_input.c.x % 32u)) % 32u)) % 32u));
    global0 = ~(-(~(i32(-1i) * -26505i))) <= ~_wgslsmith_mult_i32(select(1i, i32(-1i) * -1i, true), firstTrailingBit(14967i));
    var var_2 = -(~u_input.b.x);
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(var_1, u_input.b.x | 1i), _wgslsmith_mult_i32(36440i, -12339i), 2147483647i);
    let var_4 = func_2(u_input.b, !func_1(~select(u_input.c.x, 34740u, true), var_0.x), Struct_3(func_1(u_input.e, any(!var_0.zz)).yx, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(307f, -829f) * vec2<f32>(746f, 687f)) + vec2<f32>(-735f, 993f)), 1i), -u_input.d.x), true);
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1452f, 552f, var_0.x)), _wgslsmith_div_f32(-2031f, -456f))) + 1f)))));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(u_input.c << (vec4<u32>(var_4.b.x, 4294967295u, var_4.b.x, var_4.b.x) % vec4<u32>(32u)))), var_4.b.zx, _wgslsmith_div_vec2_i32(vec2<i32>(27252i, i32(-1i) * -5462i), -select(vec2<i32>(u_input.d.x, u_input.d.x) >> (vec2<u32>(13159u, 1u) % vec2<u32>(32u)), countOneBits(vec2<i32>(var_3.x, u_input.d.x)), var_0.yz)), firstTrailingBit(reverseBits(~0u << (u_input.a % 32u))));
}

