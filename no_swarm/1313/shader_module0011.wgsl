struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = 0u;
    return vec2<u32>(var_0, abs(4294967295u));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec3<i32> {
    global0 = array<Struct_2, 22>();
    var var_0 = _wgslsmith_dot_vec2_u32(~min(_wgslsmith_sub_vec2_u32(max(u_input.b, vec2<u32>(u_input.b.x, 0u)), ~vec2<u32>(arg_1, 4294967295u)), _wgslsmith_mult_vec2_u32(func_3(vec3<f32>(316f, -1673f, -736f)), u_input.a.zz)), vec2<u32>(14512u, ~_wgslsmith_sub_u32(arg_1, arg_2)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(798f))), select(max(arg_0.b.xzz, ~u_input.c) & arg_0.b.yzx, ~u_input.c & max(firstTrailingBit(arg_0.b.wzz), _wgslsmith_mult_vec3_i32(arg_0.b.zyx, vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i))), false), vec2<i32>(2920i, _wgslsmith_dot_vec2_i32(arg_0.b.yx & select(vec2<i32>(arg_0.b.x, arg_0.c), u_input.c.xx, arg_0.a), ~arg_0.b.wy)));
    var var_2 = all(!(!(!vec2<bool>(arg_0.a, false))));
    var_2 = _wgslsmith_mod_u32(func_3(vec3<f32>(_wgslsmith_f_op_f32(round(832f)), -346f, var_1.a)).x, _wgslsmith_sub_u32(u_input.a.x, arg_2) << (47352u % 32u)) < firstLeadingBit(_wgslsmith_mod_u32(57660u, arg_1));
    return _wgslsmith_sub_vec3_i32(u_input.c, -(~(-vec3<i32>(u_input.c.x, var_1.c.x, u_input.c.x))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    let var_0 = arg_3;
    var var_1 = true;
    global0 = array<Struct_2, 22>();
    var var_2 = !select(true & (-var_0 < (arg_0 & arg_3)), !(select(true, true, false) & true), false);
    var var_3 = true;
    return _wgslsmith_dot_vec3_i32(-u_input.c, ~select(min(vec3<i32>(arg_0, -2147483647i, u_input.c.x), vec3<i32>(1i, -2147483647i, var_0)) | vec3<i32>(arg_3, 38007i, -1592i), func_2(Struct_1(true, vec4<i32>(u_input.c.x, 6459i, -3788i, -2147483647i), 13802i), ~u_input.b.x, ~54921u), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a), _wgslsmith_div_f32(arg_1.a, 1748f)))))));
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_1 = Struct_3(1288f, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-23748i, 642i, 2147483647i), vec3<i32>(arg_1.c.x, u_input.c.x, arg_1.b.x)), reverseBits(~arg_1.b)), (vec3<i32>(-1i) * -vec3<i32>(-18024i, arg_0.c, -61610i)) >> (vec3<u32>(0u, _wgslsmith_div_u32(46141u, u_input.b.x), _wgslsmith_mult_u32(10740u, 8006u)) % vec3<u32>(32u)), vec3<i32>(-2147483647i >> (firstLeadingBit(76113u) % 32u), _wgslsmith_mod_i32(arg_1.c.x & arg_0.c, arg_0.c | 1i), arg_1.c.x)), _wgslsmith_mod_vec2_i32(min(firstLeadingBit(~arg_1.b.yx), _wgslsmith_add_vec2_i32(countOneBits(u_input.c.xx), -arg_1.c)), -(_wgslsmith_div_vec2_i32(arg_1.b.yx, arg_0.b.yx) ^ _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c, arg_1.c.x), arg_1.c))));
    let var_2 = arg_1;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(!all(vec2<bool>(true, true)), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(10005i, -1i, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x))), _wgslsmith_add_i32(reverseBits(u_input.c.x), 1i)), Struct_3(-914f, vec3<i32>(u_input.c.x, countOneBits(max(u_input.c.x, u_input.c.x)), u_input.c.x), vec2<i32>(_wgslsmith_sub_i32(func_1(35886i, vec4<f32>(-690f, -847f, -289f, -1020f), vec2<f32>(-622f, 546f), u_input.c.x), _wgslsmith_mult_i32(-1i, -55282i)), _wgslsmith_sub_i32(u_input.c.x, -19167i))));
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_1 = !vec4<bool>(!any(vec3<bool>(true, false, false)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    let var_2 = -46468i;
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_3 = func_4(Struct_1(var_1.x || !any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), firstLeadingBit(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(19450i, u_input.c.x, var_0.c.x, -35500i)), max(vec4<i32>(-1i, -77735i, var_0.c.x, var_0.b.x), vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, var_0.b.x)))), _wgslsmith_div_i32(min(-2147483647i, _wgslsmith_mult_i32(u_input.c.x, var_0.c.x)), _wgslsmith_mod_i32(var_0.c.x, u_input.c.x))), var_0);
    var var_4 = all(select(vec3<bool>(false && (230f > var_3.a), var_1.x, true), select(vec3<bool>(true, all(vec4<bool>(var_1.x, false, false, false)), var_1.x), vec3<bool>(any(vec3<bool>(var_1.x, var_1.x, true)), false, true), select(select(vec3<bool>(var_1.x, false, var_1.x), var_1.wxy, true), var_1.yyw, any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)))), !var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(f32(-1f) * -480f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -455f, -1653f) + vec3<f32>(var_0.a, var_0.a, 342f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a, -136f, var_3.a), vec3<f32>(var_3.a, var_0.a, var_3.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1471f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-383f, 1000f, -124f), vec3<f32>(var_3.a, var_0.a, -139f))))))));
}

