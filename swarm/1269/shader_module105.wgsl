struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32> = vec3<f32>(-845f, 1258f, 1358f);

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(-24049i, vec4<i32>(0i, 24312i, 0i, -14815i), true, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_3(arg_1.x, vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_1.x, 1911i), abs(-17705i), countOneBits(20364i), arg_1.x | arg_1.x), select(~vec4<i32>(32002i, -12701i, 21885i, u_input.c), u_input.d, arg_1.x == arg_1.x)), _wgslsmith_div_i32(-arg_1.x, _wgslsmith_sub_i32(848i, arg_1.x)), 49531i), all(vec4<bool>(true, true, true, true)), false);
    global0 = true;
    var var_1 = global1.x;
    var var_2 = true;
    global0 = var_0.c;
    return select(arg_0.zxw, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.yyx ^ arg_0.yxx, countOneBits(vec3<u32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_clamp_vec3_u32(countOneBits(arg_0.wxw), arg_0.zzy & vec3<u32>(1u, arg_0.x, arg_0.x), arg_0.wzx)) ^ arg_0.xyy, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_0.c), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, true, false), true)), vec3<bool>(var_0.c, var_0.d, any(vec3<bool>(false, var_0.c, var_0.c))), select(select(vec3<bool>(var_0.d, true, true), vec3<bool>(var_0.d, true, true), var_0.d), select(vec3<bool>(var_0.d, var_0.d, var_0.c), vec3<bool>(var_0.c, true, false), var_0.d), 41554u == arg_0.x))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(vec2<u32>(1u, firstTrailingBit(~1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(max(4294967295u, 0u), ~6966u, 1u)) | abs(func_3(vec4<u32>(4294967295u, 0u, 0u, 1u), _wgslsmith_mult_vec2_i32(vec2<i32>(-1442i, u_input.b), vec2<i32>(u_input.d.x, 2147483647i)))), 1454i, _wgslsmith_f_op_f32(step(-643f, 844f)));
    let var_1 = Struct_2(vec3<i32>(10655i, u_input.c, 1i), ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 13543u, var_0.a.x, 117148u), vec4<u32>(2139u, 37281u, var_0.a.x, 4294967295u)), ~vec4<u32>(var_0.b.x, 1u, var_0.b.x, 29957u))), u_input.b | u_input.d.x);
    let var_2 = vec4<bool>(any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, var_0.c < var_1.a.x), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), true, true, !(!(global1.x == _wgslsmith_f_op_f32(round(var_0.d)))));
    global0 = all(select(var_2, vec4<bool>(var_2.x, true, all(vec4<bool>(var_2.x, var_2.x, false, var_2.x)), !var_2.x), select(!vec4<bool>(false, true, false, var_2.x), vec4<bool>(all(var_2.zy), false, false, any(var_2.yz)), var_2.x)));
    global2 = array<Struct_3, 1>();
    return var_2.wx;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    global0 = any(select(func_2(), select(select(vec2<bool>(false, arg_2), select(vec2<bool>(false, true), vec2<bool>(false, arg_2), vec2<bool>(false, arg_2)), select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), arg_2)), select(vec2<bool>(true, arg_2), !vec2<bool>(false, arg_2), true), !vec2<bool>(arg_2, arg_2)), !(!vec2<bool>(true, arg_2))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -546f), -1802f, -445f);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-178f, _wgslsmith_f_op_f32(max(-972f, global1.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), global1.x))), global1.x, _wgslsmith_f_op_f32(2889f - -530f)));
    global2 = array<Struct_3, 1>();
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(select(u_input.d.x, 0i, arg_2), 0i), 28079i), -(u_input.a | 6507i) << (_wgslsmith_clamp_u32(firstLeadingBit(5297u), arg_0, arg_0) % 32u), ~_wgslsmith_mult_i32(reverseBits(-1i), _wgslsmith_div_i32(1i, -30401i))), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_0, 17571u, arg_0, 2120u)), max(select(vec4<u32>(1u, 4294967295u, arg_0, arg_0), vec4<u32>(0u, arg_0, 29346u, 22725u), vec4<bool>(true, true, true, arg_2)), abs(vec4<u32>(arg_0, 4758u, 4294967295u, 4294967295u)))), abs(_wgslsmith_dot_vec2_i32(u_input.d.zy, reverseBits(u_input.d.ww) & -u_input.d.wy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))) - _wgslsmith_f_op_f32(f32(-1f) * -256f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1624f, -1530f, global1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(38447u, vec4<f32>(global1.x, global1.x, -968f, global1.x), true)), -1208f, _wgslsmith_f_op_f32(ceil(global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1697f, global1.x, global1.x), vec3<f32>(1516f, -782f, 680f), vec3<bool>(false, true, true)))))), -_wgslsmith_mult_vec4_i32(reverseBits(reverseBits(vec4<i32>(u_input.c, 27096i, -1i, -15684i))), vec4<i32>(2147483647i, -9208i, max(-33892i, u_input.d.x), _wgslsmith_mod_i32(-51461i, u_input.e))));
}

