struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: Struct_1 = Struct_1(4294967295u, vec3<u32>(0u, 4294967295u, 4294967295u), 1u);

var<private> global3: array<Struct_1, 28>;

var<private> global4: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<i32> {
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_mult_i32(0i, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-4995i, -1i), vec2<i32>(0i, u_input.a))), _wgslsmith_add_i32(reverseBits(u_input.a), ~u_input.a)));
    var_0 = ~_wgslsmith_add_i32(~1i, 1i);
    let var_1 = vec2<bool>(!(true | select(true, u_input.a != -33831i, u_input.c > 80676u)), true);
    var var_2 = ~(~49407u >> (0u % 32u));
    return vec3<i32>(~(-41811i), u_input.a, -1i);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_mult_u32(firstTrailingBit(~0u), abs(~(~global2.b.x)) ^ ~7153u);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~reverseBits(var_0), _wgslsmith_mult_u32(1u >> (global2.c % 32u), ~_wgslsmith_mod_u32(~arg_0, 16429u)), select(min(24654u, min(61028u, 4294967295u)), ~u_input.c | arg_0, false) >> (_wgslsmith_clamp_u32(abs(~global2.a), countOneBits(_wgslsmith_mod_u32(0u, u_input.e.x)), 0u) % 32u)), 24u)];
    var var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f - -1084f)) * -821f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2772f, -186f))));
    global2 = global3[_wgslsmith_index_u32(~firstLeadingBit(~global2.b.x), 28u)];
    let var_3 = var_1.b;
    return _wgslsmith_sub_u32(1u >> (reverseBits(~abs(global2.a)) % 32u), var_1.b.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2106f, 1f))));
    let var_1 = true;
    global0 = array<Struct_2, 24>();
    global3 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -2147483647i, -u_input.a, 1i, u_input.a) << (countOneBits(max(reverseBits(vec4<u32>(37321u, global2.a, arg_0.b.x, 9964u)), ~vec4<u32>(1u, 57580u, 0u, 55161u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, -1i), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(arg_0.b.x, 10u)], vec3<i32>(u_input.a, u_input.a, 1i))), u_input.a, reverseBits(abs(1i)), ~(-1i)));
    return Struct_1(abs(_wgslsmith_sub_u32(u_input.c, select(u_input.d.x, u_input.d.x, false)) << (16619u % 32u)), arg_0.b, select(_wgslsmith_add_u32(~firstTrailingBit(0u), global2.c), countOneBits(reverseBits(~28970u)), true));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    global1 = array<vec3<i32>, 10>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(6368u, 28u)], func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(37555u, 10705u) & func_2(global2.c & 10313u), 28u)], false), vec4<u32>(firstLeadingBit(3689u) ^ ~(arg_0 ^ 62999u), ~(~8897u), ~firstLeadingBit(_wgslsmith_mult_u32(0u, global2.a)), arg_0), firstLeadingBit(~(~(vec4<u32>(u_input.e.x, global2.b.x, u_input.e.x, u_input.c) >> (vec4<u32>(global2.c, 63658u, global2.a, global2.a) % vec4<u32>(32u))))));
    let var_1 = var_0.d << (var_0.c % vec4<u32>(32u));
    var var_2 = _wgslsmith_mult_u32(~4168u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2.b.yx, var_0.d.yx), var_0.d.zz), abs(0u)));
    let var_3 = -404f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1755f))))));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    global3 = array<Struct_1, 28>();
    global3 = array<Struct_1, 28>();
    var var_0 = global3[_wgslsmith_index_u32(~75369u, 28u)];
    global0 = array<Struct_2, 24>();
    global3 = array<Struct_1, 28>();
    return _wgslsmith_div_u32(4294967295u, ~(0u | _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_3.b.b.x, 0u), 75122u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 28>();
    let var_0 = countOneBits(vec4<u32>(_wgslsmith_mult_u32(~u_input.c << (~u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(67623u, u_input.c, u_input.b, 46942u) >> (vec4<u32>(23882u, 82937u, 0u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(u_input.e.x, 37303u, u_input.c, global2.c))), _wgslsmith_sub_u32(func_5(true, -global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(func_1(global2.a, true)), Struct_2(Struct_1(u_input.b, vec3<u32>(0u, u_input.c, 74006u), 13934u), Struct_1(global2.a, vec3<u32>(u_input.d.x, 4294967295u, 0u), global2.c), vec4<u32>(u_input.b, u_input.c, global2.a, u_input.b), vec4<u32>(u_input.d.x, 13675u, u_input.c, u_input.d.x))), ~4294967295u), ~func_5(false, global1[_wgslsmith_index_u32(47655u, 10u)], -1019f, global0[_wgslsmith_index_u32(global2.b.x, 24u)]) | abs(_wgslsmith_sub_u32(u_input.d.x, 36661u)), _wgslsmith_clamp_u32(0u, 0u, u_input.d.x)));
    let var_1 = -u_input.a;
    global2 = Struct_1(min(var_0.x, u_input.d.x), firstTrailingBit(min(func_4(Struct_1(60475u, vec3<u32>(u_input.d.x, global2.a, global2.a), 1u), false).b, u_input.d & reverseBits(var_0.wyz))), ~0u);
    var var_2 = !(!(!(!(78036i != var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~global2.b.yz ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(global2.b.x, 67607u), vec2<u32>(51635u, 4294967295u)), vec2<u32>(var_0.x, global2.b.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1537f + -414f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1269f, _wgslsmith_f_op_f32(1157f * 261f)))), -1848f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

