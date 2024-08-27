struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1124f, 774f), vec2<f32>(-540f, -271f), vec2<f32>(-366f, -869f), vec2<f32>(-1180f, -348f), vec2<f32>(1369f, 262f), vec2<f32>(-332f, -649f), vec2<f32>(895f, -1209f), vec2<f32>(-1000f, -250f), vec2<f32>(883f, -765f), vec2<f32>(659f, 471f), vec2<f32>(-1609f, 542f), vec2<f32>(427f, 1343f), vec2<f32>(1694f, 1004f), vec2<f32>(1298f, 1849f), vec2<f32>(-502f, -1017f), vec2<f32>(985f, -2257f), vec2<f32>(-1000f, -865f), vec2<f32>(-399f, -248f), vec2<f32>(2209f, 2036f), vec2<f32>(-1000f, 154f), vec2<f32>(1724f, -231f), vec2<f32>(752f, -192f), vec2<f32>(-224f, -1071f), vec2<f32>(1620f, -506f), vec2<f32>(1080f, -288f), vec2<f32>(2058f, 2018f));

var<private> global1: u32;

var<private> global2: vec3<u32>;

var<private> global3: f32;

var<private> global4: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global2 = u_input.b;
    var var_0 = -u_input.e.x;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(1602f, -1103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(196f + -840f) + _wgslsmith_f_op_f32(f32(-1f) * -710f)) * -1741f) - -151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(540f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-840f))))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x);
    var_0 = u_input.c.x ^ -9382i;
    return ~firstTrailingBit(~u_input.b);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global2 = vec3<u32>(u_input.d.x, _wgslsmith_add_u32(countOneBits(max(u_input.b.x, abs(4294967295u))), ~min(10580u, global2.x ^ 24472u)), 0u);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1350f + -868f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(202f * -163f), _wgslsmith_f_op_f32(floor(120f))))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(reverseBits(reverseBits(~u_input.a)), 26u)]);
    global0 = array<vec2<f32>, 26>();
    let var_1 = Struct_1(func_3(select(_wgslsmith_clamp_i32(u_input.c.x, 1i, 7459i), 0i, 477f < var_0.x) & u_input.c.x));
    return true;
}

fn func_4(arg_0: u32, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, abs(~65558u), 1u), vec3<u32>(~35020u, _wgslsmith_mult_u32(~(u_input.d.x | global2.x), ~(~u_input.b.x)), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 8731u, u_input.d.x))));
    let var_1 = ~var_0.x;
    global1 = abs(4294967295u);
    global2 = u_input.b;
    var_0 = abs(u_input.b);
    return _wgslsmith_sub_i32(37331i, u_input.c.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0));
    let var_1 = Struct_1(u_input.b << (vec3<u32>(_wgslsmith_div_u32(~21982u, 20663u), 0u, ~1u) % vec3<u32>(32u)));
    let var_2 = var_1;
    let var_3 = min(_wgslsmith_mult_i32(-reverseBits(u_input.e.x), func_4(var_1.a.x, func_2(vec4<i32>(0i, u_input.e.x, u_input.e.x, -2147483647i)))), min(~(-49123i), -29061i));
    var var_4 = ~(~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(1i, -25518i, -15221i)), vec3<i32>(-29826i, 30970i, var_3) | vec3<i32>(48755i, -20406i, 1i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, 25266i, 1i), vec3<i32>(14705i, var_3, var_3), vec3<i32>(u_input.e.x, var_3, 19030i)), vec3<i32>(var_3, u_input.c.x, u_input.e.x) ^ vec3<i32>(u_input.c.x, u_input.c.x, var_3))));
    return Struct_1(var_1.a);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    var var_0 = arg_1;
    return 4294967295u;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = u_input.c.x;
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(2611i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.e.x, var_0) ^ vec3<i32>(var_0, 44700i, u_input.e.x), _wgslsmith_div_vec3_i32(vec3<i32>(-48691i, -2147483647i, var_0), vec3<i32>(1i, var_0, -2147483647i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(38356i, var_0, -7806i, u_input.e.x), vec4<i32>(16798i, var_0, 0i, var_0)));
    let var_2 = Struct_1(arg_1.a);
    let var_3 = Struct_1(~var_2.a);
    let var_4 = Struct_1(min(func_3(var_1.x), firstTrailingBit(vec3<u32>(select(0u, u_input.a, true), ~1u, 1u))));
    return StorageBuffer(_wgslsmith_f_op_f32(abs(-1245f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2477f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(min(u_input.a, abs(global2.x)), 0u), 0u));
    var var_1 = 1i;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_sub_vec3_u32(vec3<u32>(select(countOneBits(4294967295u), ~var_0.a.x, all(vec2<bool>(true, true))), func_5(vec4<i32>(u_input.e.x, -1i, u_input.e.x, u_input.e.x), func_1(219f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1151f, -820f, -210f)), true), 7972u), var_0.a << ((var_0.a ^ u_input.b) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_vec3_u32(u_input.b, abs(vec3<u32>(1u, u_input.d.x, global2.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(791f, -1072f, 1165f, 614f))) * vec4<f32>(-277f, 1192f, 995f, -2511f))))), func_1(_wgslsmith_f_op_f32(max(1124f, _wgslsmith_f_op_f32(f32(-1f) * -748f)))));
}

