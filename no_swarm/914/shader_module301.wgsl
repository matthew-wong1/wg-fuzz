struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: vec2<i32> = vec2<i32>(-41065i, -1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_1(1i, 9609i, _wgslsmith_sub_vec4_i32(global1.c, _wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(1i, global1.c.x, 11977i, 46023i)), -abs(vec4<i32>(arg_1.d, -34152i, 42295i, 1486i)))));
    global1 = arg_1.c;
    var var_1 = vec3<bool>(arg_1.b, arg_1.b, (_wgslsmith_mod_i32(-var_0.b, -global2.x) | arg_2.b) <= global1.a);
    var var_2 = vec2<u32>(~4294967295u, ~(~_wgslsmith_mult_u32(25844u, 0u))) | ~vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(34978u, 1u)));
    var var_3 = arg_1.a.x;
    return vec4<i32>(~(-1i), 0i, abs(-20977i), 1i ^ firstLeadingBit(arg_0.b));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = arg_2;
    let var_1 = Struct_1(global2.x, 4074i, _wgslsmith_clamp_vec4_i32(vec4<i32>(11987i, arg_0, _wgslsmith_sub_i32(-77034i ^ u_input.a, _wgslsmith_add_i32(0i, u_input.d)), -1i), ~global1.c, reverseBits(func_3(Struct_1(arg_0, global2.x, vec4<i32>(51129i, arg_0, u_input.b.x, 2147483647i)), Struct_2(vec4<f32>(arg_2, arg_2, 1228f, 625f), false, Struct_1(2147483647i, 2147483647i, vec4<i32>(arg_0, global2.x, 20592i, 42475i)), -13492i, Struct_1(global1.c.x, -32873i, vec4<i32>(arg_0, u_input.d, global1.a, global2.x))), Struct_1(global2.x, global2.x, global1.c), -global1.c.wy))));
    let var_2 = arg_3;
    global0 = ~0u;
    global1 = var_1;
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    global2 = ~(~(-(_wgslsmith_mult_vec2_i32(global1.c.zz, vec2<i32>(arg_0.e.b, arg_0.d)) >> (vec2<u32>(arg_1, 40121u) % vec2<u32>(32u)))));
    let var_0 = Struct_1(~min(1i, arg_0.c.b), 1i, _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.e.c >> (vec4<u32>(2854u, 105093u, 30217u, arg_1) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(global1.c, global1.c), global1.c & global1.c)), firstLeadingBit(arg_0.c.c)));
    global1 = Struct_1(-1i, -_wgslsmith_mult_i32(0i, 37821i), vec4<i32>(global2.x, global2.x, abs(-5408i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global1.c.zy, vec2<i32>(u_input.d, global2.x)), _wgslsmith_add_i32(43997i, global2.x))));
    global2 = _wgslsmith_sub_vec2_i32(arg_0.c.c.xx, global1.c.yx);
    let var_1 = -vec4<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.e.a, global1.a, -46309i), u_input.b)), vec3<i32>(_wgslsmith_sub_i32(21005i, global2.x), var_0.c.x, 1i)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.c.b, arg_0.e.a, arg_0.c.a), vec4<i32>(39640i, u_input.b.x, arg_0.e.c.x, var_0.a))), var_0.a);
    return 6569u;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(14833u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14834u), vec2<u32>(0u, 1u))), vec2<u32>(1u, max(47385u, 0u)))) ^ (~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(67619u, 0u, 46752u))) << (func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-875f, -1131f, arg_0.x, arg_0.x)), func_2(arg_1, vec3<u32>(1u, 1u, 1u), arg_0.x, arg_0.x), Struct_1(arg_2, 1i, global1.c), global1.a, Struct_1(0i, u_input.a, global1.c)), select(1u, ~1u, any(arg_3.zx)), arg_3) % 32u));
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(-func_3(Struct_1(-17092i, 2147483647i, vec4<i32>(global2.x, 1i, arg_2, 40182i)), Struct_2(vec4<f32>(1000f, arg_0.x, arg_0.x, -1272f), false, Struct_1(arg_2, arg_2, global1.c), -29137i, Struct_1(u_input.d, global2.x, vec4<i32>(u_input.c, global1.a, global1.c.x, global2.x))), Struct_1(arg_2, -2614i, global1.c), -u_input.b.zz).yxx, u_input.b), countOneBits(global2.x) ^ 0i, global1.c);
    global0 = 110880u;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -231f, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, 791f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(425f, -1376f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, 302f, arg_0.x, 602f))) * vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-204f)), 1212f, _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_2 = max(global1.c, vec4<i32>(-1i, 0i >> (~var_0 % 32u), arg_1, u_input.a));
    return global2.x >= -29382i;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(global2.x, countOneBits(14233i & max(abs(arg_3.d), _wgslsmith_mult_i32(35187i, 13196i))), vec4<i32>(arg_3.e.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.a, -2147483647i, _wgslsmith_add_i32(34525i, 0i), -global2.x), arg_3.e.c), global1.c.x, _wgslsmith_dot_vec3_i32(~(global1.c.yyw & vec3<i32>(global2.x, arg_2.d, -57824i)), abs(u_input.b) | ~vec3<i32>(global2.x, 20614i, -602i))));
    global1 = Struct_1(11639i, var_0.a, ~(vec4<i32>(-1i) * -select(var_0.c, arg_3.e.c, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_3.a);
    var var_2 = arg_2;
    global0 = ~1u;
    return Struct_1(1i, 1i, _wgslsmith_add_vec4_i32(-vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.c.x, 14806i, -1i), arg_2.c.c.zzy), 27783i, 21514i), _wgslsmith_mod_vec4_i32(reverseBits(var_2.c.c), vec4<i32>(arg_2.e.b, _wgslsmith_mult_i32(49966i, arg_3.e.b), global1.a, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(_wgslsmith_mod_vec2_i32(-(~global1.c.xx), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-25178i, 1i), reverseBits(global1.c.yy))));
    var var_0 = all(vec2<bool>(true, !any(vec2<bool>(false, false)))) != any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1321f, 744f, 1000f) - vec3<f32>(-198f, -1382f, -493f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1787f, -1000f, 823f)), vec3<bool>(false, true, true))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1357f), -1706f, -602f)))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -185f))), 671f));
    let var_3 = func_5(vec2<bool>(func_1(vec3<f32>(_wgslsmith_div_f32(-555f, 889f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -889f)), 1i, firstTrailingBit(-17322i), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1226f, 145f)), _wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-573f, var_1.x, 688f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-352f, 143f, 547f))))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -370f, var_1.x))), true == (_wgslsmith_f_op_f32(trunc(1612f)) == var_1.x), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(0i, -1i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(40619u, 1u, 20156u), vec3<u32>(36244u, 1u, 75501u)) % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, global1.c.x), _wgslsmith_mod_i32(u_input.b.x, 34872i)), countOneBits(~vec4<i32>(0i, global1.c.x, global1.b, -22393i))), -2147483647i, Struct_1(global2.x, -(global2.x << (0u % 32u)), select(vec4<i32>(0i, u_input.c, global2.x, -34135i), vec4<i32>(-46006i, -1i, global1.c.x, global1.c.x), true))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, _wgslsmith_f_op_f32(ceil(-1378f)), _wgslsmith_f_op_f32(floor(-1022f)), _wgslsmith_f_op_f32(-var_1.x))), true, Struct_1(~(~(-1i)), 9885i, vec4<i32>(-global2.x, -7975i, 10962i, 2147483647i)), _wgslsmith_dot_vec2_i32(~(-u_input.b.yx), ~(-global1.c.yw)), Struct_1(-13003i, 40942i, ~(~global1.c))));
    let var_4 = Struct_2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), -260f, var_1.x), true, var_3, -abs(2147483647i), var_3);
    var var_5 = Struct_1(countOneBits(1i), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, ~(-2147483647i)), -func_5(vec2<bool>(true, var_4.b), vec3<f32>(var_1.x, var_4.a.x, -1044f), Struct_2(var_4.a, var_4.b, Struct_1(var_3.c.x, var_3.b, vec4<i32>(-1i, global2.x, global2.x, var_3.c.x)), u_input.c, Struct_1(-11174i, u_input.c, vec4<i32>(var_3.c.x, u_input.c, 0i, var_3.b))), Struct_2(var_4.a, false, Struct_1(global1.a, 2147483647i, var_3.c), 0i, var_3)).b), vec4<i32>(~1i, _wgslsmith_add_i32(1i, -28549i), 1i, 21935i));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, var_1.x, var_1.x) - _wgslsmith_div_vec3_f32(vec3<f32>(var_4.a.x, -1000f, var_4.a.x), var_4.a.zwx)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, 2012f, 2740f) * vec3<f32>(var_4.a.x, -853f, -214f)) - vec3<f32>(337f, var_4.a.x, var_4.a.x))) + var_4.a.wxy));
    global1 = Struct_1(func_3(Struct_1(u_input.b.x, global1.c.x, vec4<i32>(u_input.b.x, 45663i, min(global2.x, global1.c.x), _wgslsmith_mod_i32(1i, u_input.c))), var_4, var_4.c, reverseBits(-_wgslsmith_div_vec2_i32(vec2<i32>(-4981i, 0i), var_5.c.zy))).x, -_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(13663i, -7354i, var_4.e.b)), ~_wgslsmith_mod_vec3_i32(var_4.e.c.xxz, var_4.c.c.wyy)), var_4.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~_wgslsmith_mult_u32(func_4(Struct_2(var_4.a, true, var_4.e, 19788i, var_4.c), 0u, vec4<bool>(false, false, var_4.b, false)), 16069u) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(114u, 4294967295u, 0u))) % 32u), vec4<u32>(countOneBits(reverseBits(0u)), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(~vec3<u32>(36480u, 13516u, 33551u), vec3<u32>(39558u, 21812u, 1u))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), ~reverseBits(vec4<u32>(74551u, 0u, 22624u, 53820u)))), min(var_4.c.c.xxy, var_4.e.c.zxw));
}

