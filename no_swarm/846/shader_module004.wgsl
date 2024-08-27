struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = ~u_input.c.yxy;
    var_0 = arg_2;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-340f, -284f))), _wgslsmith_f_op_f32(-646f - -1396f), 508f);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), var_1.x);
    var var_2 = arg_0.x;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = vec2<i32>(u_input.a.x, 58274i);
    let var_1 = 1u;
    var var_2 = arg_1;
    let var_3 = Struct_1(var_2.a, !(_wgslsmith_div_u32(14428u, arg_1.e << (var_1 % 32u)) == 17704u), _wgslsmith_add_i32(i32(-1i) * -2147483647i, var_2.d), var_2.c, u_input.c.x);
    let var_4 = arg_1;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(8918u, var_1) & vec2<u32>(arg_1.a.x, var_2.e), _wgslsmith_mod_vec2_u32(u_input.c.xw, vec2<u32>(0u, var_1))), (vec2<u32>(38950u, var_4.a.x) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(var_2.a.xz, vec2<u32>(1u, var_1))), vec2<u32>(~_wgslsmith_clamp_u32(1u, u_input.c.x, 15345u), u_input.c.x << (~u_input.c.x % 32u))) & firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, var_1), u_input.c.xz) ^ ~var_3.a.zz);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    let var_0 = -1292f;
    let var_1 = vec2<i32>(1i, _wgslsmith_sub_i32(u_input.b.x, 1i));
    let var_2 = ~u_input.c.x;
    let var_3 = Struct_1(~(u_input.c.wyz >> (~_wgslsmith_mult_vec3_u32(u_input.c.yxw, u_input.c.wwz) % vec3<u32>(32u))), !all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), u_input.a.x, u_input.b.x, abs(~(~u_input.c.x << (_wgslsmith_mult_u32(u_input.c.x, 50035u) % 32u))));
    var var_4 = func_3(all(select(!func_2(vec2<bool>(var_3.b, true), Struct_1(vec3<u32>(var_2, var_3.a.x, 9193u), var_3.b, -60203i, u_input.a.x, var_3.a.x), var_3.a), vec2<bool>(arg_0.x != -45264i, true), true)), Struct_1(_wgslsmith_mod_vec3_u32(var_3.a, _wgslsmith_mod_vec3_u32(u_input.c.yzz, ~u_input.c.yyw)), var_3.b, var_3.d, countOneBits(abs(11572i) ^ u_input.b.x), _wgslsmith_add_u32(var_2, 16063u) & 1u));
    return u_input.c.x;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(~min(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.e, 4294967295u), u_input.c.xzy)), ~vec3<u32>(u_input.c.x, 6299u, u_input.c.x) << (~vec3<u32>(0u, 9614u, 5267u) % vec3<u32>(32u))), arg_2.b, 4734i, 2147483647i, _wgslsmith_dot_vec3_u32(arg_2.a, ~vec3<u32>(arg_2.e, 0u, arg_2.e) & _wgslsmith_sub_vec3_u32(~u_input.c.zyz, ~u_input.c.zyz)));
    var_0 = arg_2;
    let var_1 = false;
    let var_2 = true;
    let var_3 = arg_2.c;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~u_input.c.x, u_input.c.x, 4294967295u);
    var var_1 = u_input.b.x;
    let var_2 = func_4(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.b, _wgslsmith_div_vec3_i32(u_input.b, u_input.b)), min(vec3<i32>(20636i, -16551i, u_input.b.x), _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, 12804i, -2147483647i)))), u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 120f)))), Struct_1(u_input.c.wwz, select(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), false, all(vec2<bool>(false, false))), ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.b.xx), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 14346i, u_input.a.x, -58840i), vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.a.x)), -18550i)), countOneBits(_wgslsmith_div_u32(func_1(u_input.b, -1855f), 6798u))), select(!(_wgslsmith_mult_u32(5505u, 1u) == var_0.x), false, true));
    let var_3 = var_2.b;
    var var_4 = select(any(select(!select(vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(false, false, var_2.b), false), vec3<bool>(u_input.b.x >= -2147483647i, !var_2.b, false), select(select(vec3<bool>(true, var_2.b, false), vec3<bool>(false, true, true), var_3), !vec3<bool>(var_3, var_2.b, var_3), true))), false, var_3);
    var var_5 = func_4(-559i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -695f), -1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-100f, -517f) - vec2<f32>(1917f, -760f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2384f, 260f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(340f, 591f)))), var_2, var_2.b | all(vec2<bool>(all(vec2<bool>(false, var_3)), true)));
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-850f, -388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f * 658f) - _wgslsmith_f_op_f32(step(769f, -499f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-857f, -1774f)), 673f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-634f, -640f, -215f, -529f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1525f, 141f, 1073f, 207f) * vec4<f32>(701f, -613f, -1000f, -514f))), select(select(vec4<bool>(var_2.b, var_5.b, false, var_2.b), vec4<bool>(false, true, var_2.b, false), var_3), select(vec4<bool>(true, true, true, true), vec4<bool>(var_3, var_2.b, true, true), vec4<bool>(true, var_5.b, false, var_5.b)), 0u >= u_input.c.x))), var_2.b && any(select(vec2<bool>(false, false), vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, true))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-887f, -1471f)) + -395f) * -1851f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f * -1836f) - _wgslsmith_f_op_f32(select(1f, -231f, var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2675f * _wgslsmith_div_f32(-1095f, 680f)) - 970f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1233f - 444f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1023f * -1385f))))));
    var var_7 = vec3<f32>(_wgslsmith_f_op_f32(-1f), 216f, _wgslsmith_div_f32(var_6.x, var_6.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_1(vec3<i32>(var_5.c, var_5.d, 27926i), 139f) ^ 78614u), -vec4<i32>(var_5.d, -firstTrailingBit(var_2.c), ~29820i, u_input.a.x), var_6.x);
}

