struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i), vec4<i32>(2147483647i, 1i, 9151i, 1i), Struct_1(1i));

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1281f, -1974f));
    global1 = firstLeadingBit(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(807u, arg_2, arg_2, arg_2)), u_input.b), _wgslsmith_clamp_vec4_u32(u_input.b, ~u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 0u, 0u, u_input.a), u_input.b))));
    global0 = Struct_2(global0.a, global0.b, Struct_1(firstTrailingBit(2147483647i)));
    let var_1 = false;
    var var_2 = -76006i;
    return ~(~(~select(global1.x, u_input.b.x, var_1))) >> (_wgslsmith_clamp_u32(abs(~(~4294967295u)), ~countOneBits(~1u), 1u) % 32u);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: bool) -> bool {
    var var_0 = 4294967295u << (u_input.b.x % 32u);
    global1 = vec4<u32>(u_input.a, _wgslsmith_clamp_u32(~u_input.a, func_3(7307i, _wgslsmith_mult_i32(arg_1.x, u_input.c), _wgslsmith_mult_u32(21052u, u_input.a)) | ~_wgslsmith_mult_u32(u_input.a, 50504u), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(18950u, 45381u), _wgslsmith_mult_u32(global1.x, 0u)), max(_wgslsmith_mult_u32(u_input.a, u_input.a), ~global1.x))), _wgslsmith_sub_u32(~global1.x, 19822u), u_input.b.x);
    var_0 = ~global1.x;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 381f, -780f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), -571f, _wgslsmith_f_op_f32(trunc(arg_0))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(975f, arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -130f)), 224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_2))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0)))), 330f, _wgslsmith_div_f32(-288f, _wgslsmith_f_op_f32(-arg_0)))));
    var_0 = 1u;
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~((global1.x | u_input.b.x) | _wgslsmith_clamp_u32(81908u, 1u, 45884u)), min(4294967295u, _wgslsmith_dot_vec3_u32(~global1.wzw, ~u_input.b.wyw)), min(u_input.a, ~select(global1.x, global1.x, false))) >= (_wgslsmith_div_u32(countOneBits(0u), ~(global1.x << (u_input.b.x % 32u))) | select(13385u & ~global1.x, u_input.a, !func_2(1404f, vec3<i32>(-1i, -28099i, arg_2.a), arg_1.x)));
    global0 = Struct_2(arg_3, vec4<i32>(min(-21931i, ~arg_3.a), min(~2147483647i, -_wgslsmith_dot_vec2_i32(global0.b.xy, vec2<i32>(arg_3.a, 58923i))), abs(~2360i) << (abs(~4294967295u) % 32u), u_input.c), arg_2);
    let var_1 = Struct_3(Struct_1(0i), select(select(!(!vec4<bool>(true, var_0, arg_1.x, var_0)), select(select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(false, true, true, false), var_0), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(false, var_0, arg_1.x, true)), vec4<bool>(var_0, true, arg_1.x, var_0)), var_0), select(!select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(false, arg_1.x, false, var_0), var_0), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, false, arg_1.x, arg_1.x), true), var_0), !select(vec4<bool>(arg_1.x, false, var_0, true), vec4<bool>(false, var_0, arg_1.x, var_0), vec4<bool>(var_0, false, false, true))));
    var var_2 = global1.wxy;
    var var_3 = Struct_2(Struct_1(~arg_2.a), vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~global0.b.yw, global0.b.yz), vec2<i32>(arg_2.a ^ u_input.c, ~global0.b.x)), global0.a.a, firstTrailingBit(u_input.c)), Struct_1(~(-(global0.c.a & u_input.c))));
    return Struct_1(firstTrailingBit(var_3.b.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(func_4(-1i, !vec2<bool>(func_2(arg_0, vec3<i32>(global0.a.a, 2147483647i, global0.c.a), true), true), global0.c, global0.c), !vec4<bool>(all(vec4<bool>(true, true, true, true)), (global1.x <= 30881u) || false, false, true));
    global0 = Struct_2(var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.b.x, -30739i), reverseBits(global0.b.zyy)), ~var_0.a.a, max(-1i, u_input.c), 6738i), vec4<i32>(abs(firstLeadingBit(2147483647i)), max(~u_input.c, ~(-1i)), u_input.c, -1i), global0.b), var_0.a);
    let var_1 = Struct_2(var_0.a, select(-reverseBits(global0.b ^ vec4<i32>(-2147483647i, 7116i, 1i, u_input.c)), vec4<i32>(-17399i, abs(-2147483647i), _wgslsmith_div_i32(u_input.c, global0.a.a), 0i), select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b, select(var_0.b, var_0.b, var_0.b.x)), vec4<bool>(var_0.b.x, false, false, var_0.b.x & false), var_0.b)), Struct_1(var_0.a.a));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.x, u_input.a), reverseBits(global1.x));
    var var_3 = all(!vec4<bool>(var_0.b.x, var_0.b.x, any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), _wgslsmith_mod_u32(4294967295u, 4294967295u) < _wgslsmith_clamp_u32(u_input.a, u_input.a, global1.x)));
    return Struct_1(_wgslsmith_mod_i32(-1i, ~_wgslsmith_sub_i32(0i, -2147483647i)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = global1.ywx;
    return Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(~vec4<i32>(22831i, 48918i, arg_2.a.a, u_input.c), vec4<i32>(arg_2.a.a, u_input.c, global0.a.a, 3214i) >> (u_input.b % vec4<u32>(32u)))), reverseBits(abs(vec4<i32>(-31641i, _wgslsmith_sub_i32(1i, u_input.c), 19525i, max(1i, 0i)))), global0.a);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(func_1(1000f), arg_0.b, Struct_1(_wgslsmith_clamp_i32(-arg_0.c.a, _wgslsmith_dot_vec4_i32(arg_0.b ^ global0.b, vec4<i32>(-508i, 14053i, -19648i, arg_0.a.a)), arg_0.b.x)));
    global1 = ~min(max(~u_input.b, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(~0u, 4294967295u, ~global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 33599u), vec4<u32>(4294967295u, global1.x, 17683u, 85307u))), ~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.a, global1.x, 0u, 47274u))));
    global1 = u_input.b;
    let var_1 = Struct_2(global0.c, vec4<i32>(_wgslsmith_mod_i32(1i, var_0.c.a), _wgslsmith_sub_i32(max(1i, func_5(vec3<f32>(1000f, -1744f, 572f), vec3<i32>(12098i, var_0.b.x, -3109i), Struct_3(global0.a, vec4<bool>(true, false, true, true))).a.a), _wgslsmith_sub_i32(arg_0.a.a << (0u % 32u), select(-1i, 2147483647i, true))), 1i, var_0.a.a), global0.a);
    let var_2 = !(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(861f, -1066f, 1411f) * vec3<f32>(1f, 1f, 1f)), vec3<i32>(firstLeadingBit(-2147483647i), -25761i, _wgslsmith_mod_i32(12947i, -65876i)), Struct_3(func_1(1715f), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true)))), vec4<i32>(firstTrailingBit(u_input.c), i32(-1i) * -21121i, min(~_wgslsmith_div_i32(0i, u_input.c), -(~global0.a.a)), _wgslsmith_mult_i32(-u_input.c, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, -u_input.c))), Struct_1(_wgslsmith_add_i32(971i, ~select(global0.c.a, global0.c.a, true))));
    var var_1 = global1.zxy;
    var var_2 = !(!vec4<bool>(true, !(21612i < global0.a.a), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true));
    global1 = ~(~u_input.b);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * 946f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(207f + -389f) + _wgslsmith_f_op_f32(-518f + 783f))))));
    global0 = Struct_2(global0.a, -_wgslsmith_mod_vec4_i32(-abs(global0.b), -(vec4<i32>(2147483647i, global0.c.a, u_input.c, -2147483647i) | var_0.b)), global0.a);
    var var_4 = ~vec2<i32>(select(max(func_6(Struct_2(var_0.c, vec4<i32>(-2147483647i, u_input.c, u_input.c, global0.c.a), var_0.a)).a, -u_input.c), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, -2147483647i), -16866i), var_2.x), 30654i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - -564f)))), 534f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3, var_3, 744f, var_3))))), vec4<f32>(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(var_3 + 785f)), -1246f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * -657f), _wgslsmith_f_op_f32(trunc(1522f))), _wgslsmith_f_op_f32(f32(-1f) * -263f)))));
}

