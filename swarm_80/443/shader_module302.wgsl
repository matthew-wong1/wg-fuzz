struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(39209u, 1u, 4294967295u), vec3<u32>(4294967295u, 28785u, 94210u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4249u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 4294967295u, 227u), vec3<u32>(14537u, 1u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 5129u, 7707u), vec3<u32>(6766u, 37255u, 0u), vec3<u32>(4294967295u, 47445u, 4294967295u), vec3<u32>(4294967295u, 33012u, 0u), vec3<u32>(1u, 30376u, 4294967295u), vec3<u32>(1u, 5450u, 6460u), vec3<u32>(13683u, 4794u, 36659u), vec3<u32>(97770u, 21246u, 37129u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 91911u, 10420u), vec3<u32>(1u, 19535u, 4294967295u), vec3<u32>(4294967295u, 58271u, 4294967295u), vec3<u32>(42766u, 68996u, 8088u), vec3<u32>(1u, 48572u, 1u), vec3<u32>(0u, 1u, 1u));

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + arg_0.a), _wgslsmith_f_op_f32(-770f * _wgslsmith_f_op_f32(step(-980f, arg_0.a)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(global1.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-781f, 1724f, global1.a.x)))))))), ~firstLeadingBit(~_wgslsmith_mod_u32(global1.b, 10169u)), global1.d, !(!(!vec2<bool>(global1.c.x, false))));
    let var_0 = Struct_5(u_input.b, select(_wgslsmith_mult_vec4_u32(max(~vec4<u32>(25537u, global1.b, global1.b, 36402u), firstLeadingBit(vec4<u32>(u_input.d.x, 4294967295u, 1u, 1u))), vec4<u32>(0u, global1.b, 10110u, ~u_input.e)), vec4<u32>(29857u, global1.b, reverseBits(~u_input.e), 38711u), select(vec4<bool>(false, true, global1.d.x, false), vec4<bool>(false, true, all(vec4<bool>(true, global1.c.x, global1.c.x, global1.d.x)), global1.c.x), !vec4<bool>(true, true, global1.d.x, global1.c.x))), ~u_input.d);
    let var_1 = !(!select(!select(vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(false, global1.c.x, true), vec3<bool>(global1.d.x, false, false)), !(!vec3<bool>(false, true, global1.d.x)), true));
    global0 = array<vec3<u32>, 23>();
    let var_2 = arg_0;
    return global1.d;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = ~(~abs(u_input.d));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(-1000f, 2353f, 1464f))))), abs(4294967295u), global1.c, select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(global1.d, vec2<bool>(global1.c.x, true), vec2<bool>(global1.d.x, global1.d.x)), !global1.c.x), global1.c));
    let var_2 = !(!vec4<bool>(!(!var_1.c.x), false, any(vec4<bool>(global1.c.x, false, var_1.c.x, false)), abs(var_1.b) > ~var_1.b));
    global0 = array<vec3<u32>, 23>();
    let var_3 = Struct_2(global1.a, var_1.b, func_3(Struct_4(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(-37432i, u_input.b.x), abs(vec2<i32>(u_input.b.x, 2147483647i))), u_input.b.yyw)), func_3(Struct_4(var_1.a.x, u_input.b.ww, _wgslsmith_div_vec3_i32(vec3<i32>(20153i, 0i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a, u_input.b.x) >> (global0[_wgslsmith_index_u32(var_0.x, 23u)] % vec3<u32>(32u))))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -903f), 360f, _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f * -628f) * var_3.a.x))), _wgslsmith_mult_u32(select(~(~40503u), ~(62845u & var_0.x), any(vec2<bool>(true, true))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(31618u, 4294967295u, var_0.x, global1.b) & vec4<u32>(27258u, 0u, var_0.x, 12642u)), ~(~vec4<u32>(arg_0, 50811u, 13127u, u_input.e)))), var_1.c, vec2<bool>(var_1.c.x, _wgslsmith_mod_u32(1u ^ global1.b, 1u) < (var_3.b | abs(51579u))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    let var_0 = vec4<i32>(u_input.b.x >> ((_wgslsmith_div_u32(~0u, ~u_input.d.x) & global1.b) % 32u), u_input.b.x, arg_0, -select(-(u_input.b.x & u_input.b.x), -14056i, false));
    global2 = array<vec2<f32>, 28>();
    let var_1 = func_2(_wgslsmith_clamp_u32(global1.b, ~4294967295u, global1.b));
    return 2147483647i ^ _wgslsmith_dot_vec2_i32(-(~_wgslsmith_mod_vec2_i32(u_input.b.xy, u_input.b.zw)), countOneBits(vec2<i32>(-10292i, ~(-2147483647i))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_3 {
    global1 = func_2(firstTrailingBit(global1.b));
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = !(!func_3(arg_2).x);
    global1 = Struct_2(vec3<f32>(-1326f, -774f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.a)), arg_0)), ~_wgslsmith_add_u32(~(~1u), ~(~u_input.e)), vec2<bool>(!(!func_3(Struct_4(arg_0, u_input.b.ww, vec3<i32>(1i, u_input.c, -2147483647i))).x), true), func_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.e, 23u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.b, u_input.e, global1.b), vec3<u32>(60983u, 4294967295u, u_input.d.x))), global1.b, 4294967295u)).c);
    var var_2 = Struct_1(!select(!(!arg_3), vec3<bool>(false, var_1, false), vec3<bool>(all(vec4<bool>(true, global1.c.x, false, false)), arg_3.x, global1.c.x == false)), global1.b);
    return Struct_3(global1.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(145f, _wgslsmith_f_op_f32(arg_2.a + arg_0)), arg_2.a), vec2<f32>(188f, -1034f), all(!select(vec4<bool>(false, false, arg_3.x, var_2.a.x), vec4<bool>(var_1, false, false, global1.c.x), var_2.a.x)))), vec4<i32>(_wgslsmith_add_i32(u_input.a << (u_input.e % 32u), ~(i32(-1i) * -2147483647i)), func_1(39977i, _wgslsmith_f_op_vec3_f32(-global1.a)) | _wgslsmith_sub_i32(1i >> (0u % 32u), 0i), -(~0i), firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b.yww, vec3<i32>(arg_2.c.x, u_input.a, u_input.b.x) | u_input.b.xxy))), global1.a.x, -u_input.b.yxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit((vec3<i32>(~u_input.c, _wgslsmith_div_i32(-40219i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yz)) | u_input.b.zwz) >> (vec3<u32>(4294967295u, 61634u, 0u) % vec3<u32>(32u)));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(abs(u_input.e), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, global1.b, 0u, u_input.e), ~vec4<u32>(0u, u_input.e, 17460u, global1.b)), ~vec4<u32>(global1.b, u_input.d.x, 4294967295u, 29863u))), 1u, 0u);
    var var_2 = countOneBits(var_1.x);
    var var_3 = -vec3<i32>(var_0.x, -2147483647i, 1i);
    var var_4 = func_4(_wgslsmith_f_op_f32(select(724f, global1.a.x, all(!(!vec3<bool>(global1.c.x, global1.c.x, true))))), global1.a.x, Struct_4(global1.a.x, var_0.xy, -vec3<i32>(-33053i, i32(-1i) * -23229i, func_1(var_3.x, global1.a))), select(select(select(vec3<bool>(false, global1.c.x, global1.c.x), select(vec3<bool>(global1.d.x, global1.c.x, false), vec3<bool>(true, global1.c.x, global1.c.x), global1.c.x), vec3<bool>(global1.d.x, global1.c.x, global1.c.x)), select(vec3<bool>(global1.d.x, global1.c.x, true), select(vec3<bool>(global1.c.x, global1.c.x, false), vec3<bool>(global1.c.x, false, global1.c.x), vec3<bool>(true, true, global1.c.x)), false), true), select(select(select(vec3<bool>(global1.d.x, false, false), vec3<bool>(false, global1.c.x, global1.d.x), false), !vec3<bool>(false, global1.d.x, false), any(vec4<bool>(false, false, global1.d.x, false))), !vec3<bool>(true, global1.c.x, false), select(!vec3<bool>(global1.d.x, global1.d.x, false), !vec3<bool>(false, true, global1.d.x), all(vec2<bool>(global1.d.x, true)))), select(select(!vec3<bool>(global1.c.x, false, global1.c.x), vec3<bool>(true, global1.c.x, global1.c.x), vec3<bool>(true, global1.d.x, global1.c.x)), !vec3<bool>(false, true, global1.d.x), !(!vec3<bool>(global1.d.x, false, true)))));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - _wgslsmith_f_op_vec3_f32(floor(global1.a))))), 0u, func_2(1u).d, vec2<bool>(true, global1.d.x));
    let var_5 = vec3<bool>(global1.d.x, func_2(~((var_4.a | 4294967295u) ^ u_input.e)).c.x, !any(!(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_4.c.x, var_3.x));
}

