struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    global0 = array<vec2<bool>, 18>();
    global1 = firstLeadingBit(min(min(vec4<i32>(-1i, -6076i, -59260i, arg_0), vec4<i32>(2624i, -6592i, global2.a, global2.a) | _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_1.a, 1i), vec4<i32>(arg_0, global2.a, -2147483647i, u_input.c))), ~select(vec4<i32>(u_input.e.x, 27236i, 0i, u_input.e.x), vec4<i32>(arg_0, -1i, global1.x, arg_0) ^ vec4<i32>(global2.a, -1i, arg_1.a, -20896i), vec4<bool>(true, true, true, true))));
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -526f, -946f, -319f), vec4<f32>(-653f, 1000f, 830f, -711f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-216f, 1025f, -305f, -255f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, -1276f, -1470f, -2677f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1618f), _wgslsmith_f_op_f32(1165f * 546f), 1f, -1000f)))));
    let var_2 = false;
    return 1209i;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 18>();
    global1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(-36227i, Struct_1(2147483647i)), abs(-2147483647i & global2.a), arg_1.a, _wgslsmith_div_i32(-2147483647i, 35725i << (u_input.b % 32u))), vec4<i32>(-firstTrailingBit(arg_0), global2.a | (i32(-1i) * -17997i), global1.x, _wgslsmith_sub_i32(-arg_0, 0i))), u_input.a, _wgslsmith_dot_vec2_i32(max(~vec2<i32>(41321i, -14391i), vec2<i32>(20254i, 2147483647i)), vec2<i32>(~1i, func_3(1093i, arg_1)) ^ vec2<i32>(~global2.a, global1.x)), 49702i);
    global1 = ~(~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(arg_0, global1.x, arg_0, global2.a), max(vec4<i32>(arg_1.a, 2837i, u_input.a, 2147483647i), vec4<i32>(1i, -2147483647i, -23303i, arg_1.a))), -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, global2.a, u_input.e.x), vec4<i32>(arg_1.a, arg_1.a, arg_0, -33571i)), -vec4<i32>(0i, global2.a, global2.a, u_input.e.x)));
    global0 = array<vec2<bool>, 18>();
    var var_0 = any(!select(vec3<bool>(any(global0[_wgslsmith_index_u32(16259u, 18u)]), all(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, false, true), true));
    return arg_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0.x, arg_0.x), _wgslsmith_mult_i32(countOneBits(arg_1.a) << (_wgslsmith_div_u32(u_input.d, 28445u) % 32u), i32(-1i) * -arg_2.a)), arg_1);
    var var_1 = func_2(1i, Struct_1(43987i));
    let var_2 = ~(vec2<i32>(-1i) * -countOneBits(select(arg_0, vec2<i32>(2147483647i, 2147483647i), true)));
    var var_3 = select(false, true, false);
    let var_4 = false;
    return _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(global2.a, ~global1.x, 1294i, max(35276i, 0i))) >> ((vec4<u32>(~u_input.b, firstTrailingBit(u_input.b), ~u_input.d, u_input.d) >> (vec4<u32>(5540u, select(u_input.b, u_input.b, false), ~u_input.b, abs(u_input.d)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(var_2.x, ((var_2.x & -3483i) ^ func_2(arg_2.a, Struct_1(1i)).a) ^ var_0.a, countOneBits(-58103i >> (u_input.b % 32u)), arg_2.a));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = ~countOneBits(select(func_4(-vec2<i32>(-24701i, global1.x), func_2(-1i, Struct_1(global2.a)), Struct_1(u_input.e.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, global1.x, global1.x) >> (vec4<u32>(u_input.b, u_input.b, 28500u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.e.x, 30812i, 2147483647i)), select(true, true, any(vec2<bool>(false, true)))));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1180f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f)), -919f), _wgslsmith_f_op_f32(min(1f, 643f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-708f)), _wgslsmith_f_op_f32(max(-617f, -362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(599f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(397f)), _wgslsmith_f_op_f32(f32(-1f) * -421f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(232f, -292f, true)))))));
    global1 = ~vec4<i32>(~19111i, u_input.e.x, 15929i, global1.x >> (0u % 32u));
    return Struct_1(firstTrailingBit(-(-23912i ^ -global2.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_i32(2147483647i, global1.x) >= -33540i;
    var var_1 = _wgslsmith_div_vec4_i32(~(~vec4<i32>(_wgslsmith_add_i32(u_input.c, 14628i), abs(42825i), -38435i, 2147483647i)), vec4<i32>(u_input.c | global1.x, 1i ^ select(arg_1.a | global1.x, u_input.a, any(arg_0)), _wgslsmith_mod_i32(1i, -2147483647i >> (min(u_input.d, u_input.d) % 32u)), _wgslsmith_div_i32(abs(global2.a << (u_input.b % 32u)), 0i)));
    var_1 = -select(~firstLeadingBit(vec4<i32>(global1.x, -26612i, 1i, -23330i)), vec4<i32>(func_2(-15106i, arg_1).a, i32(-1i) * -var_1.x, abs(countOneBits(global2.a)), ~global1.x), true);
    let var_2 = _wgslsmith_f_op_f32(select(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) - -1105f), 1730f, !arg_0.x == true))), any(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, true), !vec4<bool>(arg_0.x, true, true, false)), select(!vec4<bool>(true, false, false, arg_0.x), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), true), arg_0.x), vec4<bool>(any(vec3<bool>(true, true, true)), u_input.b >= u_input.b, arg_0.x, arg_0.x)))));
    var var_3 = ~14141u;
    return vec4<u32>(~1u, u_input.b, ~u_input.b, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    var var_0 = ~(0i & _wgslsmith_dot_vec2_i32(global1.xx, u_input.e));
    var var_1 = select(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(31921u, u_input.d, 22600u, 1289u), vec4<u32>(u_input.b, u_input.d, u_input.b, u_input.b)))), select(~(~vec4<u32>(0u, 1u, u_input.d, 1u) | ~vec4<u32>(u_input.b, u_input.d, 2677u, 47479u)), firstLeadingBit(func_5(global0[_wgslsmith_index_u32(~17931u, 18u)], func_1(u_input.d), u_input.e.x)), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), true)), 63125u > abs(func_5(vec2<bool>(true, false), func_1(u_input.d), 23740i & global1.x).x));
    global2 = Struct_1(-21087i);
    var var_2 = countOneBits(~global1.x);
    let var_3 = 44122u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~((0u << (var_1.x % 32u)) | (var_3 << (4294967295u % 32u))), _wgslsmith_mult_u32(22695u, u_input.b)), select(reverseBits(countOneBits(max(vec4<i32>(global2.a, 1i, -2147483647i, u_input.e.x), vec4<i32>(global2.a, global1.x, 1i, u_input.a)))), ~select(countOneBits(vec4<i32>(global2.a, u_input.a, u_input.c, -1i)), ~vec4<i32>(-1i, 23032i, 2147483647i, global2.a), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, select(true, true, false))), ~(~((global2.a ^ u_input.a) ^ _wgslsmith_div_i32(50252i, global1.x))));
}

