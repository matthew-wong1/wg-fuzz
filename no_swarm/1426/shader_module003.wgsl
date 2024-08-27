struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: array<Struct_3, 12>;

var<private> global2: f32 = 469f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3;
    let var_1 = Struct_3(Struct_1(var_0.a.c.x, arg_2.b, vec3<f32>(_wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(-arg_3.b.a), -627f)));
    let var_2 = !select(vec4<bool>(true, arg_0, arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, false))), !vec4<bool>(27538i > var_0.b.b.x, true, all(vec2<bool>(true, arg_0)), true), vec4<bool>(true, true, true, !(!arg_0)));
    var_0 = arg_3;
    var var_3 = arg_3;
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = array<vec4<u32>, 11>();
    var var_0 = global1[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x)) ^ (abs(21040u) & u_input.d.x), 12u)];
    var var_1 = Struct_3(arg_2);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, 202f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * -346f))), vec4<i32>(-1i) * -vec4<i32>(1i, arg_2.b.x, var_0.a.b.x, var_0.a.b.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(1053f)), arg_2.c.x, -578f)))), var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, 1848u) | (vec4<u32>(1u, u_input.d.x, u_input.c.x, u_input.d.x) & vec4<u32>(1u, 0u, 42811u, 54531u)), reverseBits(abs(vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.c.x)))) & 4294967295u, min(reverseBits(4294967295u), func_3(-426f < arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1846f - -801f)), var_1.a, Struct_2(var_1.a, Struct_1(var_1.a.c.x, var_1.a.b, vec3<f32>(-1071f, arg_2.a, arg_0.a)), 8528u, 32195u))));
    let var_3 = vec2<i32>(~max(-(~1i), var_2.a.b.x), 13909i);
    return 4294967295u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: bool) -> vec2<i32> {
    global1 = array<Struct_3, 12>();
    var var_0 = -abs(abs(abs(vec4<i32>(u_input.a.x, -2658i, u_input.a.x, 39031i)) | abs(vec4<i32>(-56340i, u_input.a.x, arg_0.x, u_input.a.x))));
    let var_1 = ~(~49240u);
    let var_2 = arg_3;
    var var_3 = vec4<u32>(~(~(u_input.b.x ^ u_input.b.x)), var_1, firstTrailingBit(1u), ~_wgslsmith_clamp_u32(~func_2(Struct_1(arg_1.x, vec4<i32>(42844i, u_input.a.x, 0i, -1i), arg_1), u_input.a.x, Struct_1(arg_1.x, vec4<i32>(u_input.a.x, arg_0.x, -841i, arg_0.x), arg_1)), ~(~arg_2.x), firstTrailingBit(arg_2.x)));
    return vec2<i32>(_wgslsmith_div_i32(-13776i, firstLeadingBit(_wgslsmith_add_i32(var_0.x, -1i))), u_input.a.x);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 11>();
    var var_0 = false;
    global0 = array<vec4<u32>, 11>();
    let var_1 = -768f;
    var var_2 = global1[_wgslsmith_index_u32(0u, 12u)];
    return Struct_1(673f, vec4<i32>(~u_input.a.x, i32(-1i) * -2147483647i, abs(1i), _wgslsmith_add_i32(-38846i, arg_0.x)), var_2.a.c);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<f32> {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a + arg_2.a.c.x), _wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2290f)), _wgslsmith_div_f32(arg_2.a.c.x, arg_0.x)), true)))));
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    global2 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a))));
    global0 = array<vec4<u32>, 11>();
    return vec3<f32>(arg_0.x, 2012f, _wgslsmith_f_op_f32(-arg_2.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -2768f)), _wgslsmith_f_op_f32(f32(-1f) * -1496f))), reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-18880i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(18436i, u_input.a.x, -7333i, -2147483647i) & vec4<i32>(22770i, 1i, u_input.a.x, u_input.a.x))), vec3<f32>(-242f, _wgslsmith_f_op_f32(772f * -151f), 427f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-236f, -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -444f)), -vec4<i32>(u_input.a.x, 1i, 1i, _wgslsmith_sub_i32(u_input.a.x, 34960i)), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(531f, -586f, 394f, 436f) + vec4<f32>(1477f, -1248f, 1226f, 1302f)))), func_4(func_1(vec2<i32>(0i, u_input.a.x), vec3<f32>(786f, 937f, -1140f), vec4<u32>(u_input.d.x, 4294967295u, 0u, 9486u), false)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x & 4294967295u, 1u), 12u)]))), 0u, func_3(any(vec3<bool>(true, false, false)) | false, -323f, func_4(select(vec2<i32>(0i, 1i), u_input.a, 56034u > u_input.b.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(450f * -556f), ~vec4<i32>(2147483647i, 1i, -17678i, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-746f, 854f, 246f) + vec3<f32>(-615f, -221f, 706f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -574f), ~vec4<i32>(u_input.a.x, -31068i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, -584f, 1152f))), ~u_input.b.x, u_input.d.x)));
    let var_3 = var_2.a.c;
    let var_4 = func_4(select(~vec2<i32>(-21481i, var_2.b.b.x), abs(func_1(var_2.b.b.yw, var_2.a.c, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.d.x, 0u, var_2.c), vec4<u32>(4294967295u, var_2.d, 24331u, 652u)), all(vec3<bool>(false, true, false)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1361f, var_4.c.x, -944f))))), Struct_1(var_4.a, var_2.a.b, _wgslsmith_div_vec3_f32(var_2.a.c, vec3<f32>(var_4.c.x, var_4.c.x, var_4.c.x))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.d, 26492u), 12u)])).x, abs(0i), select(~(~var_2.a.b & var_4.b), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-var_2.a.b, _wgslsmith_div_vec4_i32(var_2.b.b, var_2.a.b)), ~var_4.b), vec4<bool>(select(false, u_input.a.x <= u_input.a.x, true), true, any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a, -382f, var_2.a.a, var_4.c.x) * vec4<f32>(var_2.a.a, -127f, var_4.a, var_3.x)), func_4(var_2.a.b.yw), global1[_wgslsmith_index_u32(0u, 12u)])).x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(func_4(vec2<i32>(u_input.a.x, u_input.a.x)).a))))), _wgslsmith_add_i32(u_input.a.x, var_2.a.b.x) << (0u % 32u));
}

