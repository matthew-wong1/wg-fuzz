struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<f32>;

var<private> global2: vec4<f32> = vec4<f32>(-672f, 971f, -462f, -1183f);

var<private> global3: Struct_5 = Struct_5(false, 90740u, Struct_4(153f, 1000f, vec3<f32>(-519f, 1041f, 1000f), Struct_1(true), vec3<i32>(47454i, 2147483647i, 2147483647i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    global3 = arg_0;
    var var_0 = _wgslsmith_mod_vec4_i32(max(firstTrailingBit(~vec4<i32>(6680i, 0i, u_input.e.x, 33352i) & abs(vec4<i32>(u_input.e.x, arg_1.x, -62278i, 1i))), _wgslsmith_add_vec4_i32(abs(-vec4<i32>(-18401i, 23588i, 2147483647i, global3.c.e.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 14731i, u_input.a.x, -9035i) >> (vec4<u32>(global0.b, global0.b, 1u, 18633u) % vec4<u32>(32u)), abs(vec4<i32>(arg_0.c.e.x, global0.c.e.x, 2147483647i, arg_1.x))))), (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-22765i, global3.c.e.x, -36119i, -2147483647i))) ^ vec4<i32>(_wgslsmith_sub_i32(arg_1.x, -24879i), arg_0.c.e.x, -21172i, arg_0.c.e.x));
    var_0 = vec4<i32>(i32(-1i) * -(i32(-1i) * -2147483647i), -2147483647i & global0.c.e.x, global3.c.e.x, -2147483647i);
    var var_1 = _wgslsmith_div_vec3_u32(arg_2.c.zzz, _wgslsmith_sub_vec3_u32(arg_2.c.xxw, firstTrailingBit(~vec3<u32>(global3.b, 1021u, arg_0.b))));
    var var_2 = vec3<f32>(-882f, _wgslsmith_f_op_f32(global3.c.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-2169f, global2.x), _wgslsmith_f_op_f32(950f + arg_0.c.b)))), -459f);
    return -2433f;
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-894f, _wgslsmith_f_op_f32(-global1.x))), -1594f, 549f, global3.c.c.x));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-686f, global3.c.a, global0.c.a, global1.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, -390f, -968f, 289f), vec4<f32>(1000f, global1.x, global2.x, -1000f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, global0.c.a, -1872f) * vec4<f32>(global1.x, 163f, global2.x, 966f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, 877f, -1203f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(289f, global1.x, global1.x, 1131f) * vec4<f32>(global0.c.b, global3.c.a, 1000f, global0.c.a))))));
    var var_0 = Struct_2(global3.c.d, ~vec2<u32>(5833u, 0u));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(true, 1u, Struct_4(-436f, global3.c.a, vec3<f32>(1010f, -543f, 1805f), global3.c.d, vec3<i32>(global3.c.e.x, global0.c.e.x, global3.c.e.x))), vec2<i32>(global3.c.e.x, global0.c.e.x), Struct_3(4294967295u, Struct_1(true), vec4<u32>(global3.b, 4294967295u, 0u, global3.b), global3.b, Struct_2(var_0.a, vec2<u32>(0u, 18245u))), global3.c.e))), -819f, _wgslsmith_f_op_f32(max(global3.c.c.x, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), 673f, -370f, -1353f))))) - vec4<f32>(global1.x, global2.x, 624f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-809f, global0.c.c.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1450f, -915f, global0.c.b, global2.x), vec4<f32>(-1499f, -770f, 264f, -1122f), vec4<bool>(global3.c.d.a, false, true, var_0.a.a)))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global2.x, global2.x, global1.x))))))))));
    return Struct_3(global0.b, Struct_1(false), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 33299u, global3.b, global3.b), ~vec4<u32>(u_input.b, 1u, global0.b, u_input.d)) & vec4<u32>(40228u, 1u, _wgslsmith_sub_u32(global3.b, 4002u), firstTrailingBit(var_0.b.x))), ~(~_wgslsmith_div_u32(global0.b, 6216u) ^ firstTrailingBit(global3.b)), Struct_2(global0.c.d, var_0.b));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    var var_0 = func_2();
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1509f, global2.x, global2.x, -1904f), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.a), global2.x, global2.x, 851f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1812f, global2.x, -935f, -596f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 533f, -1320f))))));
    return ~_wgslsmith_mod_i32(u_input.e.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(countOneBits(select(u_input.d, global0.b ^ reverseBits(4294967295u), global0.c.d.a)), 16612u);
    let var_1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(847i, -2147483647i), _wgslsmith_mult_i32(-17222i, _wgslsmith_div_i32(u_input.a.x, 1i)), _wgslsmith_add_i32(func_1(global0.b, vec2<u32>(4294967295u, global3.b)), -global3.c.e.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-36550i, 40623i), global0.c.e.x, global0.c.e.x)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.e.x, -35983i, global3.c.e.x, 2147483647i), vec4<i32>(global3.c.e.x, global3.c.e.x, global3.c.e.x, 2147483647i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(13681i, 1i, 2147483647i, -30163i), vec4<i32>(u_input.c, -17916i, global0.c.e.x, -15158i), false), firstLeadingBit(vec4<i32>(-1i, u_input.a.x, 2147483647i, -4760i))), -global0.c.e.x, min(-1i, -1i)));
    var var_2 = !(!select(select(!vec4<bool>(global3.a, false, global0.a, global3.a), vec4<bool>(global3.c.d.a, false, global0.a, false), true), !select(vec4<bool>(true, global3.a, global3.a, global0.c.d.a), vec4<bool>(global0.c.d.a, false, global3.a, false), false), all(vec2<bool>(global0.a, global3.a)) & global0.c.d.a));
    var var_3 = _wgslsmith_div_u32(1u, ~abs(_wgslsmith_sub_u32(u_input.b, 16819u)));
    let var_4 = vec2<i32>(var_1.x, _wgslsmith_add_i32(~_wgslsmith_clamp_i32(u_input.a.x, -1i, global0.c.e.x), -5846i));
    global3 = Struct_5(!global3.c.d.a, 11834u, Struct_4(-687f, 1292f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.b, global0.c.c.x, 310f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global0.c.c.x, global1.x) + vec3<f32>(global0.c.b, global0.c.c.x, global1.x)))), func_2().b, _wgslsmith_mult_vec3_i32(vec3<i32>(~0i, global0.c.e.x, _wgslsmith_mult_i32(var_4.x, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(global0.c.e.x, global3.c.e.x), -34983i, _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(var_4.x, var_1.x, global0.c.e.x, global3.c.e.x))))));
    var_3 = ~(~(~14573u));
    var var_5 = var_1;
    var var_6 = _wgslsmith_f_op_vec2_f32(select(global0.c.c.zx, global2.zx, var_2.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.e.x, _wgslsmith_dot_vec2_i32(min(var_5.yy, vec2<i32>(-40552i, global3.c.e.x)), vec2<i32>(global3.c.e.x, -2147483647i)), max(-global3.c.e.x, 26255i), countOneBits(var_4.x) ^ -1i), vec4<i32>(var_5.x, 26594i, global0.c.e.x, global3.c.e.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.c.c.xx), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.zw, vec2<f32>(global0.c.b, global3.c.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -784f) + vec2<f32>(var_6.x, 1000f))))), global2.zw));
}

