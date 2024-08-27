struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1.a.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(984f)), -216f)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-584f, 658f), 517f, true))));
    var var_2 = _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(countOneBits(arg_1.a.c.x), -max(arg_1.a.c.x, arg_1.a.c.x))), countOneBits(~_wgslsmith_div_i32(-1i, -19923i)));
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(40748u, 1u), _wgslsmith_mult_vec2_u32(arg_1.a.a, vec2<u32>(1u, 31953u)), true), _wgslsmith_mod_vec2_u32(arg_1.a.a, ~vec2<u32>(arg_1.a.a.x, u_input.b.x))), max(u_input.b.x, _wgslsmith_mult_u32(2447u, u_input.d)) | u_input.b.x, 4294967295u);
    let var_4 = reverseBits(~11904u);
    return 207f;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec3<bool>(u_input.b.x >= arg_1.x, all(vec3<bool>(arg_0.d, true, true)), arg_0.d);
    let var_1 = arg_0;
    let var_2 = Struct_3(var_1.b.x <= arg_3.x, var_0.x, Struct_2(var_1, vec4<bool>(arg_1.x > ~57147u, true, false, var_0.x), arg_2.x));
    var var_3 = select(select(vec3<i32>(9609i, 1i, arg_0.c.x), ~countOneBits(vec3<i32>(0i, 0i, 2147483647i)), vec3<bool>(true, true, arg_0.d)) & ((vec3<i32>(-1i) * -vec3<i32>(58750i, var_1.c.x, var_1.c.x)) | abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c.x, var_1.c.x, -33435i), vec3<i32>(var_1.c.x, u_input.c, 20345i)))), countOneBits(-(~vec3<i32>(-1068i, var_1.c.x, arg_0.c.x))), var_2.c.b.wwy);
    var_3 = ~(vec3<i32>(-1i, u_input.c, -1i) >> (min(~(~u_input.b.zxx), u_input.b.xzy) % vec3<u32>(32u)));
    return 289f;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.c * arg_1.x), _wgslsmith_f_op_f32(-arg_0.c.c))), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(197f, Struct_2(Struct_1(arg_0.c.a.a, vec2<f32>(-1055f, 473f), vec2<i32>(-2147483647i, 1i), true), vec4<bool>(false, arg_0.c.b.x, false, true), 1009f))), arg_1.x)) + _wgslsmith_f_op_vec3_f32(-arg_1.wzy)), _wgslsmith_f_op_vec3_f32(arg_1.yzx - vec3<f32>(_wgslsmith_f_op_f32(min(-112f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(4294967295u, arg_0.c.a.a.x), arg_0.c.a.b, var_0.c.a.c, var_0.a), vec2<u32>(1u, 1475u), arg_1.xwz, vec4<f32>(arg_1.x, 700f, -913f, var_0.c.a.b.x)))), -1101f)), true));
    var var_2 = Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), arg_0.c.a.a)), var_0.c.a.b, ~vec2<i32>(0i, ~abs(arg_0.c.a.c.x)), !arg_0.a);
    let var_3 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-var_0.c.a.c.x, _wgslsmith_dot_vec2_i32(var_2.c, var_2.c), _wgslsmith_mult_i32(u_input.c, arg_0.c.a.c.x), arg_0.c.a.c.x), vec4<i32>(-12431i, 81617i ^ var_2.c.x, -1i ^ var_2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-18497i, var_2.c.x, 2147483647i, var_0.c.a.c.x), vec4<i32>(arg_0.c.a.c.x, 1i, var_0.c.a.c.x, -2147483647i)))), vec4<i32>(firstLeadingBit(12454i), _wgslsmith_clamp_i32(var_0.c.a.c.x, arg_0.c.a.c.x, arg_0.c.a.c.x), -54472i << (var_2.a.x % 32u), -1444i) >> (vec4<u32>(firstTrailingBit(var_0.c.a.a.x), var_0.c.a.a.x, ~118962u, _wgslsmith_clamp_u32(48119u, 1u, var_0.c.a.a.x)) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c)) - -828f)), _wgslsmith_f_op_f32(-1364f + _wgslsmith_f_op_f32(func_3(var_0.c.a, _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.c.a.a.x, 37041u), vec2<u32>(0u, 89221u), arg_0.c.b.yy), ~var_0.c.a.a), arg_1.xyw, arg_1)))));
    return _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.c.a, ~u_input.b.yx, vec3<f32>(var_1.x, arg_1.x, 179f), _wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(arg_0.c.a.b.x, 753f, arg_0.c.c, 331f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select((select(u_input.c, u_input.c, true) << (~36617u % 32u)) == abs(u_input.c), !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true))), true);
    var_0 = true;
    let var_1 = Struct_3(u_input.c < ~87280i, true, Struct_2(Struct_1(vec2<u32>(u_input.a, 1u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2829f, -842f))), _wgslsmith_div_vec2_f32(vec2<f32>(-312f, 1266f), vec2<f32>(-611f, 1924f))), select(countOneBits(vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(u_input.c, u_input.c), true), select(true, any(vec2<bool>(true, false)), true)), vec4<bool>(true, true, true, !(u_input.c > u_input.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) * _wgslsmith_f_op_f32(f32(-1f) * -1553f)), _wgslsmith_div_f32(_wgslsmith_div_f32(1448f, -2203f), _wgslsmith_f_op_f32(func_1(Struct_3(true, true, Struct_2(Struct_1(u_input.b.wx, vec2<f32>(-1720f, 1019f), vec2<i32>(15752i, u_input.c), true), vec4<bool>(false, false, true, false), -1000f)), vec4<f32>(1671f, 492f, 2298f, -2305f))))))));
    let var_2 = Struct_1(max(_wgslsmith_mult_vec2_u32(min(max(vec2<u32>(10547u, var_1.c.a.a.x), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(1u, 43094u)), _wgslsmith_clamp_vec2_u32(u_input.b.yz, ~vec2<u32>(27458u, u_input.b.x), vec2<u32>(0u, var_1.c.a.a.x) ^ var_1.c.a.a)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.c.a.a.x, 0u), vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(var_1.c.a.a, var_1.c.a.a)), u_input.b.yx)), vec2<f32>(_wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.b.x))), var_1.c.a.b.x), ~(var_1.c.a.c & var_1.c.a.c), var_1.a);
    var_0 = any(var_1.c.b.zz);
    var var_3 = -var_2.c;
    var var_4 = Struct_3(select(true | var_1.b, all(vec4<bool>(false, var_2.d, true, var_1.b)), true), var_1.a & true, Struct_2(var_2, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(162f)))));
    var var_5 = any(!vec4<bool>(!var_2.d, true | var_1.a, all(select(vec4<bool>(true, false, true, var_1.c.a.d), var_4.c.b, var_1.c.b)), all(vec3<bool>(var_4.c.b.x, var_4.c.a.d, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_1.c.a.a.x, 1u), _wgslsmith_f_op_f32(select(691f, -189f, !select(any(var_4.c.b.wy), var_2.d, var_2.d && true))));
}

