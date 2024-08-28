struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false));

var<private> global3: array<vec4<f32>, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    global3 = array<vec4<f32>, 18>();
    return -524f;
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-10117i, 1i, firstTrailingBit(abs(u_input.c)) ^ u_input.b.x), -(-1i | select(-2147483647i, _wgslsmith_mult_i32(u_input.b.x, -2147483647i), true)), -(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x) >> (u_input.d.x % 32u)));
    global2 = array<vec4<bool>, 24>();
    var var_1 = u_input.d;
    var var_2 = 0u;
    var var_3 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, abs(~29055u), _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, u_input.d.x), u_input.d.x), select(~vec4<u32>(var_1.x, 4294967295u, u_input.d.x, var_1.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, var_1.x, var_1.x, 1u), vec4<u32>(48356u, var_1.x, var_1.x, 60032u)), select(vec4<u32>(1u, var_1.x, u_input.d.x, 64177u), vec4<u32>(20779u, 0u, 1u, u_input.d.x), false) >> ((vec4<u32>(u_input.d.x, var_1.x, 1u, var_1.x) >> (vec4<u32>(8403u, u_input.d.x, var_1.x, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), true)), ~max(~(~48608u), var_1.x >> (abs(u_input.d.x) % 32u)), !((select(true, true, true) & true) & false), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(574f, 417f)))), 563f));
    return -750f;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<i32>(1i | u_input.a.x, abs(max(~abs(0i), ~u_input.c)));
    let var_1 = arg_0;
    var var_2 = select(arg_0.c && select(true, true, abs(-9573i) == countOneBits(u_input.a.x)), true, false != !any(select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(var_1.c, true))));
    let var_3 = !select(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(u_input.d.x), 51848u), 24u)], global2[_wgslsmith_index_u32(~(4294967295u ^ arg_0.b), 24u)], any(select(vec2<bool>(arg_0.c, false), vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, arg_0.c)))), !select(!global2[_wgslsmith_index_u32(14054u, 24u)], vec4<bool>(arg_0.c, false, var_1.c, true), false), arg_0.c);
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = vec2<bool>((false & (u_input.d.x == 4294967295u)) && (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-262f - -195f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(2042f, 606f)))), true);
    global0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1665f, 251f, 2138f, -1266f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, 973f, -552f, -1000f))) - vec4<f32>(-1088f, -857f, _wgslsmith_f_op_f32(floor(1237f)), _wgslsmith_f_op_f32(1063f - -657f))), global3[_wgslsmith_index_u32(select(0u, reverseBits(~4294967295u), !all(vec3<bool>(arg_0.x, true, false))), 18u)], !var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1018f, -1311f, 1878f, -1608f) + vec4<f32>(-769f, -312f, 814f, 1652f)))));
    let var_2 = ~(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), ~0u)) ^ vec2<u32>(20278u, _wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d)));
    global1 = _wgslsmith_f_op_f32(func_4(Struct_1(vec4<u32>(var_2.x, 68552u, ~(var_2.x >> (u_input.d.x % 32u)), 4294967295u), u_input.d.x, var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_f_op_vec2_f32(select(var_1.xx, var_1.wz, vec2<bool>(false, false))))))));
    return vec3<u32>(u_input.d.x, ~23255u >> (~(~abs(u_input.d.x)) % 32u), _wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(1u, 0u, 3065u, var_2.x) << (vec4<u32>(57901u, u_input.d.x, 1u, u_input.d.x) % vec4<u32>(32u)))), vec4<u32>(abs(u_input.d.x), abs(1u), u_input.d.x, ~var_2.x)));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = select(arg_0.wxw, arg_0.ywx, arg_0.yxz);
    global1 = 180f;
    global0 = true;
    global0 = true;
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(max(1i, reverseBits(-2147483647i))), _wgslsmith_div_i32(arg_2.x, firstTrailingBit(-u_input.a.x))), _wgslsmith_add_vec2_i32(vec2<i32>(13747i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.x, u_input.b.x, 1i), u_input.a)), u_input.a.zz));
    return Struct_1(vec4<u32>(~u_input.d.x, 13776u, _wgslsmith_add_u32(_wgslsmith_div_u32(min(4294967295u, u_input.d.x), u_input.d.x), u_input.d.x), min(u_input.d.x, 26843u)), u_input.d.x, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - _wgslsmith_f_op_f32(sign(-1674f))), arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), u_input.a.yz) & u_input.b.x, firstLeadingBit(reverseBits(countOneBits(u_input.b.x))), u_input.a.x, -1i), u_input.a);
    global3 = array<vec4<f32>, 18>();
    var var_1 = ~vec4<u32>(u_input.d.x, 37856u, u_input.d.x, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d))));
    let var_2 = (_wgslsmith_f_op_f32(-1861f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(190f - -1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -413f))) || any(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_0 = -reverseBits(vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(2147483647i, u_input.b.x))));
    global2 = array<vec4<bool>, 24>();
    var var_3 = func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x) | 0u, _wgslsmith_mod_u32(4294967295u, u_input.d.x) << (firstTrailingBit(16977u) % 32u), u_input.d.x), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_1.x, var_1.x, 90697u)), firstTrailingBit(func_2(global2[_wgslsmith_index_u32(var_1.x, 24u)], var_0.x, vec2<bool>(true, var_2))))), 24u)], -662f, reverseBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, 4294967295u, var_1.x)) ^ min(_wgslsmith_add_vec3_u32(var_1.wzx, vec3<u32>(1u, 7851u, 23460u)) | reverseBits(var_3.a.yww), u_input.d), var_0.x);
}

