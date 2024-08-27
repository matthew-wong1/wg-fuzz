struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)));

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_2.x;
    global0 = array<Struct_1, 9>();
    let var_1 = ~((41717i & ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-1i, 27673i))) ^ _wgslsmith_dot_vec2_i32(-(vec2<i32>(21591i, u_input.a) ^ vec2<i32>(-45898i, -2147483647i)), ~(~vec2<i32>(u_input.a, u_input.a))));
    global1 = array<vec3<bool>, 24>();
    global1 = array<vec3<bool>, 24>();
    return vec2<f32>(-1636f, -586f);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(463f, _wgslsmith_f_op_f32(sign(-549f)), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(744f, 621f, arg_1.x, arg_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) - var_0.x), _wgslsmith_f_op_vec2_f32(func_1(global2.a.x, ~vec4<u32>(1u, 40336u, 4294967295u, 59673u), vec2<bool>(arg_0, global2.a.x))).x, -676f, -1372f)));
    global0 = array<Struct_1, 9>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, var_0.x, arg_1.x, 875f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 238f, -236f, 696f))))));
    let var_1 = !(!vec3<bool>(any(select(global2.a, vec4<bool>(arg_0, arg_0, arg_0, arg_0), global2.a.x)), (1i < u_input.a) & true, !all(global1[_wgslsmith_index_u32(24262u, 24u)])));
    return vec2<bool>(arg_0, u_input.a != _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~31901i, abs(u_input.a), u_input.a ^ u_input.a), 0i));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(vec4<bool>(-2147483647i <= u_input.a, any(!global2.a), !(!(!global2.a.x)), !(global2.a.x || true)));
    var_0 = Struct_1(vec4<bool>(any(var_0.a.xz), !global2.a.x, false, true));
    let var_1 = countOneBits(~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 5410u), vec3<u32>(1u, 64039u, 68714u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(42324u, 45391u, 4294967295u), vec3<u32>(59127u, 16424u, 46305u)))));
    var_0 = Struct_1(vec4<bool>(any(func_3(global2.a.x, vec2<f32>(arg_2.x, 392f))), any(global2.a.xx), true != var_0.a.x, func_3(all(select(global2.a.wz, vec2<bool>(true, false), vec2<bool>(global2.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(arg_2 * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(1426f, arg_2.x), var_0.a.x)))).x));
    let var_2 = ~vec3<u32>(~(var_1 | var_1), ~_wgslsmith_div_u32(14820u, var_1), select(var_1, var_1, all(vec2<bool>(false, var_0.a.x)))) >> (~vec3<u32>(~firstLeadingBit(var_1), var_1, 1u) % vec3<u32>(32u));
    return -reverseBits(arg_1);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = 88014u;
    global1 = array<vec3<bool>, 24>();
    let var_1 = 913f;
    let var_2 = arg_2;
    global2 = Struct_1(vec4<bool>(true, var_2.a.x, true, var_2.a.x));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, ~var_0, max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 60571u), ~vec2<u32>(11395u, 27057u)), 1u)), vec3<u32>(~max(max(var_0, var_0), 12836u), var_0 << (~(~4294967295u) % 32u), ~2918u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(~(~(~arg_3)), 9u)];
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), 260f, -206f), vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x));
    global0 = array<Struct_1, 9>();
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2496f) - 827f), _wgslsmith_f_op_f32(sign(1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f + 1181f))))));
    global0 = array<Struct_1, 9>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(false, vec4<u32>(24399u, 1u, 75997u, 0u), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(801f, 361f) - vec2<f32>(-902f, -1526f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1233f, _wgslsmith_f_op_f32(1027f * -760f)) - vec2<f32>(_wgslsmith_div_f32(-1813f, -743f), _wgslsmith_f_op_f32(f32(-1f) * -1411f))), vec2<bool>(any(global2.a), global2.a.x)))));
    var var_1 = Struct_1(global2.a);
    var var_2 = func_5(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(func_4(var_1.a.x, -func_2(u_input.a, vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<f32>(-432f, 190f)) | firstLeadingBit(abs(vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_1(!global2.a)), 9u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f * var_0.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), var_0)), _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(sign(var_0))))), _wgslsmith_add_u32(48070u, ~reverseBits(31136u)) << (_wgslsmith_mult_u32(0u, ~1u) % 32u));
    var var_3 = vec4<i32>(-1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 4294967295u))) % 32u), u_input.a, 39528i, select(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, u_input.a) ^ _wgslsmith_div_i32(u_input.a, -1i), -(i32(-1i) * -1i)), true));
    var_3 = ~(~(~(-select(vec4<i32>(25227i, var_3.x, u_input.a, 17161i), vec4<i32>(var_3.x, u_input.a, 1i, var_3.x), vec4<bool>(var_1.a.x, var_2.a.x, true, false)))));
    var var_4 = var_2.a.yyy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f), -1757f))));
}

