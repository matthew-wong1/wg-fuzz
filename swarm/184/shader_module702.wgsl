struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(4294967295u, 0u), vec2<u32>(21052u, 0u), vec2<u32>(47021u, 627u), vec2<u32>(9692u, 6675u), vec2<u32>(27576u, 5796u), vec2<u32>(4294967295u, 7829u), vec2<u32>(45847u, 1u), vec2<u32>(47233u, 14348u), vec2<u32>(107689u, 91410u), vec2<u32>(8276u, 0u), vec2<u32>(1u, 38448u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 80607u), vec2<u32>(4294967295u, 9669u), vec2<u32>(69111u, 20956u), vec2<u32>(12723u, 10941u), vec2<u32>(4294967295u, 3488u), vec2<u32>(1u, 34590u), vec2<u32>(4294967295u, 20536u), vec2<u32>(45066u, 27663u), vec2<u32>(0u, 1u), vec2<u32>(43505u, 0u), vec2<u32>(4294967295u, 26048u), vec2<u32>(37925u, 0u), vec2<u32>(0u, 1u), vec2<u32>(44437u, 4294967295u), vec2<u32>(145671u, 1u), vec2<u32>(120245u, 4827u), vec2<u32>(1u, 73856u), vec2<u32>(9237u, 1u));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(485f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1168f))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(154f, var_0), vec2<f32>(var_0, var_0)) + vec2<f32>(var_0, 2296f)))), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.x), -1i, ~arg_0.x, reverseBits(16220i)) << (reverseBits(vec4<u32>(~1u, 34499u, 18317u, max(u_input.a, u_input.a))) % vec4<u32>(32u)), Struct_1(arg_1.a), select(global1.x, global1.x, !arg_1.a.x), true);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(368f, var_0) * var_1.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(var_1.a.x, -1431f), vec2<bool>(var_1.c.a.x, global1.x))) - var_1.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.a, var_1.a))))), (vec4<i32>(arg_0.x | var_1.b.x, arg_0.x, select(arg_0.x, -49718i, true), arg_0.x) | (~var_1.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(15562u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) % vec4<u32>(32u)))) & (-vec4<i32>(1i, arg_0.x, 1i, var_1.b.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-722i, 13698i, -11003i, arg_0.x), var_1.b)), var_1.c, any(!vec4<bool>(var_1.b.x > arg_0.x, true, var_1.e, !global1.x)), !global1.x);
    var var_3 = var_1;
    let var_4 = global1.x;
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_i32(-_wgslsmith_div_i32(1i, ~(-50288i)), abs(abs(23196i)), _wgslsmith_mod_i32(1i, i32(-1i) * -7230i));
    global1 = vec2<bool>(false || !func_3(vec3<i32>(var_0, var_0, 20558i), Struct_1(vec4<bool>(false, global1.x, true, global1.x))), arg_0.x);
    return !(!(!select(select(vec4<bool>(global1.x, false, false, false), vec4<bool>(global1.x, true, arg_2, true), vec4<bool>(arg_2, false, global1.x, true)), select(vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x)), false)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec2<u32>, 30>();
    var var_0 = arg_1.c;
    return Struct_1(!select(vec4<bool>(false, true, true, arg_1.d || arg_1.d), select(func_2(vec3<bool>(arg_1.d, false, arg_1.e), vec4<f32>(745f, arg_1.a.x, arg_1.a.x, arg_1.a.x), true, global0[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(false, false, var_0.a.x, true), !global1.x), arg_1.c.a));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.c.b;
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    global1 = !(!func_1(u_input.a, Struct_2(arg_0.c.a, arg_0.c.b, arg_0.e, false, func_1(17314u, Struct_2(vec2<f32>(arg_0.c.a.x, 1960f), vec4<i32>(var_0.x, -36893i, -35502i, -1i), Struct_1(vec4<bool>(false, true, arg_0.d.a.x, arg_0.e.a.x)), global1.x, global1.x)).a.x)).a.wy);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)), vec4<i32>(~(-1i), var_0.x << (~_wgslsmith_mod_u32(7894u, u_input.a) % 32u), _wgslsmith_mod_i32(~arg_0.c.b.x, i32(-1i) * -76634i), -1i | max(24804i, var_0.x)), arg_0.d, true, arg_0.d.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec2<bool> {
    global1 = vec2<bool>(false, arg_0.d);
    global1 = vec2<bool>(true || (true || (func_4(Struct_3(arg_0.a.x, -24765i, arg_0, arg_0.c, Struct_1(arg_0.c.a))).c.a.x && (false || global1.x))), global1.x);
    let var_0 = !(!vec4<bool>(!arg_0.e, true, !global1.x, global1.x));
    let var_1 = ((reverseBits(17720u) | ~(~arg_2.x)) | (u_input.a ^ abs(0u))) ^ arg_2.x;
    global0 = array<vec2<u32>, 30>();
    return func_2(vec3<bool>(true, var_0.x == true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-171f, arg_0.a.x, 2046f, 273f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-461f, arg_0.a.x, arg_0.a.x, arg_0.a.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1400f, arg_0.a.x, -212f, 805f) + vec4<f32>(126f, -113f, 1475f, -934f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(749f, -1361f, 447f, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 624f, arg_0.a.x) + vec4<f32>(arg_0.a.x, -737f, -133f, 1721f)))))), true || ((_wgslsmith_f_op_f32(arg_0.a.x * 1219f) >= -649f) == var_0.x), arg_2.zy).xx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!vec2<bool>(global1.x, true)), func_5(func_4(Struct_3(_wgslsmith_f_op_f32(floor(1333f)), i32(-1i) * -1246i, Struct_2(vec2<f32>(747f, 1198f), vec4<i32>(13894i, 2147483647i, 1i, -2147483647i), Struct_1(vec4<bool>(global1.x, global1.x, true, false)), true, false), func_1(22332u, Struct_2(vec2<f32>(-586f, 2049f), vec4<i32>(322i, 0i, 0i, 1036i), Struct_1(vec4<bool>(false, false, global1.x, true)), false, global1.x)), Struct_1(vec4<bool>(global1.x, global1.x, true, false)))), ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-4286i, -1i, -45864i, 21142i)), min(vec4<i32>(3874i, 53291i, 1i, 2147483647i), vec4<i32>(65537i, -1i, 0i, 50471i))), abs(vec3<u32>(~90947u, u_input.a, 56486u))), select(!(!select(vec2<bool>(false, true), vec2<bool>(global1.x, false), vec2<bool>(false, false))), vec2<bool>(true, true), false));
    var var_0 = 1u;
    let var_1 = ~abs(abs(firstTrailingBit(~(-7873i))));
    let var_2 = func_1(_wgslsmith_sub_u32(select(~select(0u, u_input.a, global1.x), 9238u, true), ~u_input.a), func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) * _wgslsmith_f_op_f32(step(-113f, -938f))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 0i), vec2<i32>(var_1, var_1)), ~var_1), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, -569f)), vec4<i32>(12608i, 19588i, var_1, 1i), Struct_1(vec4<bool>(global1.x, global1.x, global1.x, false)), global1.x && global1.x, !global1.x), func_1(~u_input.a, Struct_2(vec2<f32>(-739f, 1000f), vec4<i32>(var_1, -9805i, var_1, var_1), Struct_1(vec4<bool>(true, global1.x, false, global1.x)), global1.x, global1.x)), func_4(Struct_3(-1034f, 23877i, Struct_2(vec2<f32>(380f, 925f), vec4<i32>(-2147483647i, 19293i, var_1, var_1), Struct_1(vec4<bool>(true, true, global1.x, false)), false, global1.x), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(global1.x, false, global1.x, true)))).c)));
    var var_3 = abs(i32(-1i) * -(~(-2147483647i)));
    global1 = func_1(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(68405u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), reverseBits(~vec4<u32>(u_input.a, 30255u, 9540u, u_input.a))) ^ u_input.a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1016f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1067f, -1000f))), var_2.a.zx))), vec4<i32>(~(~var_1), 50051i & ~var_1, var_1, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1, var_1), -1i)), var_2, false, global1.x)).a.yz;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), u_input.a, ~countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-28603i, var_1, -2147483647i), -vec3<i32>(var_1, var_1, var_1))), _wgslsmith_sub_vec3_i32(vec3<i32>(~(~(-34987i)), 1i, 1i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_1, 1i), vec3<i32>(-1i, var_1, 0i), vec3<i32>(var_1, var_1, var_1)), vec3<i32>(var_1, 2147483647i, var_1), true) ^ vec3<i32>(-1i, func_4(Struct_3(-1048f, 0i, Struct_2(vec2<f32>(1000f, -277f), vec4<i32>(-8599i, 5461i, 1i, var_1), Struct_1(vec4<bool>(false, global1.x, var_2.a.x, true)), false, true), var_2, var_2)).b.x, 0i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) - -1393f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * -430f)));
}

