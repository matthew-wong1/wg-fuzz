struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: array<f32, 16> = array<f32, 16>(1000f, 761f, -271f, 524f, -523f, 500f, 251f, -1005f, -235f, 2151f, -778f, -1000f, 1000f, -446f, -1415f, 889f);

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<bool>, 22>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true | (-13530i >= global0.a), true), false);
    global0 = Struct_1(1i & (max(u_input.a.x, ~global0.a) << (1u % 32u)));
    let var_1 = global1[_wgslsmith_index_u32((abs(firstTrailingBit(max(4976u, 15678u))) << (4294967295u % 32u)) >> (~1u % 32u), 16u)];
    global0 = Struct_1(_wgslsmith_sub_i32(global0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x)), vec2<i32>(10882i, global0.a)), firstTrailingBit(vec2<i32>(-1i, u_input.b)) ^ u_input.a)));
    var var_2 = Struct_3(countOneBits(~global0.a), true && !var_0.x);
    return firstLeadingBit(1u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    global3 = array<vec2<bool>, 22>();
    global0 = Struct_1(-_wgslsmith_mult_i32(-(global2.x ^ global0.a), ~firstLeadingBit(u_input.a.x)));
    global3 = array<vec2<bool>, 22>();
    let var_0 = Struct_1(-1i);
    let var_1 = -select(abs(firstTrailingBit(vec3<i32>(var_0.a, 1i, var_0.a))), abs(_wgslsmith_div_vec3_i32(~vec3<i32>(23125i, global2.x, u_input.a.x), vec3<i32>(global2.x, global0.a, 0i) & vec3<i32>(34898i, 2147483647i, -2147483647i))), arg_1.x);
    return func_3();
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = ~func_2(Struct_1(-_wgslsmith_dot_vec2_i32(u_input.a, global2.yx)), !select(vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), !vec4<bool>(false, false, arg_1.b, true), true));
    var var_1 = Struct_2(Struct_1(17350i), Struct_1(_wgslsmith_sub_i32(abs(arg_1.a), 1i)));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.a, global0.a), ~vec3<i32>(-1i, 2147483647i, 1i))), select(u_input.a, _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(var_1.a.a, global0.a)), select(vec2<i32>(-70088i, arg_1.a), u_input.a, global3[_wgslsmith_index_u32(var_0, 22u)])), select(vec2<bool>(false, true), vec2<bool>(arg_1.b, arg_1.b), select(global3[_wgslsmith_index_u32(4294967295u, 22u)], vec2<bool>(false, true), vec2<bool>(arg_1.b, arg_1.b))))) ^ vec2<i32>(-50489i, ~(0i | u_input.a.x));
    let var_4 = vec3<f32>(arg_0, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, var_0) & countOneBits(vec4<u32>(15832u, 24380u, 4294967295u, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(51659u, 4294967295u, var_0, var_0) | vec4<u32>(2236u, 20638u, var_0, var_0), vec4<u32>(20383u, 134863u, 33933u, 1u), abs(vec4<u32>(4294967295u, var_0, 0u, 67597u)))), 1u), 16u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, _wgslsmith_add_u32(min(0u, 1u), var_0)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, firstLeadingBit(1u), ~var_0), vec3<u32>(4294967295u, 20746u, var_0) & countOneBits(vec3<u32>(70826u, var_0, var_0))), 16u)]);
    return ~70587u;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(8351i);
    var var_1 = Struct_1(_wgslsmith_mult_i32(~firstTrailingBit(u_input.b), _wgslsmith_mult_i32(global0.a, -34620i)) & global2.x);
    global1 = array<f32, 16>();
    var_1 = Struct_1(-34519i);
    var_1 = Struct_1(_wgslsmith_add_i32(min(-266i, -_wgslsmith_mult_i32(-1i, global2.x)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.x, 31726i, global2.x), vec4<i32>(-2147483647i, -23126i, 4794i, var_1.a)))));
    return Struct_1(~global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 16u)], 325f));
    let var_1 = _wgslsmith_f_op_f32(-1482f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(60985u, 16u)]), global1[_wgslsmith_index_u32(0u, 16u)], false)) - -236f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    var var_2 = _wgslsmith_f_op_f32(round(1301f));
    var var_3 = func_4(true, select(vec4<u32>(1u, _wgslsmith_mod_u32(~18251u, _wgslsmith_clamp_u32(1u, 11863u, 55024u)), max(min(22719u, 87450u), 1u), ~firstLeadingBit(3674u)), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~67480u, func_1(636f, Struct_3(global0.a, true)), 1u), any(vec3<bool>(false, false, true)) && any(vec3<bool>(true, true, true))), vec3<u32>(63244u, 5610u, ~firstTrailingBit(reverseBits(2612u))));
    var var_4 = select(vec3<bool>(true, !(!select(true, true, false)), true), vec3<bool>(all(vec4<bool>(true, false, any(vec3<bool>(false, false, true)), true)), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, false, false), all(vec2<bool>(true, false)))), false), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, true)), true));
    global1 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 52434u), _wgslsmith_add_vec2_u32(vec2<u32>(11841u, 20313u), vec2<u32>(4297u, 54558u))) % 32u)));
}

