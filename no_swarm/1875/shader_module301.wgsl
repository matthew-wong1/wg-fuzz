struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 29>;

var<private> global2: array<vec3<bool>, 31>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    global2 = array<vec3<bool>, 31>();
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    global0 = arg_2.a;
    global2 = array<vec3<bool>, 31>();
    return firstLeadingBit(abs(u_input.b.x | min(7283i, u_input.b.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global0 = all(select(select(vec2<bool>(false, !arg_1.a), select(!vec2<bool>(true, arg_1.a), !vec2<bool>(arg_1.a, true), arg_1.a), all(select(vec2<bool>(arg_1.a, false), vec2<bool>(false, false), arg_1.a))), select(vec2<bool>(true, arg_1.a), !(!vec2<bool>(arg_1.a, arg_1.a)), vec2<bool>(arg_1.a || arg_1.a, arg_1.a)), vec2<bool>(!any(vec2<bool>(false, false)), false)));
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = vec3<u32>(20680u >> (~_wgslsmith_dot_vec4_u32(var_0.c, abs(arg_1.c)) % 32u), firstLeadingBit(58093u), ~reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~arg_1.c.x, 29u)], 29u)]) ^ countOneBits(u_input.a.x));
    let var_3 = arg_1;
    return var_0.c.x << (firstLeadingBit(15849u) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    global1 = array<u32, 29>();
    var var_0 = 24088u;
    let var_1 = -vec3<i32>(u_input.b.x, arg_1.x, 2147483647i);
    global0 = global1[_wgslsmith_index_u32(func_4(arg_1.x, arg_0, _wgslsmith_mod_vec3_i32(vec3<i32>(func_3(global2[_wgslsmith_index_u32(arg_0.c.x, 31u)], vec3<f32>(arg_0.b.x, -976f, arg_0.b.x), arg_0), var_1.x & 17830i, 1i), ~vec3<i32>(u_input.b.x, arg_1.x, arg_1.x) | ~vec3<i32>(u_input.b.x, arg_1.x, var_1.x))), 29u)] == ~firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, arg_0.c.x), vec4<u32>(1u, arg_0.c.x, 1u, arg_3)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1385f, arg_0.b.x, -512f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 465f, 2397f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(681f, arg_0.b.x, 529f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.x, arg_0.b.x, 949f)))))));
    return ~_wgslsmith_mult_i32(53834i, 28992i);
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(any(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-812f, _wgslsmith_f_op_f32(1000f - -1000f)) * vec2<f32>(-1086f, 317f))), u_input.a | ((vec4<u32>(global1[_wgslsmith_index_u32(0u, 29u)], u_input.a.x, global1[_wgslsmith_index_u32(23031u, 29u)], 87867u) ^ ~u_input.a) << (u_input.a % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(946f, var_0.b.x, 1093f, 443f));
    let var_2 = vec4<u32>(~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(69698u, 56909u, 31138u), ~u_input.a.x)), 4294967295u, ~arg_3.x, u_input.a.x);
    global1 = array<u32, 29>();
    return Struct_1(!all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), false)), _wgslsmith_div_vec2_f32(var_0.b, var_0.b), u_input.a);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = func_5(vec4<i32>(-u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(1i), ~0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x << (u_input.a.x % 32u), 0i ^ u_input.b.x, countOneBits(-8780i), firstLeadingBit(u_input.b.x))), -2147483647i), -_wgslsmith_mult_i32(func_2(Struct_1(false, vec2<f32>(338f, -327f), u_input.a), u_input.b, u_input.a.yyz, 0u), max(-1i, -1i) >> (0u % 32u)), select(-(~vec4<i32>(4379i, u_input.b.x, -30933i, -16640i)), select(vec4<i32>(-48560i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 25353i, u_input.b.x), true), true) & -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(23468i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -74879i, u_input.b.x))), u_input.a.xw);
    let var_1 = var_0.c << (~(~abs(vec4<u32>(39497u, var_0.c.x, u_input.a.x, 1u))) % vec4<u32>(32u));
    global0 = any(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true)))));
    let var_2 = all(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u >> (func_4(u_input.b.x, Struct_1(var_0.a, var_0.b, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)) % 32u), func_4(u_input.b.x, func_5(vec4<i32>(u_input.b.x, -2147483647i, 109349i, u_input.b.x), 1i, vec4<i32>(u_input.b.x, 36372i, u_input.b.x, u_input.b.x), u_input.a.xw), reverseBits(vec3<i32>(u_input.b.x, -27638i, 0i)))), 31u)]);
    let var_3 = var_1.wz;
    return select(select(vec2<bool>(func_5(vec4<i32>(28512i, 2147483647i, u_input.b.x, -11862i), ~2147483647i, -vec4<i32>(u_input.b.x, 9405i, u_input.b.x, -2147483647i), ~vec2<u32>(var_0.c.x, var_1.x)).a, (-2147483647i & u_input.b.x) < u_input.b.x), !select(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, false)), select(vec2<bool>(true, false), vec2<bool>(true, var_0.a), true), var_2), true), !vec2<bool>(var_0.a, var_0.a), true);
}

