struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 29>;

var<private> global2: u32;

var<private> global3: u32 = 1u;

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<f32>(-1066f, -230f, 200f)), Struct_2(vec3<f32>(-1432f, -1231f, -1000f)), Struct_2(vec3<f32>(1401f, -649f, 1853f)), Struct_2(vec3<f32>(-1073f, -821f, 572f)), Struct_2(vec3<f32>(-890f, 1413f, 466f)), Struct_2(vec3<f32>(544f, 950f, 637f)), Struct_2(vec3<f32>(650f, -1024f, 1119f)), Struct_2(vec3<f32>(-1111f, 599f, 435f)), Struct_2(vec3<f32>(995f, -592f, -1295f)), Struct_2(vec3<f32>(927f, 789f, 139f)), Struct_2(vec3<f32>(-390f, 527f, -1092f)), Struct_2(vec3<f32>(412f, -2179f, 1814f)), Struct_2(vec3<f32>(-941f, 567f, 524f)), Struct_2(vec3<f32>(-321f, 1000f, -1013f)), Struct_2(vec3<f32>(-400f, 859f, -606f)), Struct_2(vec3<f32>(-756f, -926f, -691f)), Struct_2(vec3<f32>(471f, 2020f, 1000f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = abs(_wgslsmith_clamp_vec2_i32(u_input.b.zy, u_input.b.zx, vec2<i32>(1i, -6596i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i) * -(vec4<i32>(12376i, 11688i, 22222i, -2147483647i) << (vec4<u32>(4294967295u, 21072u, u_input.a, u_input.a) % vec4<u32>(32u)))), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-22192i, 1i, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-17863i, arg_2, var_0.x, -38269i), vec4<i32>(36083i, -1i, -56418i, 1i)))), max(-vec4<i32>(arg_2, -2147483647i, -2147483647i, var_0.x) & -abs(vec4<i32>(u_input.b.x, arg_2, var_0.x, -18078i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-var_0.x, select(arg_2, u_input.b.x, arg_0), 0i, abs(var_0.x)), ~vec4<i32>(arg_2, var_0.x, -17826i, var_0.x))));
    global0 = arg_1;
    let var_2 = global1[_wgslsmith_index_u32(0u, 29u)];
    return var_2.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(-329f, ~(~30715u), _wgslsmith_mult_vec2_i32(vec2<i32>(-firstLeadingBit(-2147483647i), i32(-1i) * -u_input.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.c, vec2<i32>(-28670i, 2147483647i) >> (vec2<u32>(u_input.a, 51405u) % vec2<u32>(32u))), u_input.b.xz)), arg_1.d);
    global4 = array<Struct_2, 17>();
    var var_1 = arg_1;
    global0 = arg_3;
    var var_2 = global4[_wgslsmith_index_u32(0u << (var_1.b % 32u), 17u)];
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(601f)));
    let var_0 = ~39863u;
    global3 = arg_0;
    var var_1 = func_3(12935i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(~u_input.a, arg_0, arg_1.x && false) >> (countOneBits(var_0 << (var_0 % 32u)) % 32u), 4294967295u), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1.x || arg_1.x, _wgslsmith_div_f32(105f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -2147483647i))), _wgslsmith_f_op_f32(-316f + 213f));
    var var_2 = !all(select(var_1.d, !(!var_1.d), select(vec2<bool>(true, true), !var_1.d, !arg_1.yx)));
    return vec3<u32>(~1u, min(16259u, ~var_0), reverseBits(~abs(4294967295u))) >> (vec3<u32>(1u & ~(arg_0 << (17881u % 32u)), 1u, var_1.b) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-159f, 220f))))) - 1398f);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-669f, -473f, 461f, -1361f)))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1136f, _wgslsmith_f_op_f32(ceil(1000f)), -178f, _wgslsmith_f_op_f32(f32(-1f) * -1675f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -753f, -318f, -147f) + vec4<f32>(-1311f, -1315f, -539f, -1301f)))) * vec4<f32>(-441f, _wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(step(-291f, -415f)), -120f)))));
    global0 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    var var_1 = !vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)) && all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), !select(false, true, true) != all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_sub_i32(countOneBits(18367i), _wgslsmith_mod_i32(u_input.b.x, 0i)) >= _wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, -44556i), vec2<i32>(u_input.b.x, -689i)), firstLeadingBit(vec2<i32>(arg_3.x, -1i))), arg_1 >= arg_2.x);
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, 275f, -65877i)) + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1.x | false, _wgslsmith_f_op_f32(ceil(865f)), 20956i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(164f * var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f * -1000f)), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-206f)))) * 2236f));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.xwx));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(min(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -48304i, 20150i, -36469i), vec4<i32>(-71986i, u_input.b.x, arg_1.c.x, 18984i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_1.c.x) | vec4<i32>(-16298i, -1i, u_input.b.x, arg_1.c.x)), vec4<i32>(u_input.b.x, arg_1.c.x, reverseBits(10083i), -1i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, u_input.b.x, arg_1.c.x, -1i)), vec4<i32>(-11195i, u_input.b.x, u_input.b.x, 2147483647i) | vec4<i32>(u_input.b.x, 1i, 1i, u_input.b.x)), ~(-(~vec4<i32>(2147483647i, -38057i, 21371i, arg_1.c.x)))));
    let var_1 = !select(arg_2.wyz, vec3<bool>(~1u < arg_1.b, arg_2.x, arg_1.d.x), !select(arg_2.yyy, !arg_2.wyx, arg_0.a.x < arg_1.a));
    var var_2 = select(!(!vec3<bool>(true, var_1.x, true)), var_1, any(arg_2.xzz));
    global4 = array<Struct_2, 17>();
    var_0 = select(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-51698i, var_0.x, 1i, u_input.b.x), vec4<i32>(min(arg_1.c.x, -68143i), 18405i, -1i, func_3(48895i, arg_1, arg_0.a.x, arg_1.a).c.x)), _wgslsmith_sub_vec4_i32(max(max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -2147483647i, arg_1.c.x, var_0.x), vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, 2147483647i)), vec4<i32>(var_0.x, 2147483647i, 2147483647i, arg_1.c.x)), max(vec4<i32>(var_0.x, u_input.b.x, 34240i, u_input.b.x), select(vec4<i32>(u_input.b.x, 36469i, -2147483647i, -2147483647i), vec4<i32>(arg_1.c.x, -2147483647i, var_0.x, 16172i), var_2.x))), vec4<i32>(~(~u_input.b.x), ~(-arg_1.c.x), ~var_0.x, ~_wgslsmith_add_i32(1i, arg_1.c.x))), false);
    return func_3(u_input.b.x << (4294967295u % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-arg_1.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, arg_0.a.x, false)) + _wgslsmith_f_op_f32(-arg_1.a))), ~31071u << (~_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), vec2<i32>(0i, 0i) | var_0.wx, select(var_1.yz, !func_3(u_input.b.x, arg_1, arg_1.a, arg_1.a).d, any(!vec4<bool>(false, true, arg_2.x, true)))), arg_1.a, _wgslsmith_f_op_f32(abs(arg_0.a.x)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = -905f;
    global1 = array<Struct_1, 29>();
    let var_0 = func_4(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u << (arg_1.b % 32u), ~1u, u_input.a & 4294967295u), countOneBits(select(vec3<u32>(arg_0.b, arg_0.b, arg_1.b), vec3<u32>(4294967295u, u_input.a, arg_1.b), arg_0.d.x)) ^ vec3<u32>(41339u << (arg_1.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 13282u, u_input.a, 0u), vec4<u32>(arg_1.b, 0u, arg_0.b, 4294967295u)), u_input.a)), _wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 97941u, arg_1.b), vec3<u32>(74924u, arg_0.b, 12915u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 1u, 29011u), ~vec3<u32>(arg_1.b, 72357u, arg_0.b)), true && arg_0.d.x), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.b, 8322u), vec3<u32>(1u, 112666u, u_input.a)))), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, arg_1.b) << (_wgslsmith_sub_u32(28823u, arg_0.b) % 32u), ~arg_1.b, 1u) | vec3<u32>(arg_0.b, reverseBits(arg_1.b), 16563u >> (_wgslsmith_div_u32(u_input.a, arg_0.b) % 32u)), vec2<i32>(_wgslsmith_mod_i32(~arg_1.c.x, 2147483647i) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.c.x, arg_0.c.x), vec3<i32>(arg_1.c.x, arg_1.c.x, -2147483647i)) | arg_0.c.x), arg_1.c.x));
    var var_1 = !(!func_3(_wgslsmith_clamp_i32(-7202i, -2147483647i, arg_0.c.x) & _wgslsmith_mod_i32(arg_0.c.x, arg_0.c.x), Struct_1(arg_0.a, 73718u, _wgslsmith_mod_vec2_i32(arg_1.c, arg_1.c), vec2<bool>(false, arg_0.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), -1210f).d);
    var var_2 = global4[_wgslsmith_index_u32(0u, 17u)];
    return func_3(-1i, func_5(var_0, arg_0, vec4<bool>(false, !any(vec4<bool>(var_1.x, arg_1.d.x, true, var_1.x)), 1009f < arg_1.a, (59i > u_input.b.x) & false)), _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) * _wgslsmith_f_op_f32(-var_2.a.x)))));
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec3_u32(max(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 35718u, 32749u), vec3<u32>(11281u, 0u, u_input.a))), select(~(vec3<u32>(arg_0, arg_0, 48593u) ^ vec3<u32>(1u, arg_1.b, 0u)), ~vec3<u32>(u_input.a, 4294967295u, arg_1.b), true)), firstTrailingBit(vec3<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, arg_1.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(u_input.a, 4294967295u))), ~reverseBits(u_input.a), ~4294967295u ^ ~arg_1.b)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 29u)];
    var var_2 = func_3(func_5(arg_2, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x) + _wgslsmith_f_op_f32(-arg_2.a.x)), ~_wgslsmith_add_u32(var_0.x, var_1.b), select(abs(u_input.b.xz), min(arg_1.c, vec2<i32>(-69083i, u_input.b.x)), !var_1.d.x), vec2<bool>(var_1.d.x, any(arg_1.d))), vec4<bool>(true, !func_6(arg_1, global1[_wgslsmith_index_u32(0u, 29u)]).d.x, all(vec4<bool>(true, var_1.d.x, false, var_1.d.x)), -1i == (var_1.c.x ^ 31i))).c.x, Struct_1(arg_2.a.x, arg_0, var_1.c, !func_6(Struct_1(arg_1.a, var_0.x, var_1.c, vec2<bool>(true, true)), Struct_1(-988f, 18555u, vec2<i32>(9478i, u_input.b.x), vec2<bool>(var_1.d.x, var_1.d.x))).d), 126f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(arg_3.a.x - -1000f)), -24634i > _wgslsmith_div_i32(var_1.c.x, 0i))))));
    var_1 = func_5(Struct_2(arg_2.a), arg_1, vec4<bool>(false, !arg_1.d.x, false, (!var_1.d.x || func_6(arg_1, Struct_1(arg_2.a.x, 50335u, vec2<i32>(-2147483647i, -1i), vec2<bool>(arg_1.d.x, var_1.d.x))).d.x) || true));
    global2 = var_0.x;
    return StorageBuffer(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, ~var_0.x, ~var_2.b, _wgslsmith_sub_u32(u_input.a, arg_0))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, arg_1.b, u_input.a), max(~vec4<u32>(61852u, 0u, arg_1.b, 25036u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, var_2.b, 22371u, arg_0), vec4<u32>(0u, var_0.x, var_1.b, u_input.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.x - 1000f), arg_2.a.x, _wgslsmith_f_op_f32(-var_2.a)) * vec3<f32>(-756f, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-624f, 1268f)))), ~(~39569u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(u_input.b.x, 0i)) << (_wgslsmith_div_u32(u_input.a, 88716u) % 32u)) <= select(~1i, u_input.b.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_1 = select(~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 37424u), u_input.a), u_input.a, u_input.a), abs(vec3<u32>(74776u << (reverseBits(u_input.a) % 32u), ~(u_input.a ^ u_input.a), u_input.a)), !(!all(vec2<bool>(true, false))));
    let var_2 = true;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-961f, 1451f)) * _wgslsmith_f_op_f32(f32(-1f) * -455f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 546f))))) * _wgslsmith_f_op_f32(abs(-842f)));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(f32(-1f) * -1248f), false));
    let x = u_input.a;
    s_output = func_7(abs(reverseBits(1u)) & firstLeadingBit(~_wgslsmith_div_u32(var_1.x, 65445u)), func_6(func_5(func_4(~vec3<u32>(16987u, 0u, 4294967295u), firstLeadingBit(u_input.a), func_1(7359u, vec4<bool>(false, var_2, true, var_2)), firstTrailingBit(u_input.b.xz)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a), vec4<u32>(42114u, u_input.a, 44680u, var_1.x)), 29u)], !vec4<bool>(false, var_2, true, var_2)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1598f + 203f)), 27946u, vec2<i32>(func_5(global4[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(var_1.x, 29u)], vec4<bool>(false, false, true, true)).c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 24955i, 48471i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 7051i))), vec2<bool>(true, true))), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1208f, _wgslsmith_f_op_f32(229f + 1781f), _wgslsmith_f_op_f32(-703f * 1199f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-672f, -633f, -1058f))))))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 21717u, var_1.x) & vec3<u32>(var_1.x, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(0u, u_input.a, var_1.x)), ~vec3<u32>(1u, 4294967295u, 4294967295u)), firstTrailingBit(~vec3<u32>(0u, 0u, 1u))), 17u)]);
}

