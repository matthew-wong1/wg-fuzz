struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 50834u, 23364u, 0u), vec4<u32>(1u, 1u, 69987u, 80602u), vec4<u32>(1u, 29164u, 50776u, 79063u), vec4<u32>(16733u, 17918u, 50907u, 1u), vec4<u32>(19538u, 84423u, 33082u, 1u), vec4<u32>(1u, 32264u, 0u, 114533u), vec4<u32>(15398u, 0u, 43380u, 0u), vec4<u32>(31583u, 21405u, 4294967295u, 29444u), vec4<u32>(0u, 53814u, 4294967295u, 45524u), vec4<u32>(1u, 0u, 14547u, 4294967295u), vec4<u32>(73414u, 4294967295u, 10240u, 60458u), vec4<u32>(64017u, 52795u, 1u, 943u), vec4<u32>(4294967295u, 1u, 25847u, 33098u), vec4<u32>(56909u, 25976u, 0u, 1u), vec4<u32>(1u, 1u, 13960u, 1u), vec4<u32>(1u, 27387u, 13559u, 4294967295u));

var<private> global1: array<vec3<bool>, 29>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(961f, 1000f, -606f, -1296f), 4294967295u, vec2<f32>(420f, -246f), vec3<u32>(0u, 0u, 0u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> f32 {
    global2 = Struct_1(global2.a, firstLeadingBit(global2.b), global2.c, global2.d);
    let var_0 = Struct_1(global2.a, countOneBits(min(0u, 30718u)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), global2.a.zz), ~(~vec3<u32>(1u, global2.d.x, global2.d.x)) ^ firstTrailingBit(~vec3<u32>(global2.b, 57429u, global2.d.x) << (~global2.d % vec3<u32>(32u))));
    global1 = array<vec3<bool>, 29>();
    let var_1 = _wgslsmith_f_op_f32(trunc(-951f));
    global0 = array<vec4<u32>, 16>();
    return 601f;
}

fn func_3() -> vec2<i32> {
    global1 = array<vec3<bool>, 29>();
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global2.a)), _wgslsmith_add_u32(~(~_wgslsmith_mod_u32(global2.d.x, 76050u)), ~_wgslsmith_div_u32(global2.d.x, 1u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c + global2.a.yz))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(global2.a.ww)), _wgslsmith_f_op_vec2_f32(round(global2.c)))))), ~vec3<u32>(global2.b, ~_wgslsmith_mod_u32(31100u, 10128u), _wgslsmith_dot_vec3_u32(global2.d, global2.d << (global2.d % vec3<u32>(32u)))));
    global1 = array<vec3<bool>, 29>();
    let var_0 = Struct_1(vec4<f32>(-445f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))))), -394f), ~0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c)))), _wgslsmith_sub_vec3_u32(~global2.d, vec3<u32>(_wgslsmith_div_u32(global2.d.x, 0u), reverseBits(7354u), 4294967295u)) ^ max(countOneBits(global2.d), global2.d));
    global2 = var_0;
    return -vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a ^ u_input.a, 23952i), 1703i), -(~2147483647i));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -164f), -838f, global2.c.x, _wgslsmith_f_op_f32(-global2.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.c.x, global2.c.x, -379f, -1000f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1198f * 1000f) + _wgslsmith_f_op_f32(-1000f + global2.a.x))), 729f, -549f, _wgslsmith_f_op_f32(-global2.c.x))));
    let var_1 = Struct_1(global2.a, ~arg_0.x, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + 1752f)), vec3<u32>(0u, arg_0.x, min(1u, arg_0.x)));
    let var_2 = arg_2;
    var var_3 = vec2<f32>(-145f, var_1.c.x);
    let var_4 = var_1;
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c.x, _wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_f32(530f, var_0.x), var_0.x);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(~vec2<u32>(global2.d.x, ~global2.d.x), vec2<i32>(-35865i, ~1i) & func_3(), arg_0)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global2.d, global2.d), vec3<u32>(global2.b, 50474u, abs(_wgslsmith_clamp_u32(111025u, 0u, global2.b)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mult_vec2_u32(global2.d.yy, global2.d.xy), vec2<i32>(56842i, u_input.a) >> (global2.d.zz % vec2<u32>(32u)), true | all(vec3<bool>(arg_0, arg_0, arg_0)))).x), firstLeadingBit(vec3<u32>(~_wgslsmith_mult_u32(global2.d.x, 1u), ~global2.d.x, ~1u)));
    var var_1 = Struct_1(var_0.a, ~(global2.b & ~var_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(365f + global2.a.x), _wgslsmith_div_f32(var_0.a.x, -186f)))), vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(75885u, 1u, 5021u)), min(_wgslsmith_mod_u32(var_0.b, 0u), abs(reverseBits(4294967295u))), _wgslsmith_mult_u32(4294967295u, 1u ^ global2.b)));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-560f, var_1.c.x, var_0.c.x, global2.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, -983f, 3437f, var_1.a.x)) * _wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(-global2.a))))), ~(~(0u & _wgslsmith_sub_u32(4294967295u, var_1.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(780f, var_1.c.x)), vec2<f32>(var_1.a.x, 169f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(global2.d.xz, vec2<i32>(u_input.a, -2147483647i), false)).wx, vec2<f32>(var_0.a.x, var_0.c.x))))), abs(~(vec3<u32>(1u, 406u, var_1.d.x) & ~vec3<u32>(1u, global2.b, global2.b))));
    global0 = array<vec4<u32>, 16>();
    let var_2 = false;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 16>();
    global1 = array<vec3<bool>, 29>();
    var var_0 = func_2(326f != _wgslsmith_f_op_f32(func_1()));
    var_0 = -func_3().x;
    global0 = array<vec4<u32>, 16>();
    let var_1 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, u_input.a), 1i), u_input.a), -3636i, ~firstLeadingBit(abs(u_input.a))), firstLeadingBit(1i | (-2147483647i & _wgslsmith_sub_i32(-2147483647i, u_input.a))), select(global2.b, ~global2.d.x, true));
}

