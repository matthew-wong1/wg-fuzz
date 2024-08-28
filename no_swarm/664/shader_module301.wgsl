struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> Struct_3 {
    return Struct_3(vec3<bool>(true, true, true), true, -1434f, select(_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(u_input.a, select(u_input.a, -34297i, true))), _wgslsmith_mult_i32(-1i, -14280i & (u_input.a & 0i)), -589f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1506f)), global0.x)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec2<i32> {
    let var_0 = 1u | abs(_wgslsmith_add_u32(firstTrailingBit(select(77878u, 24926u, true)), ~1u));
    var var_1 = select(func_1().a.xy, select(!select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_0), select(vec2<bool>(false, true), vec2<bool>(arg_1, arg_0), arg_0)), func_1().a.zy, vec2<bool>(!(var_0 < var_0), arg_0)), false);
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1910f, global0.x, -1967f, global0.x) * vec4<f32>(1179f, global0.x, global0.x, -440f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 470f, 628f, -500f))))))));
    var var_2 = vec2<bool>(true, !(~(~var_0) < firstLeadingBit(0u)));
    var_1 = vec2<bool>(true, true);
    return vec2<i32>(_wgslsmith_mult_i32(-u_input.a << (abs(0u) % 32u), u_input.a), 2147483647i);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> StorageBuffer {
    let var_0 = ~(-35336i ^ u_input.a);
    let var_1 = min(vec4<i32>(u_input.a, var_0, u_input.a, i32(-1i) * -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_0, u_input.a, 2147483647i, -1i) | vec4<i32>(-17671i, -67570i, 27871i, 0i)), reverseBits(vec4<i32>(-2147483647i, var_0, u_input.a, 4135i) >> (vec4<u32>(2825u, 12500u, 2458u, 49298u) % vec4<u32>(32u))) & vec4<i32>(countOneBits(67715i), -1i, i32(-1i) * -2568i, -var_0)));
    let var_2 = !func_1().a.zz;
    let var_3 = select(~vec2<u32>(~0u, 4294967295u), vec2<u32>(abs(1u), 53444u), !var_2.x);
    let var_4 = 1i;
    return StorageBuffer(func_3(!any(!vec2<bool>(var_2.x, false)), true), var_1.xx, var_4, var_3.x, firstTrailingBit(var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, false, !all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)));
    var var_1 = global0.x;
    var_0 = !vec4<bool>(false || (~u_input.a < _wgslsmith_clamp_i32(-2147483647i, u_input.a, -23530i)), var_0.x, true, !(!any(vec4<bool>(var_0.x, true, true, false))));
    var var_2 = func_1();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.ywx + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_3.c, global0.x))) * vec3<f32>(var_2.c, _wgslsmith_f_op_f32(global0.x + 1395f), _wgslsmith_div_f32(-336f, -917f)))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~(i32(-1i) * -2147483647i), abs(~1i)), u_input.a));
}

