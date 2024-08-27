struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 82910u);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1i), Struct_1(22170i), Struct_1(-44650i), Struct_1(9775i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(23695i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(-59301i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-55629i), Struct_1(12865i));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(u_input.b), _wgslsmith_div_i32(1i, arg_2.a), u_input.b, ~2147483647i), vec4<i32>(1i, -6000i, arg_2.a, ~12403i));
    global1 = array<Struct_1, 18>();
    var var_1 = !select(!select(!vec4<bool>(false, arg_0, true, true), vec4<bool>(false, arg_0, true, arg_0), !vec4<bool>(arg_0, arg_0, true, false)), vec4<bool>(!all(vec3<bool>(false, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), true, all(vec3<bool>(arg_0, true, arg_0))), !select(select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, arg_0, true, arg_0), arg_0), !vec4<bool>(false, arg_0, false, true), select(vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0)));
    global0 = ~((vec2<u32>(0u, global0.x << (16399u % 32u)) ^ (abs(vec2<u32>(global0.x, 0u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(26126u, global0.x)))) << (_wgslsmith_div_vec2_u32(min(vec2<u32>(68278u, 61922u), vec2<u32>(global0.x, u_input.a) >> (vec2<u32>(1u, global0.x) % vec2<u32>(32u))), ~(~vec2<u32>(global0.x, global0.x))) % vec2<u32>(32u)));
    let var_2 = arg_2;
    return ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, -u_input.b, arg_2.a), ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_2.a, var_2.a, -2147483647i), var_0.wzx, var_0.yyz << (vec3<u32>(4294967295u, u_input.a, global0.x) % vec3<u32>(32u))), vec3<i32>(2147483647i, 1i, _wgslsmith_add_i32(min(-1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, var_2.a, -1i), vec4<i32>(-6992i, 14448i, -4286i, u_input.b)))));
}

fn func_2() -> vec4<i32> {
    global1 = array<Struct_1, 18>();
    let var_0 = min(func_3(true, u_input.b, Struct_1(u_input.b)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, -u_input.b), vec3<i32>(~1i, ~u_input.b, countOneBits(u_input.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b ^ u_input.b, -2147483647i, ~u_input.b), ~vec3<i32>(10811i, -1i, 2147483647i))));
    var var_1 = Struct_1(u_input.b);
    var var_2 = global1[_wgslsmith_index_u32(106033u, 18u)];
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 0u), 18u)];
    return -firstTrailingBit(vec4<i32>(var_1.a << (~global0.x % 32u), ~firstLeadingBit(-7407i), var_1.a, -13618i));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = ~firstTrailingBit(vec4<u32>(~u_input.a, global0.x, u_input.a << (global0.x % 32u), min(u_input.a, global0.x)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 17378u, global0.x, global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 38441u, u_input.a, u_input.a), vec4<u32>(0u, 1u, global0.x, global0.x))) % vec4<u32>(32u)));
    var var_1 = global0.x;
    let var_2 = !(!(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)) && all(vec4<bool>(false, false, true, false))));
    var_1 = ~_wgslsmith_add_u32(abs(98383u), var_0.x);
    let var_3 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -arg_0.xyy) & vec3<i32>(-arg_0.x, u_input.b >> (var_0.x % 32u), -_wgslsmith_div_i32(2147483647i, u_input.b)), vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(arg_0.x, u_input.b), 75179i), ~u_input.b | firstTrailingBit(arg_0.x >> (91300u % 32u)), ~(~(4778i >> (global0.x % 32u)))));
    return Struct_1(abs(select(-2147483647i, arg_0.x, true)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = -614f;
    let var_1 = func_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.b, u_input.b, -1i, 1i)), abs(vec4<i32>(u_input.b, -2147483647i, -2147483647i, -1i)), func_2()), vec4<i32>(firstLeadingBit(1i), 10447i, i32(-1i) * -55206i, _wgslsmith_mod_i32(2147483647i, u_input.b)), vec4<i32>(_wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)), abs(10618i) | u_input.b, func_2().x, -u_input.b)));
    var var_2 = Struct_1(~1i);
    var var_3 = any(vec3<bool>(true, all(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), u_input.b <= u_input.b)), false));
    var var_4 = Struct_1(-countOneBits(~(~1i)));
    return all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>) -> vec4<bool> {
    global1 = array<Struct_1, 18>();
    var var_0 = func_4(vec4<i32>(u_input.b, _wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(u_input.b)), ~u_input.b), _wgslsmith_sub_i32(u_input.b ^ -13687i, func_2().x), u_input.b));
    var var_1 = select(~(abs(vec2<u32>(1u, global0.x)) | vec2<u32>(~4294967295u, u_input.a >> (1u % 32u))), firstTrailingBit(~vec2<u32>(u_input.a, countOneBits(u_input.a))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1840f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), !func_1(arg_1.x))));
    global1 = array<Struct_1, 18>();
    return select(vec4<bool>(func_1(-1021f) | !arg_0, all(!select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), false)), true, false), !select(vec4<bool>(true, all(vec2<bool>(arg_0, arg_0)), any(vec3<bool>(true, arg_0, arg_0)), all(vec3<bool>(false, true, true))), select(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !vec4<bool>(false, arg_0, arg_0, true), !vec4<bool>(arg_0, true, false, true)), !any(vec4<bool>(false, arg_0, false, arg_0))), select(!vec4<bool>(false || arg_0, !arg_0, false != arg_0, false), !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), !arg_0), !vec4<bool>(true, true, false, arg_0 == true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    var var_0 = func_5(func_1(-379f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_div_f32(-1379f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1335f, -1000f)))))));
    var var_1 = var_0.x;
    let var_2 = select(~_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(1i, -2147483647i), u_input.b), vec3<i32>(_wgslsmith_mult_i32(u_input.b, 33280i), -u_input.b, u_input.b)), vec3<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-2147483647i, 0i)), firstTrailingBit(-vec2<i32>(u_input.b, u_input.b))), u_input.b, -u_input.b), !(u_input.a >= (~u_input.a | ~23952u)));
    let var_3 = func_4(select(vec4<i32>(func_3(var_0.x | false, _wgslsmith_add_i32(var_2.x, var_2.x), Struct_1(61436i)).x, u_input.b, _wgslsmith_add_i32(u_input.b, var_2.x), i32(-1i) * -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-19986i, var_2.x, 22765i, -2147483647i), func_2()) & (vec4<i32>(47632i, u_input.b, var_2.x, 1i) << (vec4<u32>(1u, 41179u, u_input.a, u_input.a) % vec4<u32>(32u))), !vec4<bool>(u_input.a >= 50856u, true, var_0.x, u_input.a != 0u)));
    let var_4 = -1184f;
    var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)) + _wgslsmith_div_f32(-162f, var_4)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1065f)))), _wgslsmith_f_op_f32(-var_4)), var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, -1000f) + vec2<f32>(1000f, var_4)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -271f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-729f, var_4) - vec2<f32>(-248f, -1566f))))), _wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(select(242f, var_4, var_0.x))));
}