fn func_6(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global1 = array<u32, 29>();
    let var_0 = true;
    var var_1 = -max(vec3<i32>(u_input.b.x, 1i, ~min(41709i, u_input.b.x)), vec3<i32>(1i, 45453i, u_input.b.x));
    var var_2 = func_5(~vec4<i32>(-1i, u_input.b.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -11875i, -11057i, 0i), vec4<i32>(51735i, var_1.x, 49300i, 1i)), -20752i), _wgslsmith_clamp_i32(-1i, -2147483647i, abs(-2147483647i))), _wgslsmith_mult_i32((_wgslsmith_dot_vec3_i32(vec3<i32>(-11460i, u_input.b.x, u_input.b.x), vec3<i32>(var_1.x, var_1.x, var_1.x)) >> (~arg_0 % 32u)) << (~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)]) % 32u), 2147483647i), vec4<i32>(-1i) * -(~abs(vec4<i32>(79433i, 14463i, -15194i, 1i))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zy, ~u_input.a.xy), vec2<u32>(~select(u_input.a.x, 4294967295u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_0, u_input.a.x), ~vec4<u32>(4294967295u, 0u, 35197u, 1u))))).b.x;
    global2 = array<vec3<bool>, 31>();
    return Struct_1(all(!vec4<bool>(arg_2.x, any(vec4<bool>(true, true, true, true)), arg_2.x, var_0)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1120f, arg_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1.zy)) - vec2<f32>(274f, arg_1.x)))), vec2<f32>(-1000f, 378f))), u_input.a);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = -_wgslsmith_sub_i32(-1i, 16233i);
    var_0 = ~(-2147483647i);
    var var_1 = 60221u;
    let var_2 = Struct_1(-2267i <= u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(682f, arg_2.b.x))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_2.b.x)))))), u_input.a);
    global0 = !(!(reverseBits(u_input.b.x) <= ~4854i));
    return u_input.b.x >> (countOneBits(arg_3.x | abs(38474u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true || all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 175f) * vec2<f32>(-1301f, -165f))), vec2<f32>(-572f, _wgslsmith_f_op_f32(round(251f))))), u_input.a);
    var var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, 0i, 1i, select(min(u_input.b.x, 47293i), firstTrailingBit(u_input.b.x), var_0.a)), vec4<i32>(func_7(func_6(~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, -1337f, var_0.b.x)), func_1(-476f)), Struct_1(false, _wgslsmith_f_op_vec2_f32(step(var_0.b, var_0.b)), var_0.c), var_0, countOneBits(u_input.a.xzy) | ~var_0.c.yyy), -2147483647i, u_input.b.x, 1i));
    global0 = var_0.a;
    let var_2 = ~select(-(select(vec3<i32>(15862i, 2147483647i, var_1.x), var_1.wzz, var_0.a) | var_1.yzw), select(vec3<i32>(~(-2147483647i), -21816i, 1i), var_1.www, select(select(vec3<bool>(false, true, var_0.a), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 31u)], var_0.a), !vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, false, var_0.a))), select(vec3<bool>(!var_0.a, true, false), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 31u)], global2[_wgslsmith_index_u32(~43741u, 31u)]));
    let var_3 = -vec4<i32>(func_7(var_0, func_5(vec4<i32>(52211i, -25152i, u_input.b.x, var_1.x) << (vec4<u32>(38509u, 0u, 39028u, 4294967295u) % vec4<u32>(32u)), var_1.x, min(vec4<i32>(var_2.x, var_2.x, 1i, var_1.x), vec4<i32>(u_input.b.x, var_2.x, var_1.x, var_1.x)), max(var_0.c.zw, var_0.c.xx)), var_0, vec3<u32>(u_input.a.x, u_input.a.x, 1412u) >> (u_input.a.xyx % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(20508i, var_2.x), var_1.x | u_input.b.x, -1i) ^ 1i, -(~2147483647i) << (~_wgslsmith_mult_u32(1u, var_0.c.x) % 32u), -(i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-202f, var_0.b.x)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7977u, 29u)] >> (u_input.a.x % 32u), 29u)], 29u)], _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(var_0.c.x, var_0.c.x))), func_5(~_wgslsmith_clamp_vec4_i32(var_3, vec4<i32>(var_1.x, var_2.x, var_1.x, u_input.b.x), vec4<i32>(var_3.x, -1i, u_input.b.x, var_2.x)), ~1i, var_3, vec2<u32>(_wgslsmith_mod_u32(16687u, 43023u), global1[_wgslsmith_index_u32(4294967295u, 29u)] ^ u_input.a.x)).c.x), ~(reverseBits(~3410u) << (var_0.c.x % 32u)), u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(~var_3.x, var_3.x, 11263i, _wgslsmith_add_i32(var_1.x, 29278i) ^ func_7(var_0, Struct_1(true, vec2<f32>(1000f, var_0.b.x), u_input.a), Struct_1(var_0.a, var_0.b, vec4<u32>(60762u, u_input.a.x, var_0.c.x, 10165u)), vec3<u32>(global1[_wgslsmith_index_u32(21323u, 29u)], 91345u, 4294967295u))), ~var_3));
}

