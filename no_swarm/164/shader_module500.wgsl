struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = ~(~(_wgslsmith_add_vec3_u32(vec3<u32>(5410u, 0u, 18741u), vec3<u32>(u_input.a, u_input.b, u_input.b)) | (vec3<u32>(37777u, 48625u, u_input.b) ^ vec3<u32>(u_input.b, 99029u, 1u)))) | firstTrailingBit(~(abs(vec3<u32>(14315u, u_input.b, 37965u)) << (reverseBits(vec3<u32>(97236u, 1u, u_input.a)) % vec3<u32>(32u))));
    var var_1 = max(-36618i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(3256i, 0i, 0i, -13854i), abs(vec4<i32>(1i, -46813i, 2147483647i, 1i))), reverseBits(vec4<i32>(10542i, -38553i, -1i, 24815i) >> (vec4<u32>(32015u, var_0.x, 0u, u_input.a) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_clamp_i32(-22247i, ~31459i, ~(-67041i)), _wgslsmith_mod_i32(-15834i, -2147483647i), _wgslsmith_mod_i32(-1i, 40737i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, 7853i), vec3<i32>(-2147483647i, 7039i, -3587i)), -vec3<i32>(-11613i, -26228i, 1i)))));
    let var_2 = (vec3<i32>(1i, 1i, 1i) | vec3<i32>(~(-2147483647i), 1i << ((var_0.x >> (u_input.a % 32u)) % 32u), reverseBits(-1i))) | abs(vec3<i32>(1i, ~countOneBits(-9341i), -6721i));
    var_1 = -_wgslsmith_clamp_i32(-28221i, var_2.x, -var_2.x);
    var_1 = _wgslsmith_dot_vec2_i32(var_2.zx, -_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(var_2.x), ~1i), _wgslsmith_div_vec2_i32(var_2.zy, var_2.zx)));
    return select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !vec3<bool>(all(vec3<bool>(false, false, true)), -1i == var_2.x, false), !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), var_0) >= var_0.x)), vec3<bool>(false, true & (~u_input.b != 0u), select(any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), true)), !(false == !any(vec2<bool>(true, true))));
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_0 = vec2<bool>(true, !(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-40258i, -1i, -34309i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)) > -_wgslsmith_add_i32(42996i, 1i)));
    let var_1 = select(vec3<bool>(var_0.x, false, !(true || all(vec2<bool>(true, var_0.x)))), select(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(890f, 1234f) + vec2<f32>(-352f, -457f)))), !vec3<bool>(var_0.x, true, select(false, var_0.x, var_0.x)), func_3(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -614f)), 573f))), select(!select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x == true), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1171f, -691f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(634f, 1000f) + vec2<f32>(-168f, -1044f)))), true));
    var var_2 = u_input.a;
    return ~countOneBits(~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(70205i, 17816i, 5269i, 0i)), vec4<i32>(-45286i, 1i, -2147483647i, -38632i)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(func_2(), !(any(vec3<bool>(false, false, false)) == all(vec2<bool>(false, true))), reverseBits(_wgslsmith_clamp_i32(-88726i, 59131i, _wgslsmith_sub_i32(-2147483647i, -2147483647i)) & 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, 1i)), ~(-vec2<i32>(-18889i, -1i))), vec2<i32>(select(reverseBits(0i), ~1i, true), ~(~(-11533i)))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(~var_0.a, vec4<i32>(1i, var_0.d.x, select(var_0.d.x, ~2147483647i, true), max(var_0.c, var_0.c) | (0i ^ var_0.c))), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-310f, -653f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, -1476f)))).x, -var_0.a.x, var_0.a.wz);
    let var_2 = Struct_1(var_0.a, var_1.b, 12994i, var_1.d);
    let var_3 = var_0;
    let var_4 = 530f;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_add_i32(-40075i, var_0.c), -30338i, abs(-1i), i32(-1i) * -11454i), var_0.b | var_0.b, _wgslsmith_add_i32(~(-56172i), var_0.a.x), ~(var_0.a.zx << (vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a), _wgslsmith_mod_u32(46820u, 4294967295u)) % vec2<u32>(32u))));
    global1 = var_1.b;
    var var_2 = vec2<bool>(!any(vec4<bool>(var_1.b, true, true, any(vec4<bool>(false, false, false, var_0.b)))), all(vec2<bool>(var_1.b, false)));
    var_1 = func_1();
    var var_3 = countOneBits(-(~(-_wgslsmith_sub_i32(1i, var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, ~reverseBits(-40275i), var_0.c, -countOneBits(var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1071f, 834f), _wgslsmith_f_op_f32(-1000f - -560f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)))), func_1().a.yyx & vec3<i32>(var_0.a.x << (max(2012u, 76190u) % 32u), 2147483647i, var_1.a.x), abs(max(1u, ~4776u & abs(u_input.b))), _wgslsmith_dot_vec4_i32(firstTrailingBit(var_0.a), var_0.a));
}

