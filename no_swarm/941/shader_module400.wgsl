struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 451f;

var<private> global2: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(37268u, 4294967295u), vec2<u32>(4294967295u, 114209u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 29400u), vec2<u32>(1u, 4294967295u));

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(104771u), Struct_1(38008u), Struct_1(58498u), Struct_1(0u), Struct_1(9446u), Struct_1(1u), Struct_1(4294967295u), Struct_1(96986u), Struct_1(42183u), Struct_1(0u), Struct_1(37836u), Struct_1(37246u), Struct_1(4294967295u), Struct_1(18216u), Struct_1(16310u), Struct_1(27772u), Struct_1(1u), Struct_1(0u), Struct_1(27202u));

var<private> global4: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: i32) -> vec4<bool> {
    global3 = array<Struct_1, 22>();
    let var_0 = global3[_wgslsmith_index_u32(global0.a, 22u)];
    var var_1 = firstTrailingBit(-vec2<i32>(_wgslsmith_sub_i32(arg_0, arg_0), reverseBits(arg_0)));
    global4 = !select(!vec4<bool>(any(vec4<bool>(true, global4.x, false, global4.x)), false, true, global4.x), !select(vec4<bool>(global4.x, false, false, false), select(vec4<bool>(false, global4.x, false, true), vec4<bool>(global4.x, false, false, true), vec4<bool>(global4.x, global4.x, false, true)), vec4<bool>(global4.x, global4.x, global4.x, global4.x)), select(all(select(global4.zyz, vec3<bool>(global4.x, global4.x, false), global4.x)), false, !all(vec2<bool>(false, true))));
    global3 = array<Struct_1, 22>();
    return vec4<bool>(false, true, true, all(select(select(vec4<bool>(true, global4.x, false, global4.x), select(vec4<bool>(global4.x, true, global4.x, global4.x), vec4<bool>(true, true, global4.x, false), true), vec4<bool>(global4.x, true, global4.x, global4.x)), !vec4<bool>(global4.x, global4.x, true, true), !global4.x)));
}

fn func_2(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = !select(func_3(reverseBits(~u_input.c), 2197u, -u_input.c, -1i >> ((u_input.e.x | 1u) % 32u)), func_3(2147483647i, _wgslsmith_mult_u32(global0.a, 1u), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, u_input.a)), vec2<i32>(1i, 1i)), ~_wgslsmith_mult_i32(2147483647i, u_input.a)), select(true, any(vec2<bool>(global4.x, global4.x)), false));
    global2 = array<vec2<u32>, 5>();
    var var_1 = ~(u_input.e.xzz ^ u_input.e.zzx);
    let var_2 = false;
    return _wgslsmith_sub_vec3_i32(~abs(min(vec3<i32>(u_input.c, u_input.c, u_input.a), ~vec3<i32>(u_input.c, 1i, 44311i))), vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(-63945i), min(2897i, u_input.a)) >> (abs(max(u_input.d, 46623u)) % 32u), 32977i, 0i));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    let var_0 = vec2<i32>(arg_0.x, 43382i);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + 1723f))), _wgslsmith_f_op_f32(f32(-1f) * -1282f)));
    global0 = Struct_1(arg_2.a);
    let var_1 = Struct_1(1u);
    global0 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.a, 1u, u_input.d), u_input.d) & (arg_2.a & 69779u));
    return !arg_1.x;
}

fn func_1() -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(~global0.a, 22u)];
    var var_1 = select(vec2<bool>(func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, -830f, 1000f))), vec4<bool>(all(vec2<bool>(global4.x, false)), global4.x, true, true), Struct_1(var_0.a | 79837u)), !(!global4.x)), !(!func_3(abs(-17668i), ~1u, i32(-1i) * -5114i, _wgslsmith_mod_i32(1i, u_input.a)).zy), ~(~(u_input.e.x >> (global0.a % 32u))) != var_0.a);
    var var_2 = Struct_1(_wgslsmith_mod_u32(global0.a | _wgslsmith_add_u32(~13847u, global0.a), firstLeadingBit(~24472u)));
    var var_3 = Struct_1(~var_2.a);
    var_0 = Struct_1(4294967295u);
    return select(select(!(!vec4<bool>(var_1.x, true, var_1.x, global4.x)), vec4<bool>(true, false, u_input.a > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(-1i, -1i)), global4.x), true), vec4<bool>(false, var_1.x, !(true & global4.x) || select(false, true, all(vec3<bool>(global4.x, global4.x, global4.x))), true), true & (-abs(u_input.c) < min(max(u_input.a, -1i), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(!select(select(select(vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(true, global4.x, global4.x, global4.x), global4.x), select(vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(false, true, global4.x, global4.x), vec4<bool>(global4.x, global4.x, true, global4.x)), global4.x), !(!vec4<bool>(false, true, false, global4.x)), select(vec4<bool>(global4.x, true, true, true), vec4<bool>(global4.x, global4.x, global4.x, global4.x), global4.x)), !vec4<bool>(true, any(vec2<bool>(global4.x, global4.x)), !(global0.a < 16786u), !all(global4.zw)), !select(!select(vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(global4.x, global4.x, global4.x, false), false), func_1(), vec4<bool>(true, !global4.x, global4.x, true)));
    global4 = !func_3(-1i, u_input.d, 33025i, u_input.c);
    global1 = 842f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-876f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(340f + -154f)))) + _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -459f))))));
    global1 = 437f;
    global2 = array<vec2<u32>, 5>();
    global0 = Struct_1(u_input.b);
    let var_0 = global4.xx;
    global2 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-1i, ~(-2147483647i), -u_input.c, -1i)), _wgslsmith_clamp_vec4_i32(max(min(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a), vec4<i32>(-1i, u_input.a, 0i, u_input.c)), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), reverseBits(vec4<i32>(u_input.a, 20108i, u_input.c, 2324i)), -(vec4<i32>(u_input.c, -17387i, 2147483647i, -2147483647i) | vec4<i32>(u_input.c, 3391i, u_input.c, u_input.a)))), abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(43896u, global0.a), global2[_wgslsmith_index_u32(0u, 5u)]), select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), u_input.e.yz), global2[_wgslsmith_index_u32(global0.a, 5u)] | vec2<u32>(global0.a, 40356u), true))), firstLeadingBit(vec4<i32>(i32(-1i) * -u_input.a, _wgslsmith_mod_i32(~2147483647i, 1i), select(reverseBits(u_input.c), ~0i, func_1().x), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, -136f, 202f))).x)), 2845f);
}

