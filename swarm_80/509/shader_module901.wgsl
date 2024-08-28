struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(40280u, 0u));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3;
    let var_1 = min(select(~firstLeadingBit(vec2<i32>(u_input.a.x, -2147483647i)), vec2<i32>(-global0[_wgslsmith_index_u32(arg_1.a.x, 2u)], u_input.a.x >> (29221u % 32u)), vec2<bool>(var_0.a, true)) | vec2<i32>(u_input.a.x, _wgslsmith_add_i32(2147483647i, min(global0[_wgslsmith_index_u32(0u, 2u)], u_input.a.x))), -(-(~u_input.a.zy) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -30923i), vec2<i32>(0i, global0[_wgslsmith_index_u32(global1.a.x, 2u)]))));
    global1 = Struct_1(~global1.a | global1.a);
    let var_2 = arg_3;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-323f, arg_0.x, 502f, arg_0.x), vec4<f32>(arg_0.x, 1313f, -293f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1307f, arg_0.x, arg_0.x, 695f)))))) * vec4<f32>(-1292f, -587f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1694f - arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1613f, 1f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * 816f)), var_3.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = arg_0;
    var var_1 = ~((~arg_1.x >> (_wgslsmith_add_u32(~global1.a.x, min(1u, 1u)) % 32u)) >> (global1.a.x % 32u));
    global1 = Struct_1(arg_1.yw);
    global1 = Struct_1(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global1.a.x, global1.a.x), abs(arg_1.zz) | arg_1.zw, _wgslsmith_mod_vec2_u32(~arg_1.yw, ~global1.a)));
    var var_2 = Struct_5(_wgslsmith_mult_u32(56394u, abs(1u)));
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(22155u, 46835u), 4294967295u & _wgslsmith_clamp_u32(var_2.a, ~4294967295u, 21922u), arg_1.x), _wgslsmith_dot_vec3_u32(~arg_1.www, ~vec3<u32>(global1.a.x, 71217u, 75096u) ^ countOneBits(_wgslsmith_mod_vec3_u32(arg_1.xzw, vec3<u32>(39002u, 84946u, var_2.a)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_5 {
    let var_0 = min(-_wgslsmith_clamp_i32(arg_0, _wgslsmith_mod_i32(2147483647i, select(54483i, arg_0, true)), ~(-2147483647i)), abs(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(47861i, -2147483647i, 1i, -1i), u_input.a))));
    let var_1 = -1i;
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_2 = 14507u;
    return Struct_5(func_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(924f - 501f), _wgslsmith_f_op_f32(1206f - -550f), _wgslsmith_f_op_f32(func_3(vec2<f32>(1732f, 297f), arg_1, Struct_4(true), Struct_4(true))), _wgslsmith_f_op_f32(select(521f, -100f, false)))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.x, 0u, 59798u, 0u), vec4<u32>(55654u, global1.a.x, global1.a.x, 1u), vec4<u32>(var_2, global1.a.x, arg_1.a.x, var_2)) ^ ~vec4<u32>(0u, arg_1.a.x, 0u, 4294967295u), firstTrailingBit(vec4<u32>(79249u, 34675u, 69692u, 4294967295u))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(~vec2<u32>(global1.a.x, global1.a.x));
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-15674i, -2147483647i), firstTrailingBit(select(vec2<i32>(u_input.a.x, 24440i) & u_input.a.xy, vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), abs(7344i)), arg_1)));
    let var_2 = vec3<f32>(-769f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(floor(-1000f)));
    var_1 = -(firstLeadingBit(vec2<i32>(u_input.a.x, abs(-4540i))) & vec2<i32>(min(min(var_1.x, var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), vec2<i32>(-7265i, -2147483647i))), i32(-1i) * -40067i));
    let var_3 = Struct_2(Struct_1(var_0.a), Struct_1(vec2<u32>(0u, func_2(0i, Struct_1(vec2<u32>(1u, arg_0.a))).a)), var_0.a, Struct_1(max(max(abs(global1.a), vec2<u32>(1u, 6739u)), var_0.a)), var_0);
    return var_0;
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = arg_2;
    let var_2 = Struct_1(~var_1.a);
    let var_3 = 1u;
    var_1 = var_2;
    return select(vec3<bool>(all(vec3<bool>(true, true, true)), true, !arg_3), select(select(vec3<bool>(arg_3 || true, true, !arg_3), vec3<bool>(arg_3, any(vec4<bool>(arg_3, false, arg_3, true)), any(vec2<bool>(arg_3, arg_3))), vec3<bool>(arg_2.a.x > 29068u, arg_1.x != arg_1.x, arg_3 | false)), vec3<bool>(arg_3, true, true | arg_3), !all(select(vec4<bool>(arg_3, false, true, arg_3), vec4<bool>(false, arg_3, arg_3, arg_3), vec4<bool>(false, true, arg_3, true)))), !select(!select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, false, true), false), !select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, !arg_3, !arg_3)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(global1.a.x, vec2<i32>(2147483647i, u_input.a.x), func_5(func_2(-(~0i), Struct_1(select(global1.a, global1.a, false))), false), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(false, false, false))));
    var var_1 = abs(countOneBits(vec3<u32>(~global1.a.x, 33151u, global1.a.x)));
    let var_2 = ~abs(vec4<i32>(~(-11802i), firstTrailingBit(min(0i, u_input.a.x)), -(~global0[_wgslsmith_index_u32(global1.a.x, 2u)]), ~_wgslsmith_mult_i32(40241i, global0[_wgslsmith_index_u32(1u, 2u)])));
    let var_3 = var_2.xzy;
    global0 = array<i32, 2>();
    return Struct_1(firstLeadingBit(firstLeadingBit(global1.a) ^ _wgslsmith_div_vec2_u32(vec2<u32>(1u, global1.a.x), vec2<u32>(23843u, 0u))) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(93511u, 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, 66511u), ~vec2<u32>(var_1.x, var_1.x))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    let var_0 = ~(_wgslsmith_dot_vec3_u32(reverseBits(countOneBits(vec3<u32>(global1.a.x, 0u, global1.a.x))), vec3<u32>(~61989u, 1u, ~5743u)) >> (1u % 32u));
    let var_1 = Struct_5(48343u);
    global0 = array<i32, 2>();
    var var_2 = Struct_1(~(~(~abs(global1.a))));
    var var_3 = Struct_2(func_1(), Struct_1(vec2<u32>(~(1u << (var_1.a % 32u)), ~(~global1.a.x))), ~global1.a, func_5(func_2(2147483647i, Struct_1(vec2<u32>(global1.a.x, global1.a.x))), false), func_5(var_1, true));
    global1 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(344f, 1227f)))));
}

