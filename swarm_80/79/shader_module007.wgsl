struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(1234f, -500f);

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_3(-1i);
    var_0 = Struct_3(~arg_0.a.a);
    var var_1 = Struct_3(var_0.a);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), 627f);
    var var_2 = Struct_4(_wgslsmith_div_vec4_i32(~vec4<i32>(firstTrailingBit(var_0.a), _wgslsmith_sub_i32(-1i, var_1.a), select(2147483647i, var_1.a, false), -60905i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42096i, arg_0.a.a, var_0.a, 2147483647i), countOneBits(vec4<i32>(var_1.a, -39908i, var_1.a, arg_0.a.a))), -50524i, countOneBits(arg_0.a.a), 26959i)), Struct_3(arg_0.a.a));
    return true;
}

fn func_2() -> i32 {
    global2 = all(vec3<bool>(any(vec4<bool>(true, false, true, 0u > u_input.a.x)), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), true));
    var var_0 = Struct_3(-(~select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2615i, -1i), vec3<i32>(2147483647i, 2147483647i, 0i)), 0i, 14547u < u_input.a.x)));
    let var_1 = -var_0.a;
    var var_2 = 1537u;
    let var_3 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a), u_input.a), abs(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(93342u, u_input.a.x, 8391u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), 42610u)), select(false, func_3(Struct_2(Struct_1(var_0.a), global1.x), vec4<u32>(43405u, 1u, u_input.a.x, u_input.a.x)), true) && true), u_input.a);
    return ~1i;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> u32 {
    global2 = true;
    let var_0 = abs(min(~_wgslsmith_sub_vec3_u32(arg_2.yyx, u_input.a >> (u_input.a % vec3<u32>(32u))), vec3<u32>(40742u, reverseBits(abs(u_input.a.x)), select(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(arg_2.x, arg_2.x), true))));
    global0 = ~1u << (var_0.x % 32u);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2280f, global1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(1225f)), _wgslsmith_f_op_f32(ceil(global1.x)))))));
    var var_1 = _wgslsmith_f_op_f32(314f - _wgslsmith_div_f32(global1.x, 1873f));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = func_4(-(arg_0.a << (62120u % 32u)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-39030i, -29015i, arg_0.a), vec3<i32>(arg_0.a, -1834i, -38845i)), vec3<i32>(-103081i, arg_0.a, arg_0.a)), ~vec2<i32>(-arg_0.a, func_2()), abs(~(vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, arg_2, arg_2, u_input.a.x)))) | ~arg_2;
    let var_1 = vec2<bool>(false, true);
    var var_2 = Struct_4(vec4<i32>(abs(1425i), select(-15535i, firstLeadingBit(-35106i), arg_0.a <= arg_0.a), arg_0.a >> (select(4294967295u, u_input.a.x, var_1.x) % 32u), ~arg_0.a) >> (~(~(vec4<u32>(arg_2, u_input.a.x, 18941u, arg_2) & vec4<u32>(arg_2, 0u, 4294967295u, 4294967295u))) % vec4<u32>(32u)), Struct_3(~func_2()));
    global2 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, false), true), vec3<bool>(true, var_1.x, false), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-531f)), arg_1.x))));
    return 10843i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(i32(-1i) * -func_1(Struct_1(-11293i), vec2<f32>(1850f, global1.x), ~0u));
    var var_1 = 23914u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-var_0, _wgslsmith_div_i32(60872i, abs(var_0)), var_0, (var_0 & 2147483647i) | 1i), ~((~vec4<u32>(33951u, 4294967295u, u_input.a.x, 133212u) | firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) | vec4<u32>(15793u, reverseBits(u_input.a.x), u_input.a.x, 9540u)));
}

