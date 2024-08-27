struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, vec4<f32>(-1000f, 671f, 533f, -1183f)), Struct_1(33023u, vec4<f32>(528f, -279f, -1230f, 210f)), Struct_1(0u, vec4<f32>(-505f, 750f, 125f, -1504f)), Struct_1(4294967295u, vec4<f32>(-955f, -429f, -533f, 125f)), Struct_1(0u, vec4<f32>(-2119f, 608f, 782f, -1533f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = ((u_input.c ^ _wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -3185i, u_input.c, 16450i), vec4<i32>(-2147483647i, u_input.c, 2147483647i, -9151i)))) >= ~(~_wgslsmith_mod_i32(u_input.c, u_input.c))) | true;
    let var_1 = 22216u;
    let var_2 = _wgslsmith_mult_vec2_u32(~(~(vec2<u32>(arg_0.a, arg_0.a) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, arg_0.a)), vec2<u32>(arg_0.a, u_input.a) >> (vec2<u32>(arg_0.a, u_input.b) % vec2<u32>(32u)), vec2<bool>(!var_0, true)));
    return 1u;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = Struct_1(func_1(Struct_1(10854u ^ u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -687f, arg_1, arg_1), vec4<f32>(1232f, arg_1, -872f, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -794f, -1479f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1207f, 1000f, arg_1))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), -1107f, _wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 461f), vec4<f32>(arg_1, -789f, -191f, -1250f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -532f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(441f - arg_1), arg_1, -1234f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -448f, -659f, 746f), vec4<f32>(115f, -714f, 702f, -1000f))))))));
    let var_1 = false;
    global0 = array<Struct_1, 5>();
    let var_2 = select(8317u, min(var_0.a & 0u, 29938u) & _wgslsmith_dot_vec3_u32(arg_0, ~vec3<u32>(1u, 16283u, 1u)), all(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, var_1), true))) | (countOneBits(1u) >> (_wgslsmith_dot_vec2_u32(arg_0.yz, ~arg_0.xx) % 32u));
    let var_3 = vec2<f32>(549f, _wgslsmith_f_op_f32(-782f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1)), arg_1, true))));
    return _wgslsmith_mod_u32(var_0.a, 54077u);
}

fn func_2(arg_0: bool, arg_1: i32) -> vec4<u32> {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(461f, 1000f, -323f, 255f) - vec4<f32>(-474f, -966f, 1938f, -527f))))));
    var_0 = Struct_1(var_0.a, var_0.b);
    var_0 = Struct_1(40853u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x * 1212f)) + var_0.b)));
    var var_1 = var_0.b;
    return ~(~vec4<u32>(1u, ~var_0.a, 0u, func_3(vec3<u32>(u_input.b, var_0.a, 1u), var_0.b.x)) >> ((_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, var_0.a, u_input.b, 19780u), vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.b)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(u_input.a, u_input.b, var_0.a)), 4294967295u, func_1(Struct_1(1u, var_0.b), var_0.b.xzz), 1u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> StorageBuffer {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = abs(firstLeadingBit(arg_1)) ^ vec2<u32>(u_input.b, arg_1.x & 1u);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, 1964f, _wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(step(1212f, arg_0.b.x))))), arg_0.b.zxy, 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.b)) * _wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b)), 1284f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(0u, 5u)];
    var var_1 = min(9300u, 25196u);
    let var_2 = var_0.b;
    var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.a, func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.a) & 23008u, 5u)], vec3<f32>(var_2.x, var_2.x, -1713f))), abs(~0u));
    var_1 = ~61829u;
    var var_3 = true;
    global0 = array<Struct_1, 5>();
    let var_4 = var_0.b.x;
    let x = u_input.a;
    s_output = func_4(Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1325f + var_2.x))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 3010f) - _wgslsmith_f_op_f32(-var_2.x)), var_2.x)), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(func_2(false, 2147483647i), countOneBits(vec4<u32>(44179u, u_input.b, var_0.a, var_0.a)))) ^ ~max(~vec2<u32>(37807u, 97194u), vec2<u32>(0u, u_input.b)), u_input.b, _wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-2147483647i), 30391i, (u_input.c << (var_0.a % 32u)) | ~u_input.c), _wgslsmith_clamp_i32(u_input.c, ~countOneBits(50516i), 0i)));
}

