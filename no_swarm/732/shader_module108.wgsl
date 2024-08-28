struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(36369u, 4294967295u), vec2<u32>(48930u, 38930u));

var<private> global1: array<vec4<i32>, 18>;

var<private> global2: vec2<u32>;

var<private> global3: bool;

var<private> global4: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global4 = array<vec4<bool>, 19>();
    let var_0 = !global4[_wgslsmith_index_u32(~u_input.a, 19u)];
    var var_1 = !var_0.xyw;
    var var_2 = countOneBits(~(~vec4<u32>(45152u, 1u, ~25039u, global2.x)));
    global0 = array<vec2<u32>, 2>();
    return 2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_3(reverseBits(_wgslsmith_div_i32(1i, func_3())), 0u);
    let var_1 = true;
    global1 = array<vec4<i32>, 18>();
    let var_2 = select(arg_1.wyy, select(!select(vec3<bool>(var_1, true, arg_1.x), arg_1.zxy, any(arg_1.xx)), !arg_1.zxz, any(global4[_wgslsmith_index_u32(u_input.a, 19u)])), !vec3<bool>(true, all(vec4<bool>(true, arg_1.x, false, false)), !(!var_1)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(537f, -1096f)))));
    return var_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2((i32(-1i) * -45474i) < (~min(-27165i, -8377i) | _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -6103i), func_2(vec4<u32>(65968u, u_input.a, u_input.a, 51686u), global4[_wgslsmith_index_u32(32830u, 19u)]))));
    global3 = select(var_0.a, true, any(!vec3<bool>(any(global4[_wgslsmith_index_u32(0u, 19u)]), var_0.a, false)));
    return Struct_3(_wgslsmith_div_i32(firstTrailingBit(-firstTrailingBit(-12398i)), -26383i), firstLeadingBit(4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2327f, -1431f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1590f)), _wgslsmith_f_op_f32(f32(-1f) * -416f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2031f, 145f, -1000f))))), !vec3<bool>(arg_0.a, true, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = ~countOneBits(vec4<u32>(_wgslsmith_div_u32(arg_1.b, arg_1.b), 4294967295u, 0u, 53023u)) >> ((select(reverseBits(firstTrailingBit(vec4<u32>(u_input.a, 1u, global2.x, 13817u))), ~select(vec4<u32>(4294967295u, arg_1.b, u_input.a, 4294967295u), vec4<u32>(u_input.a, global2.x, arg_1.b, u_input.a), false), vec4<bool>(arg_0.a, true, global2.x != global2.x, true)) | vec4<u32>(40415u, _wgslsmith_div_u32(~1u, 11264u), _wgslsmith_mod_u32(u_input.a, 76340u) | ~0u, u_input.a)) % vec4<u32>(32u));
    var var_2 = reverseBits(~(~(~vec2<i32>(26933i, 0i))) & _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, -1i), vec2<i32>(34561i, arg_1.a)), vec2<i32>(arg_1.a, 1i)), ~select(vec2<i32>(-2147483647i, 1i), vec2<i32>(-68170i, arg_1.a), vec2<bool>(arg_0.a, false))));
    var var_3 = -30943i;
    var_3 = ~(~arg_1.a);
    return ~global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_4(Struct_2(false), func_1()) | ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(global2.x, 2u)]), _wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(27829u, 2u)])));
    global4 = array<vec4<bool>, 19>();
    var var_1 = min(global2.x, 1u);
    global0 = array<vec2<u32>, 2>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<u32>(~32853u, u_input.a)) ^ countOneBits(func_1().b), _wgslsmith_clamp_u32(1678u, ~(~(global2.x & u_input.a)), 19934u)), 18u)];
    let var_3 = u_input.a;
    global4 = array<vec4<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.x << (~_wgslsmith_sub_u32(29333u | global2.x, var_3) % 32u), -1000f, 1i);
}

