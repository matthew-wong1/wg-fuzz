struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32 = -1000f;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(true), Struct_3(false));

var<private> global3: Struct_3 = Struct_3(false);

var<private> global4: array<vec4<f32>, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<Struct_3, 2>();
    var var_0 = 4294967295u;
    global2 = array<Struct_3, 2>();
    var var_1 = _wgslsmith_f_op_f32(-764f * _wgslsmith_f_op_f32(trunc(2064f))) >= 1004f;
    let var_2 = Struct_4(Struct_3(false != all(!vec3<bool>(false, false, global3.a))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1629f), -441f));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<Struct_3, 2>();
    let var_0 = abs(8156u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(-u_input.a ^ -1i)), ((-7311i ^ u_input.a) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -1i), vec3<i32>(u_input.a, 2147483647i, u_input.a))) && global3.a, vec4<i32>(u_input.a, 4253i, -u_input.a, u_input.a)));
    let var_2 = firstLeadingBit(global0.yyz);
    var var_3 = _wgslsmith_div_vec2_i32(var_1.a.c.ww, min(_wgslsmith_clamp_vec2_i32(var_1.a.c.yz, var_1.a.c.xz, var_1.a.c.yy), _wgslsmith_sub_vec2_i32(-firstLeadingBit(var_1.a.c.xy), abs(var_1.a.c.wy))));
    return Struct_2(Struct_1(var_1.a.a, !(all(vec4<bool>(true, arg_0, var_1.a.b, var_1.a.b)) == true), ~abs(min(var_1.a.c, vec4<i32>(-2147483647i, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), false, vec4<i32>(arg_0.x, _wgslsmith_sub_i32(-39194i, u_input.a), u_input.a & min(_wgslsmith_mod_i32(-15221i, -2758i), -arg_0.x), _wgslsmith_mod_i32(arg_0.x, 0i)));
    global2 = array<Struct_3, 2>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -359f, var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(1182f - -2013f)), _wgslsmith_f_op_f32(max(1676f, _wgslsmith_f_op_f32(var_0.a * 2006f))), _wgslsmith_f_op_f32(-var_0.a))))));
    let var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(var_0.c.x, -1i, 2019i, var_0.c.x), vec4<i32>(var_1.x, var_1.x, u_input.a, var_1.x)) << (select(vec4<u32>(33986u, 26147u, 5278u, 4294967295u), vec4<u32>(49294u, global0.x, global0.x, global0.x), vec4<bool>(true, var_0.b, false, arg_1.x)) % vec4<u32>(32u)), var_0.c & (vec4<i32>(1i, -33890i, 1i, -1i) & var_0.c)), vec4<i32>(2147483647i, -u_input.a, -16624i, 0i));
    return func_2(any(!(!arg_1)));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_f32(arg_0.a.a - -996f);
    var var_1 = vec3<i32>(-_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(arg_0.a.c.zyx, var_0.a.c.yww)), 2147483647i), 25301i, _wgslsmith_add_i32(-2140i, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(3631i, u_input.a), -arg_0.a.c.x)));
    global4 = array<vec4<f32>, 13>();
    global4 = array<vec4<f32>, 13>();
    return select(false, arg_0.a.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 2>();
    let var_0 = select(!vec3<bool>(global3.a, true, global0.x < ~global0.x), select(vec3<bool>(global3.a, false, false), select(!vec3<bool>(global3.a, true, false), vec3<bool>(true && global3.a, global3.a | global3.a, true), global3.a), global3.a), vec3<bool>(!global3.a, global3.a, !func_4(func_1(vec2<i32>(u_input.a, u_input.a), vec4<bool>(false, global3.a, global3.a, global3.a), Struct_3(true)))));
    var var_1 = ~(vec4<u32>(global0.x, ~(~66278u), ~_wgslsmith_mod_u32(0u, 65868u), _wgslsmith_dot_vec4_u32(vec4<u32>(19302u, 4294967295u, global0.x, global0.x), abs(vec4<u32>(4294967295u, 4294967295u, global0.x, global0.x)))) & firstLeadingBit(~vec4<u32>(global0.x, 0u, 49995u, 43988u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(950f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1939f)) - func_1(vec2<i32>(17063i, u_input.a) | vec2<i32>(1i, 16528i), select(vec4<bool>(global3.a, true, true, false), vec4<bool>(true, global3.a, false, var_0.x), true), Struct_3(var_0.x)).a.a), -510f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 961f, 1346f) * vec3<f32>(-187f, 402f, 831f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1566f, 269f), vec3<f32>(-183f, 519f, 396f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1440f, 201f, -615f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -677f, 512f) + vec3<f32>(-525f, -1773f, 992f)), global3.a | true)))));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10887u, 8567u, _wgslsmith_mod_u32(32623u, global0.x), ~(global0.x ^ 0u)), abs(min(countOneBits(vec4<u32>(71533u, 4294967295u, global0.x, global0.x)), ~vec4<u32>(56876u, 75357u, 0u, 0u)))), ((11375u << (firstTrailingBit(global0.x) % 32u)) & abs(~21547u)) ^ 0u);
    let var_4 = Struct_2(func_1(abs(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), !vec4<bool>(select(var_0.x, global3.a, false), true, all(vec4<bool>(true, false, global3.a, true)), !global3.a), Struct_3(all(select(var_0.yx, vec2<bool>(false, var_0.x), false)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(0i), ~_wgslsmith_mult_i32(-1i, var_4.a.c.x), countOneBits(countOneBits(u_input.a)), (u_input.a << (43538u % 32u)) >> (~54301u % 32u)), vec4<i32>(min(var_4.a.c.x, 1i) & ~2147483647i, var_4.a.c.x, 0i, 1i)), ~var_1.wzx);
}

