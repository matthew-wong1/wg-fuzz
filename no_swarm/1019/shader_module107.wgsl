struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(1565f, -968f, -777f, -206f, 825f, -1069f, 912f, 224f, 127f, 483f, -400f, 521f, 2540f, -779f, -1959f);

var<private> global1: array<f32, 32>;

var<private> global2: bool = false;

var<private> global3: array<u32, 26> = array<u32, 26>(1u, 32278u, 0u, 0u, 23040u, 101704u, 12458u, 75957u, 10817u, 1814u, 34723u, 15409u, 32210u, 34069u, 36324u, 0u, 0u, 1u, 0u, 1u, 27190u, 460u, 1u, 39529u, 0u, 33959u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: bool) -> vec2<i32> {
    let var_0 = vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], 7121u);
    var var_1 = Struct_2(min(arg_0.a, -_wgslsmith_clamp_vec2_i32(arg_0.a, -vec2<i32>(u_input.b, arg_0.a.x), vec2<i32>(arg_0.a.x, -20226i))), arg_0.b, arg_0.c);
    var var_2 = var_1.b.c;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.b.a.x, 15u)], -141f, 659f), arg_0.b.c)), var_1.b.c)));
    let var_3 = vec3<f32>(global1[_wgslsmith_index_u32(~select(_wgslsmith_sub_u32(var_1.b.b & 1u, ~var_1.b.a.x), ~1u, true), 32u)], 1313f, var_1.b.c.x);
    return ~var_1.a << (var_1.c.yw % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<i32> {
    global0 = array<f32, 15>();
    global3 = array<u32, 26>();
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(reverseBits(func_3(arg_1, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41823u, 26u)], 26u)], 15u)] * arg_1.b.c.x), 1114f, arg_0.x)), arg_2), arg_1.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(max(vec4<u32>(u_input.a.x, 13909u, 1159u, global3[_wgslsmith_index_u32(u_input.d, 26u)]), vec4<u32>(15689u, arg_1.c.x, arg_1.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65755u, 26u)], 26u)]))), min(_wgslsmith_div_vec4_u32(arg_1.c, vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(74426u, 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)])), ~vec4<u32>(0u, 22421u, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.d)), abs(arg_1.c)), ~(~(arg_1.c << (vec4<u32>(1u, 4294967295u, arg_1.c.x, 1u) % vec4<u32>(32u)))), select(reverseBits(~arg_1.c), arg_1.c, true)));
    global2 = arg_0.x;
    let var_1 = !select(!(!(!vec4<bool>(false, arg_0.x, arg_0.x, true))), select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, false, false), true), !vec4<bool>(false, true, arg_0.x, true)), vec4<bool>(any(vec3<bool>(arg_0.x, false, false)), !arg_0.x, 43527i > u_input.c, true), (-37901i <= arg_1.a.x) | (arg_2.x <= var_0.a.x)), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x != all(vec3<bool>(false, arg_0.x, arg_0.x))));
    return vec2<i32>(var_0.a.x, var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))));
    global1 = array<f32, 32>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1489f);
    var var_2 = arg_2;
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(arg_2.b.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1199f, global0[_wgslsmith_index_u32(1u, 15u)]))), global1[_wgslsmith_index_u32(~arg_0, 32u)]), Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.a, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.b, u_input.c))), ~func_2(vec2<bool>(true, false), arg_2, arg_2.a), vec2<i32>(2147483647i, arg_1.a.x)), Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1.b.a.x, arg_1.b.a.x), countOneBits(u_input.a.yz), vec2<u32>(0u, arg_1.b.a.x)), ~(~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.b.c)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 32u)], 1000f, 894f))))), _wgslsmith_mod_vec4_u32(arg_1.c, select(_wgslsmith_div_vec4_u32(arg_2.c, vec4<u32>(arg_2.c.x, 7113u, arg_2.c.x, global3[_wgslsmith_index_u32(0u, 26u)])), firstTrailingBit(vec4<u32>(0u, arg_0, arg_2.c.x, 0u)), false))));
    let var_1 = func_4(var_0.b.c.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2325f * _wgslsmith_f_op_f32(max(-522f, global1[_wgslsmith_index_u32(var_0.b.a.x, 32u)]))) * -740f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.c.x, arg_2.b.c.x))))), arg_1).b.c.xz, Struct_2(abs(abs(arg_1.a)), func_4(-375f, arg_1.b.c.yx, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1698f), arg_2.b.c.yy, func_4(1078f, vec2<f32>(arg_1.b.c.x, -104f), Struct_2(vec2<i32>(u_input.b, var_0.a.x), arg_2.b, var_0.c)))).b, _wgslsmith_add_vec4_u32(arg_1.c, vec4<u32>(92239u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, 4294967295u, 1u), arg_2.c.zzy), firstTrailingBit(arg_2.c.x), _wgslsmith_mult_u32(0u, arg_2.c.x))))).b;
    let var_2 = Struct_2(-vec2<i32>(~(-var_0.a.x), -23138i), Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(18781u, 26u)], 34715u, 42482u), vec4<u32>(var_1.a.x, arg_1.c.x, arg_1.b.b, arg_1.b.b)), min(arg_2.c, vec4<u32>(arg_0, 1u, u_input.a.x, 3171u))), ~(~1u)), ~firstTrailingBit(64500u) & _wgslsmith_add_u32(u_input.d << (0u % 32u), 43064u), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(3997u), 15u)]), _wgslsmith_f_op_f32(-arg_1.b.c.x), 1352f)), var_0.c | _wgslsmith_add_vec4_u32(max(arg_1.c, var_0.c), ~vec4<u32>(4294967295u, arg_2.b.a.x, 0u, 87834u)));
    let var_3 = -1000f;
    var var_4 = vec3<bool>(!any(arg_3), false, false);
    return _wgslsmith_f_op_f32(abs(var_0.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(false, true)))));
    var var_1 = !select(vec4<bool>(!any(vec4<bool>(var_0.x, var_0.x, false, false)), all(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, false, false), false)), true, false), vec4<bool>(var_0.x, any(var_0), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(1u, 26u)]), 26u)], 26u)] == ~global3[_wgslsmith_index_u32(6546u, 26u)], !var_0.x), 148f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 32u)] * 1435f) * _wgslsmith_f_op_f32(func_1(4294967295u, Struct_2(vec2<i32>(-2147483647i, u_input.b), Struct_1(u_input.a.yy, global3[_wgslsmith_index_u32(1u, 26u)], vec3<f32>(global1[_wgslsmith_index_u32(1u, 32u)], -435f, global1[_wgslsmith_index_u32(u_input.d, 32u)])), vec4<u32>(6299u, 4294967295u, 13541u, 16834u)), Struct_2(vec2<i32>(-23702i, u_input.b), Struct_1(u_input.a.xz, 40837u, vec3<f32>(1512f, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -367f)), vec4<u32>(37289u, 2259u, u_input.d, u_input.d)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_2 = 8262u;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1538f, global0[_wgslsmith_index_u32(1u, 15u)]))))))));
    var var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(u_input.b), ~(-9564i)), u_input.b) ^ (firstTrailingBit(vec2<i32>(u_input.c, 14112i) << (u_input.a.yx % vec2<u32>(32u))) | vec2<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, 60111i))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(u_input.c), -19362i), select(func_4(1770f, vec2<f32>(global1[_wgslsmith_index_u32(var_2, 32u)], -666f), Struct_2(vec2<i32>(1i, 1i), Struct_1(vec2<u32>(34079u, 1u), global3[_wgslsmith_index_u32(12075u, 26u)], vec3<f32>(global0[_wgslsmith_index_u32(30189u, 15u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20142u, 26u)], 15u)], var_3.x)), vec4<u32>(1u, 20137u, u_input.d, var_2))).a.x, ~2147483647i, false)), vec2<i32>(max(53704i, u_input.c), -u_input.b) << (func_4(1847f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, var_3.x)), func_4(-895f, vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 15u)], -1978f), Struct_2(vec2<i32>(u_input.b, 1494i), Struct_1(u_input.a.zz, var_2, vec3<f32>(-855f, global0[_wgslsmith_index_u32(u_input.d, 15u)], var_3.x)), vec4<u32>(707u, 0u, 3431u, 10145u)))).b.a % vec2<u32>(32u))));
    let var_5 = vec2<i32>(~1i, _wgslsmith_mod_i32(-33556i >> (_wgslsmith_dot_vec3_u32(func_4(var_3.x, vec2<f32>(330f, global0[_wgslsmith_index_u32(var_2, 15u)]), Struct_2(vec2<i32>(u_input.b, 5070i), Struct_1(vec2<u32>(var_2, u_input.d), global3[_wgslsmith_index_u32(u_input.d, 26u)], vec3<f32>(global1[_wgslsmith_index_u32(var_2, 32u)], -476f, global0[_wgslsmith_index_u32(1u, 15u)])), vec4<u32>(global3[_wgslsmith_index_u32(26144u, 26u)], 44182u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], u_input.d))).c.wxw, ~u_input.a) % 32u), 16857i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(var_3.x, global0[_wgslsmith_index_u32(var_2, 15u)])), _wgslsmith_div_f32(-760f, -648f), _wgslsmith_f_op_f32(-224f + 834f))))));
}

