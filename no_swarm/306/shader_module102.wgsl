struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(1253f, vec3<bool>(false, true, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global0 = array<Struct_4, 1>();
    var var_0 = Struct_3(u_input.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1526f, -1130f, -640f, 567f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1097f, -1497f, -3992f, -1095f) - vec4<f32>(558f, 782f, 338f, 1150f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(135f, 671f, true)), _wgslsmith_f_op_f32(sign(-562f)), _wgslsmith_f_op_f32(max(-1113f, 1702f)), -326f)))));
    global0 = array<Struct_4, 1>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~(~_wgslsmith_div_u32(abs(58848u), _wgslsmith_mod_u32(14505u, 4294967295u)))), 1u)];
    return u_input.b;
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<Struct_4, 1>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)))), ~(vec4<u32>(0u, 46084u, u_input.a, 0u) & vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)) | (~vec4<u32>(125228u, u_input.b, 57804u, 1u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 12728u, u_input.a, u_input.b), vec4<u32>(u_input.b, 29043u, 9802u, 23979u), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a))), _wgslsmith_clamp_u32(abs(2963u), u_input.a, 34776u) ^ _wgslsmith_div_u32(81632u, 1u)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 0u) >> (vec2<u32>(117973u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, 4294967295u) | ~vec2<u32>(11289u, 0u)), (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(76073u, u_input.b, 51611u, 0u), vec4<u32>(60031u, 46376u, u_input.b, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 74499u, u_input.a, u_input.a), vec4<u32>(4294967295u, 16581u, u_input.b, 47042u))) | reverseBits(u_input.b)) >> (~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(89966u, u_input.b, 27818u, 16053u)), vec4<u32>(u_input.b, 4294967295u, 22370u, u_input.a) >> (vec4<u32>(4294967295u, u_input.b, 19959u, u_input.a) % vec4<u32>(32u))) % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0))), _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(-12671i, -30247i, u_input.c) & -vec3<i32>(u_input.c, -44520i, u_input.c)) << (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 52294u), vec4<u32>(71298u, 0u, 82414u, u_input.a)), 1u, firstTrailingBit(100456u)), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(0u, 61725u, u_input.b)))) % vec3<u32>(32u)));
    global0 = array<Struct_4, 1>();
    return !(_wgslsmith_f_op_f32(round(-425f)) >= arg_0.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    var var_0 = countOneBits(arg_2.e.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_2.d.x, arg_2.a.a), ~firstLeadingBit(vec4<u32>(firstTrailingBit(0u), ~arg_1.x, abs(31120u), u_input.b)), arg_1.x);
    var var_2 = arg_2;
    let var_3 = -arg_2.e.x;
    global0 = array<Struct_4, 1>();
    return select(false || any(vec2<bool>(true, true)), all(!vec4<bool>(false, true, true, func_3(var_2.d))), (_wgslsmith_f_op_f32(f32(-1f) * -181f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x))) & (true | all(vec2<bool>(true, true))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: i32) -> vec3<bool> {
    let var_0 = 0u;
    let var_1 = !(!arg_2);
    global0 = array<Struct_4, 1>();
    let var_2 = true;
    global0 = array<Struct_4, 1>();
    return !(!vec3<bool>(true, !arg_0, (arg_3 ^ arg_3) == arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs((~vec2<u32>(8027u, 62901u) << ((vec2<u32>(u_input.b, 25021u) & vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(u_input.a, u_input.b), vec2<u32>(func_1(vec4<bool>(true, false, false, false)), 97012u)));
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    let var_1 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), func_4(true, global0[_wgslsmith_index_u32(~u_input.b, 1u)], func_2(Struct_3(var_0.x), vec2<u32>(u_input.a, 4294967295u), Struct_2(Struct_1(817f, vec4<u32>(var_0.x, var_0.x, 1u, u_input.a), u_input.a), var_0, var_0.x, vec3<f32>(1966f, -115f, -1000f), vec3<i32>(u_input.c, u_input.c, -1i)), vec2<i32>(2147483647i, u_input.c)), i32(-1i) * -16829i)));
    global0 = array<Struct_4, 1>();
    let var_2 = u_input.c & _wgslsmith_add_i32(-1i ^ -firstTrailingBit(u_input.c), 22433i);
    global0 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-146f))))), max(-abs(~vec4<i32>(u_input.c, var_2, -2147483647i, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2, -37555i, _wgslsmith_dot_vec2_i32(vec2<i32>(-46152i, var_2), vec2<i32>(var_2, 6265i)), 0i), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, 0i, 2147483647i, 0i), vec4<i32>(-2147483647i, -2147483647i, u_input.c, 0i), vec4<i32>(u_input.c, u_input.c, var_2, 1i)), vec4<i32>(var_2, 24955i, -17339i, var_2)))), vec4<i32>(~_wgslsmith_mod_i32(countOneBits(var_2), reverseBits(15228i)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_2, var_2, -1381i, var_2)), vec4<i32>(var_2, ~50593i, ~var_2, _wgslsmith_div_i32(u_input.c, var_2))), -u_input.c, -abs(13210i)));
}

