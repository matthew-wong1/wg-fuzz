struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<u32> = vec2<u32>(1u, 129583u);

var<private> global2: array<vec2<i32>, 31>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    global2 = array<vec2<i32>, 31>();
    global0 = true;
    var var_0 = 33115i;
    return _wgslsmith_dot_vec3_u32(arg_2.a << (select(~arg_2.a, _wgslsmith_add_vec3_u32(vec3<u32>(22003u, global1.x, arg_2.a.x), vec3<u32>(u_input.b, 30694u, arg_2.a.x)), vec3<bool>(arg_1.a.x && true, true, true)) % vec3<u32>(32u)), vec3<u32>(60854u, 36943u, _wgslsmith_clamp_u32(max(global1.x, arg_2.a.x), arg_2.a.x | u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 0u, global1.x), vec4<u32>(global1.x, arg_2.a.x, 0u, 0u))) >> (arg_2.a.x % 32u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> bool {
    global2 = array<vec2<i32>, 31>();
    var var_0 = Struct_1(~(vec3<u32>(func_3(Struct_2(vec3<bool>(true, false, false), 595f), Struct_2(vec3<bool>(false, true, true), -1298f), Struct_1(vec3<u32>(29222u, 1u, global1.x)), vec2<i32>(-2147483647i, -6471i)), func_3(Struct_2(vec3<bool>(false, true, true), 105f), Struct_2(vec3<bool>(false, true, true), -595f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 60294u)), arg_1), max(arg_0.x, 1u)) ^ vec3<u32>(max(0u, 4294967295u), 4294967295u, _wgslsmith_mod_u32(68107u, 1u))));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(firstLeadingBit(max(select(var_0.a, _wgslsmith_mult_vec3_u32(vec3<u32>(25194u, 1u, 20784u), vec3<u32>(1u, var_0.a.x, 78101u)), true), (var_0.a >> (var_0.a % vec3<u32>(32u))) ^ var_0.a)));
    var var_3 = Struct_2(vec3<bool>(!(_wgslsmith_f_op_f32(floor(200f)) == 495f), true, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(915f))) + 1332f))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = countOneBits(vec2<u32>(58831u, ~(31937u << (global1.x % 32u))));
    global0 = arg_0.x;
    var_0 = ~vec2<u32>(global1.x, ~(~var_0.x));
    var var_1 = Struct_2(arg_0, _wgslsmith_f_op_f32(round(-1321f)));
    var var_2 = abs(vec3<i32>(1i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(8376i, 0i, 27149i, -6874i), vec4<i32>(0i, 1i, -57495i, -2147483647i))) ^ (_wgslsmith_div_i32(2147483647i, -1i) << (arg_1.a.x % 32u)), ~(-11164i)));
    return Struct_2(arg_0, 564f);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -412f));
    var var_1 = Struct_2(!vec3<bool>(arg_0.x, true, arg_0.x), -545f);
    return func_4(select(vec3<bool>(false, all(select(var_0.a.zy, var_1.a.yy, true)), var_0.a.x), vec3<bool>(var_1.a.x, any(var_1.a), func_2(vec2<u32>(global1.x, global1.x), vec2<i32>(2147483647i, 1i)) & !var_0.a.x), all(select(!vec2<bool>(var_1.a.x, var_0.a.x), vec2<bool>(true, true), !arg_0.x))), Struct_1(select(select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.x, 4294967295u), vec3<u32>(global1.x, global1.x, u_input.b)), ~vec3<u32>(u_input.b, 4294967295u, global1.x), select(var_1.a, var_0.a, var_0.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 3322u, global1.x), ~vec3<u32>(u_input.b, 22350u, 21021u), vec3<u32>(4506u, u_input.a, u_input.a)), _wgslsmith_div_f32(var_0.b, -186f) < -322f)), vec3<bool>(all(!vec4<bool>(true, var_1.a.x, false, false)), true, true), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 33494u, global1.x), ~4294967295u, ~1u), min(~vec3<u32>(0u, u_input.a, 0u), ~vec3<u32>(0u, 1u, 4294967295u)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, arg_0.b, 1000f, arg_1), vec4<f32>(-717f, arg_0.b, 1518f, -945f))) * vec4<f32>(arg_1, arg_0.b, 254f, 919f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, 384f, 102f, arg_1))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-694f, arg_1, 126f, -162f)))))))));
    var var_1 = func_1(vec3<bool>(arg_0.a.x, !(global1.x >= u_input.b), all(!(!vec4<bool>(true, false, arg_2.x, arg_2.x)))));
    var var_2 = func_1(!select(vec3<bool>(func_2(vec2<u32>(51805u, global1.x), global2[_wgslsmith_index_u32(global1.x, 31u)]), func_1(vec3<bool>(true, true, true)).a.x, true), select(vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, false, false), true), !select(var_1.a, vec3<bool>(arg_2.x, false, true), true))).a;
    let var_3 = vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~(-1i) << (1u % 32u)), _wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_div_vec2_i32(~vec2<i32>(17872i, 6122i), vec2<i32>(-3354i, 1i)))));
    var var_4 = arg_0;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_5(func_1(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), -150f, vec3<bool>(func_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)).a.x, false, true))), 256f);
    let var_1 = countOneBits(firstTrailingBit(~vec2<u32>(global1.x & 0u, ~u_input.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_1(vec3<bool>(false, false, false)).b)) + -302f), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(vec3<bool>(false, false, true)).b), var_0.x)), var_0, select(select(func_4(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(1u, var_1.x, u_input.b)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(var_1.x, var_1.x, u_input.a))).a, func_4(vec3<bool>(false, true, true), Struct_1(vec3<u32>(4301u, 1u, 1u)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(global1.x, var_1.x, u_input.a))).a, !func_1(vec3<bool>(false, false, false)).a.x), select(vec3<bool>(true, func_4(vec3<bool>(true, false, true), Struct_1(vec3<u32>(global1.x, 0u, u_input.a)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(global1.x, 55296u, 37214u))).a.x, true), func_1(vec3<bool>(true, true, false)).a, vec3<bool>(func_2(vec2<u32>(49347u, u_input.b), vec2<i32>(0i, 36366i)), all(vec4<bool>(false, true, true, true)), true)), vec3<bool>(true, true, true))));
    var var_3 = var_0;
    var var_4 = ~var_1;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(229f, var_2.x, -121f, var_2.x))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2265f, -1421f, 474f, var_2.x), vec4<f32>(1483f, -611f, -164f, 1559f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, var_1.x, u_input.a, var_1.x) ^ vec4<u32>(54367u, 31418u, global1.x, 1u), ~vec4<u32>(61661u, global1.x, var_1.x, global1.x)), ~1u), 0u, ~(~0u)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(~vec3<i32>(-21107i, 16183i, 61297i), vec3<i32>(-1i, 0i, 37711i) >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))), ~(vec3<i32>(0i, -1i, 2147483647i) << (vec3<u32>(var_4.x, 4294967295u, 56457u) % vec3<u32>(32u))), any(vec3<bool>(true, true, true))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(75704u, 31u)], vec2<i32>(18817i, -4647i)), _wgslsmith_add_vec2_i32(vec2<i32>(51141i, -2147483647i), global2[_wgslsmith_index_u32(u_input.a, 31u)])), -(~2147483647i))), vec3<u32>(firstLeadingBit(countOneBits(~var_1.x)), 49797u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_4.x, var_4.x, var_1.x), vec3<u32>(42825u, global1.x, 0u)), vec3<u32>(var_1.x, 73070u, 4294967295u)), var_4.x & 0u));
}

