struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(2147483647i, 13296u), Struct_1(24262i, 13676u), Struct_1(0i, 117507u), Struct_1(i32(-2147483648), 22339u), Struct_1(-1i, 34841u), Struct_1(-18675i, 59655u), Struct_1(-1i, 1u), Struct_1(0i, 4294967295u), Struct_1(16223i, 496u), Struct_1(-23755i, 12018u), Struct_1(2147483647i, 28825u), Struct_1(1i, 0u), Struct_1(-32860i, 41144u), Struct_1(i32(-2147483648), 8911u), Struct_1(-1i, 1u), Struct_1(-60014i, 4294967295u), Struct_1(i32(-2147483648), 1u), Struct_1(i32(-2147483648), 1u), Struct_1(1i, 4294967295u), Struct_1(38167i, 20883u));

var<private> global2: array<vec2<u32>, 9>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-45156i, 8886u), Struct_1(1i, 4294967295u), Struct_1(0i, 4294967295u));

var<private> global4: Struct_1 = Struct_1(6063i, 19645u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(-1i, 53965u);
    var var_1 = global1[_wgslsmith_index_u32(select(~(1u & u_input.e), 4294967295u, !(_wgslsmith_div_i32(~arg_3.a, i32(-1i) * -6102i) >= 89744i)), 20u)];
    var var_2 = arg_3;
    var var_3 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), vec2<bool>(true, all(vec2<bool>(true, false)))));
    global2 = array<vec2<u32>, 9>();
    return var_0.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_1(global4.a, ~abs(1u));
    let var_1 = Struct_1(min(arg_0.x, var_0.a), max(arg_2.b, var_0.b) | u_input.e);
    global1 = array<Struct_1, 20>();
    var var_2 = ~(min(select(_wgslsmith_mult_u32(37249u, 19892u), _wgslsmith_add_u32(arg_1.b, 58736u), true), _wgslsmith_sub_u32(35321u << (arg_2.b % 32u), countOneBits(arg_2.b))) >> (u_input.d % 32u));
    let var_3 = ~vec3<i32>(arg_2.a, var_1.a, _wgslsmith_div_i32(-func_3(var_1.b, u_input.b.zz, arg_0, var_1), ~arg_1.a));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, global4.b), 20u)];
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.b.zzx, _wgslsmith_mult_vec3_u32(~u_input.c.xwx ^ u_input.c.xzy, ~vec3<u32>(global4.b, 4294967295u, u_input.c.x))), 3u)];
    var var_2 = global1[_wgslsmith_index_u32(global4.b, 20u)];
    var var_3 = firstLeadingBit(_wgslsmith_sub_u32(var_0.b, func_4(-reverseBits(vec2<i32>(1i, -2147483647i)), Struct_1(~44156i, _wgslsmith_dot_vec3_u32(u_input.b.xyx, vec3<u32>(global4.b, var_1.b, 6513u))), Struct_1(func_3(4294967295u, vec2<u32>(var_1.b, 4294967295u), vec2<i32>(2147483647i, var_2.a), Struct_1(-3910i, 4294967295u)), global4.b | 7289u), min(~global4.b, u_input.a))));
    global4 = global3[_wgslsmith_index_u32(4294967295u, 3u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(var_0.b, var_2.b, 45082u)), u_input.c.wxw), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(4294967295u, 0u, var_1.b)), vec3<u32>(61269u, 1u, 25585u) ^ vec3<u32>(var_1.b, var_0.b, 43663u), ~(~u_input.b.xxz))), ~max(vec3<u32>(17433u, ~var_1.b, 4294967295u), firstLeadingBit(vec3<u32>(18882u, 4294967295u, u_input.a)))), 20u)];
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(min(global4.b, u_input.d), 20u)];
    global3 = array<Struct_1, 3>();
    let var_1 = Struct_1(global4.a, ~_wgslsmith_dot_vec3_u32(u_input.b.xzz, u_input.b.zwx));
    let var_2 = func_2();
    var var_3 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(var_1.a << (4294967295u % 32u), reverseBits(global4.a)), -2147483647i), -(vec2<i32>(~var_0.a, _wgslsmith_mult_i32(var_1.a, var_1.a)) >> (global2[_wgslsmith_index_u32(var_2.b, 9u)] % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(-abs(min(vec2<i32>(-6983i, 0i), vec2<i32>(1i, 2147483647i))), vec2<i32>(var_2.a, ~(global4.a | global4.a))));
    return Struct_1(0i, _wgslsmith_div_u32(37463u, func_4(vec2<i32>(var_1.a, global4.a), var_1, var_2, 67916u) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(max(-global4.a | ~global4.a, global4.a) >= (i32(-1i) * -1i));
    global4 = global3[_wgslsmith_index_u32(global4.b, 3u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-536f, -290f, -823f) + vec3<f32>(-194f, 304f, 530f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-700f, -122f, 443f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, 263f, -2070f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(539f, 1437f, -605f) + vec3<f32>(662f, -540f, -1300f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1206f, 183f)) - vec3<f32>(1f, 1f, 1f))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(ceil(426f)), 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1339f, -939f, 347f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, 1157f, 714f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1295f, 827f), vec3<f32>(-343f, -534f, -350f))))));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(581f * -991f), _wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(select(208f, 141f, var_3))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) + vec3<f32>(1044f, var_2.x, -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -2353f, var_2.x), var_2)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1607f, var_2.x, var_2.x) * _wgslsmith_f_op_vec3_f32(var_2 - vec3<f32>(var_2.x, var_2.x, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(var_2.x))))), vec3<bool>(all(vec4<bool>(var_3, true, true, var_3)) | select(false, var_3, false), _wgslsmith_f_op_f32(1719f - -1418f) < var_2.x, all(vec4<bool>(true, var_3, true, true))))));
    let var_5 = false;
    var_1 = global1[_wgslsmith_index_u32(4294967295u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

