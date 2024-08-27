struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_3 = Struct_3(vec4<u32>(23579u, 0u, 31242u, 62784u), true, Struct_2(72703u), Struct_2(9259u), vec3<f32>(253f, 1127f, -637f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.x - 1084f) - -365f);
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(ceil(126f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1378f, global1.x))))), _wgslsmith_f_op_f32(-arg_3.e.x)));
    let var_1 = firstTrailingBit(arg_0.x);
    global0 = array<Struct_3, 10>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - arg_3.e.x)))));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-996f, global2.e.x, -1979f, global2.e.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -172f, arg_3.e.x, 263f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -400f, 2190f, 124f)), vec4<f32>(global2.e.x, 518f, -1000f, -183f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.x, arg_3.e.x, 885f, global2.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(471f, 1000f, 1000f, global2.e.x) - vec4<f32>(arg_3.e.x, 511f, -1000f, global1.x)), !global2.b)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.e.x, 969f, global1.x, 900f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(349f, arg_3.e.x, -1313f, 932f) * vec4<f32>(1627f, arg_3.e.x, -1060f, 152f))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global2.e.x) + _wgslsmith_f_op_f32(global2.e.x + -175f)), global2.e.x, 177f, global1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, global1.x, global1.x))) * vec4<f32>(-367f, 644f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * global1.x)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, _wgslsmith_f_op_f32(select(1209f, _wgslsmith_f_op_f32(-global1.x), arg_0.x == -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), global2.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_sub_vec2_i32(arg_2.b.yz, vec2<i32>(arg_2.b.x, -1i)), vec3<i32>(1i, arg_2.b.x, arg_0.x), arg_2, Struct_3(global2.a, global2.b, global2.c, Struct_2(5255u), global2.e)))))));
    let var_0 = _wgslsmith_dot_vec4_u32(max(global2.a, firstLeadingBit(vec4<u32>(u_input.d, global2.d.a, global2.d.a, ~1u))), global2.a);
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_1 = true;
    return Struct_1(~arg_2.a, ~select(vec3<i32>(_wgslsmith_mult_i32(2147483647i, 1i), arg_1.x, -arg_1.x), arg_1, global2.b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_3, 10>();
    var var_0 = _wgslsmith_f_op_f32(608f - _wgslsmith_f_op_f32(-arg_2));
    global0 = array<Struct_3, 10>();
    var var_1 = global2.d;
    var_1 = global2.c;
    return -8233i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.d.a | 1u, 1u), global2.a.yw)) >> (vec2<u32>(~(~48236u), global2.d.a) % vec2<u32>(32u));
    var var_1 = func_1(select(select(vec2<i32>(u_input.c.x, ~u_input.a), countOneBits(_wgslsmith_sub_vec2_i32(u_input.b, u_input.e)), all(vec4<bool>(true, global2.b, true, true))), u_input.e, true), vec3<i32>(abs(-u_input.b.x), ~firstTrailingBit(u_input.a), _wgslsmith_mult_i32(-u_input.e.x, -u_input.e.x)) & vec3<i32>(-select(-34938i, -28277i, false), 0i, u_input.e.x), Struct_1(-2147483647i, vec3<i32>(~_wgslsmith_sub_i32(0i, u_input.b.x), select(-136i, 1i, global2.b), -_wgslsmith_add_i32(u_input.c.x, u_input.b.x))));
    global0 = array<Struct_3, 10>();
    let var_2 = global1.x;
    var_1 = func_1(vec2<i32>(-1i) * -var_1.b.zy, _wgslsmith_sub_vec3_i32(vec3<i32>(1i | func_3(false, Struct_1(u_input.b.x, vec3<i32>(2147483647i, u_input.b.x, -1i)), global1.x, Struct_1(var_1.a, var_1.b)), _wgslsmith_div_i32(var_1.b.x, var_1.b.x), firstTrailingBit(_wgslsmith_mod_i32(var_1.b.x, 0i))), var_1.b << (vec3<u32>(_wgslsmith_sub_u32(u_input.d, 1u), 0u, reverseBits(61174u)) % vec3<u32>(32u))), Struct_1(_wgslsmith_mod_i32(~u_input.a, -2147483647i << (global2.d.a % 32u)) | _wgslsmith_clamp_i32(var_1.b.x << (4294967295u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -9077i, var_1.a, -3904i), vec4<i32>(-22859i, var_1.b.x, 36760i, 0i)), 1i), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~var_1.b.xy, vec3<i32>(u_input.a, var_1.b.x, var_1.b.x), func_1(var_1.b.yy, vec3<i32>(-61792i, 2147483647i, -2147483647i), Struct_1(1i, var_1.b)), Struct_3(global2.a, false, Struct_2(0u), Struct_2(0u), vec3<f32>(495f, global1.x, 1297f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * 307f))), 1556f, global1.x, -460f)), 15631u, -1i, vec4<u32>(0u, var_0.x | ~(~var_0.x), global2.c.a, u_input.d), global1.yxx);
}

