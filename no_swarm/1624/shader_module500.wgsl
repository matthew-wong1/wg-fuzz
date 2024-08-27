struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(64029u), Struct_1(9661u), Struct_1(134793u), Struct_1(4294967295u), Struct_1(129046u), Struct_1(0u), Struct_1(17552u), Struct_1(36529u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(31301u), Struct_1(1402u), Struct_1(4294967295u), Struct_1(39891u), Struct_1(1942u), Struct_1(0u), Struct_1(69364u), Struct_1(4037u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(84660u), Struct_1(38400u), Struct_1(2u), Struct_1(0u), Struct_1(48123u), Struct_1(40921u), Struct_1(1u), Struct_1(0u), Struct_1(86707u));

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), abs(vec2<u32>(global0.a, global0.a)))) | global0.a, 32u)];
    var var_1 = select(vec2<bool>(u_input.d.x <= u_input.a, false), vec2<bool>(false, all(vec4<bool>(select(true, true, true), false, false, all(vec2<bool>(false, false))))), select(!vec2<bool>(false, any(vec3<bool>(false, false, true))), vec2<bool>(true, !all(vec3<bool>(false, true, false))), true));
    let var_2 = _wgslsmith_mult_vec2_i32(arg_2, select(firstLeadingBit(~u_input.b), u_input.b, select(select(vec2<bool>(true, true), !vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x)), vec2<bool>(true, !var_1.x), var_1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1324f, 603f, arg_0.x, 1643f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -951f, arg_0.x, -1000f)), countOneBits(var_2.x) >= -1i)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(568f, -410f), _wgslsmith_f_op_f32(233f + arg_0.x))))));
    var_1 = vec2<bool>(var_1.x, !(!all(vec3<bool>(false, var_1.x, var_1.x))));
    return _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -805f));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    global1 = array<vec4<bool>, 16>();
    let var_0 = arg_1;
    var var_1 = !vec4<bool>(false, true & any(vec3<bool>(true, true, false)), !any(!global1[_wgslsmith_index_u32(1u, 16u)]), true);
    let var_2 = vec2<i32>(-1i) * -vec2<i32>(1i, 1i | ~arg_2);
    let var_3 = vec3<f32>(1844f, 1016f, _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * -141f), _wgslsmith_f_op_f32(arg_1 - 1548f))), var_0, 298f), global3[_wgslsmith_index_u32(arg_0.a, 4u)], u_input.d.xx ^ var_2, Struct_1(0u))));
    return Struct_1(firstTrailingBit(53469u));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> bool {
    let var_0 = !(!vec4<bool>(select(true, true, arg_1), true, arg_1, true));
    global0 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(max(~global0.a, reverseBits(1686u))), select(_wgslsmith_sub_u32(firstLeadingBit(u_input.e), 1u), arg_0, _wgslsmith_clamp_u32(1u, global0.a, 1u) <= 721u)), 4u)], -1335f, u_input.d.x);
    var var_1 = var_0.x;
    global1 = array<vec4<bool>, 16>();
    let var_2 = 130f;
    return _wgslsmith_dot_vec4_u32(vec4<u32>((u_input.e << (global0.a % 32u)) ^ _wgslsmith_mult_u32(u_input.e, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(31764u, 31359u), vec2<u32>(5307u, 114162u)), ~vec2<u32>(global0.a, 1u)), 25944u, select(0u, 29620u & u_input.e, arg_1)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.e, arg_0, global0.a), vec4<u32>(21763u, global0.a, u_input.e, arg_0)) >> (~vec4<u32>(u_input.e, 0u, global0.a, 1u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 0u, 0u, 4294967295u), vec4<u32>(global0.a, global0.a, arg_0, arg_0), vec4<u32>(4294967295u, 75345u, global0.a, 0u))))) > _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(1u, 4294967295u, 14463u))), vec3<u32>(15228u, global0.a, arg_0)), func_2(func_2(func_2(Struct_1(arg_0), var_2, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -182f), -589i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1150f, var_2) - _wgslsmith_f_op_f32(var_2 * var_2)), 1i).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(~(~14946i), u_input.d.x), u_input.c);
    var var_1 = _wgslsmith_mod_vec4_i32(-(~firstTrailingBit(vec4<i32>(var_0.x, -1i, 2147483647i, 2147483647i) ^ vec4<i32>(0i, var_0.x, -15201i, 141i))), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-6036i, 1i, u_input.a, -2147483647i), abs(vec4<i32>(13804i, var_0.x, 2147483647i, 0i)))));
    var var_2 = global3[_wgslsmith_index_u32(~abs(select(global0.a << (~u_input.e % 32u), 55997u, !func_1(0u, true, vec4<i32>(30966i, -44575i, var_1.x, u_input.c)))), 4u)];
    let var_3 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    global1 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.a, select(max(~global0.a, 48611u), var_2.a, !(true | var_3.x)), ~global0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1703f, -745f, -1000f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1303f, 1194f, _wgslsmith_f_op_f32(f32(-1f) * -269f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, 1269f, 340f)))), !select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, true, var_3.x), var_3.x)))), select(vec2<u32>(abs(reverseBits(22610u)), _wgslsmith_sub_u32(0u, u_input.e) | _wgslsmith_sub_u32(var_2.a, 1u)), vec2<u32>(global0.a << (var_2.a % 32u), 50477u), any(vec4<bool>(true, var_3.x, func_1(var_2.a, var_3.x, vec4<i32>(var_1.x, u_input.d.x, 2147483647i, var_0.x)), true))), _wgslsmith_add_i32(var_0.x, ~var_0.x));
}

