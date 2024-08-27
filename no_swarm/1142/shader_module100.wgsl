struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = u_input.b.x;
    global0 = array<vec3<bool>, 30>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-104f * -1268f), _wgslsmith_f_op_f32(f32(-1f) * -1013f));
    var var_2 = var_1.a;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1691f)))), -57215i, 1i);
    return _wgslsmith_f_op_f32(sign(var_3.a));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_4(true))), _wgslsmith_f_op_f32(f32(-1f) * -646f));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.b.x << (u_input.b.x % 32u), 30u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a)))), 1543f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(var_1.x))), -1242f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -440f), -493f);
    var var_4 = true;
    return !vec2<bool>(!(!(!arg_1)), arg_1);
}

fn func_4(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = any(select(select(select(global0[_wgslsmith_index_u32(0u, 30u)], vec3<bool>(true, false, true), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(global0[_wgslsmith_index_u32(max(4294967295u, 37242u), 30u)], select(global0[_wgslsmith_index_u32(13287u, 30u)], vec3<bool>(false, arg_0.x, true), true), !vec3<bool>(false, arg_0.x, false)), true || !arg_0.x), vec3<bool>((u_input.a <= u_input.a) || arg_0.x, true, false), !select(select(vec3<bool>(false, true, arg_0.x), global0[_wgslsmith_index_u32(u_input.b.x, 30u)], true), global0[_wgslsmith_index_u32(4294967295u, 30u)], true)));
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -967f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2084f))));
    return Struct_4((u_input.b.x >= _wgslsmith_mod_u32(60476u, firstTrailingBit(u_input.b.x))) || false);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> Struct_4 {
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    var var_0 = Struct_3(1393f, abs(_wgslsmith_mult_i32(u_input.a | -3600i, _wgslsmith_clamp_i32(~(-1i), _wgslsmith_add_i32(3595i, -47555i), i32(-1i) * -1i))), _wgslsmith_mult_i32(-max(u_input.a | u_input.a, 2147483647i), ~_wgslsmith_sub_i32(firstLeadingBit(-10891i), arg_1)));
    var var_1 = Struct_3(1000f, i32(-1i) * -1i, -20591i);
    var var_2 = max(-(~vec3<i32>(var_1.b, var_0.b, var_0.b) & countOneBits(arg_2.wwz)) | arg_2.wyy, -abs(countOneBits(vec3<i32>(1i, arg_1, 2147483647i))) & -arg_2.yxw);
    return func_4(select(select(func_2(true, true, Struct_3(-1317f, var_2.x, 6138i)), vec2<bool>(true, true), min(var_1.b, var_2.x) < _wgslsmith_div_i32(var_0.c, 1i)), !func_2(true, true, Struct_3(-824f, 22462i, -64610i)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(i32(-1i) * -u_input.a, u_input.a, 24247i), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, -1i, u_input.a), min(abs(vec3<i32>(u_input.a, u_input.a, -2147483647i)), select(vec3<i32>(u_input.a, 47153i, 2147483647i), vec3<i32>(u_input.a, u_input.a, 24743i), true))), -vec3<i32>(u_input.a, 2147483647i, u_input.a) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 2142u, u_input.b.x) | vec3<u32>(47279u, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 2233u)) % vec3<u32>(32u))), vec3<i32>(u_input.a, _wgslsmith_mod_i32(1i, i32(-1i) * -2147483647i), _wgslsmith_mult_i32(abs(-44867i), u_input.a)));
    global0 = array<vec3<bool>, 30>();
    let var_1 = true;
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, 1f)))), (-1i | (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1680i), vec2<i32>(0i, var_0.x)) | _wgslsmith_sub_i32(u_input.a, 1i))) & (var_0.x ^ ~(i32(-1i) * -56137i)), max(vec4<i32>(-35580i, ~var_0.x | 27881i, max(u_input.a, -1i), _wgslsmith_div_i32(~38617i, var_0.x << (u_input.b.x % 32u))), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, -19574i, -5720i, u_input.a), ~vec4<i32>(var_0.x, -47367i, var_0.x, 53398i) & _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 29851i, u_input.a, u_input.a), vec4<i32>(u_input.a, -33727i, u_input.a, 9922i)))));
    var var_3 = Struct_4(func_1(Struct_1(127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1187f)) * _wgslsmith_f_op_f32(f32(-1f) * -1035f))), 7556i, firstTrailingBit(-reverseBits(vec4<i32>(var_0.x, var_0.x, 4505i, var_0.x)))).a);
    var var_4 = select(!vec2<bool>(true == var_3.a, true), vec2<bool>(!(!var_3.a), true), !select(select(func_2(false, true, Struct_3(-754f, u_input.a, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, var_2.a), vec2<bool>(false, true), vec2<bool>(true, var_1))), func_2(false, false, Struct_3(721f, 0i, 21966i)), func_2(all(vec2<bool>(false, var_1)), any(vec3<bool>(true, true, false)), Struct_3(-1327f, u_input.a, u_input.a))));
    var var_5 = _wgslsmith_clamp_u32(1u ^ u_input.b.x, _wgslsmith_clamp_u32(1u, 15425u, u_input.b.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, max(2147483647i, _wgslsmith_div_i32(~_wgslsmith_mult_i32(36285i, u_input.a), ~(i32(-1i) * -1i))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -151f), -1157f, func_2(var_4.x, var_4.x, Struct_3(-888f, var_0.x, -2147483647i)).x))))), u_input.b);
}

