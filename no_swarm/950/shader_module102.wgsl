struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<f32>(1653f, -907f, 828f)), Struct_2(vec3<f32>(-2895f, 291f, 730f)), Struct_2(vec3<f32>(1463f, 1000f, -1842f)), Struct_2(vec3<f32>(-1879f, -370f, 640f)), Struct_2(vec3<f32>(-625f, -390f, 408f)), Struct_2(vec3<f32>(1113f, -1993f, -211f)), Struct_2(vec3<f32>(-841f, -484f, -1000f)), Struct_2(vec3<f32>(-561f, 1296f, 136f)), Struct_2(vec3<f32>(1025f, -1284f, 124f)), Struct_2(vec3<f32>(-1099f, -996f, -786f)), Struct_2(vec3<f32>(338f, -490f, 100f)), Struct_2(vec3<f32>(168f, -105f, -1363f)), Struct_2(vec3<f32>(-1202f, -521f, 541f)), Struct_2(vec3<f32>(-839f, -2246f, -1000f)), Struct_2(vec3<f32>(-942f, -1484f, 495f)), Struct_2(vec3<f32>(282f, 309f, -1929f)), Struct_2(vec3<f32>(1092f, -578f, -210f)));

var<private> global1: vec3<f32>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(702f, -178f, 667f));

var<private> global3: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = select(!select(vec4<bool>(true, false, false, any(vec3<bool>(false, arg_2.a.x, arg_2.a.x))), !(!vec4<bool>(false, false, arg_2.a.x, false)), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false)), vec4<bool>(true, arg_2.a.x, !(_wgslsmith_f_op_f32(step(global1.x, global2.a.x)) != -603f), all(!(!vec3<bool>(true, true, arg_2.a.x)))), vec4<bool>(true, true, true, true));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(u_input.a >> (max(4294967295u, arg_1.x) % 32u), ~u_input.b.x), max(21625i, _wgslsmith_clamp_i32(-1265i, u_input.a, u_input.a)), -(~u_input.a)) ^ vec3<i32>(firstLeadingBit(34260i), _wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_div_i32(abs(~u_input.b.x), max(u_input.b.x, 25508i)));
    var var_2 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0)), global2.a.x, arg_0.zx, countOneBits(~countOneBits(var_1.x)), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(13031u, arg_1.x, 9487u, arg_1.x), vec4<u32>(arg_1.x, 0u, 4294967295u, 1u), var_0.x), firstTrailingBit(vec4<u32>(49332u, arg_1.x, 53891u, 75799u)))), arg_1.x));
    global1 = arg_0;
    global0 = array<Struct_2, 17>();
    return ~var_2.d;
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(min(~u_input.b, firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -26047i), -2147483647i, u_input.b.x, _wgslsmith_mod_i32(arg_0.d, -41i)))), vec4<i32>(u_input.b.x, func_3(global2.a, ~vec3<u32>(1u, 34074u, arg_0.e), Struct_1(vec2<bool>(false, true)), arg_0.a) & arg_0.d, u_input.b.x, u_input.b.x));
    global3 = ~0u;
    global3 = arg_0.e ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(78135u, 1u, arg_0.e, arg_0.e) << (vec4<u32>(26195u, 8771u, 0u, 1u) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e, arg_0.e, arg_0.e, 4322u), vec4<u32>(arg_0.e, 1u, arg_0.e, 4294967295u))), ~(~vec4<u32>(arg_0.e, arg_0.e, 30304u, 0u)));
    let var_1 = 1u << (~_wgslsmith_mult_u32(arg_0.e | 1u, 33685u) % 32u);
    global3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_1, 1u) & vec3<u32>(arg_0.e, 43040u, max(var_1, var_1)), ~(~vec3<u32>(4294967295u, 105512u, var_1) << (~vec3<u32>(4294967295u, 4294967295u, var_1) % vec3<u32>(32u)))), vec3<u32>(~(~0u), max(_wgslsmith_add_u32(0u, var_1), 0u), _wgslsmith_mod_u32(~var_1, max(4294967295u, arg_0.e))) & (reverseBits(~vec3<u32>(26858u, 1u, 4294967295u)) >> (firstTrailingBit(vec3<u32>(4294967295u, 50435u, 0u) | vec3<u32>(4011u, var_1, 1u)) % vec3<u32>(32u))));
    return Struct_1(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(-12571i < u_input.a, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~vec2<i32>(u_input.b.x, u_input.b.x ^ u_input.a);
    var var_1 = func_2(Struct_5(Struct_2(global2.a), global2.a.x, _wgslsmith_f_op_vec2_f32(select(global1.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -935f))), true)), 0i, _wgslsmith_add_u32(~(~3979u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 75339u, 60448u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_f_op_f32(step(-714f, global1.x)), -1596f);
    return func_2(Struct_5(global0[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-419f * global2.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.a.yx)) * vec2<f32>(arg_0.a.x, -300f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, arg_0.a.x)))), ~var_0.x, ~(~(~12070u))), global2.a.x, 206f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_1(Struct_2(vec3<f32>(global2.a.x, -1361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a.x)) * global2.a.x))));
    var var_2 = select(!vec3<bool>(global1.x != _wgslsmith_f_op_f32(f32(-1f) * -609f), !var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, false, true), select(vec3<bool>(false, var_1.a.x | var_1.a.x, true), vec3<bool>(true, true, var_1.a.x), select(vec3<bool>(false, true, func_2(Struct_5(Struct_2(global2.a), 933f, global1.yy, -1i, 0u), 796f, global2.a.x).a.x), vec3<bool>(any(vec3<bool>(false, var_1.a.x, true)), any(vec4<bool>(false, var_1.a.x, var_1.a.x, false)), true), true)));
    var_2 = vec3<bool>(var_1.a.x == !(func_2(Struct_5(Struct_2(vec3<f32>(global2.a.x, 611f, global2.a.x)), -719f, vec2<f32>(global1.x, -887f), u_input.b.x, 1u), 503f, global1.x).a.x & var_2.x), true, all(vec4<bool>(func_1(global0[_wgslsmith_index_u32(~0u, 17u)]).a.x, true, true, false)));
    let var_3 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(vec4<u32>(1u, 1u, 1u, 1u))) << (~(~vec4<u32>(4294967295u, 0u, 11871u, 77744u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_3.x)) * global1.x) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1142f)), var_3.x))), 73006u, var_3.x);
}

